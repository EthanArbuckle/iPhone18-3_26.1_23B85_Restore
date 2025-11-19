@interface PresentFlyoverAction
- (PresentFlyoverAction)initWithAnnouncement:(id)a3 muid:(unint64_t)a4;
- (void)resolveFlyoverWithCompletion:(id)a3;
@end

@implementation PresentFlyoverAction

- (void)resolveFlyoverWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PresentAnnouncementAction *)self announcement];
  v6 = [v5 userMessage];

  v7 = [(PresentFlyoverAction *)self muid];
  v8 = [MKMapItemIdentifier alloc];
  v9 = [v8 initWithMUID:v7 resultProviderID:0 coordinate:{MKCoordinateInvalid[0], MKCoordinateInvalid[1]}];
  if (v9)
  {
    v10 = +[MKMapService sharedService];
    v17 = v9;
    v11 = [NSArray arrayWithObjects:&v17 count:1];
    v12 = [v10 ticketForIdentifiers:v11 traits:0];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100AFCDDC;
    v13[3] = &unk_101661318;
    v14 = v6;
    v16 = v7;
    v15 = v4;
    [v12 submitWithHandler:v13 networkActivity:0];
  }
}

- (PresentFlyoverAction)initWithAnnouncement:(id)a3 muid:(unint64_t)a4
{
  v6.receiver = self;
  v6.super_class = PresentFlyoverAction;
  result = [(PresentAnnouncementAction *)&v6 initWithAnnouncement:a3];
  if (result)
  {
    result->_muid = a4;
  }

  return result;
}

@end