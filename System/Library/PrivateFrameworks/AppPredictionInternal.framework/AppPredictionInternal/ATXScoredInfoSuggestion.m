@interface ATXScoredInfoSuggestion
- (ATXScoredInfoSuggestion)initWithSuggestion:(id)a3 featureSet:(id)a4 score:(double)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation ATXScoredInfoSuggestion

- (ATXScoredInfoSuggestion)initWithSuggestion:(id)a3 featureSet:(id)a4 score:(double)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = ATXScoredInfoSuggestion;
  v11 = [(ATXScoredInfoSuggestion *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_suggestion, a3);
    objc_storeStrong(&v12->_featureSet, a4);
    v12->_score = a5;
  }

  return v12;
}

- (id)dictionaryRepresentation
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"suggestion";
  v3 = [(ATXInfoSuggestion *)self->_suggestion dictionaryRepresentation];
  v10[0] = v3;
  v9[1] = @"featureSet";
  v4 = [(ATXInformationFeatureSet *)self->_featureSet dictionaryRepresentation];
  v10[1] = v4;
  v9[2] = @"score";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_score];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)description
{
  v2 = [(ATXScoredInfoSuggestion *)self dictionaryRepresentation];
  v3 = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [v2 descriptionWithLocale:v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(ATXInfoSuggestion *)self->_suggestion copy];
  v6 = [(ATXInformationFeatureSet *)self->_featureSet copy];
  v7 = [v4 initWithSuggestion:v5 featureSet:v6 score:self->_score];

  return v7;
}

@end