@interface MKTransitIncidentStringProvider
+ (id)cellSecondaryTextForIncident:(id)a3;
@end

@implementation MKTransitIncidentStringProvider

+ (id)cellSecondaryTextForIncident:(id)a3
{
  v3 = a3;
  v4 = [v3 messageForRoutePlanning];
  if (![v4 length])
  {
    v5 = [v3 title];
    if (v5 && (v6 = v5, [v3 summary], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = _MKLocalizedStringFromThisBundle(@"Transit_Incident_Title_And_Summary");
      v10 = [v3 title];
      v11 = [v3 summary];
      v12 = [v8 stringWithFormat:v9, v10, v11];

      v4 = v10;
    }

    else
    {
      v13 = [v3 title];
      if (v13)
      {
        v9 = v13;
        v12 = v9;
      }

      else
      {
        v12 = [v3 summary];
        v9 = 0;
      }
    }

    v4 = v12;
  }

  return v4;
}

@end