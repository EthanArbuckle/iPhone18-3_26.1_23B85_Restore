@interface MKTransitIncidentStringProvider
+ (id)cellSecondaryTextForIncident:(id)incident;
@end

@implementation MKTransitIncidentStringProvider

+ (id)cellSecondaryTextForIncident:(id)incident
{
  incidentCopy = incident;
  messageForRoutePlanning = [incidentCopy messageForRoutePlanning];
  if (![messageForRoutePlanning length])
  {
    title = [incidentCopy title];
    if (title && (v6 = title, [incidentCopy summary], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = _MKLocalizedStringFromThisBundle(@"Transit_Incident_Title_And_Summary");
      title2 = [incidentCopy title];
      summary = [incidentCopy summary];
      summary2 = [v8 stringWithFormat:v9, title2, summary];

      messageForRoutePlanning = title2;
    }

    else
    {
      title3 = [incidentCopy title];
      if (title3)
      {
        v9 = title3;
        summary2 = v9;
      }

      else
      {
        summary2 = [incidentCopy summary];
        v9 = 0;
      }
    }

    messageForRoutePlanning = summary2;
  }

  return messageForRoutePlanning;
}

@end