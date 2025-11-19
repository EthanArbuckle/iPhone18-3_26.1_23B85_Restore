@interface LSFeatureFlagPredicate
+ (id)featureFlagPredicateForBundle:(unsigned int)a3 bundleData:(const LSBundleData *)a4 database:(id)a5 error:(id *)a6;
- (LSFeatureFlagPredicate)initWithDictionary:(id)a3 error:(id *)a4;
- (id).cxx_construct;
@end

@implementation LSFeatureFlagPredicate

+ (id)featureFlagPredicateForBundle:(unsigned int)a3 bundleData:(const LSBundleData *)a4 database:(id)a5 error:(id *)a6
{
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = [_LSLazyPropertyList lazyPropertyListWithDatabase:a5 unit:a4->base.infoDictionary];
  v8 = [v7 objectForKey:@"LSRequiredFeatureFlags" ofClass:objc_opt_class()];
  if (v8)
  {
    a6 = [[LSFeatureFlagPredicate alloc] initWithDictionary:v8 error:a6];
  }

  else if (a6)
  {
    v9 = *MEMORY[0x1E696A768];
    v13 = *MEMORY[0x1E696A278];
    v14[0] = @"tried to make reature flag predicate for bundle with no feature flag predicate";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *a6 = _LSMakeNSErrorImpl(v9, -43, v10, "+[LSFeatureFlagPredicate(LSBundleDataPredicate) featureFlagPredicateForBundle:bundleData:database:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSFeatureFlagPredicateEvaluator+LSData.m", 24);

    a6 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return a6;
}

- (LSFeatureFlagPredicate)initWithDictionary:(id)a3 error:(id *)a4
{
  LaunchServices::FeatureFlagPredicateEvaluation::Predicate::parse_dictionary(a3, a4, v10);
  if (v12 != 1)
  {

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v9.receiver = self;
  v9.super_class = LSFeatureFlagPredicate;
  v6 = [(LSFeatureFlagPredicate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    LaunchServices::DelayedInitable<LaunchServices::FeatureFlagPredicateEvaluation::Predicate>::emplace<LaunchServices::FeatureFlagPredicateEvaluation::Predicate>(&v6->_predicate, v10);
    goto LABEL_6;
  }

  if (!a4)
  {
    goto LABEL_5;
  }

  _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 12, 0, "[LSFeatureFlagPredicate initWithDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSFeatureFlagPredicateEvaluator.mm", 186);
  *a4 = v7 = 0;
LABEL_6:
  if (v12 == 1)
  {
    v13 = &v11;
    std::vector<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::__destroy_vector::operator()[abi:nn200100](&v13);
    v13 = v10;
    std::vector<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::__destroy_vector::operator()[abi:nn200100](&v13);
  }

  return v7;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 56) = 0;
  return self;
}

@end