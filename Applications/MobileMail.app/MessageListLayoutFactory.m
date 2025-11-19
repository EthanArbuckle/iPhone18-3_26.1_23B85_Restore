@interface MessageListLayoutFactory
+ (id)_defaultLayoutSectionAtSection:(int64_t)a3 layoutEnvironment:(id)a4 layoutMargins:(NSDirectionalEdgeInsets)a5 showPrioritySection:(BOOL)a6 previousSectionIsPriority:(BOOL)a7 configuration:(id)a8;
+ (id)_groupedSenderLayoutSectionAtSection:(int64_t)a3 layoutEnvironment:(id)a4 layoutMargins:(NSDirectionalEdgeInsets)a5 configuration:(id)a6;
+ (id)_plainLayoutSectionAtSection:(int64_t)a3 layoutEnvironment:(id)a4 layoutMargins:(NSDirectionalEdgeInsets)a5 configuration:(id)a6;
+ (id)_searchLayoutSectionAtSection:(int64_t)a3 layoutEnvironment:(id)a4 layoutMargins:(NSDirectionalEdgeInsets)a5 configuration:(id)a6;
+ (id)layoutSectionAtSection:(int64_t)a3 layoutEnvironment:(id)a4 layoutMargins:(NSDirectionalEdgeInsets)a5 layout:(int64_t)a6 previousSectionIsPriority:(BOOL)a7 configuration:(id)a8;
@end

@implementation MessageListLayoutFactory

+ (id)layoutSectionAtSection:(int64_t)a3 layoutEnvironment:(id)a4 layoutMargins:(NSDirectionalEdgeInsets)a5 layout:(int64_t)a6 previousSectionIsPriority:(BOOL)a7 configuration:(id)a8
{
  v10 = a7;
  trailing = a5.trailing;
  bottom = a5.bottom;
  leading = a5.leading;
  top = a5.top;
  v17 = a4;
  v18 = a8;
  if (a6 <= 1)
  {
    if (a6)
    {
      if (a6 != 1)
      {
        goto LABEL_13;
      }

      v19 = [MessageListLayoutFactory _searchLayoutSectionAtSection:a3 layoutEnvironment:v17 layoutMargins:v18 configuration:top, leading, bottom, trailing];
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  switch(a6)
  {
    case 2:
      v19 = [MessageListLayoutFactory _plainLayoutSectionAtSection:a3 layoutEnvironment:v17 layoutMargins:v18 configuration:top, leading, bottom, trailing];
      goto LABEL_12;
    case 3:
      v19 = [MessageListLayoutFactory _groupedSenderLayoutSectionAtSection:a3 layoutEnvironment:v17 layoutMargins:v18 configuration:top, leading, bottom, trailing];
      goto LABEL_12;
    case 4:
LABEL_9:
      v19 = [MessageListLayoutFactory _defaultLayoutSectionAtSection:a3 layoutEnvironment:v17 layoutMargins:a6 == 4 showPrioritySection:v10 previousSectionIsPriority:v18 configuration:top, leading, bottom, trailing];
LABEL_12:
      v8 = v19;
      break;
  }

LABEL_13:

  return v8;
}

+ (id)_defaultLayoutSectionAtSection:(int64_t)a3 layoutEnvironment:(id)a4 layoutMargins:(NSDirectionalEdgeInsets)a5 showPrioritySection:(BOOL)a6 previousSectionIsPriority:(BOOL)a7 configuration:(id)a8
{
  v9 = a7;
  v10 = a6;
  trailing = a5.trailing;
  leading = a5.leading;
  v13 = a4;
  v14 = a8;
  v43 = v13;
  v44 = v14;
  v15 = [v13 traitCollection];
  v16 = [v15 mf_useSplitViewStyling];

  v17 = [UICollectionLayoutListConfiguration alloc];
  if (v16)
  {
    v18 = 4;
  }

  else
  {
    v18 = 0;
  }

  v19 = [v17 initWithAppearance:v18];
  (*(v14 + 2))(v14, v19);
  v20 = [NSCollectionLayoutSection sectionWithListConfiguration:v19 layoutEnvironment:v13];
  v21 = v20;
  if (v16)
  {
    [v20 setContentInsets:{0.0, leading, 0.0, trailing}];
    [v21 setContentInsetsReference:2];
  }

  else
  {
    [v20 contentInsets];
    v22 = 0.0;
    if (v9)
    {
      v22 = 10.0;
    }

    [v21 setContentInsets:v22];
  }

  if (_os_feature_enabled_impl() && (EMIsGreymatterSupported() & v10) == 1)
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
    v33 = [v21 boundarySupplementaryItems];
    v34 = [v33 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v34)
    {
      v35 = *v46;
      do
      {
        for (i = 0; i != v34; i = i + 1)
        {
          if (*v46 != v35)
          {
            objc_enumerationMutation(v33);
          }

          v37 = *(*(&v45 + 1) + 8 * i);
          v38 = [v37 elementKind];
          v39 = [v38 isEqualToString:UICollectionElementKindSectionHeader];

          if (v39)
          {
            [v37 setPinToVisibleBounds:0];
          }
        }

        v34 = [v33 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v34);
    }
  }

  return v21;
}

+ (id)_searchLayoutSectionAtSection:(int64_t)a3 layoutEnvironment:(id)a4 layoutMargins:(NSDirectionalEdgeInsets)a5 configuration:(id)a6
{
  v6 = [MessageListLayoutFactory _defaultLayoutSectionAtSection:a3 layoutEnvironment:a4 layoutMargins:0 showPrioritySection:0 previousSectionIsPriority:a6 configuration:a5.top, a5.leading, a5.bottom, a5.trailing];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [v6 boundarySupplementaryItems];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * i) setPinToVisibleBounds:0];
      }

      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return v6;
}

+ (id)_plainLayoutSectionAtSection:(int64_t)a3 layoutEnvironment:(id)a4 layoutMargins:(NSDirectionalEdgeInsets)a5 configuration:(id)a6
{
  v7 = a4;
  v8 = a6;
  v9 = [[UICollectionLayoutListConfiguration alloc] initWithAppearance:0];
  v8[2](v8, v9);
  v10 = [NSCollectionLayoutSection sectionWithListConfiguration:v9 layoutEnvironment:v7];

  return v10;
}

+ (id)_groupedSenderLayoutSectionAtSection:(int64_t)a3 layoutEnvironment:(id)a4 layoutMargins:(NSDirectionalEdgeInsets)a5 configuration:(id)a6
{
  v7 = a4;
  v8 = a6;
  v9 = [v7 traitCollection];
  v10 = [v9 mf_useSplitViewStyling];

  v11 = [UICollectionLayoutListConfiguration alloc];
  if (v10)
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  v13 = [v11 initWithAppearance:v12];
  v8[2](v8, v13);
  v14 = [NSCollectionLayoutSection sectionWithListConfiguration:v13 layoutEnvironment:v7];

  return v14;
}

@end