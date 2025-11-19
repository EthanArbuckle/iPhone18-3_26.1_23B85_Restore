@interface TransitSignViewState
- (BOOL)isEqual:(id)a3;
@end

@implementation TransitSignViewState

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = v4;
      v8 = [(TransitSignViewState *)v7 imageSource];
      v9 = [(TransitSignViewState *)self imageSource];
      if ([v8 isEqual:v9])
      {
        v10 = [(TransitSignViewState *)v7 majorAttributedString];
        v11 = [(TransitSignViewState *)self majorAttributedString];
        if ([v10 isEqualToAttributedString:v11])
        {
          v12 = [(TransitSignViewState *)v7 minorAttributedString];
          v13 = [(TransitSignViewState *)self minorAttributedString];
          if ([v12 isEqualToAttributedString:v13])
          {
            v14 = [(TransitSignViewState *)v7 tertiaryAttributedString];
            v26 = [(TransitSignViewState *)self tertiaryAttributedString];
            v27 = v14;
            if ([v14 isEqualToAttributedString:v26])
            {
              v15 = [(TransitSignViewState *)v7 incidentAttributedString];
              v24 = [(TransitSignViewState *)self incidentAttributedString];
              v25 = v15;
              if ([v15 isEqualToAttributedString:v24])
              {
                v16 = [(TransitSignViewState *)v7 incidents];
                v17 = [(TransitSignViewState *)self incidents];
                v23 = v16;
                v18 = v16;
                v19 = v17;
                if ([v18 isEqualToArray:v17])
                {
                  v22 = [(TransitSignViewState *)v7 clusteredRouteOptionLabelItems];
                  v21 = [(TransitSignViewState *)self clusteredRouteOptionLabelItems];
                  v6 = [v22 isEqualToArray:v21];
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