@interface SCNMTLLibrary
- (SCNMTLLibrary)initWithPath:(id)a3 manager:(id)a4;
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

- (SCNMTLLibrary)initWithPath:(id)a3 manager:(id)a4
{
  v9.receiver = self;
  v9.super_class = SCNMTLLibrary;
  v6 = [(SCNMTLLibrary *)&v9 init];
  if (v6)
  {
    if (a3)
    {
      v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:a3];
    }

    else
    {
      v7 = 0;
    }

    v6->_libraryURL = v7;
    v6->_manager = a4;
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