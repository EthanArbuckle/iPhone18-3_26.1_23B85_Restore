@interface PresentFlyoverAction
- (PresentFlyoverAction)initWithAnnouncement:(id)announcement muid:(unint64_t)muid;
- (void)resolveFlyoverWithCompletion:(id)completion;
@end

@implementation PresentFlyoverAction

- (void)resolveFlyoverWithCompletion:(id)completion
{
  completionCopy = completion;
  announcement = [(PresentAnnouncementAction *)self announcement];
  userMessage = [announcement userMessage];

  muid = [(PresentFlyoverAction *)self muid];
  v8 = [MKMapItemIdentifier alloc];
  v9 = [v8 initWithMUID:muid resultProviderID:0 coordinate:{MKCoordinateInvalid[0], MKCoordinateInvalid[1]}];
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
    v14 = userMessage;
    v16 = muid;
    v15 = completionCopy;
    [v12 submitWithHandler:v13 networkActivity:0];
  }
}

- (PresentFlyoverAction)initWithAnnouncement:(id)announcement muid:(unint64_t)muid
{
  v6.receiver = self;
  v6.super_class = PresentFlyoverAction;
  result = [(PresentAnnouncementAction *)&v6 initWithAnnouncement:announcement];
  if (result)
  {
    result->_muid = muid;
  }

  return result;
}

@end