@interface MessageListLayoutFactory
+ (id)_defaultLayoutSectionAtSection:(int64_t)section layoutEnvironment:(id)environment layoutMargins:(NSDirectionalEdgeInsets)margins showPrioritySection:(BOOL)prioritySection previousSectionIsPriority:(BOOL)priority configuration:(id)configuration;
+ (id)_groupedSenderLayoutSectionAtSection:(int64_t)section layoutEnvironment:(id)environment layoutMargins:(NSDirectionalEdgeInsets)margins configuration:(id)configuration;
+ (id)_plainLayoutSectionAtSection:(int64_t)section layoutEnvironment:(id)environment layoutMargins:(NSDirectionalEdgeInsets)margins configuration:(id)configuration;
+ (id)_searchLayoutSectionAtSection:(int64_t)section layoutEnvironment:(id)environment layoutMargins:(NSDirectionalEdgeInsets)margins configuration:(id)configuration;
+ (id)layoutSectionAtSection:(int64_t)section layoutEnvironment:(id)environment layoutMargins:(NSDirectionalEdgeInsets)margins layout:(int64_t)layout previousSectionIsPriority:(BOOL)priority configuration:(id)configuration;
@end

@implementation MessageListLayoutFactory

+ (id)layoutSectionAtSection:(int64_t)section layoutEnvironment:(id)environment layoutMargins:(NSDirectionalEdgeInsets)margins layout:(int64_t)layout previousSectionIsPriority:(BOOL)priority configuration:(id)configuration
{
  priorityCopy = priority;
  trailing = margins.trailing;
  bottom = margins.bottom;
  leading = margins.leading;
  top = margins.top;
  environmentCopy = environment;
  configurationCopy = configuration;
  if (layout <= 1)
  {
    if (layout)
    {
      if (layout != 1)
      {
        goto LABEL_13;
      }

      trailing = [MessageListLayoutFactory _searchLayoutSectionAtSection:section layoutEnvironment:environmentCopy layoutMargins:configurationCopy configuration:top, leading, bottom, trailing];
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  switch(layout)
  {
    case 2:
      trailing = [MessageListLayoutFactory _plainLayoutSectionAtSection:section layoutEnvironment:environmentCopy layoutMargins:configurationCopy configuration:top, leading, bottom, trailing];
      goto LABEL_12;
    case 3:
      trailing = [MessageListLayoutFactory _groupedSenderLayoutSectionAtSection:section layoutEnvironment:environmentCopy layoutMargins:configurationCopy configuration:top, leading, bottom, trailing];
      goto LABEL_12;
    case 4:
LABEL_9:
      trailing = [MessageListLayoutFactory _defaultLayoutSectionAtSection:section layoutEnvironment:environmentCopy layoutMargins:layout == 4 showPrioritySection:priorityCopy previousSectionIsPriority:configurationCopy configuration:top, leading, bottom, trailing];
LABEL_12:
      v8 = trailing;
      break;
  }

LABEL_13:

  return v8;
}

+ (id)_defaultLayoutSectionAtSection:(int64_t)section layoutEnvironment:(id)environment layoutMargins:(NSDirectionalEdgeInsets)margins showPrioritySection:(BOOL)prioritySection previousSectionIsPriority:(BOOL)priority configuration:(id)configuration
{
  priorityCopy = priority;
  prioritySectionCopy = prioritySection;
  trailing = margins.trailing;
  leading = margins.leading;
  environmentCopy = environment;
  configurationCopy = configuration;
  v43 = environmentCopy;
  v44 = configurationCopy;
  traitCollection = [environmentCopy traitCollection];
  mf_useSplitViewStyling = [traitCollection mf_useSplitViewStyling];

  v17 = [UICollectionLayoutListConfiguration alloc];
  if (mf_useSplitViewStyling)
  {
    v18 = 4;
  }

  else
  {
    v18 = 0;
  }

  v19 = [v17 initWithAppearance:v18];
  (*(configurationCopy + 2))(configurationCopy, v19);
  v20 = [NSCollectionLayoutSection sectionWithListConfiguration:v19 layoutEnvironment:environmentCopy];
  v21 = v20;
  if (mf_useSplitViewStyling)
  {
    [v20 setContentInsets:{0.0, leading, 0.0, trailing}];
    [v21 setContentInsetsReference:2];
  }

  else
  {
    [v20 contentInsets];
    v22 = 0.0;
    if (priorityCopy)
    {
      v22 = 10.0;
    }

    [v21 setContentInsets:v22];
  }

  if (_os_feature_enabled_impl() && (EMIsGreymatterSupported() & prioritySectionCopy) == 1)
  {
    v23 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
    v24 = [NSCollectionLayoutDimension estimatedDimension:44.0];
    v25 = [NSCollectionLayoutSize sizeWithWidthDimension:v23 heightDimension:v24];

    v41 = v25;
    v42 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v25 elementKind:UICollectionElementKindSectionHeader alignment:1];
    v51 = v42;
    v26 = [NSArray arrayWithObjects:&v51 count:1];
    [v21 setBoundarySupplementaryItems:v26];

    if (_os_feature_enabled_impl() && EMIsGreymatterSupported())
    {
      v27 = +[MUIPriorityMessageListBackgroundDecorationView elementKind];
      v28 = [NSCollectionLayoutDecorationItem backgroundDecorationItemWithElementKind:v27];

      +[MUIPriorityMessageListBackgroundDecorationView decorationViewInset];
      v30 = v29;
      +[MUIPriorityMessageListBackgroundDecorationView decorationViewInset];
      [v28 setContentInsets:{0.0, v30, 0.0, v31}];
      v50 = v28;
      v32 = [NSArray arrayWithObjects:&v50 count:1];
      [v21 setDecorationItems:v32];
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    boundarySupplementaryItems = [v21 boundarySupplementaryItems];
    v34 = [boundarySupplementaryItems countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v34)
    {
      v35 = *v46;
      do
      {
        for (i = 0; i != v34; i = i + 1)
        {
          if (*v46 != v35)
          {
            objc_enumerationMutation(boundarySupplementaryItems);
          }

          v37 = *(*(&v45 + 1) + 8 * i);
          elementKind = [v37 elementKind];
          v39 = [elementKind isEqualToString:UICollectionElementKindSectionHeader];

          if (v39)
          {
            [v37 setPinToVisibleBounds:0];
          }
        }

        v34 = [boundarySupplementaryItems countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v34);
    }
  }

  return v21;
}

+ (id)_searchLayoutSectionAtSection:(int64_t)section layoutEnvironment:(id)environment layoutMargins:(NSDirectionalEdgeInsets)margins configuration:(id)configuration
{
  v6 = [MessageListLayoutFactory _defaultLayoutSectionAtSection:section layoutEnvironment:environment layoutMargins:0 showPrioritySection:0 previousSectionIsPriority:configuration configuration:margins.top, margins.leading, margins.bottom, margins.trailing];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  boundarySupplementaryItems = [v6 boundarySupplementaryItems];
  v8 = [boundarySupplementaryItems countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(boundarySupplementaryItems);
        }

        [*(*(&v12 + 1) + 8 * i) setPinToVisibleBounds:0];
      }

      v8 = [boundarySupplementaryItems countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return v6;
}

+ (id)_plainLayoutSectionAtSection:(int64_t)section layoutEnvironment:(id)environment layoutMargins:(NSDirectionalEdgeInsets)margins configuration:(id)configuration
{
  environmentCopy = environment;
  configurationCopy = configuration;
  v9 = [[UICollectionLayoutListConfiguration alloc] initWithAppearance:0];
  configurationCopy[2](configurationCopy, v9);
  v10 = [NSCollectionLayoutSection sectionWithListConfiguration:v9 layoutEnvironment:environmentCopy];

  return v10;
}

+ (id)_groupedSenderLayoutSectionAtSection:(int64_t)section layoutEnvironment:(id)environment layoutMargins:(NSDirectionalEdgeInsets)margins configuration:(id)configuration
{
  environmentCopy = environment;
  configurationCopy = configuration;
  traitCollection = [environmentCopy traitCollection];
  mf_useSplitViewStyling = [traitCollection mf_useSplitViewStyling];

  v11 = [UICollectionLayoutListConfiguration alloc];
  if (mf_useSplitViewStyling)
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  v13 = [v11 initWithAppearance:v12];
  configurationCopy[2](configurationCopy, v13);
  v14 = [NSCollectionLayoutSection sectionWithListConfiguration:v13 layoutEnvironment:environmentCopy];

  return v14;
}

@end