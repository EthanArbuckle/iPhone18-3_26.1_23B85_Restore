@interface ASDTIOA2SliderControl
- (ASDTIOA2Device)ioa2Device;
- (BOOL)synchronizeWithRegistryDictionary:(id)a3;
- (NSArray)propertySelectorInfo;
- (void)dealloc;
- (void)setValue:(unsigned int)a3;
@end

@implementation ASDTIOA2SliderControl

- (void)dealloc
{
  [(ASDControl *)self asdtRemoveControlProperties];
  v3.receiver = self;
  v3.super_class = ASDTIOA2SliderControl;
  [(ASDTIOA2SliderControl *)&v3 dealloc];
}

- (NSArray)propertySelectorInfo
{
  v11[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"selector";
  v9[1] = @"dataType";
  v10[0] = &unk_2853579D8;
  v10[1] = &unk_2853579F0;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v11[0] = v2;
  v7[0] = @"selector";
  v7[1] = @"dataType";
  v8[0] = &unk_285357A08;
  v8[1] = &unk_2853579F0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v11[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)synchronizeWithRegistryDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    std::recursive_mutex::lock(&self->_lock);
    v5 = [(NSDictionary *)v4 objectForKeyedSubscript:@"property selectors"];
    v6 = [(ASDControl *)self asdtAddControlProperties:v5];

    if (v6)
    {
      v11 = 0;
      v10 = 0;
      ValueAndRangeFromControlDict = getValueAndRangeFromControlDict(v4, &v11, &v10);
      if (ValueAndRangeFromControlDict)
      {
        [(ASDSliderControl *)self setRange:v10];
        [(ASDTIOA2SliderControl *)self pushValue:v11];
      }
    }

    else
    {
      ValueAndRangeFromControlDict = 0;
    }

    std::recursive_mutex::unlock(&self->_lock);
  }

  else
  {
    v8 = ASDTIOA2LogType();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2416BA000, v8, OS_LOG_TYPE_DEFAULT, "Error: Couldn't synchronize with registry", buf, 2u);
    }

    ValueAndRangeFromControlDict = 0;
  }

  return ValueAndRangeFromControlDict;
}

- (void)setValue:(unsigned int)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_ioa2Device);
  v5 = [WeakRetained _setControlValue:&v6 forControl:self->_userClientID];

  if (v5)
  {
    [(ASDTIOA2SliderControl *)self doSetValue:v6];
  }
}

- (ASDTIOA2Device)ioa2Device
{
  WeakRetained = objc_loadWeakRetained(&self->_ioa2Device);

  return WeakRetained;
}

@end