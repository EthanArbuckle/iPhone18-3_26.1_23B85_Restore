@interface ATXProactiveSuggestion(ActionCriteria)
- (ATXActionCriteria)atxActionCriteria;
@end

@implementation ATXProactiveSuggestion(ActionCriteria)

- (ATXActionCriteria)atxActionCriteria
{
  atxActionExecutableObject = [self atxActionExecutableObject];
  atxSpotlightActionExecutableObject = [self atxSpotlightActionExecutableObject];
  atxShortcutsActionExecutableObject = [self atxShortcutsActionExecutableObject];
  criteria = [atxActionExecutableObject criteria];

  if (criteria)
  {
    v6 = atxActionExecutableObject;
LABEL_7:
    criteria2 = [v6 criteria];
    goto LABEL_8;
  }

  criteria3 = [atxSpotlightActionExecutableObject criteria];

  if (criteria3)
  {
    v6 = atxSpotlightActionExecutableObject;
    goto LABEL_7;
  }

  criteria4 = [atxShortcutsActionExecutableObject criteria];

  if (criteria4)
  {
    v6 = atxShortcutsActionExecutableObject;
    goto LABEL_7;
  }

  criteria2 = objc_alloc_init(ATXActionCriteria);
LABEL_8:
  v10 = criteria2;

  return v10;
}

@end