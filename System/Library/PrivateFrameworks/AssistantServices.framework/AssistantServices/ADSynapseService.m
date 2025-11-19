@interface ADSynapseService
- (id)customVocabSyncInfo;
@end

@implementation ADSynapseService

- (id)customVocabSyncInfo
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 assistantIsEnabled];

  if (v3)
  {
    v4 = +[_INVocabularyStoreManager savedCustomVocabularyOverviewDictionary];
  }

  else
  {
    v4 = &__NSDictionary0__struct;
  }

  return v4;
}

@end