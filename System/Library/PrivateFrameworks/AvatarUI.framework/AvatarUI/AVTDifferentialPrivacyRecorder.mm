@interface AVTDifferentialPrivacyRecorder
+ (id)makeCachingNumRecorderProvider:(id)provider;
+ (id)makeCachingStringRecorderProvider:(id)provider;
- (AVTDifferentialPrivacyRecorder)initWithStringRecorderProvider:(id)provider numericDataRecorderProvider:(id)recorderProvider;
- (void)recordNumber:(id)number forKey:(id)key;
- (void)recordString:(id)string forKey:(id)key;
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

+ (id)makeCachingStringRecorderProvider:(id)provider
{
  providerCopy = provider;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__AVTDifferentialPrivacyRecorder_makeCachingStringRecorderProvider___block_invoke;
  v9[3] = &unk_1E7F3C9F8;
  v10 = dictionary;
  v11 = providerCopy;
  v5 = providerCopy;
  v6 = dictionary;
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

+ (id)makeCachingNumRecorderProvider:(id)provider
{
  providerCopy = provider;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__AVTDifferentialPrivacyRecorder_makeCachingNumRecorderProvider___block_invoke;
  v9[3] = &unk_1E7F3CA20;
  v10 = dictionary;
  v11 = providerCopy;
  v5 = providerCopy;
  v6 = dictionary;
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

- (AVTDifferentialPrivacyRecorder)initWithStringRecorderProvider:(id)provider numericDataRecorderProvider:(id)recorderProvider
{
  providerCopy = provider;
  recorderProviderCopy = recorderProvider;
  v14.receiver = self;
  v14.super_class = AVTDifferentialPrivacyRecorder;
  v8 = [(AVTDifferentialPrivacyRecorder *)&v14 init];
  if (v8)
  {
    v9 = [objc_opt_class() makeCachingStringRecorderProvider:providerCopy];
    stringRecorderProvider = v8->_stringRecorderProvider;
    v8->_stringRecorderProvider = v9;

    v11 = [objc_opt_class() makeCachingNumRecorderProvider:recorderProviderCopy];
    numRecorderProvider = v8->_numRecorderProvider;
    v8->_numRecorderProvider = v11;
  }

  return v8;
}

- (void)recordString:(id)string forKey:(id)key
{
  v11[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  stringCopy = string;
  stringRecorderProvider = [(AVTDifferentialPrivacyRecorder *)self stringRecorderProvider];
  v9 = (stringRecorderProvider)[2](stringRecorderProvider, keyCopy);

  v11[0] = stringCopy;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  [v9 record:v10];
}

- (void)recordNumber:(id)number forKey:(id)key
{
  v11[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  numberCopy = number;
  numRecorderProvider = [(AVTDifferentialPrivacyRecorder *)self numRecorderProvider];
  v9 = (numRecorderProvider)[2](numRecorderProvider, keyCopy);

  v11[0] = numberCopy;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  [v9 record:v10];
}

@end