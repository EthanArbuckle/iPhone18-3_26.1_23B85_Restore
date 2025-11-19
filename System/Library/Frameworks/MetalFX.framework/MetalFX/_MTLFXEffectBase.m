@interface _MTLFXEffectBase
- (_MTLFXEffectBase)init;
@end

@implementation _MTLFXEffectBase

- (_MTLFXEffectBase)init
{
  v23.receiver = self;
  v23.super_class = _MTLFXEffectBase;
  v2 = [(_MTLFXEffectBase *)&v23 init];
  v2->_effectID = atomic_fetch_add_explicit(&_MTLFXNextScalerID, 1uLL, memory_order_relaxed) + 1;
  *&v2->_useRefTensors = 0;
  if (isInternalBuild(void)::once != -1)
  {
    [_MTLFXEffectBase init];
  }

  if (isInternalBuild(void)::isInternal == 1)
  {
    v3 = getenv("MTLFX_USE_REF_TENSORS");
    if (!v3)
    {
      v3 = "0";
    }

    v2->_useRefTensors = strtol(v3, 0, 0) != 0;
    v4 = getenv("MTLFX_DUMP_TENSORS");
    if (!v4)
    {
      v4 = "0";
    }

    v5 = strtol(v4, 0, 0);
    v2->_dumpTensors = v5 != 0;
    if (v5)
    {
      v7 = [MEMORY[0x277CCAC38] processInfo];
      v8 = [v7 processName];

      v9 = [MEMORY[0x277CCAC38] processInfo];
      v10 = [v9 processIdentifier];

      v11 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v11 setDateFormat:@"yyyy_MM_dd_HH_mm_ss_SSS"];
      v12 = [MEMORY[0x277CBEAA8] date];
      v13 = [v11 stringFromDate:v12];

      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%d_%@", v8, v10, v13];
      v15 = [@"/tmp/metalfx/dump" stringByAppendingPathComponent:v14];
      v16 = [MEMORY[0x277CCAA00] defaultManager];
      if ([v16 fileExistsAtPath:v15])
      {
        NSLog(&cfstr_DirectoryForDu.isa, v15);
      }

      else
      {
        NSLog(&cfstr_CreatingDirect.isa, v15);
        v22 = 0;
        v17 = [v16 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:&v22];
        v18 = v22;
        if ((v17 & 1) == 0)
        {
          v19 = v18;
          v20 = [v18 localizedDescription];
          NSLog(&cfstr_ErrorCreatingD.isa, v15, v20);

          v2->_dumpTensors = 0;
          v18 = v19;
        }
      }

      dumpTensorsDir = v2->_dumpTensorsDir;
      v2->_dumpTensorsDir = v15;
    }

    if (v2->_useRefTensors)
    {
      NSLog(&cfstr_EnvMtlfxUseRef.isa, @"/tmp/metalfx/ref");
    }
  }

  return v2;
}

@end