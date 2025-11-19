@interface ATXProactiveSuggestion(ExecutableObjects)
+ (__CFString)genericStringForExecutableObject:()ExecutableObjects;
- (id)appClipHeroAppPredictionExecutableObject;
- (id)atxActionExecutableObject;
- (id)atxInfoSuggestionExecutableObject;
- (id)atxShortcutsActionExecutableObject;
- (id)atxSpotlightActionExecutableObject;
- (id)bundleIdExecutableObject;
- (id)genericStringForSuggestionExecutableObject;
- (id)heroDataExecutableObject;
- (id)linkActionExecutableObject;
@end

@implementation ATXProactiveSuggestion(ExecutableObjects)

- (id)atxShortcutsActionExecutableObject
{
  v1 = [a1 executableSpecification];
  if ([v1 executableType] == 9 && (objc_msgSend(v1, "executableClassString"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_opt_class(), NSStringFromClass(v3), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v2, "isEqualToString:", v4), v4, v2, v5))
  {
    v6 = [v1 executableObject];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)atxActionExecutableObject
{
  v1 = [a1 executableSpecification];
  if ([v1 executableType] == 2 && (objc_msgSend(v1, "executableClassString"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_opt_class(), NSStringFromClass(v3), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v2, "isEqualToString:", v4), v4, v2, v5))
  {
    v6 = [v1 executableObject];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)atxSpotlightActionExecutableObject
{
  v1 = [a1 executableSpecification];
  if ([v1 executableType] == 8 && (objc_msgSend(v1, "executableClassString"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_opt_class(), NSStringFromClass(v3), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v2, "isEqualToString:", v4), v4, v2, v5))
  {
    v6 = [v1 executableObject];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)bundleIdExecutableObject
{
  v1 = [a1 executableSpecification];
  if ([v1 executableType] == 1 && (objc_msgSend(v1, "executableObject"), v2 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v2, (isKindOfClass & 1) != 0))
  {
    v4 = [v1 executableObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)atxInfoSuggestionExecutableObject
{
  v1 = [a1 executableSpecification];
  if ([v1 executableType] == 3 && (objc_msgSend(v1, "executableClassString"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_opt_class(), NSStringFromClass(v3), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v2, "isEqualToString:", v4), v4, v2, v5))
  {
    v6 = [v1 executableObject];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)linkActionExecutableObject
{
  v1 = [a1 executableSpecification];
  if ([v1 executableType] == 10 && (objc_msgSend(v1, "executableClassString"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_opt_class(), NSStringFromClass(v3), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v2, "isEqualToString:", v4), v4, v2, v5))
  {
    v6 = [v1 executableObject];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)heroDataExecutableObject
{
  v2 = [a1 executableSpecification];
  if ([v2 executableType] == 1 && (objc_msgSend(v2, "executableObject"), v3 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v3, (isKindOfClass & 1) != 0))
  {
    v5 = [v2 executableObject];
  }

  else
  {
    v5 = [a1 appClipHeroAppPredictionExecutableObject];
  }

  v6 = v5;

  return v6;
}

- (id)appClipHeroAppPredictionExecutableObject
{
  v1 = [a1 executableSpecification];
  if ([v1 executableType] == 5 && (objc_msgSend(v1, "executableClassString"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_opt_class(), NSStringFromClass(v3), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v2, "isEqualToString:", v4), v4, v2, v5))
  {
    v6 = [v1 executableObject];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)genericStringForSuggestionExecutableObject
{
  v1 = [a1 executableSpecification];
  v2 = [v1 executableObject];

  v3 = [objc_opt_class() genericStringForExecutableObject:v2];

  return v3;
}

+ (__CFString)genericStringForExecutableObject:()ExecutableObjects
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 actionKey];
LABEL_3:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = v3;
    v8 = [v6 alloc];
    v9 = [v7 appBundleIdentifier];
    v10 = [v7 widgetBundleIdentifier];
    v11 = [v7 widgetKind];

    v5 = [v8 initWithFormat:@"%@:%@:%@", v9, v10, v11];
LABEL_6:

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 bundleId];
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = v3;
    v15 = [v13 alloc];
    v9 = [v14 bundleId];
    v10 = [v14 action];

    v16 = [v10 identifier];
    v5 = [v15 initWithFormat:@"%@:%@", v9, v16];

    goto LABEL_6;
  }

  v5 = &stru_1F3E050C8;
LABEL_7:

  return v5;
}

@end