@interface PHASEProcedureNodeDefinition
- (PHASEProcedureNodeDefinition)init;
- (id)initInternal:(id)a3 maxPolyphony:(int)a4 voiceStealingType:(int64_t)a5;
@end

@implementation PHASEProcedureNodeDefinition

- (PHASEProcedureNodeDefinition)init
{
  [(PHASEProcedureNodeDefinition *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)initInternal:(id)a3 maxPolyphony:(int)a4 voiceStealingType:(int64_t)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v24.receiver = self;
  v24.super_class = PHASEProcedureNodeDefinition;
  v10 = [(PHASEGeneratorNodeDefinition *)&v24 initInternal:v9];
  v11 = v10;
  if (v10)
  {
    v10[10] = 0;
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = NSStringFromSelector(a2);
    v15 = v13;
    v16 = v14;
    v17 = v16;
    if (a4 <= 0)
    {
      v18 = **(Phase::Logger::GetInstance(v16) + 448);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = v15;
        v20 = [v15 UTF8String];
        v21 = v17;
        v22 = [(Phase::Logger *)v17 UTF8String];
        *buf = 136316674;
        v26 = "PHASEGetProperty.h";
        v27 = 1024;
        v28 = 34;
        v29 = 2080;
        v30 = v20;
        v31 = 2080;
        v32 = v22;
        v33 = 1024;
        v34 = a4;
        v35 = 1024;
        v36 = 1;
        v37 = 1024;
        v38 = 0x7FFFFFFF;
        _os_log_impl(&dword_23A302000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s:%s Value is out of bounds. Clamping %d to range [%d, %d]", buf, 0x38u);
      }

      a4 = 1;
    }

    *(v11 + 18) = a4;
    v11[12] = a5;
  }

  return v11;
}

@end