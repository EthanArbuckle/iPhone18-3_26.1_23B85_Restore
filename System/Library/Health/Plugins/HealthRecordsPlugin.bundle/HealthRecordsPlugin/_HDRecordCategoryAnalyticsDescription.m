@interface _HDRecordCategoryAnalyticsDescription
- (_HDRecordCategoryAnalyticsDescription)initWithCategoryType:(int64_t)a3 baseAnalyticKey:(id)a4 timeScopes:(id)a5 queryDescriptors:(id)a6;
@end

@implementation _HDRecordCategoryAnalyticsDescription

- (_HDRecordCategoryAnalyticsDescription)initWithCategoryType:(int64_t)a3 baseAnalyticKey:(id)a4 timeScopes:(id)a5 queryDescriptors:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = _HDRecordCategoryAnalyticsDescription;
  v13 = [(_HDRecordCategoryAnalyticsDescription *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_recordCategoryType = a3;
    v15 = [v10 copy];
    baseAnalyticKey = v14->_baseAnalyticKey;
    v14->_baseAnalyticKey = v15;

    v17 = [v11 copy];
    timeScopes = v14->_timeScopes;
    v14->_timeScopes = v17;

    v19 = [v12 copy];
    queryDescriptors = v14->_queryDescriptors;
    v14->_queryDescriptors = v19;
  }

  return v14;
}

@end