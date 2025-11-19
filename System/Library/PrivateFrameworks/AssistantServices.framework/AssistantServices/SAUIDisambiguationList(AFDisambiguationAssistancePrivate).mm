@interface SAUIDisambiguationList(AFDisambiguationAssistancePrivate)
- (id)af_assistedSelectionItem;
- (id)af_disambiguationIdentifier;
- (id)af_indexIdentifierForItem:()AFDisambiguationAssistancePrivate;
- (id)af_itemForIndexIdentifier:()AFDisambiguationAssistancePrivate;
- (void)af_setDisambiguationInfo:()AFDisambiguationAssistancePrivate;
@end

@implementation SAUIDisambiguationList(AFDisambiguationAssistancePrivate)

- (id)af_assistedSelectionItem
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([a1 autoDisambiguationDisabled])
  {
    v3 = 0;
    v4 = @"disabled";
  }

  else
  {
    v3 = _af_AssistedSelectionItem(a1);
    if (!v3)
    {
      goto LABEL_6;
    }

    v4 = @"selection";
  }

  [v2 setObject:MEMORY[0x1E695E118] forKey:v4];
LABEL_6:
  v5 = +[AFAnalytics sharedAnalytics];
  [v5 logEventWithType:1925 context:v2];

  return v3;
}

- (void)af_setDisambiguationInfo:()AFDisambiguationAssistancePrivate
{
  v4 = a1;
  v5 = a3;
  objc_setAssociatedObject(v4, "DisambiguationInfoKey", v5, 1);
  v7 = objc_alloc_init(AFDisambiguationStore);
  v6 = [v4 af_disambiguationIdentifier];

  [(AFDisambiguationStore *)v7 saveInfo:v5 forIdentifier:v6];
}

- (id)af_itemForIndexIdentifier:()AFDisambiguationAssistancePrivate
{
  v4 = a3;
  v5 = [v4 integerValue];
  v6 = [a1 items];
  v7 = [v6 count];
  if (v5 || [v4 isEqualToString:@"0"])
  {
    v8 = 0;
    if (v5 <= 0x7FFFFFFFFFFFFFFELL && v5 < v7)
    {
      v9 = [a1 items];
      v8 = [v9 objectAtIndexedSubscript:v5];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)af_indexIdentifierForItem:()AFDisambiguationAssistancePrivate
{
  v4 = a3;
  v5 = [a1 items];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lu", v6];
  }

  return v7;
}

- (id)af_disambiguationIdentifier
{
  memset(&v4, 0, sizeof(v4));
  CC_SHA1_Init(&v4);
  _UpdateSha1WithDisambiguationList(&v4, a1);
  v2 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:20];
  CC_SHA1_Final([v2 mutableBytes], &v4);

  return v2;
}

@end