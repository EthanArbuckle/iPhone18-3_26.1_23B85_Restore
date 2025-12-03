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
  if ([self autoDisambiguationDisabled])
  {
    v3 = 0;
    v4 = @"disabled";
  }

  else
  {
    v3 = _af_AssistedSelectionItem(self);
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
  selfCopy = self;
  v5 = a3;
  objc_setAssociatedObject(selfCopy, "DisambiguationInfoKey", v5, 1);
  v7 = objc_alloc_init(AFDisambiguationStore);
  af_disambiguationIdentifier = [selfCopy af_disambiguationIdentifier];

  [(AFDisambiguationStore *)v7 saveInfo:v5 forIdentifier:af_disambiguationIdentifier];
}

- (id)af_itemForIndexIdentifier:()AFDisambiguationAssistancePrivate
{
  v4 = a3;
  integerValue = [v4 integerValue];
  items = [self items];
  v7 = [items count];
  if (integerValue || [v4 isEqualToString:@"0"])
  {
    v8 = 0;
    if (integerValue <= 0x7FFFFFFFFFFFFFFELL && integerValue < v7)
    {
      items2 = [self items];
      v8 = [items2 objectAtIndexedSubscript:integerValue];
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
  items = [self items];
  v6 = [items indexOfObject:v4];

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
  _UpdateSha1WithDisambiguationList(&v4, self);
  v2 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:20];
  CC_SHA1_Final([v2 mutableBytes], &v4);

  return v2;
}

@end