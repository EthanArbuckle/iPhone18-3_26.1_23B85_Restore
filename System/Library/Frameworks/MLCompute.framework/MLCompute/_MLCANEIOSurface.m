@interface _MLCANEIOSurface
+ (id)objectWithDataLength:(unint64_t)a3 liveIOStatus:(id)a4;
+ (void)initialize;
- (_MLCANEIOSurface)initWithDataLength:(unint64_t)a3 liveIOStatus:(id)a4;
- (__IOSurface)createIOSurface1x1WithLength:(unint64_t)a3;
- (id)aneIOSurfaceObjectWithDataLength:(unint64_t)a3;
@end

@implementation _MLCANEIOSurface

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    +[_MLCANEIOSurface initialize];
  }
}

+ (id)objectWithDataLength:(unint64_t)a3 liveIOStatus:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithDataLength:a3 liveIOStatus:v6];

  return v7;
}

- (_MLCANEIOSurface)initWithDataLength:(unint64_t)a3 liveIOStatus:(id)a4
{
  v8 = a4;
  if ((gIsAppleNeuralEngineAvailable & 1) == 0)
  {
    v9 = +[MLCLog framework];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_MLCANEIOSurface initWithDataLength:a2 liveIOStatus:?];
    }

    goto LABEL_11;
  }

  v9 = [(_MLCANEIOSurface *)self aneIOSurfaceObjectWithDataLength:a3];
  if (!v9)
  {
    v13 = +[MLCLog framework];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_MLCANEIOSurface initWithDataLength:a2 liveIOStatus:?];
    }

LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  v15.receiver = self;
  v15.super_class = _MLCANEIOSurface;
  v10 = [(_MLCANEIOSurface *)&v15 init];
  p_isa = &v10->super.isa;
  if (v10)
  {
    objc_storeStrong(&v10->_ioSurfaceObject, v9);
    objc_storeStrong(p_isa + 2, a4);
  }

  self = p_isa;
  v12 = self;
LABEL_12:

  return v12;
}

- (__IOSurface)createIOSurface1x1WithLength:(unint64_t)a3
{
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CBEC10] mutableCopy];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277CD2B88]];

  [v5 setObject:&unk_284BA59C0 forKeyedSubscript:*MEMORY[0x277CD2A28]];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
  [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x277CD2968]];

  Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], v5);
  v9 = IOSurfaceCreate(Copy);
  CFRelease(Copy);

  objc_autoreleasePoolPop(v4);
  return v9;
}

- (id)aneIOSurfaceObjectWithDataLength:(unint64_t)a3
{
  v4 = [(_MLCANEIOSurface *)self createIOSurface1x1WithLength:a3];
  if (v4)
  {
    v5 = v4;
    v6 = [softLinkClass_ANEIOSurfaceObject() objectWithIOSurface:v4];
    CFRelease(v5);
  }

  else
  {
    v7 = +[MLCLog framework];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_MLCANEIOSurface aneIOSurfaceObjectWithDataLength:a2];
    }

    v6 = 0;
  }

  return v6;
}

- (void)initWithDataLength:(const char *)a1 liveIOStatus:.cold.1(const char *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_0_0(&dword_238C1D000, v2, v3, "%@: AppleNeuralEngine framework is not available", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithDataLength:(const char *)a1 liveIOStatus:.cold.2(const char *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_0_0(&dword_238C1D000, v2, v3, "%@: failed to create an IOSurface object", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)aneIOSurfaceObjectWithDataLength:(const char *)a1 .cold.1(const char *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_0_0(&dword_238C1D000, v2, v3, "%@: failed to allocate an IOSurface", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end