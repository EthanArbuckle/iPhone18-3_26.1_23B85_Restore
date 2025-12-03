@interface LSFeatureFlagPredicate
+ (id)featureFlagPredicateForBundle:(unsigned int)bundle bundleData:(const LSBundleData *)data database:(id)database error:(id *)error;
- (LSFeatureFlagPredicate)initWithDictionary:(id)dictionary error:(id *)error;
- (id).cxx_construct;
@end

@implementation LSFeatureFlagPredicate

+ (id)featureFlagPredicateForBundle:(unsigned int)bundle bundleData:(const LSBundleData *)data database:(id)database error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = [_LSLazyPropertyList lazyPropertyListWithDatabase:database unit:data->base.infoDictionary];
  v8 = [v7 objectForKey:@"LSRequiredFeatureFlags" ofClass:objc_opt_class()];
  if (v8)
  {
    error = [[LSFeatureFlagPredicate alloc] initWithDictionary:v8 error:error];
  }

  else if (error)
  {
    v9 = *MEMORY[0x1E696A768];
    v13 = *MEMORY[0x1E696A278];
    v14[0] = @"tried to make reature flag predicate for bundle with no feature flag predicate";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *error = _LSMakeNSErrorImpl(v9, -43, v10, "+[LSFeatureFlagPredicate(LSBundleDataPredicate) featureFlagPredicateForBundle:bundleData:database:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSFeatureFlagPredicateEvaluator+LSData.m", 24);

    error = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return error;
}

- (LSFeatureFlagPredicate)initWithDictionary:(id)dictionary error:(id *)error
{
  LaunchServices::FeatureFlagPredicateEvaluation::Predicate::parse_dictionary(dictionary, error, v10);
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

  if (!error)
  {
    goto LABEL_5;
  }

  _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 12, 0, "[LSFeatureFlagPredicate initWithDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSFeatureFlagPredicateEvaluator.mm", 186);
  *error = v7 = 0;
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