@interface SCNMTLLibrary
- (SCNMTLLibrary)initWithPath:(id)path manager:(id)manager;
- (void)_load;
- (void)dealloc;
@end

@implementation SCNMTLLibrary

- (void)_load
{
  OUTLINED_FUNCTION_3_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_5_3(&dword_21BEF7000, v0, v1, "Error: FATAL ERROR : failed to load Metal shaders library %@, %@");
}

- (SCNMTLLibrary)initWithPath:(id)path manager:(id)manager
{
  v9.receiver = self;
  v9.super_class = SCNMTLLibrary;
  v6 = [(SCNMTLLibrary *)&v9 init];
  if (v6)
  {
    if (path)
    {
      v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:path];
    }

    else
    {
      v7 = 0;
    }

    v6->_libraryURL = v7;
    v6->_manager = manager;
    [(SCNMTLLibrary *)v6 _load];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNMTLLibrary;
  [(SCNMTLLibrary *)&v3 dealloc];
}

@end