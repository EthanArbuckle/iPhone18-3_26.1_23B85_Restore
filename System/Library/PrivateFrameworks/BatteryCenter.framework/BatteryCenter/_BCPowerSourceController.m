@interface _BCPowerSourceController
+ (void)initialize;
- (BOOL)_isChargingPaused;
- (BOOL)_isDevicePartOfPair:(id)a3;
- (BOOL)_isLowPowerModeActive;
- (BOOL)_shouldCoalesceDevices:(id)a3 minimumPercentCharge:(int64_t *)a4;
- (BOOL)_shouldConsiderDeviceWithPowerSourceDescription:(id)a3;
- (NSArray)connectedDevices;
- (_BCPowerSourceController)init;
- (id)_deviceByCoalescingDevice:(id)a3;
- (id)_identifierFromPowerSourceDescription:(id)a3;
- (id)_nameForCurrentDevice;
- (id)_nameForVendor:(int64_t)a3 accessoryCategory:(unint64_t)a4 name:(id)a5 partName:(id)a6 isInternal:(BOOL)a7;
- (id)_orderedDevicesFromPowerSourcesBlob:(void *)a3 powerSourcesList:(__CFArray *)a4;
- (int)_displayChargePercentForCurrentCapacity:(id)a3 andMaxCapacity:(id)a4 updateZeroValue:(BOOL)a5;
- (int)_registerForNotification:(const char *)a3 token:(int *)a4 queue:(id)a5 handler:(id)a6;
- (int)_registerForPowerSourceChangeNotification:(const char *)a3 token:(int *)a4 queue:(id)a5;
- (int64_t)_lowBatteryLevelForVendor:(int64_t)a3 accessoryCategory:(unint64_t)a4 transportType:(int64_t)a5;
- (int64_t)_powerSourceStateFromPowerSourceStateString:(id)a3;
- (int64_t)_transportTypeFromPowerSourceTransportTypeString:(id)a3;
- (int64_t)_vendorFromPowerSourceDescriptionVendorIdentifier:(id)a3 transportType:(int64_t)a4;
- (unint64_t)_accessoryCategoryFromPowerSourceAccessoryCategory:(id)a3 partType:(unint64_t)a4 transportType:(int64_t)a5 vendor:(int64_t)a6 productIdentifier:(int64_t)a7;
- (unint64_t)_partFromPowerSourcePartIdentifier:(id)a3;
- (void)_beginPowerSourceObservingIfNecessary;
- (void)_endPowerSourceObserving;
- (void)_isChargingPaused;
- (void)_notifyObserver:(id)a3 block:(id)a4 queue:(id)a5;
- (void)_notifyObserversWithBlock:(id)a3;
- (void)_queryConnectedDevices;
- (void)_updateLowPowerModeState;
- (void)addBatteryDeviceObserver:(id)a3 queue:(id)a4;
- (void)connectedDevices;
- (void)dealloc;
- (void)removeBatteryDeviceObserver:(id)a3;
@end

@implementation _BCPowerSourceController

- (void)_beginPowerSourceObservingIfNecessary
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_queue)
  {
    v3 = BCLogPowerSourceController;
    if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v10 = v2;
      _os_log_impl(&dword_241AC0000, v3, OS_LOG_TYPE_DEFAULT, "(%{public}@) Registering for power source change notifications", buf, 0xCu);
    }

    v4 = dispatch_queue_create("com.apple.BCBatteryDeviceController", 0);
    queue = v2->_queue;
    v2->_queue = v4;

    [(_BCPowerSourceController *)v2 _registerForPowerSourceChangeNotification:"com.apple.system.powersources.percent" token:&v2->_powerSourceBatteryChangeNotifyToken queue:v2->_queue];
    [(_BCPowerSourceController *)v2 _registerForPowerSourceChangeNotification:"com.apple.system.powersources.timeremaining" token:&v2->_powerSourceTimeRemainingNotifyToken queue:v2->_queue];
    [(_BCPowerSourceController *)v2 _registerForPowerSourceChangeNotification:"com.apple.system.accpowersources.source" token:&v2->_accPowerSourceNotifyToken queue:v2->_queue];
    [(_BCPowerSourceController *)v2 _registerForPowerSourceChangeNotification:"com.apple.system.accpowersources.timeremaining" token:&v2->_accPowerSourceTimeRemainingNotifyToken queue:v2->_queue];
    [(_BCPowerSourceController *)v2 _registerForPowerSourceChangeNotification:"com.apple.system.accpowersources.attach" token:&v2->_accAttachNotifyToken queue:v2->_queue];
    [(_BCPowerSourceController *)v2 _registerForPowerSourceChangeNotification:"com.apple.system.powersources.chargingiconography" token:&v2->_chargingIconographyStateNotifyToken queue:v2->_queue];
    if (notify_is_valid_token(v2->_lowPowerModeNotifyToken))
    {
      notify_cancel(v2->_lowPowerModeNotifyToken);
    }

    v6 = v2->_queue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65___BCPowerSourceController__beginPowerSourceObservingIfNecessary__block_invoke;
    v8[3] = &unk_278D05CB0;
    v8[4] = v2;
    if (![(_BCPowerSourceController *)v2 _registerForNotification:"com.apple.system.lowpowermode" token:&v2->_lowPowerModeNotifyToken queue:v6 handler:v8])
    {
      [(_BCPowerSourceController *)v2 _handleLowPowerModeChanged:v2->_lowPowerModeNotifyToken];
    }
  }

  objc_sync_exit(v2);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    BCRegisterUserNotificationsLogging();
  }
}

- (_BCPowerSourceController)init
{
  v9 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = _BCPowerSourceController;
  v2 = [(_BCPowerSourceController *)&v6 init];
  if (v2)
  {
    v3 = BCLogPowerSourceController;
    if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v8 = v2;
      _os_log_impl(&dword_241AC0000, v3, OS_LOG_TYPE_DEFAULT, "(%{public}@) initializing new power source controller", buf, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

- (BOOL)_isLowPowerModeActive
{
  lowPowerModeActive = self->_lowPowerModeActive;
  if (!self->_queue && ![(_BCPowerSourceController *)self _registerForNotification:"com.apple.system.lowpowermode" token:&self->_lowPowerModeNotifyToken queue:0 handler:0])
  {
    [(_BCPowerSourceController *)self _updateLowPowerModeState];
    return self->_lowPowerModeActive;
  }

  return lowPowerModeActive;
}

- (void)_updateLowPowerModeState
{
  state64 = 0;
  if (!notify_get_state(self->_lowPowerModeNotifyToken, &state64))
  {
    v3 = state64 != 0;
    v4 = self;
    objc_sync_enter(v4);
    if (v4->_lowPowerModeActive != v3)
    {
      v4->_lowPowerModeActive = v3;
    }

    objc_sync_exit(v4);
  }
}

- (NSArray)connectedDevices
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = BCLogPowerSourceController;
  if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = self;
    _os_log_impl(&dword_241AC0000, v3, OS_LOG_TYPE_DEFAULT, "(%{public}@) Fetch connected devices", buf, 0xCu);
  }

  IOPSCopyPowerSourcesByTypePrecise();
  if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_ERROR))
  {
    [_BCPowerSourceController connectedDevices];
  }

  v4 = MEMORY[0x277CBEBF8];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_nameForCurrentDevice
{
  v2 = MGCopyAnswer();

  return v2;
}

- (BOOL)_isChargingPaused
{
  if (IOPSCopyChargeStatus())
  {
    if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_DEBUG))
    {
      [_BCPowerSourceController _isChargingPaused];
    }
  }

  else
  {
    if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_DEBUG))
    {
      [_BCPowerSourceController _isChargingPaused];
    }

    v3 = [0 objectForKeyedSubscript:@"chargeStatus"];

    if (v3)
    {
      v4 = [0 objectForKeyedSubscript:@"chargeStatus"];
      v2 = [v4 isEqualToString:@"Charging On Hold"];

      return v2;
    }

    if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_ERROR))
    {
      [_BCPowerSourceController _isChargingPaused];
    }
  }

  return 0;
}

- (void)dealloc
{
  [(_BCPowerSourceController *)self _endPowerSourceObserving];
  v3.receiver = self;
  v3.super_class = _BCPowerSourceController;
  [(_BCPowerSourceController *)&v3 dealloc];
}

- (void)addBatteryDeviceObserver:(id)a3 queue:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v21 = v7;
  v8 = a4;
  if (!v7)
  {
    [_BCPowerSourceController addBatteryDeviceObserver:a2 queue:self];
  }

  if (!v8)
  {
    [_BCPowerSourceController addBatteryDeviceObserver:a2 queue:self];
  }

  v9 = self;
  objc_sync_enter(v9);
  observersToQueues = v9->_observersToQueues;
  if (!observersToQueues)
  {
    v11 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v12 = v9->_observersToQueues;
    v9->_observersToQueues = v11;

    observersToQueues = v9->_observersToQueues;
  }

  [(NSMapTable *)observersToQueues setObject:v8 forKey:v7];
  objc_sync_exit(v9);

  v13 = BCLogPowerSourceController;
  if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    *buf = 138544130;
    v23 = v16;
    v24 = 2048;
    v25 = v9;
    v26 = 2112;
    v27 = v18;
    v28 = 2048;
    v29 = &v21;
    _os_log_impl(&dword_241AC0000, v14, OS_LOG_TYPE_DEFAULT, "(%{public}@)<%p> Added observer: %@<%p>", buf, 0x2Au);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __59___BCPowerSourceController_addBatteryDeviceObserver_queue___block_invoke;
  v20[3] = &unk_278D05BF0;
  v20[4] = v9;
  [(_BCPowerSourceController *)v9 _notifyObserver:v21 block:v20 queue:v8];
  [(_BCPowerSourceController *)v9 _beginPowerSourceObservingIfNecessary];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)removeBatteryDeviceObserver:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = v4;
  v5 = self;
  objc_sync_enter(v5);
  observersToQueues = v5->_observersToQueues;
  if (observersToQueues)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    [(NSMapTable *)observersToQueues removeObjectForKey:v4];
    if (![(NSMapTable *)v5->_observersToQueues count])
    {
      v8 = v5->_observersToQueues;
      v5->_observersToQueues = 0;

      [(_BCPowerSourceController *)v5 _endPowerSourceObserving];
    }
  }

  objc_sync_exit(v5);

  v9 = BCLogPowerSourceController;
  if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138544130;
    v18 = v12;
    v19 = 2048;
    v20 = v5;
    v21 = 2112;
    v22 = v14;
    v23 = 2048;
    v24 = &v16;
    _os_log_impl(&dword_241AC0000, v10, OS_LOG_TYPE_DEFAULT, "(%{public}@)<%p> Removed observer: %@<%p>", buf, 0x2Au);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isDevicePartOfPair:(id)a3
{
  v3 = a3;
  if (BCCombinedLeftRightBatteryStatus())
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 matchIdentifier];
    if ([v5 length])
    {
      v4 = [v3 accessoryCategory] != 2 || objc_msgSend(v3, "parts") != 4;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)_shouldConsiderDeviceWithPowerSourceDescription:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"Max Capacity"];
  [v4 floatValue];
  if (BSFloatIsZero())
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 objectForKey:@"Power Source State"];
    v7 = [v6 isEqual:@"Off Line"];

    v5 = v7 ^ 1;
  }

  return v5;
}

- (id)_identifierFromPowerSourceDescription:(id)a3
{
  v5 = a3;
  v6 = [v5 objectForKey:@"Group Identifier"];
  if ([v6 length])
  {
    v7 = [v5 objectForKey:@"Part Identifier"];
    if ([v7 length])
    {
      v8 = [v6 stringByAppendingFormat:@"-%@", v7];
    }

    else
    {
      v8 = v6;
    }
  }

  else
  {
    v9 = [v5 objectForKey:@"Power Source ID"];
    v8 = [v9 stringValue];

    if ([v8 length])
    {
      goto LABEL_8;
    }

    [(_BCPowerSourceController *)a2 _identifierFromPowerSourceDescription:v5, &v11];
    v7 = v11;
  }

LABEL_8:

  return v8;
}

- (int64_t)_transportTypeFromPowerSourceTransportTypeString:(id)a3
{
  v3 = a3;
  if ([v3 isEqual:@"Internal"])
  {
    v4 = 1;
  }

  else if ([v3 isEqual:@"Serial"] & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"USB") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"AID"))
  {
    v4 = 2;
  }

  else if ([v3 isEqual:@"Bluetooth"] & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"Bluetooth LE"))
  {
    v4 = 3;
  }

  else if ([v3 isEqual:@"Inductive In-Band"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)_vendorFromPowerSourceDescriptionVendorIdentifier:(id)a3 transportType:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 < 2)
  {
    v7 = 1;
    goto LABEL_18;
  }

  if (!v5)
  {
LABEL_17:
    v7 = 0;
    goto LABEL_18;
  }

  v8 = [v5 integerValue];
  if (a4 == 3)
  {
    v7 = 1;
    if (v8 > 1451)
    {
      if (v8 == 1452)
      {
        goto LABEL_18;
      }

      if (v8 != 10507)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v8 == 76)
      {
        goto LABEL_18;
      }

      if (v8 != 204)
      {
        goto LABEL_17;
      }
    }

    v7 = 2;
    goto LABEL_18;
  }

  v10 = a4 == 4 && v8 == 1452;
  if (a4 == 2)
  {
    v7 = v8 == 1452;
  }

  else
  {
    v7 = v10;
  }

LABEL_18:

  return v7;
}

- (unint64_t)_partFromPowerSourcePartIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqual:@"Left"])
  {
    v4 = 1;
  }

  else if ([v3 isEqual:@"Right"])
  {
    v4 = 2;
  }

  else if ([v3 isEqual:@"Case"])
  {
    v4 = 4;
  }

  else if (BCCombinedLeftRightBatteryStatus() && ([v3 isEqual:@"Combined"] & 1) != 0)
  {
    v4 = 3;
  }

  else if (BCCombinedLeftRightBatteryStatus())
  {
    if ([v3 isEqual:@"Combined"])
    {
      v4 = 8;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_accessoryCategoryFromPowerSourceAccessoryCategory:(id)a3 partType:(unint64_t)a4 transportType:(int64_t)a5 vendor:(int64_t)a6 productIdentifier:(int64_t)a7
{
  v7 = a3;
  if ([v7 isEqual:@"Speaker"])
  {
    v8 = 1;
  }

  else if ([v7 isEqual:@"Headphone"] & 1) != 0 || (objc_msgSend(v7, "isEqual:", @"Headset") & 1) != 0 || (objc_msgSend(v7, "isEqual:", @"Audio Battery Case"))
  {
    v8 = 2;
  }

  else if ([v7 isEqual:@"Watch"])
  {
    v8 = 3;
  }

  else if ([v7 isEqual:@"Battery Case"])
  {
    v8 = 4;
  }

  else if ([v7 isEqual:@"Keyboard"])
  {
    v8 = 5;
  }

  else if ([v7 isEqual:@"Trackpad"])
  {
    v8 = 6;
  }

  else if ([v7 isEqual:@"Pencil"])
  {
    v8 = 7;
  }

  else if ([v7 isEqual:@"Game Controller"])
  {
    v8 = 8;
  }

  else if ([v7 isEqual:@"Mouse"])
  {
    v8 = 9;
  }

  else if ([v7 isEqual:@"HearingAid"])
  {
    v8 = 10;
  }

  else
  {
    v8 = [v7 isEqual:@"Speaker"];
  }

  return v8;
}

- (int64_t)_powerSourceStateFromPowerSourceStateString:(id)a3
{
  v3 = a3;
  if ([v3 isEqual:@"Off Line"])
  {
    v4 = 1;
  }

  else if ([v3 isEqual:@"AC Power"])
  {
    v4 = 2;
  }

  else if ([v3 isEqual:@"Battery Power"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_nameForVendor:(int64_t)a3 accessoryCategory:(unint64_t)a4 name:(id)a5 partName:(id)a6 isInternal:(BOOL)a7
{
  v7 = a7;
  v10 = a5;
  v11 = a6;
  v12 = v11;
  if (v7)
  {
    v13 = [(_BCPowerSourceController *)self _nameForCurrentDevice];
  }

  else if ([v11 length])
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  v14 = v13;
  if ([(__CFString *)v13 length])
  {
    v15 = v14;
  }

  else
  {
    v15 = &stru_2853B08A0;
  }

  v16 = v15;

  return v15;
}

- (int)_displayChargePercentForCurrentCapacity:(id)a3 andMaxCapacity:(id)a4 updateZeroValue:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  [a3 floatValue];
  v9 = v8;
  [v7 floatValue];
  v11 = v10;

  v12 = fmax(fmin((v9 / v11), 1.0), 0.0);
  v13 = fminf(roundf(v12 * 100.0), 100.0);
  if (v13 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  if (v5)
  {
    return v14;
  }

  else
  {
    return v13;
  }
}

- (int64_t)_lowBatteryLevelForVendor:(int64_t)a3 accessoryCategory:(unint64_t)a4 transportType:(int64_t)a5
{
  if (a5 == 1)
  {
    return [(_BCPowerSourceController *)self _lowBatteryLevelForCurrentDevice:a3];
  }

  if (a3 == 1 && a4 - 5 <= 4)
  {
    return qword_241AC6798[a4 - 5];
  }

  return 20;
}

- (BOOL)_shouldCoalesceDevices:(id)a3 minimumPercentCharge:(int64_t *)a4
{
  v5 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if ((BCCombinedLeftRightBatteryStatus() & 1) == 0)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __72___BCPowerSourceController__shouldCoalesceDevices_minimumPercentCharge___block_invoke;
    v8[3] = &unk_278D05C18;
    v9 = v5;
    v10 = &v12;
    v11 = &v16;
    [v9 enumerateObjectsUsingBlock:v8];
    if (a4 && (v17[3] & 1) != 0)
    {
      *a4 = v13[3];
    }

    _Block_object_dispose(&v12, 8);
  }

  v6 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return v6;
}

- (id)_deviceByCoalescingDevice:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 lastObject];
  v5 = [v4 copy];
  if ((BCCombinedLeftRightBatteryStatus() & 1) == 0)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = [v3 firstObject];
    v8 = [v7 parts];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v3;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v22 = v4;
      v23 = v5;
      v12 = 0;
      v13 = *v25;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          v16 = [v15 identifier];
          [v6 addObject:v16];

          v12 |= v8 != [v15 parts];
          v8 |= [v15 parts];
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v11);

      v17 = [v6 componentsJoinedByString:@"-"];
      v5 = v23;
      [v23 setIdentifier:v17];

      [v23 setParts:v8];
      v4 = v22;
      if (v12)
      {
        v18 = [v22 groupName];
        [v23 setName:v18];
      }
    }

    else
    {

      v19 = [v6 componentsJoinedByString:@"-"];
      [v5 setIdentifier:v19];

      [v5 setParts:v8];
    }
  }

  v20 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_orderedDevicesFromPowerSourcesBlob:(void *)a3 powerSourcesList:(__CFArray *)a4
{
  v142 = *MEMORY[0x277D85DE8];
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v133[0] = MEMORY[0x277D85DD0];
  v133[1] = 3221225472;
  v133[2] = __81___BCPowerSourceController__orderedDevicesFromPowerSourcesBlob_powerSourcesList___block_invoke;
  v133[3] = &unk_278D05C40;
  v133[4] = self;
  v91 = v8;
  v134 = v91;
  v92 = MEMORY[0x245CF6EF0](v133);
  v9 = [MEMORY[0x277CBEB18] array];
  Count = CFArrayGetCount(a4);
  v11 = BCLogPowerSourceController;
  if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    v140 = 2048;
    v141 = Count;
    _os_log_impl(&dword_241AC0000, v11, OS_LOG_TYPE_DEFAULT, "(%{public}@) Found %lu power sources", buf, 0x16u);
  }

  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a4, i);
      v14 = IOPSGetPowerSourceDescription(a3, ValueAtIndex);
      [v9 addObject:v14];
    }
  }

  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  obj = v9;
  v15 = [obj countByEnumeratingWithState:&v129 objects:v138 count:16];
  v104 = self;
  if (v15)
  {
    v16 = v15;
    v17 = *v130;
    v93 = *v130;
    do
    {
      v18 = 0;
      v94 = v16;
      do
      {
        if (*v130 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v129 + 1) + 8 * v18);
        v20 = [v19 mutableCopy];
        v114 = [v19 objectForKey:@"Debug Information"];
        if ([v114 count])
        {
          [v20 removeObjectForKey:@"Debug Information"];
        }

        v21 = BCLogPowerSourceController;
        if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          *&buf[4] = self;
          v140 = 2114;
          v141 = v20;
          _os_log_impl(&dword_241AC0000, v21, OS_LOG_TYPE_DEFAULT, "(%{public}@) Found power source: %{public}@", buf, 0x16u);
        }

        if ([v114 count])
        {
          v22 = BCLogPowerSourceController;
          if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543618;
            *&buf[4] = self;
            v140 = 2114;
            v141 = v114;
            _os_log_debug_impl(&dword_241AC0000, v22, OS_LOG_TYPE_DEBUG, "(%{public}@) Power source debug info: %{public}@", buf, 0x16u);
          }
        }

        if ([(_BCPowerSourceController *)self _shouldConsiderDeviceWithPowerSourceDescription:v19])
        {
          v110 = v20;
          v23 = [(_BCPowerSourceController *)self _identifierFromPowerSourceDescription:v19];
          v24 = [v19 objectForKey:@"Product ID"];
          v25 = [v24 integerValue];

          v26 = v23;
          v109 = [v19 objectForKey:@"Model Number"];
          v27 = [v19 objectForKey:@"Transport Type"];
          v28 = [(_BCPowerSourceController *)self _transportTypeFromPowerSourceTransportTypeString:v27];

          v29 = [v19 objectForKey:@"Vendor ID"];
          v30 = [(_BCPowerSourceController *)self _vendorFromPowerSourceDescriptionVendorIdentifier:v29 transportType:v28];

          v108 = [v19 objectForKey:@"Group Identifier"];
          v31 = [v19 objectForKey:@"Part Identifier"];
          v32 = [(_BCPowerSourceController *)self _partFromPowerSourcePartIdentifier:v31];

          v33 = [v7 objectForKey:v26];
          v107 = [v19 objectForKey:@"Accessory Category"];
          v105 = v28;
          v111 = v30;
          v112 = [_BCPowerSourceController _accessoryCategoryFromPowerSourceAccessoryCategory:"_accessoryCategoryFromPowerSourceAccessoryCategory:partType:transportType:vendor:productIdentifier:" partType:? transportType:? vendor:? productIdentifier:?];
          if (v33)
          {
            if ((BCCombinedLeftRightBatteryStatus() & 1) == 0)
            {
              (v92)[2](v92, v33);
            }

LABEL_27:
            v20 = v110;
          }

          else
          {
            if (![v26 length])
            {
              v33 = 0;
              goto LABEL_27;
            }

            v33 = [BCBatteryDevice batteryDeviceWithIdentifier:v26 vendor:v30 productIdentifier:v25 parts:v32 matchIdentifier:v108];
            [v33 setModelNumber:v109];
            [v33 setAccessoryCategory:v112];
            v20 = v110;
            if ((BCCombinedLeftRightBatteryStatus() & 1) == 0 && ((v92[2])(v92, v33) & 1) == 0)
            {
              [v7 setObject:v33 forKey:v26];
            }
          }

          if (BCCombinedLeftRightBatteryStatus())
          {
            [v7 setObject:v33 forKey:v26];
          }

          if (v33)
          {
            v101 = v26;
            v34 = [v19 objectForKey:@"Power Source State"];
            v102 = [(_BCPowerSourceController *)self _powerSourceStateFromPowerSourceStateString:v34];

            v35 = [v19 objectForKey:@"Type"];
            v36 = [v35 isEqualToString:@"InternalBattery"];
            v100 = v35;
            v37 = [v35 isEqualToString:@"Accessory Source"];
            v38 = [v19 objectForKey:@"Name"];
            v39 = [v19 objectForKey:@"Part Name"];
            v40 = [(_BCPowerSourceController *)self _nameForVendor:v111 accessoryCategory:v112 name:v38 partName:v39 isInternal:v36];

            v106 = v36;
            [v33 setInternal:v36];
            [v33 setPowerSource:v37 ^ 1u];
            [v33 setPowerSourceState:v102];
            [v33 setTransportType:v105];
            v99 = v40;
            [v33 setName:v40];
            v41 = [v19 objectForKey:@"Name"];
            [v33 setGroupName:v41];

            v42 = [v19 objectForKey:@"Accessory Identifier"];
            v43 = objc_opt_class();
            v44 = v42;
            if (v43)
            {
              if (objc_opt_isKindOfClass())
              {
                v45 = v44;
              }

              else
              {
                v45 = 0;
              }
            }

            else
            {
              v45 = 0;
            }

            v46 = v45;

            [v33 setAccessoryIdentifier:v46];
            [v33 setConnected:1];
            self = v104;
            v20 = v110;
            if (v106)
            {
              v47 = [(_BCPowerSourceController *)v104 _isChargingPaused];
            }

            else
            {
              v47 = 0;
            }

            [v33 setPaused:v47];
            v98 = [v19 objectForKey:@"AdapterDetails"];
            v48 = [v98 objectForKey:@"IsWireless"];
            v49 = [v48 BOOLValue];

            [v33 setWirelesslyCharging:v49];
            v50 = [v19 objectForKey:@"Current Capacity"];
            [v19 objectForKey:@"Max Capacity"];
            v97 = v103 = v50;
            v51 = -[_BCPowerSourceController _displayChargePercentForCurrentCapacity:andMaxCapacity:updateZeroValue:](v104, "_displayChargePercentForCurrentCapacity:andMaxCapacity:updateZeroValue:", v50, v97, [v33 isInternal]);
            v52 = [v19 objectForKey:@"Is Charging"];
            if ([v52 BOOLValue])
            {
              v96 = 1;
            }

            else
            {
              v53 = [v19 objectForKey:@"Show Charging UI"];
              v96 = [v53 BOOLValue];
            }

            v26 = v101;

            if ([v33 isInternal])
            {
              v54 = MGGetBoolAnswer() ^ 1;
            }

            else
            {
              v54 = 0;
            }

            [v33 setPercentCharge:v51];
            v55 = [v19 objectForKey:@"Low Warn Level"];
            if (v55 && v111 == 1 && (v112 == 4 || v112 == 2))
            {
              *buf = 0;
              if (CFNumberGetValue(v55, kCFNumberIntType, buf))
              {
                v56 = [v103 integerValue];
                v57 = v56 <= *buf;
              }

              else
              {
                v57 = 0;
              }
            }

            else
            {
              v57 = [(_BCPowerSourceController *)v104 _lowBatteryLevelForVendor:v111 accessoryCategory:v112 transportType:v105]>= v51;
            }

            [v33 setLowBattery:v57];
            if (v106)
            {
              [v33 setLowPowerModeActive:{-[_BCPowerSourceController _isLowPowerModeActive](v104, "_isLowPowerModeActive")}];
            }

            else
            {
              v58 = [v19 objectForKey:@"LPM Active"];
              [v33 setLowPowerModeActive:{objc_msgSend(v58, "BOOLValue")}];
            }

            [v33 setCharging:v96];
            [v33 setApproximatesPercentCharge:v54];
            v59 = BCLogPowerSourceController;
            if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              *&buf[4] = v104;
              v140 = 2114;
              v141 = v33;
              _os_log_impl(&dword_241AC0000, v59, OS_LOG_TYPE_DEFAULT, "(%{public}@) Found device: %{public}@", buf, 0x16u);
            }
          }

          v17 = v93;
          v16 = v94;
        }

        ++v18;
      }

      while (v16 != v18);
      v60 = [obj countByEnumeratingWithState:&v129 objects:v138 count:16];
      v16 = v60;
    }

    while (v60);
  }

  if ((BCCombinedLeftRightBatteryStatus() & 1) == 0)
  {
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v113 = [v91 allValues];
    v61 = [v113 countByEnumeratingWithState:&v125 objects:v137 count:16];
    v62 = 0x277CBE000uLL;
    if (v61)
    {
      v63 = v61;
      v115 = *v126;
      do
      {
        for (j = 0; j != v63; ++j)
        {
          if (*v126 != v115)
          {
            objc_enumerationMutation(v113);
          }

          v65 = *(*(&v125 + 1) + 8 * j);
          v66 = [*(v62 + 2840) array];
          if ([v65 count] < 2)
          {
            v79 = [v65 lastObject];
            [v66 addObject:v79];
          }

          else
          {
            v124 = 0;
            if ([(_BCPowerSourceController *)v104 _shouldCoalesceDevices:v65 minimumPercentCharge:&v124])
            {
              v67 = [v65 lastObject];
              v68 = [v67 matchIdentifier];
              v69 = [v7 objectForKey:v68];

              if (!v69)
              {
                v69 = [(_BCPowerSourceController *)v104 _deviceByCoalescingDevice:v65];
                v70 = [v69 identifier];
                [v7 setObject:v69 forKey:v70];
              }

              [v66 addObject:v69];
              [v69 setPercentCharge:v124];
              v71 = -[_BCPowerSourceController _lowBatteryLevelForVendor:accessoryCategory:transportType:](v104, "_lowBatteryLevelForVendor:accessoryCategory:transportType:", [v69 vendor], objc_msgSend(v69, "accessoryCategory"), objc_msgSend(v69, "transportType"));
              [v69 setLowBattery:v124 <= v71];
              v72 = BCLogPowerSourceController;
              if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                *&buf[4] = v104;
                v140 = 2114;
                v141 = v69;
                _os_log_impl(&dword_241AC0000, v72, OS_LOG_TYPE_DEFAULT, "(%{public}@) Coalesced device: %{public}@", buf, 0x16u);
              }

              v122 = 0u;
              v123 = 0u;
              v120 = 0u;
              v121 = 0u;
              v73 = v65;
              v74 = [v73 countByEnumeratingWithState:&v120 objects:v136 count:16];
              if (v74)
              {
                v75 = v74;
                v76 = *v121;
                do
                {
                  for (k = 0; k != v75; ++k)
                  {
                    if (*v121 != v76)
                    {
                      objc_enumerationMutation(v73);
                    }

                    v78 = [*(*(&v120 + 1) + 8 * k) identifier];
                    [v7 removeObjectForKey:v78];
                  }

                  v75 = [v73 countByEnumeratingWithState:&v120 objects:v136 count:16];
                }

                while (v75);
                v62 = 0x277CBE000;
              }
            }

            else
            {
              [v66 addObjectsFromArray:v65];
              v69 = [v65 lastObject];
              v73 = [v69 identifier];
              [v7 removeObjectForKey:v73];
            }
          }

          v118 = 0u;
          v119 = 0u;
          v116 = 0u;
          v117 = 0u;
          v80 = v66;
          v81 = [v80 countByEnumeratingWithState:&v116 objects:v135 count:16];
          if (v81)
          {
            v82 = v81;
            v83 = *v117;
            do
            {
              for (m = 0; m != v82; ++m)
              {
                if (*v117 != v83)
                {
                  objc_enumerationMutation(v80);
                }

                v85 = *(*(&v116 + 1) + 8 * m);
                v86 = [v85 identifier];
                [v7 setObject:v85 forKey:v86];
              }

              v82 = [v80 countByEnumeratingWithState:&v116 objects:v135 count:16];
            }

            while (v82);
          }
        }

        v63 = [v113 countByEnumeratingWithState:&v125 objects:v137 count:16];
      }

      while (v63);
    }
  }

  v87 = [v7 allValues];
  v88 = [v87 sortedArrayUsingComparator:&__block_literal_global];

  v89 = *MEMORY[0x277D85DE8];

  return v88;
}

- (int)_registerForNotification:(const char *)a3 token:(int *)a4 queue:(id)a5 handler:(id)a6
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  v12 = v11;
  if (*a4)
  {
    if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_ERROR))
    {
      [_BCPowerSourceController _registerForNotification:token:queue:handler:];
    }

LABEL_4:
    v13 = 0;
    goto LABEL_12;
  }

  if (v10 && v11)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __73___BCPowerSourceController__registerForNotification_token_queue_handler___block_invoke;
    handler[3] = &unk_278D05C88;
    handler[4] = self;
    v19 = a3;
    v18 = v11;
    v13 = notify_register_dispatch(a3, a4, v10, handler);
  }

  else
  {
    v13 = notify_register_check(a3, a4);
  }

  v14 = BCLogPowerSourceController;
  if (!v13)
  {
    if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v21 = self;
      v22 = 2082;
      v23 = a3;
      _os_log_impl(&dword_241AC0000, v14, OS_LOG_TYPE_DEFAULT, "(%{public}@) Successfully registered for %{public}s notifications", buf, 0x16u);
    }

    goto LABEL_4;
  }

  if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_ERROR))
  {
    [_BCPowerSourceController _registerForNotification:token:queue:handler:];
  }

LABEL_12:

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (int)_registerForPowerSourceChangeNotification:(const char *)a3 token:(int *)a4 queue:(id)a5
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82___BCPowerSourceController__registerForPowerSourceChangeNotification_token_queue___block_invoke;
  v6[3] = &unk_278D05CB0;
  v6[4] = self;
  return [(_BCPowerSourceController *)self _registerForNotification:a3 token:a4 queue:a5 handler:v6];
}

- (void)_endPowerSourceObserving
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_queue)
  {
    v3 = BCLogPowerSourceController;
    v4 = os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      v13 = 138543362;
      v14 = v2;
      _os_log_impl(&dword_241AC0000, v3, OS_LOG_TYPE_DEFAULT, "(%{public}@) Unregistering for power source change notifications", &v13, 0xCu);
    }

    v5 = __52___BCPowerSourceController__endPowerSourceObserving__block_invoke(v4, &v2->_powerSourceBatteryChangeNotifyToken);
    v6 = __52___BCPowerSourceController__endPowerSourceObserving__block_invoke(v5, &v2->_powerSourceTimeRemainingNotifyToken);
    v7 = __52___BCPowerSourceController__endPowerSourceObserving__block_invoke(v6, &v2->_accPowerSourceNotifyToken);
    v8 = __52___BCPowerSourceController__endPowerSourceObserving__block_invoke(v7, &v2->_accPowerSourceTimeRemainingNotifyToken);
    v9 = __52___BCPowerSourceController__endPowerSourceObserving__block_invoke(v8, &v2->_accAttachNotifyToken);
    v10 = __52___BCPowerSourceController__endPowerSourceObserving__block_invoke(v9, &v2->_chargingIconographyStateNotifyToken);
    __52___BCPowerSourceController__endPowerSourceObserving__block_invoke(v10, &v2->_lowPowerModeNotifyToken);
    queue = v2->_queue;
    v2->_queue = 0;
  }

  objc_sync_exit(v2);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_queryConnectedDevices
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = BCLogPowerSourceController;
  if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = self;
    _os_log_impl(&dword_241AC0000, v3, OS_LOG_TYPE_DEFAULT, "(%{public}@) Query for connected devices", buf, 0xCu);
  }

  v4 = [(_BCPowerSourceController *)self connectedDevices];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50___BCPowerSourceController__queryConnectedDevices__block_invoke;
  v7[3] = &unk_278D05BF0;
  v8 = v4;
  v5 = v4;
  [(_BCPowerSourceController *)self _notifyObserversWithBlock:v7];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_notifyObserver:(id)a3 block:(id)a4 queue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8 && v9 && a5)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56___BCPowerSourceController__notifyObserver_block_queue___block_invoke;
    block[3] = &unk_278D05CD8;
    block[4] = self;
    v12 = v8;
    v13 = v10;
    dispatch_async(a5, block);
  }
}

- (void)_notifyObserversWithBlock:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(NSMapTable *)v5->_observersToQueues copy];
    objc_sync_exit(v5);

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [v7 objectForKey:{v11, v14}];
          [(_BCPowerSourceController *)v5 _notifyObserver:v11 block:v4 queue:v12];
        }

        v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)connectedDevices
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_241AC0000, v0, OS_LOG_TYPE_ERROR, "(%{public}@) Failed to obtain power sources list", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)addBatteryDeviceObserver:(uint64_t)a1 queue:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BCPowerSourceController.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
}

- (void)addBatteryDeviceObserver:(uint64_t)a1 queue:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BCPowerSourceController.m" lineNumber:145 description:{@"Invalid parameter not satisfying: %@", @"queue"}];
}

- (uint64_t)_identifierFromPowerSourceDescription:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  *a4 = v8;
  return [v8 handleFailureInMethod:a1 object:a2 file:@"BCPowerSourceController.m" lineNumber:204 description:{@"Missing kIOPSPowerSourceIDKey in %@", a3}];
}

- (void)_isChargingPaused
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 2112;
  v4 = @"chargeStatus";
  _os_log_error_impl(&dword_241AC0000, v0, OS_LOG_TYPE_ERROR, "(%{public}@) No value for %@ in chargingStatusDictionary", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_registerForNotification:token:queue:handler:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_registerForNotification:token:queue:handler:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end