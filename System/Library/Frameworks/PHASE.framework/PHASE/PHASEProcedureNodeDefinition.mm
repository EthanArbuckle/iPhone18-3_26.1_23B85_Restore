@interface PHASEProcedureNodeDefinition
- (PHASEProcedureNodeDefinition)init;
- (id)initInternal:(id)internal maxPolyphony:(int)polyphony voiceStealingType:(int64_t)type;
@end

@implementation PHASEProcedureNodeDefinition

- (PHASEProcedureNodeDefinition)init
{
  [(PHASEProcedureNodeDefinition *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)initInternal:(id)internal maxPolyphony:(int)polyphony voiceStealingType:(int64_t)type
{
  v39 = *MEMORY[0x277D85DE8];
  internalCopy = internal;
  v24.receiver = self;
  v24.super_class = PHASEProcedureNodeDefinition;
  v10 = [(PHASEGeneratorNodeDefinition *)&v24 initInternal:internalCopy];
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
    if (polyphony <= 0)
    {
      v18 = **(Phase::Logger::GetInstance(v16) + 448);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = v15;
        uTF8String = [v15 UTF8String];
        v21 = v17;
        uTF8String2 = [(Phase::Logger *)v17 UTF8String];
        *buf = 136316674;
        v26 = "PHASEGetProperty.h";
        v27 = 1024;
        v28 = 34;
        v29 = 2080;
        v30 = uTF8String;
        v31 = 2080;
        v32 = uTF8String2;
        v33 = 1024;
        polyphonyCopy = polyphony;
        v35 = 1024;
        v36 = 1;
        v37 = 1024;
        v38 = 0x7FFFFFFF;
        _os_log_impl(&dword_23A302000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s:%s Value is out of bounds. Clamping %d to range [%d, %d]", buf, 0x38u);
      }

      polyphony = 1;
    }

    *(v11 + 18) = polyphony;
    v11[12] = type;
  }

  return v11;
}

@end