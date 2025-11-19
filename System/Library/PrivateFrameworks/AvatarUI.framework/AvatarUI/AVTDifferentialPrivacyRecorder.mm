@interface AVTDifferentialPrivacyRecorder
+ (id)makeCachingNumRecorderProvider:(id)a3;
+ (id)makeCachingStringRecorderProvider:(id)a3;
- (AVTDifferentialPrivacyRecorder)initWithStringRecorderProvider:(id)a3 numericDataRecorderProvider:(id)a4;
- (void)recordNumber:(id)a3 forKey:(id)a4;
- (void)recordString:(id)a3 forKey:(id)a4;
@end

@implementation AVTDifferentialPrivacyRecorder

id __38__AVTDifferentialPrivacyRecorder_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v3 = get_DPStringRecorderClass_softClass;
  v11 = get_DPStringRecorderClass_softClass;
  if (!get_DPStringRecorderClass_softClass)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __get_DPStringRecorderClass_block_invoke;
    v7[3] = &unk_1E7F3AF90;
    v7[4] = &v8;
    __get_DPStringRecorderClass_block_invoke(v7);
    v3 = v9[3];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  v5 = [[v3 alloc] initWithKey:v2];

  return v5;
}

id __38__AVTDifferentialPrivacyRecorder_init__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v3 = get_DPNumericDataRecorderClass_softClass;
  v11 = get_DPNumericDataRecorderClass_softClass;
  if (!get_DPNumericDataRecorderClass_softClass)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __get_DPNumericDataRecorderClass_block_invoke;
    v7[3] = &unk_1E7F3AF90;
    v7[4] = &v8;
    __get_DPNumericDataRecorderClass_block_invoke(v7);
    v3 = v9[3];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  v5 = [[v3 alloc] initWithKey:v2];

  return v5;
}

+ (id)makeCachingStringRecorderProvider:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__AVTDifferentialPrivacyRecorder_makeCachingStringRecorderProvider___block_invoke;
  v9[3] = &unk_1E7F3C9F8;
  v10 = v4;
  v11 = v3;
  v5 = v3;
  v6 = v4;
  v7 = MEMORY[0x1BFB0DE80](v9);

  return v7;
}

id __68__AVTDifferentialPrivacyRecorder_makeCachingStringRecorderProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  if (!v4)
  {
    v4 = (*(*(a1 + 40) + 16))();
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
  }

  return v4;
}

+ (id)makeCachingNumRecorderProvider:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__AVTDifferentialPrivacyRecorder_makeCachingNumRecorderProvider___block_invoke;
  v9[3] = &unk_1E7F3CA20;
  v10 = v4;
  v11 = v3;
  v5 = v3;
  v6 = v4;
  v7 = MEMORY[0x1BFB0DE80](v9);

  return v7;
}

id __65__AVTDifferentialPrivacyRecorder_makeCachingNumRecorderProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  if (!v4)
  {
    v4 = (*(*(a1 + 40) + 16))();
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
  }

  return v4;
}

- (AVTDifferentialPrivacyRecorder)initWithStringRecorderProvider:(id)a3 numericDataRecorderProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = AVTDifferentialPrivacyRecorder;
  v8 = [(AVTDifferentialPrivacyRecorder *)&v14 init];
  if (v8)
  {
    v9 = [objc_opt_class() makeCachingStringRecorderProvider:v6];
    stringRecorderProvider = v8->_stringRecorderProvider;
    v8->_stringRecorderProvider = v9;

    v11 = [objc_opt_class() makeCachingNumRecorderProvider:v7];
    numRecorderProvider = v8->_numRecorderProvider;
    v8->_numRecorderProvider = v11;
  }

  return v8;
}

- (void)recordString:(id)a3 forKey:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(AVTDifferentialPrivacyRecorder *)self stringRecorderProvider];
  v9 = (v8)[2](v8, v6);

  v11[0] = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  [v9 record:v10];
}

- (void)recordNumber:(id)a3 forKey:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(AVTDifferentialPrivacyRecorder *)self numRecorderProvider];
  v9 = (v8)[2](v8, v6);

  v11[0] = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  [v9 record:v10];
}

@end