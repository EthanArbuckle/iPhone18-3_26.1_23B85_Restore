@interface UGCPOIEnrichmentRowItem
+ (id)rowItemWithView:(id)a3;
+ (id)rowItemWithView:(id)a3 bottomSpacing:(double)a4;
- (UGCPOIEnrichmentRowItem)initWithView:(id)a3 bottomSpacing:(double)a4;
@end

@implementation UGCPOIEnrichmentRowItem

- (UGCPOIEnrichmentRowItem)initWithView:(id)a3 bottomSpacing:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = UGCPOIEnrichmentRowItem;
  v8 = [(UGCPOIEnrichmentRowItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_rowView, a3);
    v9->_bottomSpacing = a4;
  }

  return v9;
}

+ (id)rowItemWithView:(id)a3 bottomSpacing:(double)a4
{
  v5 = a3;
  v6 = [[UGCPOIEnrichmentRowItem alloc] initWithView:v5 bottomSpacing:a4];

  return v6;
}

+ (id)rowItemWithView:(id)a3
{
  v3 = a3;
  v4 = [[UGCPOIEnrichmentRowItem alloc] initWithView:v3 bottomSpacing:0.0];

  return v4;
}

@end