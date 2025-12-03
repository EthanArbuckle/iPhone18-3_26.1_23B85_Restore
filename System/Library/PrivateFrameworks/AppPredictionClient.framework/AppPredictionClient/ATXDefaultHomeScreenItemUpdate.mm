@interface ATXDefaultHomeScreenItemUpdate
- (ATXDefaultHomeScreenItemUpdate)initWithDictionary:(id)dictionary;
- (ATXDefaultHomeScreenItemUpdate)initWithStack:(id)stack todayStack:(id)todayStack onboardingStacks:(id)stacks smallWidgets:(id)widgets mediumWidgets:(id)mediumWidgets largeWidgets:(id)largeWidgets extraLargeWidgets:(id)extraLargeWidgets shouldSuggestStackInGallery:(BOOL)self0;
- (BOOL)isEqual:(id)equal;
- (id)dictionaryRepresentation;
@end

@implementation ATXDefaultHomeScreenItemUpdate

- (ATXDefaultHomeScreenItemUpdate)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"defaultWidgetStack"];
  if (!v5 || (v6 = v5, [dictionaryCopy objectForKeyedSubscript:@"defaultWidgetStack"], v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, v6, (isKindOfClass & 1) == 0))
  {
    v9 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ATXDefaultHomeScreenItemUpdate *)v9 initWithDictionary:v47, v48, v49, v50, v51, v52, v53];
    }

    goto LABEL_38;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"defaultWidgetStack"];
  v10 = [dictionaryCopy objectForKeyedSubscript:@"defaultWidgetTodayStack"];
  if (!v10 || (v11 = v10, [dictionaryCopy objectForKeyedSubscript:@"defaultWidgetTodayStack"], v12 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v13 = objc_opt_isKindOfClass(), v12, v11, (v13 & 1) == 0))
  {
    v14 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(ATXDefaultHomeScreenItemUpdate *)v14 initWithDictionary:v54, v55, v56, v57, v58, v59, v60];
    }

    goto LABEL_37;
  }

  v14 = [dictionaryCopy objectForKeyedSubscript:@"defaultWidgetTodayStack"];
  v15 = [dictionaryCopy objectForKeyedSubscript:@"defaultWidgetOnboardingStacks"];
  if (!v15 || (v16 = v15, [dictionaryCopy objectForKeyedSubscript:@"defaultWidgetOnboardingStacks"], v17 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v18 = objc_opt_isKindOfClass(), v17, v16, (v18 & 1) == 0))
  {
    v19 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(ATXDefaultHomeScreenItemUpdate *)v19 initWithDictionary:v61, v62, v63, v64, v65, v66, v67];
    }

    goto LABEL_36;
  }

  v19 = [dictionaryCopy objectForKeyedSubscript:@"defaultWidgetOnboardingStacks"];
  v20 = [dictionaryCopy objectForKeyedSubscript:@"defaultWidgetsSmall"];
  if (!v20 || (v21 = v20, [dictionaryCopy objectForKeyedSubscript:@"defaultWidgetsSmall"], v22 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v23 = objc_opt_isKindOfClass(), v22, v21, (v23 & 1) == 0))
  {
    v24 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(ATXDefaultHomeScreenItemUpdate *)v24 initWithDictionary:v68, v69, v70, v71, v72, v73, v74];
    }

    goto LABEL_35;
  }

  v24 = [dictionaryCopy objectForKeyedSubscript:@"defaultWidgetsSmall"];
  v25 = [dictionaryCopy objectForKeyedSubscript:@"defaultWidgetsMedium"];
  if (!v25 || (v26 = v25, [dictionaryCopy objectForKeyedSubscript:@"defaultWidgetsMedium"], v27 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v28 = objc_opt_isKindOfClass(), v27, v26, (v28 & 1) == 0))
  {
    v75 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      [(ATXDefaultHomeScreenItemUpdate *)v75 initWithDictionary:v76, v77, v78, v79, v80, v81, v82];
    }

    goto LABEL_28;
  }

  v29 = [dictionaryCopy objectForKeyedSubscript:@"defaultWidgetsMedium"];
  v30 = [dictionaryCopy objectForKeyedSubscript:@"defaultWidgetsLarge"];
  if (!v30 || (v31 = v30, [dictionaryCopy objectForKeyedSubscript:@"defaultWidgetsLarge"], v111 = v29, v32 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v33 = objc_opt_isKindOfClass(), v32, v29 = v111, v31, (v33 & 1) == 0))
  {
    v83 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
    {
      [(ATXDefaultHomeScreenItemUpdate *)v83 initWithDictionary:v84, v85, v86, v87, v88, v89, v90];
    }

    goto LABEL_35;
  }

  v34 = [dictionaryCopy objectForKeyedSubscript:@"defaultWidgetsLarge"];
  v35 = [dictionaryCopy objectForKeyedSubscript:@"defaultWidgetsExtraLarge"];
  if (!v35 || (v36 = v35, [dictionaryCopy objectForKeyedSubscript:@"defaultWidgetsExtraLarge"], v110 = v34, v37 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v38 = objc_opt_isKindOfClass(), v37, v34 = v110, v36, (v38 & 1) == 0))
  {
    v91 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      [(ATXDefaultHomeScreenItemUpdate *)v91 initWithDictionary:v92, v93, v94, v95, v96, v97, v98];
    }

    goto LABEL_35;
  }

  v39 = [dictionaryCopy objectForKeyedSubscript:@"defaultWidgetsExtraLarge"];
  v40 = [dictionaryCopy objectForKeyedSubscript:@"shouldSuggestSmartStackInGallery"];
  if (!v40 || (v41 = v40, [dictionaryCopy objectForKeyedSubscript:@"shouldSuggestSmartStackInGallery"], v42 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v43 = objc_opt_isKindOfClass(), v42, v41, (v43 & 1) == 0))
  {
    v100 = v39;
    v101 = __atxlog_handle_home_screen();
    v75 = v111;
    if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
    {
      [(ATXDefaultHomeScreenItemUpdate *)v101 initWithDictionary:v102, v103, v104, v105, v106, v107, v108];
    }

LABEL_28:
LABEL_35:

LABEL_36:
LABEL_37:

LABEL_38:
    selfCopy = 0;
    goto LABEL_39;
  }

  v44 = [dictionaryCopy objectForKeyedSubscript:@"shouldSuggestSmartStackInGallery"];
  bOOLValue = [v44 BOOLValue];

  LOBYTE(v109) = bOOLValue;
  self = [(ATXDefaultHomeScreenItemUpdate *)self initWithStack:v9 todayStack:v14 onboardingStacks:v19 smallWidgets:v24 mediumWidgets:v111 largeWidgets:v110 extraLargeWidgets:v39 shouldSuggestStackInGallery:v109];

  selfCopy = self;
LABEL_39:

  return selfCopy;
}

- (ATXDefaultHomeScreenItemUpdate)initWithStack:(id)stack todayStack:(id)todayStack onboardingStacks:(id)stacks smallWidgets:(id)widgets mediumWidgets:(id)mediumWidgets largeWidgets:(id)largeWidgets extraLargeWidgets:(id)extraLargeWidgets shouldSuggestStackInGallery:(BOOL)self0
{
  stackCopy = stack;
  todayStackCopy = todayStack;
  stacksCopy = stacks;
  widgetsCopy = widgets;
  mediumWidgetsCopy = mediumWidgets;
  largeWidgetsCopy = largeWidgets;
  extraLargeWidgetsCopy = extraLargeWidgets;
  v27.receiver = self;
  v27.super_class = ATXDefaultHomeScreenItemUpdate;
  v19 = [(ATXDefaultHomeScreenItemUpdate *)&v27 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_stack, stack);
    objc_storeStrong(&v20->_todayStack, todayStack);
    objc_storeStrong(&v20->_onboardingStacks, stacks);
    objc_storeStrong(&v20->_smallWidgets, widgets);
    objc_storeStrong(&v20->_mediumWidgets, mediumWidgets);
    objc_storeStrong(&v20->_largeWidgets, largeWidgets);
    objc_storeStrong(&v20->_extraLargeWidgets, extraLargeWidgets);
    v20->_shouldSuggestStackInGallery = gallery;
  }

  return v20;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  [v3 setObject:self->_stack forKeyedSubscript:@"defaultWidgetStack"];
  [v3 setObject:self->_todayStack forKeyedSubscript:@"defaultWidgetTodayStack"];
  [v3 setObject:self->_onboardingStacks forKeyedSubscript:@"defaultWidgetOnboardingStacks"];
  [v3 setObject:self->_smallWidgets forKeyedSubscript:@"defaultWidgetsSmall"];
  [v3 setObject:self->_mediumWidgets forKeyedSubscript:@"defaultWidgetsMedium"];
  [v3 setObject:self->_largeWidgets forKeyedSubscript:@"defaultWidgetsLarge"];
  [v3 setObject:self->_extraLargeWidgets forKeyedSubscript:@"defaultWidgetsExtraLarge"];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldSuggestStackInGallery];
  [v3 setObject:v4 forKeyedSubscript:@"shouldSuggestSmartStackInGallery"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = self->_stack;
      v7 = v6;
      if (v6 == v5->_stack)
      {
      }

      else
      {
        v8 = [(ATXDefaultWidgetStack *)v6 isEqual:?];

        if (!v8)
        {
          goto LABEL_31;
        }
      }

      v10 = self->_todayStack;
      v11 = v10;
      if (v10 == v5->_todayStack)
      {
      }

      else
      {
        v12 = [(ATXDefaultWidgetStack *)v10 isEqual:?];

        if (!v12)
        {
          goto LABEL_31;
        }
      }

      v13 = self->_onboardingStacks;
      v14 = v13;
      if (v13 == v5->_onboardingStacks)
      {
      }

      else
      {
        v15 = [(NSArray *)v13 isEqual:?];

        if ((v15 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      v16 = self->_smallWidgets;
      v17 = v16;
      if (v16 == v5->_smallWidgets)
      {
      }

      else
      {
        v18 = [(NSArray *)v16 isEqual:?];

        if ((v18 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      v19 = self->_mediumWidgets;
      v20 = v19;
      if (v19 == v5->_mediumWidgets)
      {
      }

      else
      {
        v21 = [(NSArray *)v19 isEqual:?];

        if ((v21 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      v22 = self->_largeWidgets;
      v23 = v22;
      if (v22 == v5->_largeWidgets)
      {
      }

      else
      {
        v24 = [(NSArray *)v22 isEqual:?];

        if ((v24 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      v25 = self->_extraLargeWidgets;
      v26 = v25;
      if (v25 == v5->_extraLargeWidgets)
      {
      }

      else
      {
        v27 = [(NSArray *)v25 isEqual:?];

        if ((v27 & 1) == 0)
        {
LABEL_31:
          v9 = 0;
LABEL_32:

          goto LABEL_33;
        }
      }

      shouldSuggestStackInGallery = self->_shouldSuggestStackInGallery;
      v9 = shouldSuggestStackInGallery == [(ATXDefaultHomeScreenItemUpdate *)v5 shouldSuggestStackInGallery];
      goto LABEL_32;
    }

    v9 = 0;
  }

LABEL_33:

  return v9;
}

@end