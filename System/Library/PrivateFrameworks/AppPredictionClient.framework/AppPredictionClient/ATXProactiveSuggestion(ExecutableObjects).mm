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
  executableSpecification = [self executableSpecification];
  if ([executableSpecification executableType] == 9 && (objc_msgSend(executableSpecification, "executableClassString"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_opt_class(), NSStringFromClass(v3), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v2, "isEqualToString:", v4), v4, v2, v5))
  {
    executableObject = [executableSpecification executableObject];
  }

  else
  {
    executableObject = 0;
  }

  return executableObject;
}

- (id)atxActionExecutableObject
{
  executableSpecification = [self executableSpecification];
  if ([executableSpecification executableType] == 2 && (objc_msgSend(executableSpecification, "executableClassString"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_opt_class(), NSStringFromClass(v3), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v2, "isEqualToString:", v4), v4, v2, v5))
  {
    executableObject = [executableSpecification executableObject];
  }

  else
  {
    executableObject = 0;
  }

  return executableObject;
}

- (id)atxSpotlightActionExecutableObject
{
  executableSpecification = [self executableSpecification];
  if ([executableSpecification executableType] == 8 && (objc_msgSend(executableSpecification, "executableClassString"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_opt_class(), NSStringFromClass(v3), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v2, "isEqualToString:", v4), v4, v2, v5))
  {
    executableObject = [executableSpecification executableObject];
  }

  else
  {
    executableObject = 0;
  }

  return executableObject;
}

- (id)bundleIdExecutableObject
{
  executableSpecification = [self executableSpecification];
  if ([executableSpecification executableType] == 1 && (objc_msgSend(executableSpecification, "executableObject"), v2 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v2, (isKindOfClass & 1) != 0))
  {
    executableObject = [executableSpecification executableObject];
  }

  else
  {
    executableObject = 0;
  }

  return executableObject;
}

- (id)atxInfoSuggestionExecutableObject
{
  executableSpecification = [self executableSpecification];
  if ([executableSpecification executableType] == 3 && (objc_msgSend(executableSpecification, "executableClassString"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_opt_class(), NSStringFromClass(v3), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v2, "isEqualToString:", v4), v4, v2, v5))
  {
    executableObject = [executableSpecification executableObject];
  }

  else
  {
    executableObject = 0;
  }

  return executableObject;
}

- (id)linkActionExecutableObject
{
  executableSpecification = [self executableSpecification];
  if ([executableSpecification executableType] == 10 && (objc_msgSend(executableSpecification, "executableClassString"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_opt_class(), NSStringFromClass(v3), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v2, "isEqualToString:", v4), v4, v2, v5))
  {
    executableObject = [executableSpecification executableObject];
  }

  else
  {
    executableObject = 0;
  }

  return executableObject;
}

- (id)heroDataExecutableObject
{
  executableSpecification = [self executableSpecification];
  if ([executableSpecification executableType] == 1 && (objc_msgSend(executableSpecification, "executableObject"), v3 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v3, (isKindOfClass & 1) != 0))
  {
    executableObject = [executableSpecification executableObject];
  }

  else
  {
    executableObject = [self appClipHeroAppPredictionExecutableObject];
  }

  v6 = executableObject;

  return v6;
}

- (id)appClipHeroAppPredictionExecutableObject
{
  executableSpecification = [self executableSpecification];
  if ([executableSpecification executableType] == 5 && (objc_msgSend(executableSpecification, "executableClassString"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_opt_class(), NSStringFromClass(v3), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v2, "isEqualToString:", v4), v4, v2, v5))
  {
    executableObject = [executableSpecification executableObject];
  }

  else
  {
    executableObject = 0;
  }

  return executableObject;
}

- (id)genericStringForSuggestionExecutableObject
{
  executableSpecification = [self executableSpecification];
  executableObject = [executableSpecification executableObject];

  v3 = [objc_opt_class() genericStringForExecutableObject:executableObject];

  return v3;
}

+ (__CFString)genericStringForExecutableObject:()ExecutableObjects
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    actionKey = [v3 actionKey];
LABEL_3:
    v5 = actionKey;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = v3;
    v8 = [v6 alloc];
    appBundleIdentifier = [v7 appBundleIdentifier];
    widgetBundleIdentifier = [v7 widgetBundleIdentifier];
    widgetKind = [v7 widgetKind];

    v5 = [v8 initWithFormat:@"%@:%@:%@", appBundleIdentifier, widgetBundleIdentifier, widgetKind];
LABEL_6:

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    actionKey = [v3 bundleId];
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    actionKey = v3;
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = v3;
    v15 = [v13 alloc];
    appBundleIdentifier = [v14 bundleId];
    widgetBundleIdentifier = [v14 action];

    identifier = [widgetBundleIdentifier identifier];
    v5 = [v15 initWithFormat:@"%@:%@", appBundleIdentifier, identifier];

    goto LABEL_6;
  }

  v5 = &stru_1F3E050C8;
LABEL_7:

  return v5;
}

@end