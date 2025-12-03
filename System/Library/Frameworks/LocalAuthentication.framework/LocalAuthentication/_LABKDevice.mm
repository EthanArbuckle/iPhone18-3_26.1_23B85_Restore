@interface _LABKDevice
+ (id)deviceWithDescriptor:(id)descriptor error:(id *)error;
- (_LABKDevice)initWithDescriptor:(id)descriptor error:(id *)error;
- (id)createMatchOperationWithError:(id *)error;
- (id)createPresenceDetectOperationWithError:(id *)error;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)identitiesWithError:(id *)error;
@end

@implementation _LABKDevice

- (_LABKDevice)initWithDescriptor:(id)descriptor error:(id *)error
{
  descriptorCopy = descriptor;
  v25.receiver = self;
  v25.super_class = _LABKDevice;
  v9 = [(_LABKDevice *)&v25 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_descriptor, descriptor);
    v31 = 0;
    v32 = &v31;
    v33 = 0x2050000000;
    v11 = getBKDeviceDescriptorClass_softClass;
    v34 = getBKDeviceDescriptorClass_softClass;
    if (!getBKDeviceDescriptorClass_softClass)
    {
      v26 = MEMORY[0x1E69E9820];
      v27 = 3221225472;
      v28 = __getBKDeviceDescriptorClass_block_invoke;
      v29 = &unk_1E77CB120;
      v30 = &v31;
      __getBKDeviceDescriptorClass_block_invoke(&v26);
      v11 = v32[3];
    }

    v12 = v11;
    _Block_object_dispose(&v31, 8);
    v13 = [v11 deviceDescriptorForType:{objc_msgSend(descriptorCopy, "type")}];
    v31 = 0;
    v32 = &v31;
    v33 = 0x2050000000;
    v14 = getBKDeviceClass_softClass;
    v34 = getBKDeviceClass_softClass;
    if (!getBKDeviceClass_softClass)
    {
      v26 = MEMORY[0x1E69E9820];
      v27 = 3221225472;
      v28 = __getBKDeviceClass_block_invoke;
      v29 = &unk_1E77CB120;
      v30 = &v31;
      __getBKDeviceClass_block_invoke(&v26);
      v14 = v32[3];
    }

    v15 = v14;
    _Block_object_dispose(&v31, 8);
    v16 = [v14 deviceWithDescriptor:v13 error:error];
    BKDevice = v10->__BKDevice;
    v10->__BKDevice = v16;

    v18 = +[_LAAuthenticationBiometricMethodShim sharedInstance];
    shim = v10->_shim;
    v10->_shim = v18;

    v20 = objc_opt_class();
    descriptor = [(_LABKDevice *)v10 descriptor];
    type = [descriptor type];
    _BKDevice = [(_LABKDevice *)v10 _BKDevice];
    [_LABKLog logClass:v20 selector:a2 message:@"-> deviceType:%d, BKDevice=%@", type, _BKDevice];
  }

  return v10;
}

+ (id)deviceWithDescriptor:(id)descriptor error:(id *)error
{
  descriptorCopy = descriptor;
  [_LABKLog logClass:objc_opt_class() selector:a2 message:&stru_1F1A66748];
  type = [descriptorCopy type];
  if (type == 1)
  {
    v8 = off_1E77CABB0;
    goto LABEL_5;
  }

  if (type == 2)
  {
    v8 = off_1E77CABA8;
LABEL_5:
    v9 = [objc_alloc(*v8) initWithDescriptor:descriptorCopy error:error];
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (id)identitiesWithError:(id *)error
{
  v10[1] = *MEMORY[0x1E69E9840];
  [_LABKLog logClass:objc_opt_class() selector:a2 message:&stru_1F1A66748];
  shim = [(_LABKDevice *)self shim];
  biometricMethod = [shim biometricMethod];
  if ([biometricMethod isEnrolled])
  {
    v6 = objc_opt_new();
    v10[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)createMatchOperationWithError:(id *)error
{
  [_LABKLog logClass:objc_opt_class() selector:a2 message:@"override"];
  _BKDevice = [(_LABKDevice *)self _BKDevice];
  v6 = [_BKDevice createMatchOperationWithError:error];

  if (v6)
  {
    v7 = [_LABKOperation _wrapperForBKOperation:v6 device:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)createPresenceDetectOperationWithError:(id *)error
{
  [_LABKLog logClass:objc_opt_class() selector:a2 message:@"override"];
  _BKDevice = [(_LABKDevice *)self _BKDevice];
  v6 = [_BKDevice createPresenceDetectOperationWithError:error];

  if (v6)
  {
    v7 = [_LABKOperation _wrapperForBKOperation:v6 device:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  [_LABKLog logClass:objc_opt_class() selector:selector message:@"forwarding to BK"];

  return [(_LABKDevice *)self _BKDevice];
}

@end