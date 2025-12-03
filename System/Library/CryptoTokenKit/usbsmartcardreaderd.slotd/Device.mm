@interface Device
+ (NSMutableDictionary)devices;
+ (Synchronize)synchronize;
+ (void)registerService:(id)service;
- (Device)initWithService:(id)service;
- (NSNumber)locationId;
- (NSNumber)productId;
- (NSNumber)vendorId;
- (NSString)interfaceName;
- (NSString)productName;
- (NSString)vendorName;
- (id)description;
- (id)deviceAccessBlock:(id)block;
- (unint64_t)handleEANotification;
- (void)terminate;
- (void)watchInterruptPipe:(id)pipe;
@end

@implementation Device

+ (NSMutableDictionary)devices
{
  if (qword_10002C008 != -1)
  {
    sub_100017174();
  }

  v3 = qword_10002C000;

  return v3;
}

+ (Synchronize)synchronize
{
  if (qword_10002C018 != -1)
  {
    sub_100017188();
  }

  v3 = qword_10002C010;

  return v3;
}

- (NSString)productName
{
  properties = [(IOUSBHostInterface *)self->_interface properties];
  stringValue = [properties get:@"kUSBProductString"];

  if (!stringValue)
  {
    properties2 = [(IOUSBHostInterface *)self->_interface properties];
    stringValue = [properties2 get:@"USB Product Name"];

    if (!stringValue)
    {
      productId = [(Device *)self productId];
      stringValue = [productId stringValue];
    }
  }

  return stringValue;
}

- (NSString)vendorName
{
  properties = [(IOUSBHostInterface *)self->_interface properties];
  stringValue = [properties get:@"kUSBVendorString"];

  if (!stringValue)
  {
    properties2 = [(IOUSBHostInterface *)self->_interface properties];
    stringValue = [properties2 get:@"USB Vendor Name"];

    if (!stringValue)
    {
      vendorId = [(Device *)self vendorId];
      stringValue = [vendorId stringValue];
    }
  }

  return stringValue;
}

- (NSString)interfaceName
{
  properties = [(IOUSBHostInterface *)self->_interface properties];
  v3 = [properties get:@"kUSBString"];

  return v3;
}

- (NSNumber)productId
{
  properties = [(IOUSBHostInterface *)self->_interface properties];
  v3 = [properties get:@"idProduct"];

  return v3;
}

- (NSNumber)vendorId
{
  properties = [(IOUSBHostInterface *)self->_interface properties];
  v3 = [properties get:@"idVendor"];

  return v3;
}

- (NSNumber)locationId
{
  properties = [(IOUSBHostInterface *)self->_interface properties];
  v3 = [properties get:@"locationID"];

  return v3;
}

- (id)description
{
  v3 = +[NSMutableString string];
  [v3 appendString:@"{\n"];
  productName = [(Device *)self productName];
  [v3 appendFormat:@"    productName: %@\n", productName];

  interfaceName = [(Device *)self interfaceName];

  if (interfaceName)
  {
    interfaceName2 = [(Device *)self interfaceName];
    [v3 appendFormat:@"    interfaceName: %@\n\n", interfaceName2];
  }

  vendorName = [(Device *)self vendorName];
  [v3 appendFormat:@"    vendorName: %@\n", vendorName];

  productId = [(Device *)self productId];
  [v3 appendFormat:@"    productId: %@\n", productId];

  vendorId = [(Device *)self vendorId];
  [v3 appendFormat:@"    vendorId: %@\n}", vendorId];

  return v3;
}

- (void)terminate
{
  v3 = sub_10000D560();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Device terminate", buf, 2u);
  }

  if (self->_notificationDispatchToken)
  {
    v4 = sub_10000D560();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10001724C();
    }

    notify_cancel(self->_notificationDispatchToken);
    self->_notificationDispatchToken = 0;
  }

  if (self->_notificationToken)
  {
    v5 = sub_10000D560();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100017288();
    }

    notify_cancel(self->_notificationToken);
    self->_notificationToken = 0;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = self->_slots;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v23 + 1) + 8 * v10) terminate];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v8);
  }

  v11 = sub_10000D560();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1000172C4();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  pipes = [(IOUSBHostInterface *)self->_interface pipes];
  v13 = [pipes countByEnumeratingWithState:&v19 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(pipes);
        }

        [*(*(&v19 + 1) + 8 * v16) abortWithOption:1 error:0];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [pipes countByEnumeratingWithState:&v19 objects:v28 count:16];
    }

    while (v14);
  }

  v17 = +[Device devices];
  v18 = [NSNumber numberWithUnsignedLongLong:[(Device *)self entryID]];
  [v17 removeObjectForKey:v18];
}

- (unint64_t)handleEANotification
{
  if (notify_register_check("com.apple.accessories.ea.sessionStatusChanged", &self->_notificationToken))
  {
    v3 = sub_10000D560();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100017300();
    }

    return 0;
  }

  else
  {
    objc_initWeak(&location, self);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000E780;
    v12[3] = &unk_100024968;
    v12[4] = self;
    v5 = objc_retainBlock(v12);
    v4 = (v5[2])();
    if (!v4)
    {
      v6 = +[Device synchronize];
      queue = [v6 queue];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10000E820;
      v9[3] = &unk_100024990;
      v10 = v5;
      objc_copyWeak(&v11, &location);
      notify_register_dispatch("com.apple.accessories.ea.sessionStatusChanged", &self->_notificationDispatchToken, queue, v9);

      objc_destroyWeak(&v11);
    }

    objc_destroyWeak(&location);
  }

  return v4;
}

- (Device)initWithService:(id)service
{
  serviceCopy = service;
  v94.receiver = self;
  v94.super_class = Device;
  v6 = [(Device *)&v94 init];
  val = v6;
  if (v6)
  {
    *&v6->_notificationToken = 0;
    v7 = [[Synchronize alloc] initWithQueueName:@"com.apple.ctk.ccid.interruption"];
    interruptionSync = val->_interruptionSync;
    val->_interruptionSync = v7;

    v77 = [[Properties alloc] initWithService:serviceCopy];
    v76 = [(Properties *)v77 get:@"idProduct"];
    v75 = [(Properties *)v77 get:@"idVendor"];
    v9 = sub_10000D560();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1000173A4(v76, v75);
    }

    AnalyticsSendEventLazy();
    val->_entryID = sub_100001BA8(serviceCopy);
    objc_initWeak(&location, val);
    v10 = [IOUSBHostInterface alloc];
    holder = [serviceCopy holder];
    v92 = 0;
    v90[0] = _NSConcreteStackBlock;
    v90[1] = 3221225472;
    v90[2] = sub_10000F39C;
    v90[3] = &unk_1000249F8;
    objc_copyWeak(&v91, &location);
    v12 = [v10 initWithIOService:holder options:0 queue:0 error:&v92 interestHandler:v90];
    v74 = v92;
    interface = val->_interface;
    val->_interface = v12;

    if ([(Device *)val handleEANotification])
    {
      [(Device *)val terminate];
LABEL_6:
      objc_destroyWeak(&v91);
      objc_destroyWeak(&location);

      goto LABEL_7;
    }

    v15 = val->_interface;
    v16 = sub_10000D560();
    v17 = v16;
    if (!v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100017520(v74, v17);
      }

      goto LABEL_6;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      productId = [(Device *)val productId];
      unsignedIntValue = [productId unsignedIntValue];
      vendorId = [(Device *)val vendorId];
      unsignedIntValue2 = [vendorId unsignedIntValue];
      locationId = [(Device *)val locationId];
      unsignedIntValue3 = [locationId unsignedIntValue];
      entryID = [(Device *)val entryID];
      vendorName = [(Device *)val vendorName];
      productName = [(Device *)val productName];
      interfaceName = [(Device *)val interfaceName];
      *buf = 67110658;
      v97 = unsignedIntValue;
      v98 = 1024;
      v99 = unsignedIntValue2;
      v100 = 1024;
      v101 = unsignedIntValue3;
      v102 = 2048;
      v103 = entryID;
      v104 = 2114;
      v105 = vendorName;
      v106 = 2114;
      v107 = productName;
      v108 = 2114;
      v109 = interfaceName;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "new device arrival: %04x:%04x %x (entryId=%llx) (%{public}@ %{public}@ %{public}@)", buf, 0x3Cu);
    }

    cCIDDescriptor = [(IOUSBHostInterface *)val->_interface CCIDDescriptor];
    CCIDDescriptor = val->_CCIDDescriptor;
    val->_CCIDDescriptor = cCIDDescriptor;

    v20 = objc_opt_new();
    slots = val->_slots;
    val->_slots = v20;

    p_isa = &val->super.isa;
    if ([(CCIDDescriptorView *)val->_CCIDDescriptor bMaxSlotIndex])
    {
      LODWORD(v23) = [(CCIDDescriptorView *)val->_CCIDDescriptor bMaxCCIDBusySlots];
      v23 = v23 <= 1 ? 1 : v23;
      v24 = dispatch_semaphore_create(v23);
      slotSemaphore = val->_slotSemaphore;
      val->_slotSemaphore = v24;

      p_isa = &val->super.isa;
      if (!val->_slotSemaphore)
      {
        v59 = sub_10000D560();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          sub_100017450();
        }

        objc_destroyWeak(&v91);
        objc_destroyWeak(&location);

        goto LABEL_7;
      }
    }

    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    pipes = [p_isa[2] pipes];
    v27 = 0;
    v28 = [pipes countByEnumeratingWithState:&v86 objects:v95 count:16];
    if (v28)
    {
      v83 = 0;
      v29 = 0;
      locationId = *v87;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v87 != locationId)
          {
            objc_enumerationMutation(pipes);
          }

          v31 = *(*(&v86 + 1) + 8 * i);
          if ([v31 endpointType] == 2 && objc_msgSend(v31, "endpointDirection") == 1)
          {
            v32 = v31;
            v33 = v29;
            v29 = v32;
          }

          else if ([v31 endpointType] == 2 && !objc_msgSend(v31, "endpointDirection"))
          {
            v35 = v31;
            v33 = v83;
            v83 = v35;
          }

          else if ([v31 endpointType] == 3 && objc_msgSend(v31, "endpointDirection") == 1)
          {
            v34 = v31;
            v33 = v27;
            v27 = v34;
          }

          else
          {
            v33 = sub_10000D560();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              sub_100017484(buf, &buf[1], v33);
            }
          }
        }

        v28 = [pipes countByEnumeratingWithState:&v86 objects:v95 count:16];
      }

      while (v28);
    }

    else
    {
      v83 = 0;
      v29 = 0;
    }

    v36 = 0;
    v37 = *([(IOUSBHostInterface *)val->_interface interfaceDescriptor]+ 7);
    if (v29)
    {
      v38 = v83 == 0;
    }

    else
    {
      v38 = 1;
    }

    v40 = v38 || v37 != 0;
    LODWORD(productName2) = v40;
    while (1)
    {
      cCIDDescriptor2 = [(Device *)val CCIDDescriptor];
      v42 = v36 > [cCIDDescriptor2 bMaxSlotIndex];

      if (v42)
      {
        break;
      }

      vendorName2 = [(Device *)val vendorName];
      interfaceName2 = [(Device *)val interfaceName];
      if (interfaceName2)
      {
        locationId = [(Device *)val interfaceName];
        pipes = [(Device *)val productName];
        if ([locationId containsString:pipes])
        {
          interfaceName3 = [(Device *)val interfaceName];
          unsignedIntValue2 = 0;
          v46 = 1;
          v79 = interfaceName3;
        }

        else
        {
          interfaceName3 = [(Device *)val productName];
          v46 = 0;
          unsignedIntValue2 = 1;
          v80 = interfaceName3;
        }
      }

      else
      {
        interfaceName3 = [(Device *)val productName];
        v46 = 0;
        unsignedIntValue2 = 0;
        v78 = interfaceName3;
      }

      v47 = [NSMutableString stringWithFormat:@"%@ %@", vendorName2, interfaceName3];
      if (!interfaceName2)
      {
      }

      if (unsignedIntValue2)
      {
      }

      if (v46)
      {
      }

      if (interfaceName2)
      {
      }

      if (qword_10002C038 != -1)
      {
        sub_1000174C4();
      }

      if (byte_10002C030 == 1)
      {
        locationId2 = [(Device *)val locationId];
        [v47 appendFormat:@"[%@]", locationId2];
      }

      cCIDDescriptor3 = [(Device *)val CCIDDescriptor];
      v50 = [cCIDDescriptor3 bMaxSlotIndex] == 0;

      if (!v50)
      {
        [v47 appendFormat:@"(%d)", v36 + 1];
      }

      if (productName2)
      {
        v51 = 0;
      }

      else
      {
        v51 = [[CCIDSlot alloc] initWithDevice:val slotName:v47 slotNumber:v36 pipeIn:v29 pipeOut:v83];
        if (v51)
        {
          [(NSMutableArray *)val->_slots addObject:v51];
        }
      }

      ++v36;
    }

    v52 = [(NSMutableArray *)val->_slots count];
    if (v52)
    {
      if (v27)
      {
        [(Device *)val watchInterruptPipe:v27];
      }

      vendorName3 = [(Device *)val vendorName];
      interfaceName4 = [(Device *)val interfaceName];
      if (interfaceName4)
      {
        unsignedIntValue2 = [(Device *)val interfaceName];
        productName2 = [(Device *)val productName];
        if ([unsignedIntValue2 containsString:productName2])
        {
          interfaceName5 = [(Device *)val interfaceName];
          v56 = 0;
          v57 = 1;
        }

        else
        {
          interfaceName5 = [(Device *)val productName];
          v57 = 0;
          v56 = 1;
        }
      }

      else
      {
        interfaceName5 = [(Device *)val productName];
        v57 = 0;
        v56 = 0;
      }

      v58 = [NSMutableString stringWithFormat:@"%@ %@", vendorName3, interfaceName5];
      if (!interfaceName4)
      {
      }

      if (v56)
      {
      }

      if (v57)
      {
      }

      if (interfaceName4)
      {
      }

      v60 = [NSString stringWithFormat:@"com.apple.ccid:%@", v58];
      v61 = v60;
      [v60 UTF8String];
      v62 = os_transaction_create();
      transaction = val->_transaction;
      val->_transaction = v62;
    }

    else
    {
      v58 = sub_10000D560();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
      {
        sub_1000174EC();
      }
    }

    objc_destroyWeak(&v91);
    objc_destroyWeak(&location);

    if (!v52)
    {
LABEL_7:
      v14 = 0;
      goto LABEL_102;
    }
  }

  v64 = sub_10000D560();
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
  {
    sub_100017598();
  }

  v65 = sub_10000D560();
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
  {
    sub_10001760C(val);
  }

  v14 = val;
LABEL_102:

  return v14;
}

- (void)watchInterruptPipe:(id)pipe
{
  pipeCopy = pipe;
  objc_initWeak(&location, self);
  interruptionSync = [(Device *)self interruptionSync];
  queue = [interruptionSync queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000F5E8;
  v8[3] = &unk_100024A48;
  objc_copyWeak(&v11, &location);
  v9 = pipeCopy;
  selfCopy = self;
  v7 = pipeCopy;
  dispatch_async(queue, v8);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

+ (void)registerService:(id)service
{
  serviceCopy = service;
  v4 = +[Device synchronize];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000F8A0;
  v6[3] = &unk_1000244F0;
  v7 = serviceCopy;
  v5 = serviceCopy;
  [v4 sync:v6];
}

- (id)deviceAccessBlock:(id)block
{
  slotSemaphore = self->_slotSemaphore;
  if (slotSemaphore)
  {
    blockCopy = block;
    dispatch_semaphore_wait(slotSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    v6 = blockCopy[2](blockCopy);

    dispatch_semaphore_signal(self->_slotSemaphore);
  }

  else
  {
    v7 = *(block + 2);
    blockCopy2 = block;
    v6 = v7();
  }

  return v6;
}

@end