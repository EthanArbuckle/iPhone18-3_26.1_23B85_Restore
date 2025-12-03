@interface MKExploreGuidesResponse
- (BOOL)isEqual:(id)equal;
- (MKExploreGuidesResponse)initWithExploreGuidesLookupResult:(id)result;
@end

@implementation MKExploreGuidesResponse

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    exploreGuides = [(MKExploreGuidesResponse *)self exploreGuides];
    if (exploreGuides && (v8 = exploreGuides, [(MKExploreGuidesResponse *)v6 exploreGuides], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
    {
      exploreGuides2 = [(MKExploreGuidesResponse *)self exploreGuides];
      exploreGuides3 = [(MKExploreGuidesResponse *)v6 exploreGuides];
      v12 = [exploreGuides2 isEqual:exploreGuides3];
    }

    else
    {
      exploreGuides2 = [(MKExploreGuidesResponse *)self title];
      exploreGuides3 = [(MKExploreGuidesResponse *)v6 title];
      if ([exploreGuides2 isEqualToString:exploreGuides3])
      {
        subtitle = [(MKExploreGuidesResponse *)self subtitle];
        subtitle2 = [(MKExploreGuidesResponse *)v6 subtitle];
        if ([subtitle isEqualToString:subtitle2])
        {
          imageTemplateURL = [(MKExploreGuidesResponse *)self imageTemplateURL];
          imageTemplateURL2 = [(MKExploreGuidesResponse *)v6 imageTemplateURL];
          if ([imageTemplateURL isEqualToString:imageTemplateURL2])
          {
            punchInURL = [(MKExploreGuidesResponse *)self punchInURL];
            punchInURL2 = [(MKExploreGuidesResponse *)v6 punchInURL];
            v12 = [punchInURL isEqual:punchInURL2];
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

- (MKExploreGuidesResponse)initWithExploreGuidesLookupResult:(id)result
{
  resultCopy = result;
  v19.receiver = self;
  v19.super_class = MKExploreGuidesResponse;
  v6 = [(MKExploreGuidesResponse *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_exploreGuidesLookupResult, result);
    exploreGuides = [resultCopy exploreGuides];
    exploreGuides = v7->_exploreGuides;
    v7->_exploreGuides = exploreGuides;

    title = [resultCopy title];
    title = v7->_title;
    v7->_title = title;

    subtitle = [resultCopy subtitle];
    subtitle = v7->_subtitle;
    v7->_subtitle = subtitle;

    imageTemplateURL = [resultCopy imageTemplateURL];
    imageTemplateURL = v7->_imageTemplateURL;
    v7->_imageTemplateURL = imageTemplateURL;

    punchInURL = [resultCopy punchInURL];
    punchInURL = v7->_punchInURL;
    v7->_punchInURL = punchInURL;
  }

  return v7;
}

@end