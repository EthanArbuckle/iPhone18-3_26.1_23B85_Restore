@interface MFXTemporalScalingEffectV4
@end

@implementation MFXTemporalScalingEffectV4

void __53___MFXTemporalScalingEffectV4_encodeToCommandBuffer___block_invoke(uint64_t a1, void *a2)
{
  v24 = a2;
  {
    MetalFXHUDInstance(void)::inst = WEAK_CADeveloperHUDProperties();
  }

  v3 = MetalFXHUDInstance(void)::inst;
  {
    MetalFXHUDInstanceV3(void)::v3 = WEAK_HUDServiceV3();
  }

  v4 = MetalFXHUDInstanceV3(void)::v3;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lux%lu", *(*(a1 + 32) + 56), *(*(a1 + 32) + 64)];
      [v5 updateLabelMetric:@"com.apple.hud-label.metalfx.v2.input_resolution" label:v6];

      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lux%lu", *(*(a1 + 32) + 72), *(*(a1 + 32) + 80)];
      [v5 updateLabelMetric:@"com.apple.hud-label.metalfx.v2.target_resolution" label:v7];

      if (isInternalBuild(void)::once != -1)
      {
        __53___MFXTemporalScalingEffectV4_encodeToCommandBuffer___block_invoke_cold_1();
      }

      if (isInternalBuild(void)::isInternal == 1 && ([v5 config], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "showInternalMetrics"), v8, v9))
      {
        v10 = *(a1 + 32);
        v11 = @"TAAUv4 | GPU";
        if (*(v10 + 344) == 1 && *(v10 + 291))
        {
          v11 = @"TAAUv4 | ANE";
        }
      }

      else
      {
        v11 = @"Temporal";
      }

      [v5 updateLabelMetric:@"com.apple.hud-label.metalfx.v2.scaling" label:v11];
    }

    else
    {
      v12 = *(a1 + 32);
      v13 = *(v12 + 824);
      v14 = *(v12 + 816);
      [v24 GPUEndTime];
      v16 = v15;
      [v24 GPUStartTime];
      *&v17 = (v16 - v17) * 1000.0;
      CHistoryRecord::Add(v13, v14, *&v17);
      v18 = *(a1 + 32);
      if (*(v18 + 344) == 1 && (*(v18 + 291) & 1) != 0)
      {
        v19 = "ANE";
      }

      else
      {
        v19 = "GPU";
      }

      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"MetalFX TAAU Enabled %s", v19];
      [v3 updateLabel:@"com.apple.hud-label.metalfx" value:v20];

      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lux%lu->%lux%lu", *(*(a1 + 32) + 56), *(*(a1 + 32) + 64), *(*(a1 + 32) + 72), *(*(a1 + 32) + 80)];
      [v3 updateLabel:@"com.apple.hud-label.metalfx.resolution" value:v21];

      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"c. %lux%lu->%lux%lu", *(*(a1 + 32) + 88), *(*(a1 + 32) + 96), *(*(a1 + 32) + 72), *(*(a1 + 32) + 80)];
      [v3 updateLabel:@"com.apple.hud-label.metalfx.content_resolution" value:v22];

      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%2.2f [%2.2f %2.2f]", *(*(*(a1 + 32) + 824) + 16), *(*(*(a1 + 32) + 824) + 500), *(*(*(a1 + 32) + 824) + 504)];
      [v3 updateLabel:@"com.apple.hud-label.metalfx.timing" value:v23];
    }

    ++*(*(a1 + 32) + 816);
  }
}

intptr_t __53___MFXTemporalScalingEffectV4_encodeToCommandBuffer___block_invoke_2(uint64_t a1)
{
  saveTensorData(*(*(a1 + 32) + 32), &cfstr_ScalingBrnetIp.isa, *(a1 + 40), *(*(a1 + 32) + 432));
  saveTensorData(*(*(a1 + 32) + 32), &cfstr_ScalingBrnetOp.isa, *(a1 + 40), *(*(a1 + 32) + 440));
  NSLog(&cfstr_DumpTensorsUnb.isa);
  v2 = *(*(a1 + 32) + 544);

  return dispatch_semaphore_signal(v2);
}

BOOL __53___MFXTemporalScalingEffectV4_encodeToCommandBuffer___block_invoke_3(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  if (*a3 == 2)
  {
    v17 = *(a1 + 32);
    v5 = *(v17 + 528);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53___MFXTemporalScalingEffectV4_encodeToCommandBuffer___block_invoke_4;
    block[3] = &unk_278AA4CD0;
    v6 = *(&v17 + 1);
    v25 = *(a1 + 112);
    v26 = *(a1 + 128);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    *&v9 = v7;
    *(&v9 + 1) = v8;
    v19 = v17;
    v20 = v9;
    v10 = *(a1 + 64);
    v11 = *(a1 + 72);
    v27 = *(a1 + 136);
    v28 = *(a1 + 152);
    v32 = *(a1 + 184);
    v33 = *(a1 + 185);
    v30 = *(a1 + 176);
    v31 = *(a1 + 180);
    v23 = *(a1 + 96);
    v29 = *(a1 + 160);
    v12 = *(a1 + 80);
    v13 = *(a1 + 88);
    *&v14 = v12;
    *(&v14 + 1) = v13;
    *&v15 = v10;
    *(&v15 + 1) = v11;
    v21 = v15;
    v22 = v14;
    v24 = *(a1 + 104);
    dispatch_async(v5, block);
  }

  return v3 == 2;
}

void __53___MFXTemporalScalingEffectV4_encodeToCommandBuffer___block_invoke_4(uint64_t a1)
{
  *(*(a1 + 32) + 48);
  memset(v25, 0, 24);
  if (MTLTraceEnabled())
  {
    v2 = *(a1 + 32);
    [*(a1 + 40) globalTraceObjectID];
    kdebug_trace();
  }

  v23 = [*(*(a1 + 32) + 448) commandBuffer];
  if (MTLTraceEnabled())
  {
    v3 = *(a1 + 32);
    [v23 globalTraceObjectID];
    kdebug_trace();
  }

  [v23 encodeWaitForEvent:*(*(a1 + 32) + 456) value:*(a1 + 112)];
  v4 = *(a1 + 32);
  if (*(v4 + 291) == 1)
  {
    v5 = *(v4 + 488);
    if (v5)
    {
      [v23 encodeSignalEvent:v5 value:*(a1 + 120)];
    }
  }

  MFXComputeEncoder3::beginEncoding(v25, v23);
  v24 = v25[0];
  [v24 setLabel:@"MetalFX_Temporal_PreProcessing"];
  v6 = v24;
  v7 = *(a1 + 128);
  [*(a1 + 32) _didCreateComputeCommandEncoder:? forEncode:?];
  v8 = *(a1 + 32);
  v9 = *(v8 + 424);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(v8 + 232);
  v14 = *(a1 + 64);
  v13 = *(a1 + 72);
  [*(v8 + 432) mpsndarray];
  [objc_claimAutoreleasedReturnValue() buffer];
  objc_claimAutoreleasedReturnValue();
  v15 = *(a1 + 136);
  v16 = *(a1 + 144);
  v17 = *(a1 + 152);
  v18 = *(a1 + 176);
  v22 = *(a1 + 186);
  v21 = *(a1 + 180);
  v20 = *(*(a1 + 32) + 290);
  v19 = *(a1 + 184);
  BRNet_v3_Filter<MFXDevice3>::encodePre();
}

void __53___MFXTemporalScalingEffectV4_encodeToCommandBuffer___block_invoke_5(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 GPUStartTime];
  *(*(*(a1 + 32) + 8) + 24) = v3;
}

void __53___MFXTemporalScalingEffectV4_encodeToCommandBuffer___block_invoke_6(void *a1, void *a2)
{
  v19 = a2;
  [v19 GPUEndTime];
  *(*(a1[5] + 8) + 24) = v3;
  {
    MetalFXHUDInstance(void)::inst = WEAK_CADeveloperHUDProperties();
  }

  v4 = MetalFXHUDInstance(void)::inst;
  {
    MetalFXHUDInstanceV3(void)::v3 = WEAK_HUDServiceV3();
  }

  v5 = MetalFXHUDInstanceV3(void)::v3;
  v6 = v5;
  if (v4)
  {
    if (v5)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lux%lu", *(a1[4] + 88), *(a1[4] + 96)];
      [v6 updateLabelMetric:@"com.apple.hud-label.metalfx.v2.input_resolution" label:v7];

      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lux%lu", *(a1[4] + 72), *(a1[4] + 80)];
      [v6 updateLabelMetric:@"com.apple.hud-label.metalfx.v2.target_resolution" label:v8];

      v9 = a1[4];
      v10 = *(v9 + 290);
      v11 = *(v9 + 424);
      BRNet_v3_Filter<MFXDevice3>::getInternalExposure();
    }

    v12 = (*(*(a1[5] + 8) + 24) - *(*(a1[6] + 8) + 24)) * 1000.0;
    CHistoryRecord::Add(*(a1[4] + 824), *(a1[4] + 816), v12);
    v13 = a1[4];
    if (*(v13 + 344) == 1 && (*(v13 + 291) & 1) != 0)
    {
      v14 = "ANE";
    }

    else
    {
      v14 = "GPU";
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"MetalFX TAAU Enabled %s", v14];
    [v4 updateLabel:@"com.apple.hud-label.metalfx" value:v15];

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lux%lu->%lux%lu", *(a1[4] + 56), *(a1[4] + 64), *(a1[4] + 72), *(a1[4] + 80)];
    [v4 updateLabel:@"com.apple.hud-label.metalfx.resolution" value:v16];

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"c. %lux%lu->%lux%lu", *(a1[4] + 88), *(a1[4] + 96), *(a1[4] + 72), *(a1[4] + 80)];
    [v4 updateLabel:@"com.apple.hud-label.metalfx.content_resolution" value:v17];

    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%2.2f [%2.2f %2.2f]", *(*(a1[4] + 824) + 16), *(*(a1[4] + 824) + 500), *(*(a1[4] + 824) + 504)];
    [v4 updateLabel:@"com.apple.hud-label.metalfx.timing" value:v18];
  }

  ++*(a1[4] + 816);
}

@end