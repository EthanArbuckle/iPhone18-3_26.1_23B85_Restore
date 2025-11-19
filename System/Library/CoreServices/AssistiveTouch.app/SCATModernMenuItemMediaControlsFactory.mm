@interface SCATModernMenuItemMediaControlsFactory
+ (id)itemDetailsForItem:(id)a3 menu:(id)a4;
+ (id)menuItemWithItemDictionary:(id)a3 menu:(id)a4 delegate:(id)a5;
+ (id)menuItemsForItem:(id)a3 menu:(id)a4 delegate:(id)a5;
@end

@implementation SCATModernMenuItemMediaControlsFactory

+ (id)menuItemsForItem:(id)a3 menu:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(NSMutableArray);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = [a1 itemDetailsForItem:v8 menu:{v9, 0}];
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [a1 menuItemWithItemDictionary:*(*(&v19 + 1) + 8 * i) menu:v9 delegate:v10];
        [v11 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  return v11;
}

+ (id)itemDetailsForItem:(id)a3 menu:(id)a4
{
  v4 = a3;
  if ([v4 isEqualToString:AXSSwitchControlMenuItemMediaControlsPlayPause])
  {
    v29[0] = @"mediacontrols_play_pause";
    v28[0] = @"identifier";
    v28[1] = @"title";
    v5 = sub_100042B24(@"MediaControls-PlayPause");
    v28[2] = @"activateBehavior";
    v29[1] = v5;
    v29[2] = &off_1001E5028;
    v6 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:3];
    v30 = v6;
    v7 = &v30;
LABEL_15:
    v8 = [NSArray arrayWithObjects:v7 count:1];

    goto LABEL_16;
  }

  if ([v4 isEqualToString:AXSSwitchControlMenuItemMediaControlsPreviousTrack])
  {
    v26[0] = @"mediacontrols_previous_chapter";
    v25[0] = @"identifier";
    v25[1] = @"title";
    v5 = sub_100042B24(@"MediaControls-PreviousTrack");
    v25[2] = @"activateBehavior";
    v26[1] = v5;
    v26[2] = &off_1001E5028;
    v6 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];
    v27 = v6;
    v7 = &v27;
    goto LABEL_15;
  }

  if ([v4 isEqualToString:AXSSwitchControlMenuItemMediaControlsNextTrack])
  {
    v23[0] = @"mediacontrols_next_chapter";
    v22[0] = @"identifier";
    v22[1] = @"title";
    v5 = sub_100042B24(@"MediaControls-NextTrack");
    v22[2] = @"activateBehavior";
    v23[1] = v5;
    v23[2] = &off_1001E5028;
    v6 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:3];
    v24 = v6;
    v7 = &v24;
    goto LABEL_15;
  }

  if ([v4 isEqualToString:AXSSwitchControlMenuItemMediaControlsSkipForward])
  {
    v20[0] = @"mediacontrols_seek_frame_forward";
    v19[0] = @"identifier";
    v19[1] = @"title";
    v5 = sub_100042B24(@"MediaControls-SkipForward");
    v19[2] = @"activateBehavior";
    v20[1] = v5;
    v20[2] = &off_1001E5028;
    v6 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];
    v21 = v6;
    v7 = &v21;
    goto LABEL_15;
  }

  if ([v4 isEqualToString:AXSSwitchControlMenuItemMediaControlsSkipBackward])
  {
    v17[0] = @"mediacontrols_seek_frame_backward";
    v16[0] = @"identifier";
    v16[1] = @"title";
    v5 = sub_100042B24(@"MediaControls-SkipBackward");
    v16[2] = @"activateBehavior";
    v17[1] = v5;
    v17[2] = &off_1001E5028;
    v6 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];
    v18 = v6;
    v7 = &v18;
    goto LABEL_15;
  }

  if ([v4 isEqualToString:AXSSwitchControlMenuItemMediaControlsRewind])
  {
    v14[0] = @"mediacontrols_rewind";
    v13[0] = @"identifier";
    v13[1] = @"title";
    v5 = sub_100042B24(@"MediaControls-Rewind");
    v13[2] = @"activateBehavior";
    v14[1] = v5;
    v14[2] = &off_1001E5028;
    v6 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];
    v15 = v6;
    v7 = &v15;
    goto LABEL_15;
  }

  if ([v4 isEqualToString:AXSSwitchControlMenuItemMediaControlsFastForward])
  {
    v11[0] = @"mediacontrols_forward";
    v10[0] = @"identifier";
    v10[1] = @"title";
    v5 = sub_100042B24(@"MediaControls-FastForward");
    v10[2] = @"activateBehavior";
    v11[1] = v5;
    v11[2] = &off_1001E5028;
    v6 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];
    v12 = v6;
    v7 = &v12;
    goto LABEL_15;
  }

  _AXAssert();
  v8 = 0;
LABEL_16:

  return v8;
}

+ (id)menuItemWithItemDictionary:(id)a3 menu:(id)a4 delegate:(id)a5
{
  v6 = a5;
  v7 = a3;
  v8 = [v7 objectForKey:@"identifier"];
  v9 = [v7 objectForKey:@"title"];
  v10 = [v7 objectForKey:@"imageName"];
  v11 = [v7 objectForKey:@"activateBehavior"];
  v12 = [v11 unsignedIntegerValue];

  v13 = [v7 objectForKey:@"guidedAccess"];

  v14 = [v13 BOOLValue];
  if ([v8 isEqualToString:@"mediacontrols_play_pause"])
  {
    v15 = &stru_1001D3860;
  }

  else if ([v8 isEqualToString:@"mediacontrols_previous_chapter"])
  {
    v15 = &stru_1001D3880;
  }

  else if ([v8 isEqualToString:@"mediacontrols_next_chapter"])
  {
    v15 = &stru_1001D38A0;
  }

  else if ([v8 isEqualToString:@"mediacontrols_seek_frame_forward"])
  {
    v15 = &stru_1001D38C0;
  }

  else if ([v8 isEqualToString:@"mediacontrols_seek_frame_backward"])
  {
    v15 = &stru_1001D38E0;
  }

  else if ([v8 isEqualToString:@"mediacontrols_rewind"])
  {
    v15 = &stru_1001D3900;
  }

  else if ([v8 isEqualToString:@"mediacontrols_forward"])
  {
    v15 = &stru_1001D3920;
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_opt_class() updateBlockForIdentifier:v8];
  LOBYTE(v19) = 0;
  v17 = [SCATModernMenuItem itemWithIdentifier:v8 delegate:v6 title:v9 imageName:v10 activateBehavior:v12 allowedWithGuidedAccess:v14 allowedWithAssistiveAccess:v19 activateHandler:v15 updateHandler:v16];

  return v17;
}

@end