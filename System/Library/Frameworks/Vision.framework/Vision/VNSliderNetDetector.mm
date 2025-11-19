@interface VNSliderNetDetector
+ (id)modelPathForConfiguration:(id)a3 error:(id *)a4;
- (BOOL)configureImageAnalyzerOptions:(void *)a3 error:(id *)a4;
- (id)observationsForLastAnalysisOfImageAnalyzer:(void *)a3 processOptions:(id)a4 originatingRequestSpecifier:(id)a5 qosClass:(unsigned int)a6 error:(id *)a7;
@end

@implementation VNSliderNetDetector

- (id)observationsForLastAnalysisOfImageAnalyzer:(void *)a3 processOptions:(id)a4 originatingRequestSpecifier:(id)a5 qosClass:(unsigned int)a6 error:(id *)a7
{
  v30[1] = *MEMORY[0x1E69E9840];
  v25 = a4;
  v26 = a5;
  vision::mod::ImageAnalyzer::getSlidersAdjustments(v27, a3);
  context = objc_autoreleasePoolPush();
  v9 = objc_alloc(MEMORY[0x1E695DF90]);
  v10 = [v9 initWithCapacity:v29];
  for (i = v28; i; i = *i)
  {
    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    v13 = i + 2;
    if (*(i + 39) < 0)
    {
      v13 = *v13;
    }

    v14 = [v12 initWithUTF8String:{v13, context, v25}];
    v15 = [v14 substringWithRange:{14, objc_msgSend(v14, "length") - 29}];
    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:(i[6] - i[5]) >> 2];
    v18 = i[5];
    v19 = i[6];
    while (v18 != v19)
    {
      LODWORD(v17) = *v18;
      v20 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
      [v16 addObject:v20];

      ++v18;
    }

    [v10 setObject:v16 forKey:v15];
  }

  v21 = [[VN1vLyVSh30UQ26TGBoV8MHv alloc] initWithOriginatingRequestSpecifier:v26 adjustments:v10];
  v30[0] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];

  objc_autoreleasePoolPop(context);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::~__hash_table(v27);

  return v22;
}

- (BOOL)configureImageAnalyzerOptions:(void *)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = VNSliderNetDetector;
  if (![(VNImageAnalyzerBasedDetector *)&v20 configureImageAnalyzerOptions:a3 error:a4])
  {
    return 0;
  }

  v5 = [objc_opt_class() supportedAdjustmentKeys];
  v14 = v5 != 0;
  if (v5)
  {
    std::vector<std::string>::clear[abi:ne200100](a3 + 42);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v7)
    {
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          *(&v15.__r_.__value_.__s + 23) = 14;
          strcpy(&v15, "AEEnhancerNet/");
          v11 = [v10 UTF8String];
          v12 = strlen(v11);
          std::string::append(&v15, v11, v12);
          std::string::append(&v15, "/final_output:0", 0xFuLL);
          std::vector<std::string>::push_back[abi:ne200100](a3 + 336, &v15);
          if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v15.__r_.__value_.__l.__data_);
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v7);
    }
  }

  return v14;
}

+ (id)modelPathForConfiguration:(id)a3 error:(id *)a4
{
  v4 = [VNEspressoHelpers pathForEspressoNetworkModelFileWithName:@"sliderflow-s6xrskinrc_29001.espresso" error:a4];

  return v4;
}

@end