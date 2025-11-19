@interface SAUIListItem(AssistantUIAdditions)
- (id)afui_appInfo;
- (void)afui_setSelectionTextWithDisambiguationList:()AssistantUIAdditions;
@end

@implementation SAUIListItem(AssistantUIAdditions)

- (id)afui_appInfo
{
  v2 = [a1 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [a1 object];
    v5 = [v4 copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)afui_setSelectionTextWithDisambiguationList:()AssistantUIAdditions
{
  v6 = a3;
  v4 = [a1 selectionResponse];
  if (!v4)
  {
    v4 = [a1 selectionText];
    if (!v4)
    {
      v5 = [v6 selectionResponse];
      [a1 setSelectionText:v5];

      v4 = 0;
    }
  }
}

@end