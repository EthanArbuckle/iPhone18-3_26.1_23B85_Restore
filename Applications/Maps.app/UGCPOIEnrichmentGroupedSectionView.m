@interface UGCPOIEnrichmentGroupedSectionView
+ (id)groupedSectionRowItemWithRowItems:(id)a3 bottomSpacing:(double)a4 isInlineMode:(BOOL)a5;
- (UGCPOIEnrichmentGroupedSectionView)initWithRowItems:(id)a3 isInlineMode:(BOOL)a4;
@end

@implementation UGCPOIEnrichmentGroupedSectionView

- (UGCPOIEnrichmentGroupedSectionView)initWithRowItems:(id)a3 isInlineMode:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v33.receiver = self;
  v33.super_class = UGCPOIEnrichmentGroupedSectionView;
  v7 = [(UGCPOIEnrichmentEditorCell *)&v33 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v7)
  {
    v8 = [v6 copy];
    rowItems = v7->_rowItems;
    v7->_rowItems = v8;

    v10 = [[MUPlatterView alloc] initWithContentView:0 includeBackground:!v4];
    [v10 _mapsui_resetLayoutMarginsWithPreservesSuperview:1];
    v28 = v4;
    v11 = 0.0;
    if (!v4)
    {
      v11 = kMUPlacePlatterPadding;
    }

    [v10 setDirectionalLayoutMargins:{0.0, v11, 0.0, v11}];
    [(UGCPOIEnrichmentGroupedSectionView *)v7 addSubview:v10];
    v12 = [MUEdgeLayout alloc];
    v13 = [(UGCPOIEnrichmentGroupedSectionView *)v7 layoutMarginsGuide];
    v26 = [v12 initWithItem:v10 container:v13];

    v14 = [[MUStackLayout alloc] initWithContainer:v10 axis:1];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v27 = v6;
    v15 = v6;
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
          v21 = [v20 rowView];
          [v21 setPreservesSuperviewLayoutMargins:1];
          [v10 addSubview:v21];
          [v14 addArrangedLayoutItem:v21];
          v22 = [v20 rowView];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) != 0 && v28)
          {
            [v14 setPadding:v21 forArrangedLayoutItem:{0.0, 4.0, 0.0, 4.0}];
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

    v6 = v27;
  }

  return v7;
}

+ (id)groupedSectionRowItemWithRowItems:(id)a3 bottomSpacing:(double)a4 isInlineMode:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = [[UGCPOIEnrichmentGroupedSectionView alloc] initWithRowItems:v7 isInlineMode:v5];

  v9 = [UGCPOIEnrichmentRowItem rowItemWithView:v8 bottomSpacing:a4];

  return v9;
}

@end