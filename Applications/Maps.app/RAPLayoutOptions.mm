@interface RAPLayoutOptions
- (BOOL)isEqual:(id)a3;
- (id)initialLayoutParameters;
@end

@implementation RAPLayoutOptions

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    layoutType = self->_layoutType;
    v7 = [v5 layoutType];
    v8 = v7;
    reportedMapItem = self->_reportedMapItem;
    if (reportedMapItem)
    {
      if (layoutType != v7)
      {
        v10 = 0;
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
      v11 = [v5 reportedMapItem];

      if (v11)
      {
        v12 = 0;
      }

      else
      {
        v12 = layoutType == v8;
      }

      v10 = v12;
      if (!v11 || layoutType != v8)
      {
        goto LABEL_16;
      }

      reportedMapItem = self->_reportedMapItem;
    }

    v13 = [v5 reportedMapItem];
    v10 = [(MKMapItem *)reportedMapItem isEqual:v13];

    goto LABEL_16;
  }

  v10 = 0;
LABEL_17:

  return v10;
}

- (id)initialLayoutParameters
{
  v3 = objc_alloc_init(GEORPFeedbackLayoutConfigParameters);
  v4 = [(RAPLayoutOptions *)self layoutType];
  if (v4 <= 5)
  {
    [v3 setFormType:dword_101215538[v4]];
  }

  return v3;
}

@end