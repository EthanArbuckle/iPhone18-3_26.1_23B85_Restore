@interface CollectionsFilterSizeController
- (CGSize)sizeForFilter:(id)filter;
- (CollectionsFilterSizeController)initWithCollectionsFilterDisplayStyle:(int64_t)style inContext:(int64_t)context;
- (UIEdgeInsets)filterPillInset;
- (UIEdgeInsets)sectionInset;
- (double)defaultHeight;
- (double)minimumInterItemSpacingForSectionAtIndex:(int64_t)index;
@end

@implementation CollectionsFilterSizeController

- (UIEdgeInsets)sectionInset
{
  top = self->_sectionInset.top;
  left = self->_sectionInset.left;
  bottom = self->_sectionInset.bottom;
  right = self->_sectionInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)filterPillInset
{
  top = self->_filterPillInset.top;
  left = self->_filterPillInset.left;
  bottom = self->_filterPillInset.bottom;
  right = self->_filterPillInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (double)defaultHeight
{
  defaultFilterHeight = self->_defaultFilterHeight;
  [(CollectionsFilterSizeController *)self sectionInset];
  v5 = v4;
  [(CollectionsFilterSizeController *)self sectionInset];
  return v5 + v6 + defaultFilterHeight;
}

- (double)minimumInterItemSpacingForSectionAtIndex:(int64_t)index
{
  IsEnabled_Maps269 = MapsFeature_IsEnabled_Maps269();
  result = 10.0;
  if (IsEnabled_Maps269)
  {
    return 8.0;
  }

  return result;
}

- (CGSize)sizeForFilter:(id)filter
{
  v22 = NSFontAttributeName;
  filterCopy = filter;
  filterFont = [filterCopy filterFont];
  v23 = filterFont;
  v6 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];

  filterTitle = [filterCopy filterTitle];

  [filterTitle sizeWithAttributes:v6];
  v9 = v8;
  v11 = v10;

  [(CollectionsFilterSizeController *)self defaultFilterHeight];
  if (v12 > v11)
  {
    [(CollectionsFilterSizeController *)self defaultFilterHeight];
    v11 = v13;
  }

  [(CollectionsFilterSizeController *)self setDefaultFilterHeight:v11];
  [(CollectionsFilterSizeController *)self filterPillInset];
  v15 = v14;
  [(CollectionsFilterSizeController *)self filterPillInset];
  v17 = v16;
  [(CollectionsFilterSizeController *)self defaultFilterHeight];
  v19 = v18;

  v20 = v15 + v17 + v9;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

- (CollectionsFilterSizeController)initWithCollectionsFilterDisplayStyle:(int64_t)style inContext:(int64_t)context
{
  v15.receiver = self;
  v15.super_class = CollectionsFilterSizeController;
  v6 = [(CollectionsFilterSizeController *)&v15 init];
  v7 = v6;
  if (v6)
  {
    v6->_displayStyle = style;
    v6->_context = context;
    v8 = 40.0;
    if (style == 1)
    {
      v8 = 16.0;
    }

    [(CollectionsFilterSizeController *)v6 setDefaultFilterHeight:v8];
    if (MapsFeature_IsEnabled_Maps269())
    {
      [(CollectionsFilterSizeController *)v7 setFilterPillInset:6.0, 12.0, 6.0, 12.0];
      [(CollectionsFilterSizeController *)v7 setDefaultFilterHeight:32.0];
    }

    else
    {
      [(CollectionsFilterSizeController *)v7 setFilterPillInset:15.0, 15.0, 15.0, 15.0];
    }

    switch(context)
    {
      case 2:
        [(CollectionsFilterSizeController *)v7 setDefaultFilterHeight:32.0];
        v11 = 16.0;
        v10 = 9.0;
        v12 = 2.0;
LABEL_18:
        v13 = 16.0;
        goto LABEL_19;
      case 1:
        v13 = 16.0;
        v10 = 4.0;
        v11 = 0.0;
        v12 = 12.0;
LABEL_19:
        [(CollectionsFilterSizeController *)v7 setSectionInset:v12, v11, v10, v13];
        return v7;
      case 0:
        displayStyle = v7->_displayStyle;
        if (displayStyle == 1)
        {
          v10 = 5.0;
        }

        else
        {
          v10 = 6.0;
        }

        v11 = 16.0;
        v12 = 13.0;
        if (displayStyle != 1)
        {
          v12 = 16.0;
        }

        goto LABEL_18;
    }
  }

  return v7;
}

@end