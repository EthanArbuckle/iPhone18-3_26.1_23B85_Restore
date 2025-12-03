@interface MapsSharedTripVirtualReceiversDebugController
- (void)_addSectionWithTitle:(id)title forMapsSharing:(BOOL)sharing defaultName:(id)name contactBuilder:(id)builder;
- (void)prepareContent;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MapsSharedTripVirtualReceiversDebugController

- (void)_addSectionWithTitle:(id)title forMapsSharing:(BOOL)sharing defaultName:(id)name contactBuilder:(id)builder
{
  titleCopy = title;
  nameCopy = name;
  builderCopy = builder;
  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100DCB2F8;
  v16[3] = &unk_101654DC8;
  v13 = nameCopy;
  v17 = v13;
  sharingCopy = sharing;
  v14 = builderCopy;
  v18 = v14;
  objc_copyWeak(&v19, &location);
  v15 = [(MapsDebugValuesViewController *)self addSectionWithTitle:titleCopy content:v16];
  objc_destroyWeak(&v19);

  objc_destroyWeak(&location);
}

- (void)prepareContent
{
  v22.receiver = self;
  v22.super_class = MapsSharedTripVirtualReceiversDebugController;
  [(MapsDebugValuesViewController *)&v22 prepareContent];
  if (MSPSharedTripSharingAvailable())
  {
    objc_initWeak(&location, self);
    v3 = +[MSPSharedTripService sharedInstance];
    receivers = [v3 receivers];
    v14 = sub_100021DB0(receivers, &stru_101654C20);

    if ([v14 count])
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v5 = v14;
      v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v6)
      {
        v7 = *v18;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v18 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = *(*(&v17 + 1) + 8 * i);
            displayName = [v9 displayName];
            v15[0] = _NSConcreteStackBlock;
            v15[1] = 3221225472;
            v15[2] = sub_100DCC11C;
            v15[3] = &unk_101658D78;
            v15[4] = v9;
            objc_copyWeak(&v16, &location);
            v11 = [(MapsDebugValuesViewController *)self addSectionWithTitle:displayName content:v15];

            objc_destroyWeak(&v16);
          }

          v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
        }

        while (v6);
      }
    }

    else
    {
      v13 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Virtual Receivers" content:&stru_101654C40];
    }

    [(MapsSharedTripVirtualReceiversDebugController *)self _addSectionWithTitle:@"Maps" forMapsSharing:1 defaultName:@"Maps Receiver" contactBuilder:&stru_101654CD0];
    [(MapsSharedTripVirtualReceiversDebugController *)self _addSectionWithTitle:@"iMessage" forMapsSharing:0 defaultName:@"iMessage Receiver" contactBuilder:&stru_101654CF0];
    [(MapsSharedTripVirtualReceiversDebugController *)self _addSectionWithTitle:@"SMS" forMapsSharing:0 defaultName:@"SMS Receiver" contactBuilder:&stru_101654D10];
    [(MapsSharedTripVirtualReceiversDebugController *)self _addSectionWithTitle:@"RCS" forMapsSharing:0 defaultName:@"RCS Receiver" contactBuilder:&stru_101654D30];

    objc_destroyWeak(&location);
  }

  else
  {
    v12 = [(MapsDebugValuesViewController *)self addSectionWithTitle:0 content:&stru_101654BE0];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = MapsSharedTripVirtualReceiversDebugController;
  [(MapsSharedTripVirtualReceiversDebugController *)&v5 viewDidDisappear:disappear];
  v4 = +[MSPSharedTripService sharedInstance];
  [v4 removeSendingObserver:self];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = MapsSharedTripVirtualReceiversDebugController;
  [(MapsDebugValuesViewController *)&v5 viewWillAppear:appear];
  [(MapsDebugValuesViewController *)self rebuildSections];
  v4 = +[MSPSharedTripService sharedInstance];
  [v4 addSendingObserver:self];
}

@end