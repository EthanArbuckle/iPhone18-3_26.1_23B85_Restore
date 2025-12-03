@interface GEOAnnouncement
- (BOOL)showAnnouncementIfFlyoverWithHandler:(id)handler;
@end

@implementation GEOAnnouncement

- (BOOL)showAnnouncementIfFlyoverWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    buttonOneAppURI = [(GEOAnnouncement *)self buttonOneAppURI];
    v6 = [NSScanner scannerWithString:buttonOneAppURI];

    v7 = [v6 scanString:@"flyover:" intoString:0];
    if (v7)
    {
      v17 = 0;
      if ([v6 scanUnsignedLongLong:&v17])
      {
        v8 = [MKMapItemIdentifier alloc];
        v9 = [v8 initWithMUID:v17 resultProviderID:0 coordinate:{MKCoordinateInvalid[0], MKCoordinateInvalid[1]}];
        if (v9)
        {
          v10 = +[MKMapService sharedService];
          v18 = v9;
          v11 = [NSArray arrayWithObjects:&v18 count:1];
          v12 = [v10 ticketForIdentifiers:v11 traits:0];

          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_100FF4638;
          v14[3] = &unk_101661318;
          v14[4] = self;
          v15 = handlerCopy;
          v16 = v17;
          [v12 submitWithHandler:v14 networkActivity:0];
        }
      }
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

@end