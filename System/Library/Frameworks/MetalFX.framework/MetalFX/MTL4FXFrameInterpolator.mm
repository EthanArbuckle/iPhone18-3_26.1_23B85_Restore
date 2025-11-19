@interface MTL4FXFrameInterpolator
@end

@implementation MTL4FXFrameInterpolator

id __53___MTL4FXFrameInterpolator__emitTelemetry_forDevice___block_invoke(void *a1)
{
  v22[11] = *MEMORY[0x277D85DE8];
  MainBundle = CFBundleGetMainBundle();
  if (MainBundle)
  {
    v3 = CFBundleGetInfoDictionary(MainBundle);
    if (v3)
    {
      v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v4 = @"Unknown";
      v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277CBED38]];
      v6 = v5;
      if (v5)
      {
        v4 = v5;
      }

      v7 = [v3 objectForKeyedSubscript:*MEMORY[0x277CBED58]];

      if (v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = @"Unknown";
      }
    }

    else
    {
      v20 = 0;
      v4 = @"Unknown";
      v8 = @"Unknown";
    }
  }

  else
  {
    v20 = 0;
    v4 = @"Unknown";
    v8 = @"Unknown";
  }

  v21[0] = @"bundleIdentifier";
  v21[1] = @"bundleVersion";
  v22[0] = v4;
  v22[1] = v8;
  v21[2] = @"class";
  v21[3] = @"gpu";
  v9 = a1[5];
  v22[2] = a1[4];
  v22[3] = v9;
  v21[4] = @"colorTextureFormat";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[6]];
  v22[4] = v10;
  v21[5] = @"outputTextureFormat";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[7]];
  v22[5] = v11;
  v21[6] = @"inputWidth";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[8]];
  v22[6] = v12;
  v21[7] = @"inputHeight";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[9]];
  v22[7] = v13;
  v21[8] = @"outputWidth";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[10]];
  v22[8] = v14;
  v21[9] = @"outputHeight";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[11]];
  v22[9] = v15;
  v21[10] = @"version";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[12]];
  v22[10] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:11];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end