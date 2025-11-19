@interface DDDeviceEvent
+ (id)allocInitWithXPCObject:(id)a3 error:(id *)a4;
- (DDDeviceEvent)initWithCoder:(id)a3;
- (DDDeviceEvent)initWithEventType:(DDEventType)type device:(DDDevice *)device;
- (DDDeviceEvent)initWithXPCObject:(id)a3 error:(id *)a4;
- (id)createDADeviceEvent;
- (id)descriptionWithLevel:(int)a3;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation DDDeviceEvent

- (id)createDADeviceEvent
{
  v3 = [(DDDeviceEvent *)self eventType];
  v4 = [(DDDeviceEvent *)self device];
  v5 = [v4 createDADevice];

  v6 = [objc_alloc(MEMORY[0x277D04738]) initWithEventType:v3 device:v5];

  return v6;
}

- (DDDeviceEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self)
  {
    objc_opt_class();
    NSDecodeObjectIfPresent();
    v6 = v5;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v6;
    if ([v7 containsValueForKey:@"evTy"])
    {
      self->_eventType = [v7 decodeIntegerForKey:@"evTy"];
    }

    v8 = self;
  }

  else
  {
    [DDDeviceEvent initWithCoder:v4];
  }

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  device = self->_device;
  v8 = v4;
  if (device)
  {
    [v4 encodeObject:device forKey:@"devi"];
    v4 = v8;
  }

  error = self->_error;
  if (error)
  {
    [v8 encodeObject:error forKey:@"errr"];
    v4 = v8;
  }

  eventType = self->_eventType;
  if (eventType)
  {
    [v8 encodeInteger:eventType forKey:@"evTy"];
    v4 = v8;
  }
}

- (void)encodeWithXPCObject:(id)a3
{
  xdict = a3;
  device = self->_device;
  CUXPCEncodeObject();
  error = self->_error;
  CUXPCEncodeNSError();
  eventType = self->_eventType;
  if (eventType)
  {
    xpc_dictionary_set_int64(xdict, "evTy", eventType);
  }
}

- (DDDeviceEvent)initWithEventType:(DDEventType)type device:(DDDevice *)device
{
  v7 = device;
  v8 = [(DDDeviceEvent *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, device);
    v9->_eventType = type;
    v10 = v9;
  }

  return v9;
}

- (id)descriptionWithLevel:(int)a3
{
  if ((a3 & 0x8000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v13 = objc_opt_class();
    CUAppendF();
    v4 = 0;
  }

  v5 = [(DDDeviceEvent *)self eventType];
  if (v5)
  {
    if ((v5 - 40) <= 2)
    {
      v6 = off_278A469F0[v5 - 40];
    }

    CUAppendF();
    v7 = v4;

    v4 = v7;
  }

  device = self->_device;
  if (device)
  {
    v14 = device;
    CUAppendF();
    v9 = v4;

    v4 = v9;
  }

  v10 = &stru_284AE9D28;
  if (v4)
  {
    v10 = v4;
  }

  v11 = v10;

  return v11;
}

+ (id)allocInitWithXPCObject:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (CUXPCDecodeSInt64RangedEx() != 5 && a4)
  {
    *a4 = DDErrorF(350001, "DDEvent init bad type: %d", v6, v7, v8, v9, v10, v11, 0);
  }

  return 0;
}

- (DDDeviceEvent)initWithXPCObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = DDDeviceEvent;
  v7 = [(DDDeviceEvent *)&v18 init];
  if (!v7)
  {
    if (a4)
    {
      v11 = objc_opt_class();
      DDErrorF(350001, "%@ super init failed", v12, v13, v14, v15, v16, v17, v11);
      *a4 = v9 = 0;
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (!CUXPCDecodeNSError())
  {
    goto LABEL_11;
  }

  v19 = 0;
  v8 = CUXPCDecodeSInt64RangedEx();
  if (v8 == 6)
  {
    v7->_eventType = v19;
    goto LABEL_6;
  }

  if (v8 == 5)
  {
LABEL_11:
    v9 = 0;
    goto LABEL_8;
  }

LABEL_6:
  objc_opt_class();
  if (!CUXPCDecodeObject())
  {
    goto LABEL_11;
  }

  v9 = v7;
LABEL_8:

  return v9;
}

- (void)initWithCoder:(void *)a1 .cold.1(void *a1)
{
  v2 = objc_opt_class();
  v9 = DDErrorF(350001, "%@ init failed", v3, v4, v5, v6, v7, v8, v2);
  [a1 failWithError:v9];
}

@end