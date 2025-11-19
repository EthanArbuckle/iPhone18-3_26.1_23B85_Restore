@interface VOTAppTransitionContext
+ (VOTAppTransitionContext)contextWithPID:(int)a3 bundleID:(id)a4 displayName:(id)a5;
- (NSString)announcableName;
- (id)description;
@end

@implementation VOTAppTransitionContext

+ (VOTAppTransitionContext)contextWithPID:(int)a3 bundleID:(id)a4 displayName:(id)a5
{
  v6 = *&a3;
  v7 = a5;
  v8 = a4;
  v9 = objc_alloc_init(VOTAppTransitionContext);
  [(VOTAppTransitionContext *)v9 setPid:v6];
  [(VOTAppTransitionContext *)v9 setBundleID:v8];

  [(VOTAppTransitionContext *)v9 setDisplayName:v7];

  return v9;
}

- (id)description
{
  v3 = [NSNumber numberWithInt:[(VOTAppTransitionContext *)self pid]];
  v4 = [(VOTAppTransitionContext *)self displayName];
  v5 = [(VOTAppTransitionContext *)self bundleID];
  v6 = [(VOTAppTransitionContext *)self announcableName];
  v7 = [NSString stringWithFormat:@"_VOTAppTransitionContext<%p>. pid:%@ displayName:%@ bundleID:%@ announcableName:%@", self, v3, v4, v5, v6];

  return v7;
}

- (NSString)announcableName
{
  v3 = [(VOTAppTransitionContext *)self bundleID];
  if ([v3 isEqualToString:@"com.apple.HeadBoard"])
  {
    v4 = off_1001FDDD0;
    v5 = @"app.replacement.name.headboard";
  }

  else
  {
    if (([v3 isEqualToString:@"com.apple.TVScreenSaver"] & 1) == 0)
    {
      v6 = [(VOTAppTransitionContext *)self bundleID];
      v7 = [v6 isEqualToString:@"com.apple.TVIdleScreen"];

      if (!v7)
      {
        if ([v3 isEqualToString:@"com.apple.TVAirPlay"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.TVPeripheralAgent") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.PineBoard") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.TVConferenceRoomDisplay"))
        {
          v9 = &stru_1001CBF90;
          v8 = &stru_1001CBF90;
        }

        else
        {
          v11 = [(VOTAppTransitionContext *)self displayName];

          if (v11)
          {
            v12 = [(VOTAppTransitionContext *)self displayName];
          }

          else
          {
            v12 = &stru_1001CBF90;
          }

          v9 = v12;
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