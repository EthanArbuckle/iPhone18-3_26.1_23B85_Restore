@interface ASDTIOA2LevelControl
+ (VolumeCurve)volumeCurveFromControlInfo:(SEL)info;
- (ASDTIOA2Device)ioa2Device;
- (BOOL)changeScalarValue:(float)value;
- (BOOL)getProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client;
- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)property;
- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)settable;
- (BOOL)setProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int)dataSize andData:(const void *)andData forClient:(int)client;
- (BOOL)synchronizeWithRegistryDictionary:(id)dictionary;
- (NSArray)propertySelectorInfo;
- (id).cxx_construct;
- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size andQualifierData:(const void *)data;
- (void)dealloc;
- (void)doSetValue:(unsigned int)value;
- (void)setDecibelValue:(float)value;
@end

@implementation ASDTIOA2LevelControl

+ (VolumeCurve)volumeCurveFromControlInfo:(SEL)info
{
  v5 = a4;
  ASDT::VolumeCurve::VolumeCurve(retstr);
  v6 = v5;
  v7 = v6;
  if (v6)
  {
    CFRetain(v6);
    cf = v7;
    v8 = CFGetTypeID(v7);
    if (v8 != CFDictionaryGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245CED520](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
    cf = 0;
  }

  if (!ASDT::IOA2UserClient::SetupVolumeCurve(&cf, retstr, v10))
  {
    v11 = ASDTIOA2LogType();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ASDTIOA2LevelControl *)v7 volumeCurveFromControlInfo:v11];
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return result;
}

- (void)dealloc
{
  [(ASDControl *)self asdtRemoveControlProperties];
  v3.receiver = self;
  v3.super_class = ASDTIOA2LevelControl;
  [(ASDTIOA2LevelControl *)&v3 dealloc];
}

- (NSArray)propertySelectorInfo
{
  v23[6] = *MEMORY[0x277D85DE8];
  v21[0] = @"selector";
  v21[1] = @"dataType";
  v22[0] = &unk_285357A20;
  v22[1] = &unk_285357A38;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v23[0] = v2;
  v19[0] = @"selector";
  v19[1] = @"dataType";
  v20[0] = &unk_285357A50;
  v20[1] = &unk_285357A38;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v23[1] = v3;
  v17[0] = @"selector";
  v17[1] = @"dataType";
  v18[0] = &unk_285357A68;
  v18[1] = &unk_285357A38;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v23[2] = v4;
  v15[0] = @"selector";
  v15[1] = @"dataType";
  v16[0] = &unk_285357A80;
  v16[1] = &unk_285357A38;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v23[3] = v5;
  v13[0] = @"selector";
  v13[1] = @"dataType";
  v14[0] = &unk_285357A98;
  v14[1] = &unk_285357A38;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v23[4] = v6;
  v11[0] = @"selector";
  v11[1] = @"dataType";
  v12[0] = &unk_285357AB0;
  v12[1] = &unk_285357A38;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v23[5] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:6];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)synchronizeWithRegistryDictionary:(id)dictionary
{
  v15 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    std::recursive_mutex::lock(&self->_lock);
    v5 = [dictionaryCopy objectForKeyedSubscript:@"property selectors"];
    v6 = [(ASDControl *)self asdtAddControlProperties:v5];

    if (v6)
    {
      v7 = [dictionaryCopy objectForKeyedSubscript:@"value"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[ASDTIOA2LevelControl pushValue:](self, "pushValue:", [v7 unsignedIntValue]);
      }
    }

    std::recursive_mutex::unlock(&self->_lock);
  }

  else
  {
    v8 = ASDTIOA2LogType();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&dword_2416BA000, v8, OS_LOG_TYPE_DEFAULT, "%@: Couldn't synchronize with registry", &v13, 0xCu);
    }

    v6 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)doSetValue:(unsigned int)value
{
  v30 = *MEMORY[0x277D85DE8];
  std::recursive_mutex::lock(&self->_lock);
  if (self->_rawValue != value)
  {
    self->_rawValue = value;
    v5 = NSStringFromSelector(sel_decibelValue);
    [(ASDTIOA2LevelControl *)self willChangeValueForKey:v5];

    v6 = NSStringFromSelector(sel_scalarValue);
    [(ASDTIOA2LevelControl *)self willChangeValueForKey:v6];

    ASDT::VolumeCurve::ConvertRawToDB(&self->_volumeCurve);
    v17.receiver = self;
    v17.super_class = ASDTIOA2LevelControl;
    [(ASDLevelControl *)&v17 setDecibelValue:?];
    [(ASDControl *)self asdtSendControlPropertyChangeNotificationAtIndex:0];
    [(ASDControl *)self asdtSendControlPropertyChangeNotificationAtIndex:1];
    v7 = NSStringFromSelector(sel_decibelValue);
    [(ASDTIOA2LevelControl *)self didChangeValueForKey:v7];

    v8 = NSStringFromSelector(sel_scalarValue);
    [(ASDTIOA2LevelControl *)self didChangeValueForKey:v8];

    v9 = ASDTIOA2LogType();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained(&self->_ioa2Device);
      deviceUID = [WeakRetained deviceUID];
      if ([(ASDTIOA2LevelControl *)self objectClass]>> 29 && [(ASDTIOA2LevelControl *)self objectClass]>> 24 <= 0x7E)
      {
        v12 = [(ASDTIOA2LevelControl *)self objectClass]>> 24;
      }

      else
      {
        v12 = 32;
      }

      if (([(ASDTIOA2LevelControl *)self objectClass]& 0xE00000) != 0 && ([(ASDTIOA2LevelControl *)self objectClass]>> 16) <= 0x7Eu)
      {
        v13 = ([(ASDTIOA2LevelControl *)self objectClass]>> 16);
      }

      else
      {
        v13 = 32;
      }

      if (([(ASDTIOA2LevelControl *)self objectClass]& 0xE000) != 0 && ([(ASDTIOA2LevelControl *)self objectClass]>> 8) <= 0x7Eu)
      {
        v14 = ([(ASDTIOA2LevelControl *)self objectClass]>> 8);
      }

      else
      {
        v14 = 32;
      }

      if (([(ASDTIOA2LevelControl *)self objectClass]& 0xE0) != 0 && [(ASDTIOA2LevelControl *)self objectClass]<= 0x7Eu)
      {
        objectClass = [(ASDTIOA2LevelControl *)self objectClass];
      }

      else
      {
        objectClass = 32;
      }

      *buf = 138413570;
      v19 = deviceUID;
      v20 = 1024;
      v21 = v12;
      v22 = 1024;
      v23 = v13;
      v24 = 1024;
      v25 = v14;
      v26 = 1024;
      v27 = objectClass;
      v28 = 1024;
      valueCopy = value;
      _os_log_impl(&dword_2416BA000, v9, OS_LOG_TYPE_DEFAULT, "%@: Control '%c%c%c%c' changed to: %u", buf, 0x2Au);
    }
  }

  std::recursive_mutex::unlock(&self->_lock);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)setDecibelValue:(float)value
{
  v6 = ASDT::VolumeCurve::ConvertDBToRaw(&self->_volumeCurve, value);
  WeakRetained = objc_loadWeakRetained(&self->_ioa2Device);
  v5 = [WeakRetained _setControlValue:&v6 forControl:self->_userClientID];

  if (v5)
  {
    [(ASDTIOA2LevelControl *)self doSetValue:v6];
  }
}

- (BOOL)changeScalarValue:(float)value
{
  ASDT::VolumeCurve::ConvertScalarToDB(&self->_volumeCurve, value);

  return [(ASDTIOA2LevelControl *)self changeDecibelValue:?];
}

- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)property
{
  if (!property)
  {
    return 0;
  }

  if (property->mSelector == 1818457190)
  {
    return 1;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = ASDTIOA2LevelControl;
  return [(ASDLevelControl *)&v6 hasProperty:?];
}

- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)settable
{
  if (!settable)
  {
    return 0;
  }

  if (settable->mSelector == 1818457190)
  {

    return [(ASDLevelControl *)self isSettable];
  }

  else
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = ASDTIOA2LevelControl;
    return [(ASDLevelControl *)&v6 isPropertySettable:?];
  }
}

- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size andQualifierData:(const void *)data
{
  if (!property)
  {
    return 0;
  }

  if (property->mSelector == 1818457190)
  {
    return 4;
  }

  v9 = v5;
  v10 = v6;
  v8.receiver = self;
  v8.super_class = ASDTIOA2LevelControl;
  return [ASDLevelControl dataSizeForProperty:sel_dataSizeForProperty_withQualifierSize_andQualifierData_ withQualifierSize:? andQualifierData:?];
}

- (BOOL)getProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client
{
  if (!property)
  {
    return 0;
  }

  if (property->mSelector != 1818457190)
  {
    v13 = v8;
    v14 = v9;
    v12.receiver = self;
    v12.super_class = ASDTIOA2LevelControl;
    return [ASDLevelControl getProperty:sel_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient_ withQualifierSize:? qualifierData:? dataSize:? andData:? forClient:?];
  }

  v10 = 0;
  if (dataSize && andData)
  {
    if (*dataSize >= 4)
    {
      *andData = self->_volumeCurve.mTransferFunction;
      return 1;
    }

    return 0;
  }

  return v10;
}

- (BOOL)setProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int)dataSize andData:(const void *)andData forClient:(int)client
{
  if (!property)
  {
    return 0;
  }

  if (property->mSelector == 1818457190)
  {
    v8 = 0;
    if (dataSize >= 4 && andData)
    {
      v9 = *andData;
      ASDT::VolumeCurve::SetTransferFunction(&self->_volumeCurve);
      return 1;
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = ASDTIOA2LevelControl;
    return [ASDLevelControl setProperty:sel_setProperty_withQualifierSize_qualifierData_dataSize_andData_forClient_ withQualifierSize:? qualifierData:? dataSize:? andData:? forClient:?];
  }

  return v8;
}

- (ASDTIOA2Device)ioa2Device
{
  WeakRetained = objc_loadWeakRetained(&self->_ioa2Device);

  return WeakRetained;
}

- (id).cxx_construct
{
  ASDT::VolumeCurve::VolumeCurve(&self->_volumeCurve);
  MEMORY[0x245CED560](&self->_lock);
  return self;
}

+ (void)volumeCurveFromControlInfo:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2416BA000, a2, OS_LOG_TYPE_ERROR, "ASDTIOA2LevelControl: Bad control info: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end