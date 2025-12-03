@interface TransitSignViewState
- (BOOL)isEqual:(id)equal;
@end

@implementation TransitSignViewState

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = equalCopy;
      imageSource = [(TransitSignViewState *)v7 imageSource];
      imageSource2 = [(TransitSignViewState *)self imageSource];
      if ([imageSource isEqual:imageSource2])
      {
        majorAttributedString = [(TransitSignViewState *)v7 majorAttributedString];
        majorAttributedString2 = [(TransitSignViewState *)self majorAttributedString];
        if ([majorAttributedString isEqualToAttributedString:majorAttributedString2])
        {
          minorAttributedString = [(TransitSignViewState *)v7 minorAttributedString];
          minorAttributedString2 = [(TransitSignViewState *)self minorAttributedString];
          if ([minorAttributedString isEqualToAttributedString:minorAttributedString2])
          {
            tertiaryAttributedString = [(TransitSignViewState *)v7 tertiaryAttributedString];
            tertiaryAttributedString2 = [(TransitSignViewState *)self tertiaryAttributedString];
            v27 = tertiaryAttributedString;
            if ([tertiaryAttributedString isEqualToAttributedString:tertiaryAttributedString2])
            {
              incidentAttributedString = [(TransitSignViewState *)v7 incidentAttributedString];
              incidentAttributedString2 = [(TransitSignViewState *)self incidentAttributedString];
              v25 = incidentAttributedString;
              if ([incidentAttributedString isEqualToAttributedString:incidentAttributedString2])
              {
                incidents = [(TransitSignViewState *)v7 incidents];
                incidents2 = [(TransitSignViewState *)self incidents];
                v23 = incidents;
                v18 = incidents;
                v19 = incidents2;
                if ([v18 isEqualToArray:incidents2])
                {
                  clusteredRouteOptionLabelItems = [(TransitSignViewState *)v7 clusteredRouteOptionLabelItems];
                  clusteredRouteOptionLabelItems2 = [(TransitSignViewState *)self clusteredRouteOptionLabelItems];
                  v6 = [clusteredRouteOptionLabelItems isEqualToArray:clusteredRouteOptionLabelItems2];
                }

                else
                {
                  v6 = 0;
                }
              }

              else
              {
                v6 = 0;
              }
            }

            else
            {
              v6 = 0;
            }
          }

          else
          {
            v6 = 0;
          }
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end