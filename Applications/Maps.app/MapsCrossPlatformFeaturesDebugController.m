@interface MapsCrossPlatformFeaturesDebugController
- (BOOL)recordsContinuously;
- (id)_mapsAppStateCreateActivity:(unint64_t)a3;
- (void)_copyStateWithFidelity:(unint64_t)a3;
- (void)_mapsAppStateRestoreActivity:(id)a3 withAssumedSourceFidelity:(unint64_t)a4;
- (void)_pasteStateWithAssumedSourceFidelity:(unint64_t)a3;
- (void)_promptForRestart;
- (void)_record;
- (void)_requestTerminationForRestart;
- (void)prepareContent;
- (void)setRecordsContinuously:(BOOL)a3;
@end

@implementation MapsCrossPlatformFeaturesDebugController

- (void)_promptForRestart
{
  v5 = objc_alloc_init(UIAlertController);
  [v5 setTitle:@"This change will be effective once Maps restarts"];
  v3 = [UIAlertAction actionWithTitle:@"Later" style:1 handler:0];
  [v5 addAction:v3];

  v4 = [UIAlertAction actionWithTitle:@"Quit Maps" style:2 handler:&stru_1016240E0];
  [v5 addAction:v4];

  [(MapsCrossPlatformFeaturesDebugController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)_record
{
  recordingCounter = self->_recordingCounter;
  v4 = NSTemporaryDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"com.apple.Maps.StateRecording"];
  v6 = [NSString stringWithFormat:@"%ld", self->_recordingCounter];
  v7 = [v5 stringByAppendingPathComponent:v6];

  v8 = +[NSFileManager defaultManager];
  v29 = 0;
  LOBYTE(v6) = [v8 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v29];
  v9 = v29;

  if (v6)
  {
    if (recordingCounter + 1 <= 0xF0)
    {
      v10 = recordingCounter + 1;
    }

    else
    {
      v10 = 1;
    }

    v11 = [(MapsCrossPlatformFeaturesDebugController *)self _mapsAppStateCreateActivity:0xFFFFFFFLL];
    v12 = [v11 description];
    v13 = [v7 stringByAppendingPathComponent:@"Activity Description.txt"];
    [v12 writeToFile:v13 atomically:1 encoding:4 error:0];

    v14 = [v11 data];
    v15 = [v14 base64EncodedStringWithOptions:0];
    v16 = [v7 stringByAppendingPathComponent:@"Base64 Activity Data.txt"];
    [v15 writeToFile:v16 atomically:1 encoding:4 error:0];

    v17 = +[UIApplication _maps_keyMapsWindow];
    [v17 bounds];
    v19 = v18;
    v21 = v20;
    v22 = [v17 screen];
    if (v22)
    {
      [v17 screen];
    }

    else
    {
      +[UIScreen mainScreen];
    }
    v23 = ;
    [v23 scale];
    v25 = v24;
    v30.width = v19;
    v30.height = v21;
    UIGraphicsBeginImageContextWithOptions(v30, 0, v25);

    [v17 bounds];
    [v17 drawViewHierarchyInRect:1 afterScreenUpdates:?];
    v26 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v27 = UIImagePNGRepresentation(v26);

    v28 = [v7 stringByAppendingPathComponent:@"Screenshot.png"];
    [v27 writeToFile:v28 atomically:1];

    NSLog(@"Saved app state snapshot at %@", v7);
    self->_recordingCounter = v10;
  }

  else
  {
    NSLog(@"Could not create snapshot directory at %@", v7);
  }
}

- (void)setRecordsContinuously:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_recordingTimer);

  if (v3)
  {
    if (!WeakRetained)
    {
      v7 = [NSTimer scheduledTimerWithTimeInterval:self target:"_record" selector:0 userInfo:1 repeats:0.5];
      objc_storeWeak(&self->_recordingTimer, v7);
    }
  }

  else if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_recordingTimer);
    [v6 invalidate];

    objc_storeWeak(&self->_recordingTimer, 0);
    self->_recordingCounter = 0;
  }
}

- (BOOL)recordsContinuously
{
  WeakRetained = objc_loadWeakRetained(&self->_recordingTimer);
  v3 = WeakRetained != 0;

  return v3;
}

- (void)_pasteStateWithAssumedSourceFidelity:(unint64_t)a3
{
  v5 = +[UIPasteboard generalPasteboard];
  v10 = [v5 string];

  if (v10)
  {
    v6 = [[NSData alloc] initWithBase64EncodedString:v10 options:1];
    if (v6)
    {
      v7 = [[MapsActivity alloc] initWithData:v6];
      v8 = v7;
      if (v7)
      {
        NSLog(@"About to restore the state of the app from activity: %@", v7);
        [(MapsCrossPlatformFeaturesDebugController *)self _mapsAppStateRestoreActivity:v8 withAssumedSourceFidelity:a3];
      }
    }
  }

  v9 = [(MapsCrossPlatformFeaturesDebugController *)self presentingViewController];
  [v9 dismissViewControllerAnimated:0 completion:0];
}

- (void)_copyStateWithFidelity:(unint64_t)a3
{
  v3 = [(MapsCrossPlatformFeaturesDebugController *)self _mapsAppStateCreateActivity:a3];
  if (v3)
  {
    v10 = v3;
    NSLog(@"About to copy the current state of the app: %@", v3);
    v4 = [v10 data];
    v5 = [v4 base64EncodedStringWithOptions:0];
    NSLog(@"The size of the payload is %lu", [v4 length]);
    v6 = [v10 bzip2CompressedData];
    v7 = v6;
    if (v6)
    {
      NSLog(@"The size of the Bzip2-compressed payload is %lu", [v6 length]);
    }

    else
    {
      NSLog(@"The compressed data could not be created", v9);
    }

    v8 = +[UIPasteboard generalPasteboard];
    [v8 setString:v5];

    v3 = v10;
  }
}

- (void)prepareContent
{
  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1006158B0;
  v15[3] = &unk_10165E0A8;
  objc_copyWeak(&v16, &location);
  v3 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Placecard" content:v15];
  v4 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"URLs" content:&stru_101624080];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100615AB0;
  v13[3] = &unk_10165E0A8;
  objc_copyWeak(&v14, &location);
  v5 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Handoff" content:v13];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100615CB4;
  v11 = &unk_10165E0A8;
  objc_copyWeak(&v12, &location);
  v6 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Full State" content:&v8];
  v7 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Default Transportation Mode" content:&stru_1016240C0, v8, v9, v10, v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_mapsAppStateRestoreActivity:(id)a3 withAssumedSourceFidelity:(unint64_t)a4
{
  v6 = a3;
  v7 = [(MapsCrossPlatformFeaturesDebugController *)self _maps_mapsSceneDelegate];
  [v7 setMapsActivity:v6 assumedSourceFidelity:a4 source:1];
}

- (id)_mapsAppStateCreateActivity:(unint64_t)a3
{
  v4 = [(MapsCrossPlatformFeaturesDebugController *)self _maps_mapsSceneDelegate];
  v5 = [v4 mapsActivityWithFidelity:a3];

  return v5;
}

- (void)_requestTerminationForRestart
{
  v5 = objc_alloc_init(UIAlertController);
  [v5 setTitle:@"Applying this change requires Maps to restart."];
  v3 = [UIAlertAction actionWithTitle:@"Later" style:1 handler:0];
  [v5 addAction:v3];

  v4 = [UIAlertAction actionWithTitle:@"Quit Maps" style:2 handler:&stru_101623FE0];
  [v5 addAction:v4];

  [(MapsCrossPlatformFeaturesDebugController *)self presentViewController:v5 animated:1 completion:0];
}

@end