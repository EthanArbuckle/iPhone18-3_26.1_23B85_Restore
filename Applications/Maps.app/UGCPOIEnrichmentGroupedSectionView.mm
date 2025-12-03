@interface UGCPOIEnrichmentGroupedSectionView
+ (id)groupedSectionRowItemWithRowItems:(id)items bottomSpacing:(double)spacing isInlineMode:(BOOL)mode;
- (UGCPOIEnrichmentGroupedSectionView)initWithRowItems:(id)items isInlineMode:(BOOL)mode;
@end

@implementation UGCPOIEnrichmentGroupedSectionView

- (UGCPOIEnrichmentGroupedSectionView)initWithRowItems:(id)items isInlineMode:(BOOL)mode
{
  modeCopy = mode;
  itemsCopy = items;
  v33.receiver = self;
  v33.super_class = UGCPOIEnrichmentGroupedSectionView;
  v7 = [(UGCPOIEnrichmentEditorCell *)&v33 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v7)
  {
    v8 = [itemsCopy copy];
    rowItems = v7->_rowItems;
    v7->_rowItems = v8;

    v10 = [[MUPlatterView alloc] initWithContentView:0 includeBackground:!modeCopy];
    [v10 _mapsui_resetLayoutMarginsWithPreservesSuperview:1];
    v28 = modeCopy;
    v11 = 0.0;
    if (!modeCopy)
    {
      v11 = kMUPlacePlatterPadding;
    }

    [v10 setDirectionalLayoutMargins:{0.0, v11, 0.0, v11}];
    [(UGCPOIEnrichmentGroupedSectionView *)v7 addSubview:v10];
    v12 = [MUEdgeLayout alloc];
    layoutMarginsGuide = [(UGCPOIEnrichmentGroupedSectionView *)v7 layoutMarginsGuide];
    v26 = [v12 initWithItem:v10 container:layoutMarginsGuide];

    v14 = [[MUStackLayout alloc] initWithContainer:v10 axis:1];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v27 = itemsCopy;
    v15 = itemsCopy;
    v16 = [v15 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v30;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v29 + 1) + 8 * i);
          rowView = [v20 rowView];
          [rowView setPreservesSuperviewLayoutMargins:1];
          [v10 addSubview:rowView];
          [v14 addArrangedLayoutItem:rowView];
          rowView2 = [v20 rowView];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) != 0 && v28)
          {
            [v14 setPadding:rowView forArrangedLayoutItem:{0.0, 4.0, 0.0, 4.0}];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v17);
    }

    v34[0] = v26;
    v34[1] = v14;
    v24 = [NSArray arrayWithObjects:v34 count:2];
    [NSLayoutConstraint _mapsui_activateLayouts:v24];

    itemsCopy = v27;
  }

  return v7;
}

+ (id)groupedSectionRowItemWithRowItems:(id)items bottomSpacing:(double)spacing isInlineMode:(BOOL)mode
{
  modeCopy = mode;
  itemsCopy = items;
  v8 = [[UGCPOIEnrichmentGroupedSectionView alloc] initWithRowItems:itemsCopy isInlineMode:modeCopy];

  v9 = [UGCPOIEnrichmentRowItem rowItemWithView:v8 bottomSpacing:spacing];

  return v9;
}

@end