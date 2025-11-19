@interface MFXTemporalDenoisingScalingEffect
@end

@implementation MFXTemporalDenoisingScalingEffect

void __60___MFXTemporalDenoisingScalingEffect_encodeToCommandBuffer___block_invoke(uint64_t a1, void *a2)
{
  v23 = a2;
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
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lux%lu", *(*(a1 + 32) + 832), *(*(a1 + 32) + 840)];
      [v5 updateLabelMetric:@"com.apple.hud-label.metalfx.v2.input_resolution" label:v6];

      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lux%lu", *(*(a1 + 32) + 72), *(*(a1 + 32) + 80)];
      [v5 updateLabelMetric:@"com.apple.hud-label.metalfx.v2.target_resolution" label:v7];

      v8 = *(a1 + 32);
      v9 = *(v8 + 218);
      v10 = *(v8 + 560);
      BRNet_v3_Filter<MFXDevice3>::getInternalExposure();
    }

    v11 = *(a1 + 32);
    v12 = *(v11 + 976);
    v13 = *(v11 + 984);
    [v23 GPUEndTime];
    v15 = v14;
    [v23 GPUStartTime];
    *&v16 = (v15 - v16) * 1000.0;
    CHistoryRecord::Add(v12, v13, *&v16);
    v17 = *(a1 + 32);
    if (*(v17 + 376) == 1 && (*(v17 + 220) & 1) != 0)
    {
      v18 = "ANE";
    }

    else
    {
      v18 = "GPU";
    }

    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"MetalFX Denoiser Enabled %s", v18];
    [v3 updateLabel:@"com.apple.hud-label.metalfx" value:v19];

    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lux%lu->%lux%lu", *(*(a1 + 32) + 56), *(*(a1 + 32) + 64), *(*(a1 + 32) + 72), *(*(a1 + 32) + 80)];
    [v3 updateLabel:@"com.apple.hud-label.metalfx.resolution" value:v20];

    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"c. %lux%lu->%lux%lu", *(*(a1 + 32) + 832), *(*(a1 + 32) + 840), *(*(a1 + 32) + 72), *(*(a1 + 32) + 80)];
    [v3 updateLabel:@"com.apple.hud-label.metalfx.content_resolution" value:v21];

    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%2.2f [%2.2f %2.2f]", *(*(*(a1 + 32) + 976) + 16), *(*(*(a1 + 32) + 976) + 500), *(*(*(a1 + 32) + 976) + 504)];
    [v3 updateLabel:@"com.apple.hud-label.metalfx.timing" value:v22];

    ++*(*(a1 + 32) + 984);
  }
}

BOOL __60___MFXTemporalDenoisingScalingEffect_encodeToCommandBuffer___block_invoke_2(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  if (*a3 == 2)
  {
    v5 = *(a1 + 232);
    v24 = *(a1 + 32);
    v6 = *(v24 + 688);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60___MFXTemporalDenoisingScalingEffect_encodeToCommandBuffer___block_invoke_3;
    block[3] = &unk_278AA4B78;
    v42 = v5;
    v7 = *(&v24 + 1);
    v34 = *(a1 + 144);
    v35 = *(a1 + 160);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    *&v10 = v8;
    *(&v10 + 1) = v9;
    v26 = v24;
    v27 = v10;
    v44 = *(a1 + 240);
    v43 = *(a1 + 236);
    v11 = *(a1 + 64);
    v12 = *(a1 + 72);
    v13 = *(a1 + 80);
    v14 = *(a1 + 88);
    *&v15 = v13;
    *(&v15 + 1) = v14;
    *&v16 = v11;
    *(&v16 + 1) = v12;
    v28 = v16;
    v29 = v15;
    *&v16 = *(a1 + 176);
    v36 = *(a1 + 168);
    v37 = v16;
    v45 = *(a1 + 242);
    v38 = *(a1 + 184);
    v17 = *(a1 + 96);
    v18 = *(a1 + 104);
    v19 = *(a1 + 112);
    v20 = *(a1 + 120);
    *&v21 = v19;
    *(&v21 + 1) = v20;
    *&v22 = v17;
    *(&v22 + 1) = v18;
    v30 = v22;
    v31 = v21;
    v39 = *(a1 + 200);
    v46 = *(a1 + 243);
    v40 = *(a1 + 208);
    v41 = *(a1 + 224);
    v32 = *(a1 + 128);
    v33 = *(a1 + 136);
    dispatch_async(v6, block);
  }

  return v3 == 2;
}

void __60___MFXTemporalDenoisingScalingEffect_encodeToCommandBuffer___block_invoke_3(uint64_t a1)
{
  v22 = *(*(a1 + 32) + 48);
  memset(v23, 0, 24);
  MetalFxScopedSignpost::MetalFxScopedSignpost(v21, 0, *(a1 + 32), 6, *(*(a1 + 32) + 16), 0);
  if (MTLTraceEnabled())
  {
    v2 = *(a1 + 232);
    v3 = *(a1 + 234);
    [*(a1 + 32) outputWidth];
    [*(a1 + 32) outputHeight];
    [*(a1 + 32) inputWidth];
    [*(a1 + 32) inputHeight];
    if (MTLTraceEnabled())
    {
      v4 = *(a1 + 32);
      [*(a1 + 40) globalTraceObjectID];
      kdebug_trace();
    }
  }

  v5 = [*(*(a1 + 32) + 608) commandBuffer];
  if (MTLTraceEnabled())
  {
    v6 = *(a1 + 32);
    [v5 globalTraceObjectID];
    kdebug_trace();
  }

  [v5 encodeWaitForEvent:*(*(a1 + 32) + 616) value:*(a1 + 144)];
  v7 = *(a1 + 32);
  if (*(v7 + 220) == 1)
  {
    v8 = *(v7 + 648);
    if (v8)
    {
      [v5 encodeSignalEvent:v8 value:*(a1 + 152)];
    }
  }

  MFXComputeEncoder3::beginEncoding(v23, v5);
  location = v23[0];
  [location setLabel:@"MetalFX_Denoise_DPreProcessing"];
  v9 = location;
  v10 = *(a1 + 160);
  [*(a1 + 32) _didCreateComputeCommandEncoder:? forEncode:?];
  v11 = *(*(a1 + 32) + 560);
  v12 = location;
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = *(a1 + 240);
  v16 = *(*(a1 + 32) + 218);
  v17 = *(a1 + 232);
  v18 = *(a1 + 236);
  v19 = *(a1 + 241);
  BRNet_v3_Filter<MFXDevice3>::encodeExposureCalcForDenoiser();
}

@end