@interface EKRecentContactSearchResult
- (EKStructuredLocation)location;
- (id)conferenceRoomForSource:(id)a3;
- (id)description;
@end

@implementation EKRecentContactSearchResult

- (EKStructuredLocation)location
{
  v3 = [(EKRecentContactSearchResult *)self recent];
  v4 = [EKRecents recentIsDirectoryLocation:v3];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(EKRecentContactSearchResult *)self recent];
    v5 = [EKRecents locationForRecent:v6];
  }

  return v5;
}

- (id)conferenceRoomForSource:(id)a3
{
  v4 = a3;
  v5 = [(EKRecentContactSearchResult *)self recent];
  v6 = [EKRecents recentIsDirectoryLocation:v5];

  if (v6)
  {
    v7 = [(EKRecentContactSearchResult *)self recent];
    v8 = [EKRecents directoryLocationForRecent:v7 onSource:v4];

    v9 = objc_opt_new();
    [v9 setLocation:v8];
    [v9 setAvailability:0];
    v10 = [v4 _constraintsInternal];
    [v9 setSupportsAvailability:{objc_msgSend(v10, "supportsAvailabilityRequests")}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v2 = [(EKRecentContactSearchResult *)self recent];
  v3 = [v2 description];

  return v3;
}

@end