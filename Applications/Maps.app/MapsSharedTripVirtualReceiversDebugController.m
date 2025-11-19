@interface MapsSharedTripVirtualReceiversDebugController
- (void)_addSectionWithTitle:(id)a3 forMapsSharing:(BOOL)a4 defaultName:(id)a5 contactBuilder:(id)a6;
- (void)prepareContent;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation MapsSharedTripVirtualReceiversDebugController

- (void)_addSectionWithTitle:(id)a3 forMapsSharing:(BOOL)a4 defaultName:(id)a5 contactBuilder:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100DCB2F8;
  v16[3] = &unk_101654DC8;
  v13 = v11;
  v17 = v13;
  v20 = a4;
  v14 = v12;
  v18 = v14;
  objc_copyWeak(&v19, &location);
  v15 = [(MapsDebugValuesViewController *)self addSectionWithTitle:v10 content:v16];
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
    v4 = [v3 receivers];
    v14 = sub_100021DB0(v4, &stru_101654C20);

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
            v10 = [v9 displayName];
            v15[0] = _NSConcreteStackBlock;
            v15[1] = 3221225472;
            v15[2] = sub_100DCC11C;
            v15[3] = &unk_101658D78;
            v15[4] = v9;
            objc_copyWeak(&v16, &location);
            v11 = [(MapsDebugValuesViewController *)self addSectionWithTitle:v10 content:v15];

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

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MapsSharedTripVirtualReceiversDebugController;
  [(MapsSharedTripVirtualReceiversDebugController *)&v5 viewDidDisappear:a3];
  v4 = +[MSPSharedTripService sharedInstance];
  [v4 removeSendingObserver:self];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MapsSharedTripVirtualReceiversDebugController;
  [(MapsDebugValuesViewController *)&v5 viewWillAppear:a3];
  [(MapsDebugValuesViewController *)self rebuildSections];
  v4 = +[MSPSharedTripService sharedInstance];
  [v4 addSendingObserver:self];
}

@end