@interface AVTAvatarConfigurationMetric
+ (id)defaultMetric;
+ (int64_t)gapFromDistance:(unint64_t)a3;
+ (int64_t)impactForSettingKind:(id)a3;
+ (unint64_t)distanceFromConfiguration:(id)a3 toConfiguration:(id)a4;
+ (void)enumerateDifferencesFromConfiguration:(id)a3 toConfiguration:(id)a4 withHandler:(id)a5;
- (int64_t)gapFromDistance:(unint64_t)a3;
- (unint64_t)differenceCountFromDistance:(unint64_t)a3;
- (unint64_t)distanceFromConfiguration:(id)a3 toConfiguration:(id)a4;
@end

@implementation AVTAvatarConfigurationMetric

+ (id)defaultMetric
{
  if (defaultMetric_onceToken != -1)
  {
    +[AVTAvatarConfigurationMetric defaultMetric];
  }

  v3 = defaultMetric_sInstance;

  return v3;
}

uint64_t __45__AVTAvatarConfigurationMetric_defaultMetric__block_invoke()
{
  v0 = objc_alloc_init(AVTAvatarConfigurationMetric);
  v1 = defaultMetric_sInstance;
  defaultMetric_sInstance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (unint64_t)distanceFromConfiguration:(id)a3 toConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__AVTAvatarConfigurationMetric_distanceFromConfiguration_toConfiguration___block_invoke;
  v10[3] = &unk_1E7F3C630;
  v10[4] = &v11;
  v10[5] = a1;
  [a1 enumerateDifferencesFromConfiguration:v6 toConfiguration:v7 withHandler:v10];
  v8 = v12[3];
  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __74__AVTAvatarConfigurationMetric_distanceFromConfiguration_toConfiguration___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 40) impactForSettingKind:{a2, a3}];
  *(*(*(a1 + 32) + 8) + 24) += 1 << (6 * result);
  return result;
}

+ (int64_t)gapFromDistance:(unint64_t)a3
{
  if ((a3 & 7) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if ((a3 & 0x1C0) != 0)
  {
    v3 = 1;
  }

  if ((a3 & 0x7000) != 0)
  {
    v3 = 2;
  }

  if ((a3 & 0x1C0000) != 0)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

+ (int64_t)impactForSettingKind:(id)a3
{
  v43[11] = *MEMORY[0x1E69E9840];
  v3 = AVTPresetSettingKind();
  v40 = [AVTAvatarSettingKindValue valueWithSettingKind:v3, v4];
  v42[0] = v40;
  v43[0] = &unk_1F39A5C08;
  v5 = AVTPresetSettingKind();
  v39 = [AVTAvatarSettingKindValue valueWithSettingKind:v5, v6];
  v42[1] = v39;
  v43[1] = &unk_1F39A5C08;
  v7 = AVTPresetSettingKind();
  v38 = [AVTAvatarSettingKindValue valueWithSettingKind:v7, v8];
  v42[2] = v38;
  v43[2] = &unk_1F39A5C08;
  v9 = AVTPresetSettingKind();
  v37 = [AVTAvatarSettingKindValue valueWithSettingKind:v9, v10];
  v42[3] = v37;
  v43[3] = &unk_1F39A5C08;
  v11 = AVTPresetSettingKind();
  v13 = [AVTAvatarSettingKindValue valueWithSettingKind:v11, v12];
  v42[4] = v13;
  v43[4] = &unk_1F39A5C08;
  v14 = AVTPresetSettingKind();
  v16 = [AVTAvatarSettingKindValue valueWithSettingKind:v14, v15];
  v42[5] = v16;
  v43[5] = &unk_1F39A5C08;
  v17 = AVTPresetSettingKind();
  v19 = [AVTAvatarSettingKindValue valueWithSettingKind:v17, v18];
  v42[6] = v19;
  v43[6] = &unk_1F39A5C08;
  v20 = AVTPresetSettingKind();
  v22 = [AVTAvatarSettingKindValue valueWithSettingKind:v20, v21];
  v42[7] = v22;
  v43[7] = &unk_1F39A5C08;
  v23 = AVTPresetSettingKind();
  v25 = [AVTAvatarSettingKindValue valueWithSettingKind:v23, v24];
  v42[8] = v25;
  v43[8] = &unk_1F39A5C20;
  v26 = AVTPresetSettingKind();
  v28 = [AVTAvatarSettingKindValue valueWithSettingKind:v26, v27];
  v42[9] = v28;
  v43[9] = &unk_1F39A5C20;
  v29 = AVTPresetSettingKind();
  v31 = [AVTAvatarSettingKindValue valueWithSettingKind:v29, v30];
  v42[10] = v31;
  v43[10] = &unk_1F39A5C20;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:11];

  v33 = [AVTAvatarSettingKindValue valueWithSettingKind:a3.var0, a3.var1];
  v34 = [v32 objectForKeyedSubscript:v33];

  if (v34)
  {
    v35 = [v34 integerValue];
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

+ (void)enumerateDifferencesFromConfiguration:(id)a3 toConfiguration:(id)a4 withHandler:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x1E695DFA8];
  v9 = a4;
  v10 = a3;
  v11 = [v8 set];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __98__AVTAvatarConfigurationMetric_enumerateDifferencesFromConfiguration_toConfiguration_withHandler___block_invoke;
  v15[3] = &unk_1E7F3C658;
  v16 = v11;
  v17 = v7;
  v12 = v7;
  v13 = v11;
  v14 = MEMORY[0x1BFB0DE80](v15);
  (v14)[2](v14, v10, v9);
  (v14)[2](v14, v9, v10);
}

void __98__AVTAvatarConfigurationMetric_enumerateDifferencesFromConfiguration_toConfiguration_withHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = [a2 configurationPresets];
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    v10 = 0x1E7F39000uLL;
    do
    {
      v11 = 0;
      v29 = v8;
      do
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v30 + 1) + 8 * v11);
        v13 = [v12 settingKind];
        v15 = [v5 configurationPresetForSettingKind:{v13, v14}];
        v16 = *(v10 + 2760);
        v17 = [v12 settingKind];
        v19 = [v16 valueWithSettingKind:{v17, v18}];
        if (([*(a1 + 32) containsObject:v19] & 1) == 0)
        {
          [*(a1 + 32) addObject:v19];
          if (([v12 isEqual:v15] & 1) == 0)
          {
            v20 = v9;
            v21 = v5;
            v22 = v10;
            v23 = v6;
            v24 = *(a1 + 40);
            v25 = [v12 settingKind];
            v26 = *(v24 + 16);
            v27 = v24;
            v6 = v23;
            v10 = v22;
            v5 = v21;
            v9 = v20;
            v8 = v29;
            v26(v27, v25, v28);
          }
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v8);
  }
}

- (unint64_t)distanceFromConfiguration:(id)a3 toConfiguration:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() distanceFromConfiguration:v6 toConfiguration:v5];

  return v7;
}

- (unint64_t)differenceCountFromDistance:(unint64_t)a3
{
  v4 = objc_opt_class();

  return [v4 differenceCountFromDistance:a3];
}

- (int64_t)gapFromDistance:(unint64_t)a3
{
  v4 = objc_opt_class();

  return [v4 gapFromDistance:a3];
}

@end