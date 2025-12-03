@interface ATXImmutableCandidateRelevanceModelFeaturizer
- (ATXImmutableCandidateRelevanceModelFeaturizer)initWithCoder:(id)coder;
- (ATXImmutableCandidateRelevanceModelFeaturizer)initWithFeatureValueNames:(id)names;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXImmutableCandidateRelevanceModelFeaturizer:(id)featurizer;
- (id)featureVectorForContext:(id)context candidate:(id)candidate;
@end

@implementation ATXImmutableCandidateRelevanceModelFeaturizer

- (ATXImmutableCandidateRelevanceModelFeaturizer)initWithFeatureValueNames:(id)names
{
  namesCopy = names;
  v9.receiver = self;
  v9.super_class = ATXImmutableCandidateRelevanceModelFeaturizer;
  v6 = [(ATXImmutableCandidateRelevanceModelFeaturizer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_featureValueNames, names);
  }

  return v7;
}

- (id)featureVectorForContext:(id)context candidate:(id)candidate
{
  contextCopy = context;
  result = candidate;
  __break(1u);
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXImmutableCandidateRelevanceModelFeaturizer *)self isEqualToATXImmutableCandidateRelevanceModelFeaturizer:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXImmutableCandidateRelevanceModelFeaturizer:(id)featurizer
{
  featurizerCopy = featurizer;
  dimensions = [(ATXImmutableCandidateRelevanceModelFeaturizer *)self dimensions];
  v6 = dimensions == [featurizerCopy dimensions] && -[NSArray isEqualToArray:](self->_featureValueNames, "isEqualToArray:", featurizerCopy[1]);

  return v6;
}

- (ATXImmutableCandidateRelevanceModelFeaturizer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277D42620];
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x277CBEB98]);
  v8 = objc_opt_class();
  v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v6);
  v10 = __atxlog_handle_relevance_model();
  v11 = [v5 robustDecodeObjectOfClasses:v9 forKey:@"featureValueNames" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXImmutableCandidateRelevanceModelFeaturizer" errorCode:-1 logHandle:v10];

  if (v11)
  {
    self = [(ATXImmutableCandidateRelevanceModelFeaturizer *)self initWithFeatureValueNames:v11];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end