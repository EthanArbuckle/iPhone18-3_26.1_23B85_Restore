@interface FKInsightsRowViewModelCollection
- (FKInsightsRowViewModelCollection)initWithFoundInInsight:(id)insight;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation FKInsightsRowViewModelCollection

- (FKInsightsRowViewModelCollection)initWithFoundInInsight:(id)insight
{
  insightCopy = insight;
  v9.receiver = self;
  v9.super_class = FKInsightsRowViewModelCollection;
  v5 = [(FKInsightsRowViewModelCollection *)&v9 init];
  if (v5)
  {
    v6 = [insightCopy copy];
    foundInInsight = v5->_foundInInsight;
    v5->_foundInInsight = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v5 = [(FKFoundInInsightRowViewModelCollection *)self->_foundInInsight copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

@end