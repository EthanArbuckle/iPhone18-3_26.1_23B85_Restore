@interface ViewportFrameBookmarksController
- (void)prepareContent;
- (void)saveFileAndReload;
@end

@implementation ViewportFrameBookmarksController

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

- (void)prepareContent
{
  v3 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v4 = [v3 objectAtIndex:0];
  v5 = [v4 stringByAppendingPathComponent:@"ViewportBookmarks.json"];
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
  v17[2] = sub_1005D9E7C;
  v17[3] = &unk_10165E0A8;
  objc_copyWeak(&v18, &location);
  v13 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Bookmarks" content:v17];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1005DA0BC;
  v15[3] = &unk_10165E0A8;
  objc_copyWeak(&v16, &location);
  v14 = [(MapsDebugValuesViewController *)self addSectionWithTitle:&stru_1016631F0 content:v15];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

@end