@interface SearchAction
- (SearchAction)initWithSearchItem:(id)a3 alongRoute:(BOOL)isMPREnabled;
@end

@implementation SearchAction

- (SearchAction)initWithSearchItem:(id)a3 alongRoute:(BOOL)isMPREnabled
{
  v7 = a3;
  v16.receiver = self;
  v16.super_class = SearchAction;
  v8 = [(SearchAction *)&v16 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_13;
  }

  objc_storeStrong(&v8->_searchItem, a3);
  v10 = +[MNNavigationService sharedService];
  [v10 state];
  IsNavigating = MNNavigationServiceStateIsNavigating();

  v12 = +[MNNavigationService sharedService];
  v13 = [v12 navigationTransportType];
  IsEnabled_Maps420 = 0;
  if (v13 > 2)
  {
    if (v13 == 3)
    {
      IsEnabled_Maps420 = MapsFeature_IsEnabled_Maps420();
      goto LABEL_10;
    }

    if (v13 != 6)
    {
      goto LABEL_8;
    }
  }

  else if (v13 != 1)
  {
    if (v13 == 2)
    {
      IsEnabled_Maps420 = MapsFeature_IsEnabled_Maps182();
      goto LABEL_10;
    }

LABEL_8:
    IsEnabled_Maps420 = MapsFeature_IsEnabled_DrivingMultiWaypointRoutes();
  }

LABEL_10:
  v9->_isMPREnabled = IsEnabled_Maps420;

  if (IsNavigating)
  {
    isMPREnabled = v9->_isMPREnabled;
  }

  v9->_searchAlongRoute = isMPREnabled;
LABEL_13:

  return v9;
}

@end