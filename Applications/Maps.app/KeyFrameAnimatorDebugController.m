@interface KeyFrameAnimatorDebugController
- (void)_animationToIndex:(unint64_t)a3;
- (void)prepareContent;
- (void)saveFileAndReload;
@end

@implementation KeyFrameAnimatorDebugController

- (void)saveFileAndReload
{
  v3 = [[NSOutputStream alloc] initToFileAtPath:self->_filePath append:0];
  [v3 open];
  items = self->_items;
  v7 = 0;
  [NSJSONSerialization writeJSONObject:items toStream:v3 options:0 error:&v7];
  v5 = v7;
  [v3 close];
  if (!v5)
  {
    v6 = [NSURL fileURLWithPath:self->_filePath];
    [v6 setResourceValue:&__kCFBooleanTrue forKey:NSURLIsExcludedFromBackupKey error:0];
    [(MapsDebugValuesViewController *)self rebuildSections];
  }
}

- (void)_animationToIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_items count]> a3)
  {
    v5 = [(NSMutableArray *)self->_items objectAtIndex:a3];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 objectForKeyedSubscript:@"latitude"];
      [v7 doubleValue];
      v9 = v8;

      v10 = [v6 objectForKeyedSubscript:@"longitude"];
      [v10 doubleValue];
      v12 = v11;

      v13 = [v6 objectForKeyedSubscript:@"heading"];
      [v13 doubleValue];
      v15 = v14;

      v16 = [v6 objectForKeyedSubscript:@"pitch"];
      [v16 doubleValue];
      v18 = v17;

      v19 = [v6 objectForKeyedSubscript:@"zoom"];
      [v19 doubleValue];
      v21 = v20;

      v22 = [v6 objectForKeyedSubscript:@"animationDuration"];
      [v22 doubleValue];
      v24 = v23;

      v25 = [(MapsDebugValuesViewController *)self delegate];
      v26 = [v25 allVisibleMapViewsForDebugController:self];
      v27 = [v26 firstObject];

      v28 = [MKMapCamera cameraLookingAtCenterCoordinate:v9 fromDistance:v12 pitch:v21 heading:v18, v15];
      objc_initWeak(&location, self);
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100D687D8;
      v33[3] = &unk_101661A90;
      v29 = v27;
      v34 = v29;
      v30 = v28;
      v35 = v30;
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100D687E4;
      v31[3] = &unk_101652E88;
      objc_copyWeak(v32, &location);
      v32[1] = a3;
      [UIView animateWithDuration:v33 animations:v31 completion:v24];
      objc_destroyWeak(v32);

      objc_destroyWeak(&location);
    }
  }
}

- (void)prepareContent
{
  v3 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v4 = [v3 objectAtIndex:0];
  v5 = [v4 stringByAppendingPathComponent:@"KeyFrameList.json"];
  filePath = self->_filePath;
  self->_filePath = v5;

  v7 = [NSData dataWithContentsOfFile:self->_filePath];
  if (v7)
  {
    v20 = 0;
    v8 = [NSJSONSerialization JSONObjectWithData:v7 options:1 error:&v20];
    v9 = v20;
    items = self->_items;
    self->_items = v8;
  }

  if (!self->_items)
  {
    v11 = objc_opt_new();
    v12 = self->_items;
    self->_items = v11;
  }

  objc_initWeak(&location, self);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100D68A78;
  v17[3] = &unk_10165E0A8;
  objc_copyWeak(&v18, &location);
  v13 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Bookmarks" content:v17];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100D68D08;
  v15[3] = &unk_10165E0A8;
  objc_copyWeak(&v16, &location);
  v14 = [(MapsDebugValuesViewController *)self addSectionWithTitle:&stru_1016631F0 content:v15];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

@end