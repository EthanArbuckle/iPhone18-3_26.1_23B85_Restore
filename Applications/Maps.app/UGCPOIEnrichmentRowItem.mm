@interface UGCPOIEnrichmentRowItem
+ (id)rowItemWithView:(id)view;
+ (id)rowItemWithView:(id)view bottomSpacing:(double)spacing;
- (UGCPOIEnrichmentRowItem)initWithView:(id)view bottomSpacing:(double)spacing;
@end

@implementation UGCPOIEnrichmentRowItem

- (UGCPOIEnrichmentRowItem)initWithView:(id)view bottomSpacing:(double)spacing
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = UGCPOIEnrichmentRowItem;
  v8 = [(UGCPOIEnrichmentRowItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_rowView, view);
    v9->_bottomSpacing = spacing;
  }

  return v9;
}

+ (id)rowItemWithView:(id)view bottomSpacing:(double)spacing
{
  viewCopy = view;
  v6 = [[UGCPOIEnrichmentRowItem alloc] initWithView:viewCopy bottomSpacing:spacing];

  return v6;
}

+ (id)rowItemWithView:(id)view
{
  viewCopy = view;
  v4 = [[UGCPOIEnrichmentRowItem alloc] initWithView:viewCopy bottomSpacing:0.0];

  return v4;
}

@end