@interface ASDTIOA2BooleanControl
- (ASDTIOA2Device)ioa2Device;
- (BOOL)synchronizeWithRegistryDictionary:(id)a3;
- (NSArray)propertySelectorInfo;
- (id).cxx_construct;
- (void)setValue:(BOOL)a3;
@end

@implementation ASDTIOA2BooleanControl

- (NSArray)propertySelectorInfo
{
  v8[1] = *MEMORY[0x277D85DE8];
  v6[0] = @"selector";
  v6[1] = @"dataType";
  v7[0] = &unk_285357900;
  v7[1] = &unk_285357918;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v8[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)synchronizeWithRegistryDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"value"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = ASDTIOA2LogType();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_2416BA000, v9, OS_LOG_TYPE_DEFAULT, "Error: Couldn't synchronize with registry", v11, 2u);
    }

    goto LABEL_7;
  }

  v6 = [v4 objectForKeyedSubscript:@"property selectors"];
  v7 = [(ASDControl *)self asdtAddControlProperties:v6];

  if (!v7)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  -[ASDTIOA2BooleanControl pushValue:](self, "pushValue:", [v5 unsignedIntValue]);
  v8 = 1;
LABEL_8:

  return v8;
}

- (void)setValue:(BOOL)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(self + 24);
  v5 = [WeakRetained _setControlValue:&v6 forControl:*(self + 43)];

  if (v5)
  {
    [(ASDTIOA2BooleanControl *)self doSetValue:v6];
  }
}

- (ASDTIOA2Device)ioa2Device
{
  WeakRetained = objc_loadWeakRetained(self + 24);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 13) = 850045863;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 9) = 0u;
  *(self + 20) = 0;
  return self;
}

@end