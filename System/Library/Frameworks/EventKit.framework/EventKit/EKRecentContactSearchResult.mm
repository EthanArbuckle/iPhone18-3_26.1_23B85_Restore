@interface EKRecentContactSearchResult
- (EKStructuredLocation)location;
- (id)conferenceRoomForSource:(id)source;
- (id)description;
@end

@implementation EKRecentContactSearchResult

- (EKStructuredLocation)location
{
  recent = [(EKRecentContactSearchResult *)self recent];
  v4 = [EKRecents recentIsDirectoryLocation:recent];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    recent2 = [(EKRecentContactSearchResult *)self recent];
    v5 = [EKRecents locationForRecent:recent2];
  }

  return v5;
}

- (id)conferenceRoomForSource:(id)source
{
  sourceCopy = source;
  recent = [(EKRecentContactSearchResult *)self recent];
  v6 = [EKRecents recentIsDirectoryLocation:recent];

  if (v6)
  {
    recent2 = [(EKRecentContactSearchResult *)self recent];
    v8 = [EKRecents directoryLocationForRecent:recent2 onSource:sourceCopy];

    v9 = objc_opt_new();
    [v9 setLocation:v8];
    [v9 setAvailability:0];
    _constraintsInternal = [sourceCopy _constraintsInternal];
    [v9 setSupportsAvailability:{objc_msgSend(_constraintsInternal, "supportsAvailabilityRequests")}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  recent = [(EKRecentContactSearchResult *)self recent];
  v3 = [recent description];

  return v3;
}

@end