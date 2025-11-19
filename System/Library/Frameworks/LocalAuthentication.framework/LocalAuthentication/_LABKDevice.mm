@interface _LABKDevice
+ (id)deviceWithDescriptor:(id)a3 error:(id *)a4;
- (_LABKDevice)initWithDescriptor:(id)a3 error:(id *)a4;
- (id)createMatchOperationWithError:(id *)a3;
- (id)createPresenceDetectOperationWithError:(id *)a3;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)identitiesWithError:(id *)a3;
@end

@implementation _LABKDevice

- (_LABKDevice)initWithDescriptor:(id)a3 error:(id *)a4
{
  v8 = a3;
  v25.receiver = self;
  v25.super_class = _LABKDevice;
  v9 = [(_LABKDevice *)&v25 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_descriptor, a3);
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
    v13 = [v11 deviceDescriptorForType:{objc_msgSend(v8, "type")}];
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
    v16 = [v14 deviceWithDescriptor:v13 error:a4];
    BKDevice = v10->__BKDevice;
    v10->__BKDevice = v16;

    v18 = +[_LAAuthenticationBiometricMethodShim sharedInstance];
    shim = v10->_shim;
    v10->_shim = v18;

    v20 = objc_opt_class();
    v21 = [(_LABKDevice *)v10 descriptor];
    v22 = [v21 type];
    v23 = [(_LABKDevice *)v10 _BKDevice];
    [_LABKLog logClass:v20 selector:a2 message:@"-> deviceType:%d, BKDevice=%@", v22, v23];
  }

  return v10;
}

+ (id)deviceWithDescriptor:(id)a3 error:(id *)a4
{
  v6 = a3;
  [_LABKLog logClass:objc_opt_class() selector:a2 message:&stru_1F1A66748];
  v7 = [v6 type];
  if (v7 == 1)
  {
    v8 = off_1E77CABB0;
    goto LABEL_5;
  }

  if (v7 == 2)
  {
    v8 = off_1E77CABA8;
LABEL_5:
    v9 = [objc_alloc(*v8) initWithDescriptor:v6 error:a4];
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (id)identitiesWithError:(id *)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  [_LABKLog logClass:objc_opt_class() selector:a2 message:&stru_1F1A66748];
  v4 = [(_LABKDevice *)self shim];
  v5 = [v4 biometricMethod];
  if ([v5 isEnrolled])
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

- (id)createMatchOperationWithError:(id *)a3
{
  [_LABKLog logClass:objc_opt_class() selector:a2 message:@"override"];
  v5 = [(_LABKDevice *)self _BKDevice];
  v6 = [v5 createMatchOperationWithError:a3];

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

- (id)createPresenceDetectOperationWithError:(id *)a3
{
  [_LABKLog logClass:objc_opt_class() selector:a2 message:@"override"];
  v5 = [(_LABKDevice *)self _BKDevice];
  v6 = [v5 createPresenceDetectOperationWithError:a3];

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

- (id)forwardingTargetForSelector:(SEL)a3
{
  [_LABKLog logClass:objc_opt_class() selector:a3 message:@"forwarding to BK"];

  return [(_LABKDevice *)self _BKDevice];
}

@end