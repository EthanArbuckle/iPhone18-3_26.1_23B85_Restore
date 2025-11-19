@interface ATXProactiveSuggestion(ActionCriteria)
- (ATXActionCriteria)atxActionCriteria;
@end

@implementation ATXProactiveSuggestion(ActionCriteria)

- (ATXActionCriteria)atxActionCriteria
{
  v2 = [a1 atxActionExecutableObject];
  v3 = [a1 atxSpotlightActionExecutableObject];
  v4 = [a1 atxShortcutsActionExecutableObject];
  v5 = [v2 criteria];

  if (v5)
  {
    v6 = v2;
LABEL_7:
    v9 = [v6 criteria];
    goto LABEL_8;
  }

  v7 = [v3 criteria];

  if (v7)
  {
    v6 = v3;
    goto LABEL_7;
  }

  v8 = [v4 criteria];

  if (v8)
  {
    v6 = v4;
    goto LABEL_7;
  }

  v9 = objc_alloc_init(ATXActionCriteria);
LABEL_8:
  v10 = v9;

  return v10;
}

@end