@interface LookAroundShareItemSource
- (LookAroundShareItemSource)initWithMapItem:(id)a3 shareStateProvider:(id)a4;
- (LookAroundShareStateProvider)shareStateProvider;
- (NSArray)activityProviders;
- (NSArray)excludedActivityTypes;
- (id)_activityTitle;
@end

@implementation LookAroundShareItemSource

- (LookAroundShareStateProvider)shareStateProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_shareStateProvider);

  return WeakRetained;
}

- (id)_activityTitle
{
  v2 = [(LookAroundShareItemSource *)self shareStateProvider];
  v3 = [v2 sharingTitle];

  return v3;
}

- (NSArray)excludedActivityTypes
{
  v4 = UIActivityTypeAddToReadingList;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (NSArray)activityProviders
{
  v3 = [(LookAroundShareItemSource *)self textProvider];
  v4 = [(LookAroundShareItemSource *)self urlProvider];
  v8[1] = v4;
  v5 = [(LookAroundShareItemSource *)self linkPresentationProvider];
  v8[2] = v5;
  v6 = [NSArray arrayWithObjects:v8 count:3];

  return v6;
}

- (LookAroundShareItemSource)initWithMapItem:(id)a3 shareStateProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = LookAroundShareItemSource;
  v8 = [(LookAroundShareItemSource *)&v24 init];
  v9 = v8;
  if (v8)
  {
    [(LookAroundShareItemSource *)v8 setShareStateProvider:v7];
    v10 = [[MUPlaceActivityDataProviderConfiguration alloc] initWithMapItem:v6];
    [v10 setSupportsURLShorteningService:1];
    objc_initWeak(&location, v9);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100CD1E48;
    v21[3] = &unk_101653F38;
    objc_copyWeak(&v22, &location);
    [v10 setActivityTitleBlock:v21];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100CD1E94;
    v19[3] = &unk_1016508C8;
    objc_copyWeak(&v20, &location);
    [v10 setActivityURLBlock:v19];
    v11 = [[MULookAroundActivityDataProvider alloc] initWithConfiguration:v10];
    [(LookAroundShareItemSource *)v9 setDataProvider:v11];

    v12 = [(LookAroundShareItemSource *)v9 dataProvider];
    v13 = [MUTextActivityProvider activityProviderFromDataProvider:v12];
    [(LookAroundShareItemSource *)v9 setTextProvider:v13];

    v14 = [(LookAroundShareItemSource *)v9 dataProvider];
    v15 = [MUURLActivityProvider activityProviderFromDataProvider:v14];
    [(LookAroundShareItemSource *)v9 setUrlProvider:v15];

    v16 = [(LookAroundShareItemSource *)v9 dataProvider];
    v17 = [MULinkMetadataActivityProvider activityProviderFromDataProvider:v16];
    [(LookAroundShareItemSource *)v9 setLinkPresentationProvider:v17];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v9;
}

@end