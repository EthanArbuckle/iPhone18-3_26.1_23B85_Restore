@interface ASDTIOPAudioVTProperty
+ (id)ioServiceDependenciesForConfig:(id)a3;
- (ASDTIOPAudioVTDevice)vtDevice;
- (void)dealloc;
@end

@implementation ASDTIOPAudioVTProperty

+ (id)ioServiceDependenciesForConfig:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 asdtServiceID];
  v5 = [(ASDTIOServiceManager *)ASDTIOPAudioVTServiceManager dependencyForID:v4 andConfiguration:v3];

  if (v5)
  {
    v9[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)dealloc
{
  v3 = [(ASDTIOPAudioVTProperty *)self vtDevice];
  [v3 close];

  v4.receiver = self;
  v4.super_class = ASDTIOPAudioVTProperty;
  [(ASDTIOPAudioVTProperty *)&v4 dealloc];
}

- (ASDTIOPAudioVTDevice)vtDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_vtDevice);

  return WeakRetained;
}

- (void)initWithConfig:(void *)a1 propertyDataType:qualifierDataType:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_2416E9000, v2, v3, "%@: Failed to retrieve legacy voice trigger device for identifier: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithConfig:(void *)a1 propertyDataType:qualifierDataType:.cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_2416E9000, v2, v3, "%@: Failed to open legacy voice trigger device '%@'", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end