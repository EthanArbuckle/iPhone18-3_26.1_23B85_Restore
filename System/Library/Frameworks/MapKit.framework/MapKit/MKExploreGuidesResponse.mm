@interface MKExploreGuidesResponse
- (BOOL)isEqual:(id)a3;
- (MKExploreGuidesResponse)initWithExploreGuidesLookupResult:(id)a3;
@end

@implementation MKExploreGuidesResponse

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v12 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(MKExploreGuidesResponse *)self exploreGuides];
    if (v7 && (v8 = v7, [(MKExploreGuidesResponse *)v6 exploreGuides], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
    {
      v10 = [(MKExploreGuidesResponse *)self exploreGuides];
      v11 = [(MKExploreGuidesResponse *)v6 exploreGuides];
      v12 = [v10 isEqual:v11];
    }

    else
    {
      v10 = [(MKExploreGuidesResponse *)self title];
      v11 = [(MKExploreGuidesResponse *)v6 title];
      if ([v10 isEqualToString:v11])
      {
        v13 = [(MKExploreGuidesResponse *)self subtitle];
        v14 = [(MKExploreGuidesResponse *)v6 subtitle];
        if ([v13 isEqualToString:v14])
        {
          v15 = [(MKExploreGuidesResponse *)self imageTemplateURL];
          v16 = [(MKExploreGuidesResponse *)v6 imageTemplateURL];
          if ([v15 isEqualToString:v16])
          {
            v19 = [(MKExploreGuidesResponse *)self punchInURL];
            v17 = [(MKExploreGuidesResponse *)v6 punchInURL];
            v12 = [v19 isEqual:v17];
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (MKExploreGuidesResponse)initWithExploreGuidesLookupResult:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = MKExploreGuidesResponse;
  v6 = [(MKExploreGuidesResponse *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_exploreGuidesLookupResult, a3);
    v8 = [v5 exploreGuides];
    exploreGuides = v7->_exploreGuides;
    v7->_exploreGuides = v8;

    v10 = [v5 title];
    title = v7->_title;
    v7->_title = v10;

    v12 = [v5 subtitle];
    subtitle = v7->_subtitle;
    v7->_subtitle = v12;

    v14 = [v5 imageTemplateURL];
    imageTemplateURL = v7->_imageTemplateURL;
    v7->_imageTemplateURL = v14;

    v16 = [v5 punchInURL];
    punchInURL = v7->_punchInURL;
    v7->_punchInURL = v16;
  }

  return v7;
}

@end