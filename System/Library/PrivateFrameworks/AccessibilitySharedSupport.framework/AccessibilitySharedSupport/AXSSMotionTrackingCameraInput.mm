@interface AXSSMotionTrackingCameraInput
+ (id)captureDeviceForMotionTrackingInput:(id)input;
+ (id)motionTrackingCameraInputWithAVCaptureDevice:(id)device;
- (AXSSMotionTrackingCameraInput)initWithCaptureDeviceUniqueID:(id)d name:(id)name isBuiltIn:(BOOL)in trackingType:(unint64_t)type;
- (AXSSMotionTrackingCameraInput)initWithCoder:(id)coder;
- (AXSSMotionTrackingCameraInput)initWithPlistDictionary:(id)dictionary;
- (id)description;
- (id)plistDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXSSMotionTrackingCameraInput

+ (id)captureDeviceForMotionTrackingInput:(id)input
{
  inputCopy = input;
  captureDeviceUniqueID = [inputCopy captureDeviceUniqueID];
  if ([captureDeviceUniqueID length])
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
    v7 = [v5 deviceWithUniqueID:captureDeviceUniqueID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)motionTrackingCameraInputWithAVCaptureDevice:(id)device
{
  deviceCopy = device;
  uniqueID = [deviceCopy uniqueID];
  localizedName = [deviceCopy localizedName];
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

  if ([deviceCopy hasMediaType:*v6] && (getAVMediaTypeMetadataObject(), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(deviceCopy, "hasMediaType:", v8), v8, (v9 & 1) != 0))
  {
    v10 = 3;
  }

  else
  {
    v11 = getAVMediaTypeMetadataObject();
    v12 = [deviceCopy hasMediaType:v11];

    v10 = v12;
  }

  if ([uniqueID length])
  {
    v13 = [[AXSSMotionTrackingCameraInput alloc] initWithCaptureDeviceUniqueID:uniqueID name:localizedName isBuiltIn:1 trackingType:v10];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (AXSSMotionTrackingCameraInput)initWithCaptureDeviceUniqueID:(id)d name:(id)name isBuiltIn:(BOOL)in trackingType:(unint64_t)type
{
  dCopy = d;
  nameCopy = name;
  if ([dCopy length])
  {
    v19.receiver = self;
    v19.super_class = AXSSMotionTrackingCameraInput;
    v12 = [(AXSSMotionTrackingInput *)&v19 init];
    if (v12)
    {
      v13 = [dCopy copy];
      captureDeviceUniqueID = v12->_captureDeviceUniqueID;
      v12->_captureDeviceUniqueID = v13;

      v15 = [nameCopy copy];
      name = v12->_name;
      v12->_name = v15;

      v12->_isBuiltIn = in;
      v12->_trackingType = type;
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  captureDeviceUniqueID = [(AXSSMotionTrackingCameraInput *)self captureDeviceUniqueID];

  if (captureDeviceUniqueID)
  {
    captureDeviceUniqueID2 = [(AXSSMotionTrackingCameraInput *)self captureDeviceUniqueID];
    v6 = NSStringFromSelector(sel_captureDeviceUniqueID);
    [coderCopy encodeObject:captureDeviceUniqueID2 forKey:v6];
  }

  name = [(AXSSMotionTrackingCameraInput *)self name];

  if (name)
  {
    name2 = [(AXSSMotionTrackingCameraInput *)self name];
    v9 = NSStringFromSelector(sel_name);
    [coderCopy encodeObject:name2 forKey:v9];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXSSMotionTrackingCameraInput isBuiltIn](self, "isBuiltIn")}];
  v11 = NSStringFromSelector(sel_isBuiltIn);
  [coderCopy encodeObject:v10 forKey:v11];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AXSSMotionTrackingCameraInput trackingType](self, "trackingType")}];
  v13 = NSStringFromSelector(sel_trackingType);
  [coderCopy encodeObject:v12 forKey:v13];
}

- (AXSSMotionTrackingCameraInput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_captureDeviceUniqueID);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_name);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_isBuiltIn);
  v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];
  bOOLValue = [v13 BOOLValue];

  v15 = objc_opt_class();
  v16 = NSStringFromSelector(sel_trackingType);
  v17 = [coderCopy decodeObjectOfClass:v15 forKey:v16];

  integerValue = [v17 integerValue];
  v19 = [(AXSSMotionTrackingCameraInput *)self initWithCaptureDeviceUniqueID:v7 name:v10 isBuiltIn:bOOLValue trackingType:integerValue];

  return v19;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = AXSSMotionTrackingCameraInput;
  v4 = [(AXSSMotionTrackingCameraInput *)&v9 description];
  captureDeviceUniqueID = [(AXSSMotionTrackingCameraInput *)self captureDeviceUniqueID];
  name = [(AXSSMotionTrackingCameraInput *)self name];
  v7 = [v3 stringWithFormat:@"%@ <%@, %@, %d>", v4, captureDeviceUniqueID, name, -[AXSSMotionTrackingCameraInput isBuiltIn](self, "isBuiltIn")];

  return v7;
}

- (id)plistDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v15.receiver = self;
  v15.super_class = AXSSMotionTrackingCameraInput;
  plistDictionary = [(AXSSMotionTrackingInput *)&v15 plistDictionary];
  if ([plistDictionary count])
  {
    [dictionary addEntriesFromDictionary:plistDictionary];
  }

  captureDeviceUniqueID = [(AXSSMotionTrackingCameraInput *)self captureDeviceUniqueID];
  v6 = NSStringFromSelector(sel_captureDeviceUniqueID);
  [dictionary setObject:captureDeviceUniqueID forKeyedSubscript:v6];

  name = [(AXSSMotionTrackingCameraInput *)self name];
  v8 = NSStringFromSelector(sel_name);
  [dictionary setObject:name forKeyedSubscript:v8];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXSSMotionTrackingCameraInput isBuiltIn](self, "isBuiltIn")}];
  v10 = NSStringFromSelector(sel_isBuiltIn);
  [dictionary setObject:v9 forKeyedSubscript:v10];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AXSSMotionTrackingCameraInput trackingType](self, "trackingType")}];
  v12 = NSStringFromSelector(sel_trackingType);
  [dictionary setObject:v11 forKeyedSubscript:v12];

  v13 = [dictionary copy];

  return v13;
}

- (AXSSMotionTrackingCameraInput)initWithPlistDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = NSStringFromSelector(sel_captureDeviceUniqueID);
  v6 = [dictionaryCopy objectForKeyedSubscript:v5];

  v7 = NSStringFromSelector(sel_name);
  v8 = [dictionaryCopy objectForKeyedSubscript:v7];

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
  v11 = [dictionaryCopy objectForKeyedSubscript:v10];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v11 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v13 = NSStringFromSelector(sel_trackingType);
  v14 = [dictionaryCopy objectForKeyedSubscript:v13];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedIntegerValue = [v14 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 length])
  {
    self = [(AXSSMotionTrackingCameraInput *)self initWithCaptureDeviceUniqueID:v6 name:v9 isBuiltIn:bOOLValue trackingType:unsignedIntegerValue];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (uint64_t)motionTrackingCameraInputWithAVCaptureDevice:.cold.1()
{
  dlerror();
  abort_report_np();
  return __getAVCaptureDeviceClass_block_invoke_cold_1();
}

@end