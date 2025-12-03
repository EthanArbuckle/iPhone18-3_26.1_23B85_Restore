@interface _HDRecordCategoryAnalyticsDescription
- (_HDRecordCategoryAnalyticsDescription)initWithCategoryType:(int64_t)type baseAnalyticKey:(id)key timeScopes:(id)scopes queryDescriptors:(id)descriptors;
@end

@implementation _HDRecordCategoryAnalyticsDescription

- (_HDRecordCategoryAnalyticsDescription)initWithCategoryType:(int64_t)type baseAnalyticKey:(id)key timeScopes:(id)scopes queryDescriptors:(id)descriptors
{
  keyCopy = key;
  scopesCopy = scopes;
  descriptorsCopy = descriptors;
  v22.receiver = self;
  v22.super_class = _HDRecordCategoryAnalyticsDescription;
  v13 = [(_HDRecordCategoryAnalyticsDescription *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_recordCategoryType = type;
    v15 = [keyCopy copy];
    baseAnalyticKey = v14->_baseAnalyticKey;
    v14->_baseAnalyticKey = v15;

    v17 = [scopesCopy copy];
    timeScopes = v14->_timeScopes;
    v14->_timeScopes = v17;

    v19 = [descriptorsCopy copy];
    queryDescriptors = v14->_queryDescriptors;
    v14->_queryDescriptors = v19;
  }

  return v14;
}

@end