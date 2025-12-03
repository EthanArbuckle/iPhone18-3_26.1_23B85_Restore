@interface RAPLayoutOptions
- (BOOL)isEqual:(id)equal;
- (id)initialLayoutParameters;
@end

@implementation RAPLayoutOptions

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    layoutType = self->_layoutType;
    layoutType = [v5 layoutType];
    v8 = layoutType;
    reportedMapItem = self->_reportedMapItem;
    if (reportedMapItem)
    {
      if (layoutType != layoutType)
      {
        v10 = 0;
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
      reportedMapItem = [v5 reportedMapItem];

      if (reportedMapItem)
      {
        v12 = 0;
      }

      else
      {
        v12 = layoutType == v8;
      }

      v10 = v12;
      if (!reportedMapItem || layoutType != v8)
      {
        goto LABEL_16;
      }

      reportedMapItem = self->_reportedMapItem;
    }

    reportedMapItem2 = [v5 reportedMapItem];
    v10 = [(MKMapItem *)reportedMapItem isEqual:reportedMapItem2];

    goto LABEL_16;
  }

  v10 = 0;
LABEL_17:

  return v10;
}

- (id)initialLayoutParameters
{
  v3 = objc_alloc_init(GEORPFeedbackLayoutConfigParameters);
  layoutType = [(RAPLayoutOptions *)self layoutType];
  if (layoutType <= 5)
  {
    [v3 setFormType:dword_101215538[layoutType]];
  }

  return v3;
}

@end