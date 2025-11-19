@interface ARRecordingTechniquePublic
@end

@implementation ARRecordingTechniquePublic

void __72__ARRecordingTechniquePublic_ARKitAdditions___saveVideoInPhotosLibrary___block_invoke(uint64_t a1, uint64_t a2)
{
  objc_initWeak(&location, *(a1 + 32));
  if (a2 == 3)
  {
    v4 = v9;
    v5 = &v10;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v6 = __72__ARRecordingTechniquePublic_ARKitAdditions___saveVideoInPhotosLibrary___block_invoke_2;
  }

  else
  {
    v4 = v7;
    v5 = &v8;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v6 = __72__ARRecordingTechniquePublic_ARKitAdditions___saveVideoInPhotosLibrary___block_invoke_3;
  }

  v4[2] = v6;
  v4[3] = &unk_278BCD6B0;
  objc_copyWeak(v5, &location);
  v4[4] = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], v4);

  objc_destroyWeak(v5);
  objc_destroyWeak(&location);
}

void __72__ARRecordingTechniquePublic_ARKitAdditions___saveVideoInPhotosLibrary___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained copyVideoToPhotoLibrary:*(a1 + 32)];
}

void __72__ARRecordingTechniquePublic_ARKitAdditions___saveVideoInPhotosLibrary___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Saved video to file at %@, but not in the photo library because the permission has not been granted.", *(a1 + 32)];
    v4 = [MEMORY[0x277CBEB38] dictionary];
    [v4 setObject:v3 forKeyedSubscript:*MEMORY[0x277CCA450]];
    v5 = *MEMORY[0x277CE5168];
    v6 = ARErrorWithCodeAndUserInfo();
    [v7 _fail:v6];

    WeakRetained = v7;
  }
}

void __70__ARRecordingTechniquePublic_ARKitAdditions__copyVideoToPhotoLibrary___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    if (_ARLogTechnique_onceToken != -1)
    {
      __70__ARRecordingTechniquePublic_ARKitAdditions__copyVideoToPhotoLibrary___block_invoke_2_cold_1();
    }

    v6 = _ARLogTechnique_logObj;
    if (os_log_type_enabled(_ARLogTechnique_logObj, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      *buf = 138543874;
      v22 = v10;
      v23 = 2048;
      v24 = v11;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_23D3AE000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Saved video to file at %@ and to the photo library.", buf, 0x20u);
    }

    [*(a1 + 32) _finish:0];
  }

  else
  {
    v19[0] = *MEMORY[0x277CCA450];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Saved video to file at %@, but not in the photo library because of an error.", *(a1 + 40)];
    v19[1] = *MEMORY[0x277CCA7E8];
    v20[0] = v13;
    v20[1] = v5;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

    v15 = *(a1 + 32);
    v16 = *MEMORY[0x277CE5168];
    v17 = ARErrorWithCodeAndUserInfo();
    [v15 _fail:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

@end