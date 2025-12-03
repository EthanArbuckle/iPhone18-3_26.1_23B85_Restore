@interface VOTAppTransitionContext
+ (VOTAppTransitionContext)contextWithPID:(int)d bundleID:(id)iD displayName:(id)name;
- (NSString)announcableName;
- (id)description;
@end

@implementation VOTAppTransitionContext

+ (VOTAppTransitionContext)contextWithPID:(int)d bundleID:(id)iD displayName:(id)name
{
  v6 = *&d;
  nameCopy = name;
  iDCopy = iD;
  v9 = objc_alloc_init(VOTAppTransitionContext);
  [(VOTAppTransitionContext *)v9 setPid:v6];
  [(VOTAppTransitionContext *)v9 setBundleID:iDCopy];

  [(VOTAppTransitionContext *)v9 setDisplayName:nameCopy];

  return v9;
}

- (id)description
{
  v3 = [NSNumber numberWithInt:[(VOTAppTransitionContext *)self pid]];
  displayName = [(VOTAppTransitionContext *)self displayName];
  bundleID = [(VOTAppTransitionContext *)self bundleID];
  announcableName = [(VOTAppTransitionContext *)self announcableName];
  v7 = [NSString stringWithFormat:@"_VOTAppTransitionContext<%p>. pid:%@ displayName:%@ bundleID:%@ announcableName:%@", self, v3, displayName, bundleID, announcableName];

  return v7;
}

- (NSString)announcableName
{
  bundleID = [(VOTAppTransitionContext *)self bundleID];
  if ([bundleID isEqualToString:@"com.apple.HeadBoard"])
  {
    v4 = off_1001FDDD0;
    v5 = @"app.replacement.name.headboard";
  }

  else
  {
    if (([bundleID isEqualToString:@"com.apple.TVScreenSaver"] & 1) == 0)
    {
      bundleID2 = [(VOTAppTransitionContext *)self bundleID];
      v7 = [bundleID2 isEqualToString:@"com.apple.TVIdleScreen"];

      if (!v7)
      {
        if ([bundleID isEqualToString:@"com.apple.TVAirPlay"] & 1) != 0 || (objc_msgSend(bundleID, "isEqualToString:", @"com.apple.TVPeripheralAgent") & 1) != 0 || (objc_msgSend(bundleID, "isEqualToString:", @"com.apple.PineBoard") & 1) != 0 || (objc_msgSend(bundleID, "isEqualToString:", @"com.apple.TVConferenceRoomDisplay"))
        {
          v9 = &stru_1001CBF90;
          v8 = &stru_1001CBF90;
        }

        else
        {
          displayName = [(VOTAppTransitionContext *)self displayName];

          if (displayName)
          {
            displayName2 = [(VOTAppTransitionContext *)self displayName];
          }

          else
          {
            displayName2 = &stru_1001CBF90;
          }

          v9 = displayName2;
          v8 = v9;
        }

        goto LABEL_7;
      }
    }

    v4 = off_1001FDDD0;
    v5 = @"app.replacement.name.tvscreensaver";
  }

  v8 = sub_1000511CC(v4, v5, 0);
  v9 = &stru_1001CBF90;
LABEL_7:

  return v8;
}

@end