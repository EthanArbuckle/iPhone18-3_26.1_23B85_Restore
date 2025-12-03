@interface ATXScoredInfoSuggestion
- (ATXScoredInfoSuggestion)initWithSuggestion:(id)suggestion featureSet:(id)set score:(double)score;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation ATXScoredInfoSuggestion

- (ATXScoredInfoSuggestion)initWithSuggestion:(id)suggestion featureSet:(id)set score:(double)score
{
  suggestionCopy = suggestion;
  setCopy = set;
  v14.receiver = self;
  v14.super_class = ATXScoredInfoSuggestion;
  v11 = [(ATXScoredInfoSuggestion *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_suggestion, suggestion);
    objc_storeStrong(&v12->_featureSet, set);
    v12->_score = score;
  }

  return v12;
}

- (id)dictionaryRepresentation
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"suggestion";
  dictionaryRepresentation = [(ATXInfoSuggestion *)self->_suggestion dictionaryRepresentation];
  v10[0] = dictionaryRepresentation;
  v9[1] = @"featureSet";
  dictionaryRepresentation2 = [(ATXInformationFeatureSet *)self->_featureSet dictionaryRepresentation];
  v10[1] = dictionaryRepresentation2;
  v9[2] = @"score";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_score];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)description
{
  dictionaryRepresentation = [(ATXScoredInfoSuggestion *)self dictionaryRepresentation];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [dictionaryRepresentation descriptionWithLocale:currentLocale];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v5 = [(ATXInfoSuggestion *)self->_suggestion copy];
  v6 = [(ATXInformationFeatureSet *)self->_featureSet copy];
  v7 = [v4 initWithSuggestion:v5 featureSet:v6 score:self->_score];

  return v7;
}

@end