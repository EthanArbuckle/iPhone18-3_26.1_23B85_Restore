@interface ATXImmutableCandidateRelevanceModelFeaturizer
- (ATXImmutableCandidateRelevanceModelFeaturizer)initWithCoder:(id)a3;
- (ATXImmutableCandidateRelevanceModelFeaturizer)initWithFeatureValueNames:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXImmutableCandidateRelevanceModelFeaturizer:(id)a3;
- (id)featureVectorForContext:(id)a3 candidate:(id)a4;
@end

@implementation ATXImmutableCandidateRelevanceModelFeaturizer

- (ATXImmutableCandidateRelevanceModelFeaturizer)initWithFeatureValueNames:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXImmutableCandidateRelevanceModelFeaturizer;
  v6 = [(ATXImmutableCandidateRelevanceModelFeaturizer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_featureValueNames, a3);
  }

  return v7;
}

- (id)featureVectorForContext:(id)a3 candidate:(id)a4
{
  v5 = a3;
  result = a4;
  __break(1u);
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXImmutableCandidateRelevanceModelFeaturizer *)self isEqualToATXImmutableCandidateRelevanceModelFeaturizer:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXImmutableCandidateRelevanceModelFeaturizer:(id)a3
{
  v4 = a3;
  v5 = [(ATXImmutableCandidateRelevanceModelFeaturizer *)self dimensions];
  v6 = v5 == [v4 dimensions] && -[NSArray isEqualToArray:](self->_featureValueNames, "isEqualToArray:", v4[1]);

  return v6;
}

- (ATXImmutableCandidateRelevanceModelFeaturizer)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D42620];
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x277CBEB98]);
  v8 = objc_opt_class();
  v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v6);
  v10 = __atxlog_handle_relevance_model();
  v11 = [v5 robustDecodeObjectOfClasses:v9 forKey:@"featureValueNames" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXImmutableCandidateRelevanceModelFeaturizer" errorCode:-1 logHandle:v10];

  if (v11)
  {
    self = [(ATXImmutableCandidateRelevanceModelFeaturizer *)self initWithFeatureValueNames:v11];
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end