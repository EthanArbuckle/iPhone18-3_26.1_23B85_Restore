@interface NSObject(AXATV_Extras)
- (id)_accessibilityBadgeTextForTextElement:()AXATV_Extras;
- (id)_atvAccessibilityITMLAccessibilityContentWithElement:()AXATV_Extras;
- (id)_atvaccessibilityAncestorHasAXID:()AXATV_Extras;
- (id)_atvaccessibilityClosestElementAbove:()AXATV_Extras;
- (id)_atvaccessibilityGeometricNearestHeader;
- (id)_atvaccessibilityITMLAccessibilityContent;
- (id)_atvaccessibilityITMLClass;
@end

@implementation NSObject(AXATV_Extras)

- (id)_atvaccessibilityGeometricNearestHeader
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v2 = [self _accessibilityAncestorIsKindOf:objc_opt_class()];
    v3 = __UIAccessibilityCastAsClass();

    v4 = [v3 _accessibilityFindUnsortedSubviewDescendantsPassingTest:&__block_literal_global_12];
    v5 = [self _atvaccessibilityClosestElementAbove:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_atvaccessibilityClosestElementAbove:()AXATV_Extras
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [self accessibilityFrame];
  v6 = v5;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        [v13 accessibilityFrame];
        if (v14 >= 0.0 && v14 <= v6)
        {
          if (v10)
          {
            v16 = v14;
            [v10 accessibilityFrame];
            if (v16 > v17)
            {
              v18 = v13;

              v10 = v18;
            }
          }

          else
          {
            v10 = v13;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_atvaccessibilityAncestorHasAXID:()AXATV_Extras
{
  v4 = a3;
  selfCopy = self;
  if (selfCopy)
  {
    while (1)
    {
      accessibilityIdentifier = [selfCopy accessibilityIdentifier];
      if ([v4 containsObject:accessibilityIdentifier])
      {
        break;
      }

      accessibilityContainer = [selfCopy accessibilityContainer];

      selfCopy = accessibilityContainer;
      if (!accessibilityContainer)
      {
        goto LABEL_6;
      }
    }

    selfCopy = selfCopy;
  }

LABEL_6:

  return selfCopy;
}

- (id)_atvAccessibilityITMLAccessibilityContentWithElement:()AXATV_Extras
{
  v45 = *MEMORY[0x1E69E9840];
  v29 = a3;
  [v29 children];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v3 = v32 = 0u;
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v31 objects:v44 count:16];
  if (v5)
  {
    v6 = *v32;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        v40 = 0;
        v41 = &v40;
        v42 = 0x2050000000;
        v9 = getIKViewElementClass_softClass_0;
        v43 = getIKViewElementClass_softClass_0;
        if (!getIKViewElementClass_softClass_0)
        {
          v35 = MEMORY[0x1E69E9820];
          v36 = 3221225472;
          v37 = __getIKViewElementClass_block_invoke_0;
          v38 = &unk_1E812DCD0;
          v39 = &v40;
          __getIKViewElementClass_block_invoke_0(&v35);
          v9 = v41[3];
        }

        v10 = v9;
        _Block_object_dispose(&v40, 8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v8;
          accessibilityText = [v11 accessibilityText];
          if (accessibilityText)
          {
            goto LABEL_10;
          }

          v40 = 0;
          v41 = &v40;
          v42 = 0x2050000000;
          v14 = getIKImageElementClass_softClass;
          v43 = getIKImageElementClass_softClass;
          if (!getIKImageElementClass_softClass)
          {
            v35 = MEMORY[0x1E69E9820];
            v36 = 3221225472;
            v37 = __getIKImageElementClass_block_invoke;
            v38 = &unk_1E812DCD0;
            v39 = &v40;
            __getIKImageElementClass_block_invoke(&v35);
            v14 = v41[3];
          }

          v15 = v14;
          _Block_object_dispose(&v40, 8);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && (+[AXATVUtils sharedInstance](AXATVUtils, "sharedInstance"), v16 = objc_claimAutoreleasedReturnValue(), [v11 url], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "accessibilityLabelForResourceURL:", v17), accessibilityText = objc_claimAutoreleasedReturnValue(), v17, v16, accessibilityText))
          {
LABEL_10:
            if (([v4 containsString:{accessibilityText, v27}] & 1) == 0)
            {
              v27 = accessibilityText;
              v28 = @"__AXStringForVariablesSentinel";
              v13 = __AXStringForVariables();
              goto LABEL_22;
            }
          }

          else
          {
            tv_elementType = [v11 tv_elementType];
            if (tv_elementType == 43)
            {
              accessibilityText = 0;
            }

            else
            {
              if (tv_elementType == 39)
              {
                attributes = [v11 attributes];
                v20 = [attributes objectForKeyedSubscript:@"value"];
                [v20 floatValue];

                v21 = +[AXATVUtils sharedInstance];
                v22 = [v21 atvaccessibilityLocalizedString:@"tv.progress.format"];

                v23 = MEMORY[0x1E696AEC0];
                v24 = AXFormatFloatWithPercentage();
                v25 = [v23 stringWithFormat:v22, v24];

                v27 = v25;
                v28 = @"__AXStringForVariablesSentinel";
                v13 = __AXStringForVariables();
              }

              else
              {
                v22 = [self _atvAccessibilityITMLAccessibilityContentWithElement:v11];
                v27 = v22;
                v28 = @"__AXStringForVariablesSentinel";
                v13 = __AXStringForVariables();
              }

              accessibilityText = 0;
              v4 = v22;
LABEL_22:

              v4 = v13;
            }
          }

          continue;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v31 objects:v44 count:16];
    }

    while (v5);
  }

  return v4;
}

- (id)_atvaccessibilityITMLAccessibilityContent
{
  if (objc_opt_respondsToSelector())
  {
    accessibilityText = [self performSelector:sel_tv_AccessibilityText];
  }

  else
  {
    accessibilityText = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    tv_associatedIKViewElement = [self tv_associatedIKViewElement];
    if (accessibilityText)
    {
      goto LABEL_10;
    }
  }

  else
  {
    tv_associatedIKViewElement = 0;
    if (accessibilityText)
    {
      goto LABEL_10;
    }
  }

  accessibilityText = [tv_associatedIKViewElement accessibilityText];
  if (!accessibilityText)
  {
    accessibilityText = [self _atvAccessibilityITMLAccessibilityContentWithElement:tv_associatedIKViewElement];
  }

LABEL_10:
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v4 = getIKTextElementClass_softClass;
  v13 = getIKTextElementClass_softClass;
  if (!getIKTextElementClass_softClass)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getIKTextElementClass_block_invoke;
    v9[3] = &unk_1E812DCD0;
    v9[4] = &v10;
    __getIKTextElementClass_block_invoke(v9);
    v4 = v11[3];
  }

  v5 = v4;
  _Block_object_dispose(&v10, 8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [self _accessibilityBadgeTextForTextElement:tv_associatedIKViewElement];
    v6 = __AXStringForVariables();

    accessibilityText = v6;
  }

  return accessibilityText;
}

- (id)_atvaccessibilityITMLClass
{
  if (objc_opt_respondsToSelector())
  {
    tv_associatedIKViewElement = [self tv_associatedIKViewElement];
    attributes = [tv_associatedIKViewElement attributes];
  }

  else
  {
    attributes = 0;
  }

  v4 = [attributes objectForKey:@"class"];

  return v4;
}

- (id)_accessibilityBadgeTextForTextElement:()AXATV_Extras
{
  v29 = *MEMORY[0x1E69E9840];
  [a3 badges];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v27 = 0u;
  v3 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = @"badge";
    v7 = @"accessibilityText";
    v8 = *v25;
    do
    {
      v9 = 0;
      v22 = v4;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(*(&v24 + 1) + 8 * v9) safeValueForKey:{v6, v20, v21}];
        v11 = [v10 safeValueForKey:v7];
        if ([v11 length])
        {
          v20 = v11;
          v21 = @"__AXStringForVariablesSentinel";
          __AXStringForVariables();
          v5 = v12 = v5;
        }

        else
        {
          v12 = [v10 safeValueForKey:@"url"];
          v13 = +[AXATVUtils sharedInstance];
          [v13 accessibilityLabelForResourceURL:v12];
          v14 = v8;
          v15 = v7;
          v17 = v16 = v6;

          v20 = v17;
          v21 = @"__AXStringForVariablesSentinel";
          v18 = __AXStringForVariables();

          v6 = v16;
          v7 = v15;
          v8 = v14;
          v4 = v22;
          v5 = v18;
        }

        ++v9;
      }

      while (v4 != v9);
      v4 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end