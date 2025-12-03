@interface CoreRCDisplay
+ (id)DisabledEDIDs;
- (BOOL)sleepDisplay;
- (BOOL)wakeDisplay;
- (CoreRCDisplay)initWithCECBus:(id)bus onQueue:(id)queue displayAsleep:(BOOL)asleep;
- (NSString)description;
- (id)cecDevice;
- (void)bus:(id)bus deviceHasBeenRemoved:(id)removed;
- (void)cecBus:(id)bus linkStateHasBeenUpdated:(BOOL)updated;
- (void)cecDevice:(id)device activeSourceStatusHasChanged:(BOOL)changed;
- (void)cecDeviceShouldAssertActiveSource:(id)source;
- (void)removeBus;
- (void)updatePolicy;
@end

@implementation CoreRCDisplay

+ (id)DisabledEDIDs
{
  v2 = [[CECEDIDAttributes alloc] initWithVendorID:16652];
  v10[0] = v2;
  v3 = [[CECEDIDAttributes alloc] initWithVendorID:1715];
  v10[1] = v3;
  v4 = [[CECEDIDAttributes alloc] initWithModelName:@"Odyssey Ark"];
  v10[2] = v4;
  v5 = [[CECEDIDAttributes alloc] initWithModelName:@"Odyssey G7"];
  v10[3] = v5;
  v6 = [[CECEDIDAttributes alloc] initWithModelName:@"Odyssey G70B"];
  v10[4] = v6;
  v7 = [[CECEDIDAttributes alloc] initWithModelName:@"LS28AG700N"];
  v10[5] = v7;
  v8 = [NSArray arrayWithObjects:v10 count:6];

  return v8;
}

- (CoreRCDisplay)initWithCECBus:(id)bus onQueue:(id)queue displayAsleep:(BOOL)asleep
{
  busCopy = bus;
  queueCopy = queue;
  v12 = queueCopy;
  if (busCopy)
  {
    if (queueCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_4240(a2, self);
    if (v12)
    {
      goto LABEL_3;
    }
  }

  sub_42B4(a2, self);
LABEL_3:
  v13 = +[NSUserDefaults cecUserDefaults];
  self->_cecActiveSourceRecentlySentDuration = [v13 cecActiveSourceRecentlySentDuration];

  objc_storeStrong(&self->_queue, queue);
  self->_isDisplayAsleep = asleep;
  objc_storeStrong(&self->_cecBus, bus);
  [(CoreCECBus *)self->_cecBus setDelegate:self];
  v14 = CoreRCPluginLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    cecBus = self->_cecBus;
    *buf = 138412290;
    v26 = cecBus;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "CEC bus has been added (%@)", buf, 0xCu);
  }

  if (MGGetSInt32Answer() == 1)
  {
    v16 = @"iPhone";
  }

  else
  {
    v16 = @"iPad";
  }

  v17 = self->_cecBus;
  v24 = 0;
  v18 = [(CoreCECBus *)v17 setOSDName:v16 error:&v24];
  v19 = v24;
  v20 = v19;
  if (!v18 || v19)
  {
    sub_4328();
  }

  if (([(CoreCECBus *)self->_cecBus hasLink]& 1) != 0)
  {
    [(CoreRCDisplay *)self updatePolicy];
    cecDevice = [(CoreRCDisplay *)self cecDevice];

    if (cecDevice)
    {
      if (self->_isDisplayAsleep)
      {
        v22 = CoreRCPluginLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Current display state should be asleep, don't send active source", buf, 2u);
        }
      }

      else
      {
        [(CoreRCDisplay *)self wakeDisplay];
      }
    }

    else
    {
      sub_4438(self);
    }
  }

  else
  {
    sub_43C8(self);
  }

  return self;
}

- (NSString)description
{
  v3 = [NSMutableString alloc];
  v13.receiver = self;
  v13.super_class = CoreRCDisplay;
  v4 = [(CoreRCDisplay *)&v13 description];
  v5 = [v3 initWithString:v4];

  uniqueID = [(CoreCECBus *)self->_cecBus uniqueID];
  uUIDString = [uniqueID UUIDString];
  [v5 appendFormat:@" cecBus:%@;", uUIDString];

  if (self->_cecEnabled)
  {
    v8 = "Y";
  }

  else
  {
    v8 = "N";
  }

  [v5 appendFormat:@" cecEnabled:%s;", v8];
  if (self->_isDisplayAsleep)
  {
    v9 = "Y";
  }

  else
  {
    v9 = "N";
  }

  [v5 appendFormat:@" asleep:%s;", v9];
  if (self->_activeSourceDeferred)
  {
    v10 = "Y";
  }

  else
  {
    v10 = "N";
  }

  [v5 appendFormat:@" asDeferred:%s;", v10];
  if (self->_recentDisplayWake)
  {
    v11 = "Y";
  }

  else
  {
    v11 = "N";
  }

  [v5 appendFormat:@" recentWake:%s;", v11];

  return v5;
}

- (void)removeBus
{
  if (self->_cecDevice)
  {
    v3 = CoreRCPluginLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      cecDevice = self->_cecDevice;
      v7 = 138412290;
      v8 = cecDevice;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Removing CEC device (%@)", &v7, 0xCu);
    }

    [(CoreCECDevice *)self->_cecDevice setDelegate:0];
    v5 = self->_cecDevice;
    self->_cecDevice = 0;
  }

  [(CoreCECBus *)self->_cecBus setDelegate:0];
  cecBus = self->_cecBus;
  self->_cecBus = 0;
}

- (BOOL)sleepDisplay
{
  v3 = CoreRCPluginLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Putting TV to standby (%@)", buf, 0xCu);
  }

  *&self->_isDisplayAsleep = 1;
  self->_recentDisplayWake = 0;
  if (!self->_cecBus)
  {
    v13 = CoreRCPluginLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_4518();
    }

    goto LABEL_16;
  }

  cecDevice = [(CoreRCDisplay *)self cecDevice];

  if (!cecDevice)
  {
    v13 = CoreRCPluginLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "No CEC device";
LABEL_15:
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
    }

LABEL_16:
    v10 = 0;
LABEL_19:

    v11 = 0;
    goto LABEL_8;
  }

  cecDevice2 = [(CoreRCDisplay *)self cecDevice];
  isActiveSource = [cecDevice2 isActiveSource];

  cecDevice3 = [(CoreRCDisplay *)self cecDevice];
  [cecDevice3 setPowerStatus:2 error:0];

  if ((isActiveSource & 1) == 0)
  {
    v13 = CoreRCPluginLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "Not currently active source, not sending standby";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  cecDevice4 = [(CoreRCDisplay *)self cecDevice];
  v15 = 0;
  v9 = [cecDevice4 performStandbyWithTargetDevice:0 error:&v15];
  v10 = v15;

  v11 = 1;
  if ((v9 & 1) == 0 && v10)
  {
    v13 = CoreRCPluginLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_44A4();
    }

    goto LABEL_19;
  }

LABEL_8:

  return v11;
}

- (BOOL)wakeDisplay
{
  v3 = CoreRCPluginLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Waking TV (%@)", buf, 0xCu);
  }

  self->_isDisplayAsleep = 0;
  cecDevice = [(CoreRCDisplay *)self cecDevice];

  if (!cecDevice)
  {
    v12 = CoreRCPluginLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = 0;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "No CEC device %@", buf, 0xCu);
    }

    v10 = 0;
    goto LABEL_14;
  }

  if (!self->_recentDisplayWake)
  {
    self->_recentDisplayWake = 1;
    v5 = dispatch_time(0, 1000000000 * self->_cecActiveSourceRecentlySentDuration);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_2A9C;
    block[3] = &unk_8340;
    block[4] = self;
    dispatch_after(v5, queue, block);
  }

  cecDevice = self->_cecDevice;
  v13 = 0;
  v8 = 1;
  v9 = [(CoreCECDevice *)cecDevice makeActiveSourceWithTVMenus:1 error:&v13];
  v10 = v13;
  [(CoreCECDevice *)self->_cecDevice setPowerStatus:1 error:0];
  if (!v9 || v10)
  {
    v12 = CoreRCPluginLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_4558();
    }

LABEL_14:

    self->_activeSourceDeferred = 1;
    return 0;
  }

  return v8;
}

- (void)updatePolicy
{
  self->_cecEnabled = 1;
  edidAttributes = [(CoreCECBus *)self->_cecBus edidAttributes];
  if (edidAttributes)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = +[CoreRCDisplay DisabledEDIDs];
    v5 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        if ([v9 vendorID])
        {
          vendorID = [v9 vendorID];
          if (vendorID != [edidAttributes vendorID])
          {
            goto LABEL_23;
          }

          self->_cecEnabled = 0;
        }

        if ([v9 productID])
        {
          productID = [v9 productID];
          if (productID != [edidAttributes productID])
          {
            goto LABEL_23;
          }

          self->_cecEnabled = 0;
        }

        if ([v9 year])
        {
          year = [v9 year];
          if (year != [edidAttributes year])
          {
            goto LABEL_23;
          }

          self->_cecEnabled = 0;
        }

        if (![v9 week])
        {
          goto LABEL_19;
        }

        week = [v9 week];
        if (week == [edidAttributes week])
        {
          self->_cecEnabled = 0;
LABEL_19:
          modelName = [v9 modelName];

          if (modelName)
          {
            modelName2 = [v9 modelName];
            modelName3 = [edidAttributes modelName];
            v17 = [modelName2 isEqualToString:modelName3];

            if (v17)
            {
              self->_cecEnabled = 0;
LABEL_28:
              v19 = CoreRCPluginLog();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v25 = v9;
                _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "CEC Disabled! EDID matched against %@", buf, 0xCu);
              }

              goto LABEL_31;
            }
          }

          else if (!self->_cecEnabled)
          {
            goto LABEL_28;
          }
        }

LABEL_23:
        self->_cecEnabled = 1;
        if (v6 == ++v8)
        {
          v6 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v4 = CoreRCPluginLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      cecEnabled = self->_cecEnabled;
      *buf = 67109120;
      LODWORD(v25) = cecEnabled;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Policy updated _cecEnabled: %d", buf, 8u);
    }

LABEL_31:
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_45CC();
  }
}

- (id)cecDevice
{
  v3 = CoreCECDeviceSourceRCProfileWithSupportedMenuCommands();
  LOBYTE(v17) = 0;
  v4 = [CoreCECDeviceBasicAttributes deviceAttributesWithPrimaryType:2 otherTypes:0 features:537703 rcProfile:v3 vendorID:kCoreCECVendorIDApple version:kCoreCECVersion2_0 active:v17];

  cecDevice = self->_cecDevice;
  if (self->_cecEnabled)
  {
    if (!cecDevice)
    {
      cecBus = self->_cecBus;
      v18 = 0;
      v7 = [(CoreCECBus *)cecBus addDeviceWithAttributes:v4 error:&v18];
      v8 = v18;
      v9 = self->_cecDevice;
      self->_cecDevice = v7;

      v10 = self->_cecDevice;
      if (!v10 || v8)
      {
        sub_4610();
        goto LABEL_11;
      }

      [(CoreCECDevice *)v10 setDelegate:self];
      v11 = CoreRCPluginLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_cecDevice;
        *buf = 138412290;
        v20 = v12;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Added CEC device (%@)", buf, 0xCu);
      }
    }
  }

  else if (cecDevice)
  {
    [(CoreCECDevice *)cecDevice removeFromBus];
    [(CoreCECDevice *)self->_cecDevice setDelegate:0];
    v13 = self->_cecDevice;
    self->_cecDevice = 0;
  }

  v8 = 0;
LABEL_11:
  v14 = self->_cecDevice;
  v15 = v14;

  return v14;
}

- (void)bus:(id)bus deviceHasBeenRemoved:(id)removed
{
  removedCopy = removed;
  if (self->_cecDevice == removedCopy)
  {
    v6 = CoreRCPluginLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = removedCopy;
      v10 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "CEC device has been removed %@ (%@)", &v8, 0x16u);
    }

    cecDevice = self->_cecDevice;
    self->_cecDevice = 0;

    [(CoreCECDevice *)removedCopy setDelegate:0];
  }
}

- (void)cecDeviceShouldAssertActiveSource:(id)source
{
  sourceCopy = source;
  if (!self->_isDisplayAsleep)
  {
    v5 = CoreRCPluginLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412546;
      v7 = sourceCopy;
      v8 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "cecDeviceShouldAssertActiveSource sending active source from device %@ (%@)", &v6, 0x16u);
    }

    [sourceCopy makeActiveSourceWithTVMenus:1 error:0];
  }
}

- (void)cecDevice:(id)device activeSourceStatusHasChanged:(BOOL)changed
{
  changedCopy = changed;
  deviceCopy = device;
  v7 = CoreRCPluginLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "NO";
    v10 = 136315650;
    if (changedCopy)
    {
      v8 = "YES";
    }

    v11 = v8;
    v12 = 2112;
    v13 = deviceCopy;
    v14 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "CECDeviceActiveSourceStatus changed to %s, %@ (%@)\n", &v10, 0x20u);
  }

  if (self->_recentDisplayWake && !changedCopy)
  {
    v9 = CoreRCPluginLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Active source incorrectly switched away from us", &v10, 2u);
    }

    *&self->_activeSourceDeferred = 1;
  }
}

- (void)cecBus:(id)bus linkStateHasBeenUpdated:(BOOL)updated
{
  updatedCopy = updated;
  busCopy = bus;
  v7 = CoreRCPluginLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "NO";
    v13 = 136315650;
    if (updatedCopy)
    {
      v8 = "YES";
    }

    selfCopy2 = v8;
    v15 = 2112;
    v16 = busCopy;
    v17 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Link state %s on bus %@ (%@)\n", &v13, 0x20u);
  }

  if (updatedCopy)
  {
    [(CoreRCDisplay *)self updatePolicy];
    cecDevice = [(CoreRCDisplay *)self cecDevice];
    if (cecDevice)
    {
      if (self->_activeSourceDeferred)
      {

LABEL_10:
        if (self->_isDisplayAsleep)
        {
          v11 = CoreRCPluginLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v13) = 0;
            _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Current display state should be asleep, don't send active source", &v13, 2u);
          }
        }

        else
        {
          [(CoreRCDisplay *)self wakeDisplay];
        }

        self->_activeSourceDeferred = 0;
        goto LABEL_16;
      }

      recentDisplayWake = self->_recentDisplayWake;

      if (recentDisplayWake)
      {
        goto LABEL_10;
      }
    }

    v12 = CoreRCPluginLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Not sending active source %@", &v13, 0xCu);
    }
  }

LABEL_16:
}

@end