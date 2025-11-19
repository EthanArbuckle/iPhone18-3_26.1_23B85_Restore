@interface IOUSBHostInterface
- (CCIDDescriptorView)CCIDDescriptor;
- (NSArray)pipes;
- (Properties)properties;
@end

@implementation IOUSBHostInterface

- (CCIDDescriptorView)CCIDDescriptor
{
  AssociatedDescriptorWithType = IOUSBGetNextAssociatedDescriptorWithType([(IOUSBHostInterface *)self configurationDescriptor], [(IOUSBHostInterface *)self interfaceDescriptor], 0, 0x21u);
  if (AssociatedDescriptorWithType)
  {
    p_bLength = &AssociatedDescriptorWithType->bLength;
    bLength = AssociatedDescriptorWithType->bLength;
    if (+[CCIDDescriptorView length]== bLength)
    {
      v5 = [[CCIDDescriptorView alloc] initWithBytes:p_bLength length:*p_bLength];
      goto LABEL_9;
    }

    v6 = sub_100001170();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100014314();
    }
  }

  else
  {
    v6 = sub_100001170();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100014350();
    }
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (NSArray)pipes
{
  v3 = objc_opt_new();
  EndpointDescriptor = IOUSBGetNextEndpointDescriptor([(IOUSBHostInterface *)self configurationDescriptor], [(IOUSBHostInterface *)self interfaceDescriptor], 0);
  if (EndpointDescriptor)
  {
    v5 = EndpointDescriptor;
    while (1)
    {
      bLength = v5[1].bLength;
      v12 = 0;
      v7 = [(IOUSBHostInterface *)self copyPipeWithAddress:bLength error:&v12];
      v8 = v12;
      if (!v7)
      {
        break;
      }

      [v3 addObject:v7];

      v5 = IOUSBGetNextEndpointDescriptor([(IOUSBHostInterface *)self configurationDescriptor], [(IOUSBHostInterface *)self interfaceDescriptor], v5);
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v10 = sub_100001170();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001438C();
    }

    v9 = 0;
  }

  else
  {
LABEL_5:
    v9 = v3;
  }

  return v9;
}

- (Properties)properties
{
  v3 = [Properties alloc];
  v4 = [[IOKitObjectHolder alloc] initWithObject:[(IOUSBHostInterface *)self ioService]];
  v5 = [(Properties *)v3 initWithService:v4];

  return v5;
}

@end