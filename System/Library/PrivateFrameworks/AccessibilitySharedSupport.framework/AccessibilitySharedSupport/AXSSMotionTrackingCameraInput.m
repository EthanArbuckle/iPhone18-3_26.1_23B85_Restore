@interface AXSSMotionTrackingCameraInput
+ (id)captureDeviceForMotionTrackingInput:(id)a3;
+ (id)motionTrackingCameraInputWithAVCaptureDevice:(id)a3;
- (AXSSMotionTrackingCameraInput)initWithCaptureDeviceUniqueID:(id)a3 name:(id)a4 isBuiltIn:(BOOL)a5 trackingType:(unint64_t)a6;
- (AXSSMotionTrackingCameraInput)initWithCoder:(id)a3;
- (AXSSMotionTrackingCameraInput)initWithPlistDictionary:(id)a3;
- (id)description;
- (id)plistDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXSSMotionTrackingCameraInput

+ (id)captureDeviceForMotionTrackingInput:(id)a3
{
  v3 = a3;
  v4 = [v3 captureDeviceUniqueID];
  if ([v4 length])
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v5 = getAVCaptureDeviceClass_softClass;
    v13 = getAVCaptureDeviceClass_softClass;
    if (!getAVCaptureDeviceClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getAVCaptureDeviceClass_block_invoke;
      v9[3] = &unk_1E8134F10;
      v9[4] = &v10;
      __getAVCaptureDeviceClass_block_invoke(v9);
      v5 = v11[3];
    }

    v6 = v5;
    _Block_object_dispose(&v10, 8);
    v7 = [v5 deviceWithUniqueID:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)motionTrackingCameraInputWithAVCaptureDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 uniqueID];
  v5 = [v3 localizedName];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v6 = getAVMediaTypeVideoSymbolLoc_ptr;
  v19 = getAVMediaTypeVideoSymbolLoc_ptr;
  if (!getAVMediaTypeVideoSymbolLoc_ptr)
  {
    v7 = AVFoundationLibrary();
    v17[3] = dlsym(v7, "AVMediaTypeVideo");
    getAVMediaTypeVideoSymbolLoc_ptr = v17[3];
    v6 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v6)
  {
    v15 = +[AXSSMotionTrackingCameraInput motionTrackingCameraInputWithAVCaptureDevice:];
    _Block_object_dispose(&v16, 8);
    _Unwind_Resume(v15);
  }

  if ([v3 hasMediaType:*v6] && (getAVMediaTypeMetadataObject(), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v3, "hasMediaType:", v8), v8, (v9 & 1) != 0))
  {
    v10 = 3;
  }

  else
  {
    v11 = getAVMediaTypeMetadataObject();
    v12 = [v3 hasMediaType:v11];

    v10 = v12;
  }

  if ([v4 length])
  {
    v13 = [[AXSSMotionTrackingCameraInput alloc] initWithCaptureDeviceUniqueID:v4 name:v5 isBuiltIn:1 trackingType:v10];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (AXSSMotionTrackingCameraInput)initWithCaptureDeviceUniqueID:(id)a3 name:(id)a4 isBuiltIn:(BOOL)a5 trackingType:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  if ([v10 length])
  {
    v19.receiver = self;
    v19.super_class = AXSSMotionTrackingCameraInput;
    v12 = [(AXSSMotionTrackingInput *)&v19 init];
    if (v12)
    {
      v13 = [v10 copy];
      captureDeviceUniqueID = v12->_captureDeviceUniqueID;
      v12->_captureDeviceUniqueID = v13;

      v15 = [v11 copy];
      name = v12->_name;
      v12->_name = v15;

      v12->_isBuiltIn = a5;
      v12->_trackingType = a6;
    }

    self = v12;
    v17 = self;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v14 = a3;
  v4 = [(AXSSMotionTrackingCameraInput *)self captureDeviceUniqueID];

  if (v4)
  {
    v5 = [(AXSSMotionTrackingCameraInput *)self captureDeviceUniqueID];
    v6 = NSStringFromSelector(sel_captureDeviceUniqueID);
    [v14 encodeObject:v5 forKey:v6];
  }

  v7 = [(AXSSMotionTrackingCameraInput *)self name];

  if (v7)
  {
    v8 = [(AXSSMotionTrackingCameraInput *)self name];
    v9 = NSStringFromSelector(sel_name);
    [v14 encodeObject:v8 forKey:v9];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXSSMotionTrackingCameraInput isBuiltIn](self, "isBuiltIn")}];
  v11 = NSStringFromSelector(sel_isBuiltIn);
  [v14 encodeObject:v10 forKey:v11];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AXSSMotionTrackingCameraInput trackingType](self, "trackingType")}];
  v13 = NSStringFromSelector(sel_trackingType);
  [v14 encodeObject:v12 forKey:v13];
}

- (AXSSMotionTrackingCameraInput)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_captureDeviceUniqueID);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_name);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_isBuiltIn);
  v13 = [v4 decodeObjectOfClass:v11 forKey:v12];
  v14 = [v13 BOOLValue];

  v15 = objc_opt_class();
  v16 = NSStringFromSelector(sel_trackingType);
  v17 = [v4 decodeObjectOfClass:v15 forKey:v16];

  v18 = [v17 integerValue];
  v19 = [(AXSSMotionTrackingCameraInput *)self initWithCaptureDeviceUniqueID:v7 name:v10 isBuiltIn:v14 trackingType:v18];

  return v19;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = AXSSMotionTrackingCameraInput;
  v4 = [(AXSSMotionTrackingCameraInput *)&v9 description];
  v5 = [(AXSSMotionTrackingCameraInput *)self captureDeviceUniqueID];
  v6 = [(AXSSMotionTrackingCameraInput *)self name];
  v7 = [v3 stringWithFormat:@"%@ <%@, %@, %d>", v4, v5, v6, -[AXSSMotionTrackingCameraInput isBuiltIn](self, "isBuiltIn")];

  return v7;
}

- (id)plistDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v15.receiver = self;
  v15.super_class = AXSSMotionTrackingCameraInput;
  v4 = [(AXSSMotionTrackingInput *)&v15 plistDictionary];
  if ([v4 count])
  {
    [v3 addEntriesFromDictionary:v4];
  }

  v5 = [(AXSSMotionTrackingCameraInput *)self captureDeviceUniqueID];
  v6 = NSStringFromSelector(sel_captureDeviceUniqueID);
  [v3 setObject:v5 forKeyedSubscript:v6];

  v7 = [(AXSSMotionTrackingCameraInput *)self name];
  v8 = NSStringFromSelector(sel_name);
  [v3 setObject:v7 forKeyedSubscript:v8];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXSSMotionTrackingCameraInput isBuiltIn](self, "isBuiltIn")}];
  v10 = NSStringFromSelector(sel_isBuiltIn);
  [v3 setObject:v9 forKeyedSubscript:v10];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AXSSMotionTrackingCameraInput trackingType](self, "trackingType")}];
  v12 = NSStringFromSelector(sel_trackingType);
  [v3 setObject:v11 forKeyedSubscript:v12];

  v13 = [v3 copy];

  return v13;
}

- (AXSSMotionTrackingCameraInput)initWithPlistDictionary:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_captureDeviceUniqueID);
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = NSStringFromSelector(sel_name);
  v8 = [v4 objectForKeyedSubscript:v7];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = NSStringFromSelector(sel_isBuiltIn);
  v11 = [v4 objectForKeyedSubscript:v10];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v11 BOOLValue];
  }

  else
  {
    v12 = 0;
  }

  v13 = NSStringFromSelector(sel_trackingType);
  v14 = [v4 objectForKeyedSubscript:v13];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [v14 unsignedIntegerValue];
  }

  else
  {
    v15 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 length])
  {
    self = [(AXSSMotionTrackingCameraInput *)self initWithCaptureDeviceUniqueID:v6 name:v9 isBuiltIn:v12 trackingType:v15];
    v16 = self;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (uint64_t)motionTrackingCameraInputWithAVCaptureDevice:.cold.1()
{
  dlerror();
  abort_report_np();
  return __getAVCaptureDeviceClass_block_invoke_cold_1();
}

@end