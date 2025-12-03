@interface AEAssetNotesActivityItemProvider
- (AEAssetNotesActivityItemProvider)initWithDelegate:(id)delegate propertySource:(id)source;
- (BOOL)supportsActivityType:(id)type;
- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type;
- (id)item;
@end

@implementation AEAssetNotesActivityItemProvider

- (AEAssetNotesActivityItemProvider)initWithDelegate:(id)delegate propertySource:(id)source
{
  sourceCopy = source;
  delegateCopy = delegate;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v12.receiver = self;
  v12.super_class = AEAssetNotesActivityItemProvider;
  v10 = [(AEAssetBaseActivityItemProvider *)&v12 initWithDelegate:delegateCopy placeholderItem:v9 propertySource:sourceCopy];

  return v10;
}

- (BOOL)supportsActivityType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:UIActivityTypeSaveToNotes])
  {
    v4 = 1;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"com.apple.Notes.SharingExtension"];
  }

  return v4;
}

- (id)item
{
  activityType = [(AEAssetNotesActivityItemProvider *)self activityType];
  v4 = [(AEAssetBaseActivityItemProvider *)self shouldShareActivityType:activityType];

  if (v4)
  {
    activityType2 = [(AEAssetNotesActivityItemProvider *)self activityType];
    propertyProvider = [(AEAssetBaseActivityItemProvider *)self propertyProvider];
    [propertyProvider setActivityType:activityType2];

    v7 = +[NSMutableDictionary dictionary];
    propertyProvider2 = [(AEAssetBaseActivityItemProvider *)self propertyProvider];
    title = [propertyProvider2 title];

    if ([title length])
    {
      v10 = [title copy];
      [v7 setObject:v10 forKeyedSubscript:@"title"];
    }

    propertyProvider3 = [(AEAssetBaseActivityItemProvider *)self propertyProvider];
    author = [propertyProvider3 author];

    if ([author length])
    {
      v13 = [author copy];
      [v7 setObject:v13 forKeyedSubscript:@"author"];
    }

    propertyProvider4 = [(AEAssetBaseActivityItemProvider *)self propertyProvider];
    genre = [propertyProvider4 genre];

    if ([genre length])
    {
      v16 = [genre copy];
      [v7 setObject:v16 forKeyedSubscript:@"genre"];
    }

    propertyProvider5 = [(AEAssetBaseActivityItemProvider *)self propertyProvider];
    publisherYear = [propertyProvider5 publisherYear];

    if ([publisherYear length])
    {
      v19 = [publisherYear copy];
      [v7 setObject:v19 forKeyedSubscript:@"publishing_date"];
    }

    propertyProvider6 = [(AEAssetBaseActivityItemProvider *)self propertyProvider];
    assetTypeString = [propertyProvider6 assetTypeString];

    if ([assetTypeString length])
    {
      v22 = [assetTypeString copy];
      [v7 setObject:v22 forKeyedSubscript:@"media_type"];
    }

    propertyProvider7 = [(AEAssetBaseActivityItemProvider *)self propertyProvider];
    bookDescription = [propertyProvider7 bookDescription];

    if ([bookDescription length])
    {
      v25 = [bookDescription copy];
      [v7 setObject:v25 forKeyedSubscript:@"description"];
    }

    v26 = title;
    propertyProvider8 = [(AEAssetBaseActivityItemProvider *)self propertyProvider];
    seriesTitle = [propertyProvider8 seriesTitle];

    if ([seriesTitle length])
    {
      v29 = [seriesTitle copy];
      [v7 setObject:v29 forKeyedSubscript:@"series"];
    }

    propertyProvider9 = [(AEAssetBaseActivityItemProvider *)self propertyProvider];
    isStoreAsset = [propertyProvider9 isStoreAsset];

    if (isStoreAsset)
    {
      propertyProvider10 = [(AEAssetBaseActivityItemProvider *)self propertyProvider];
      storeURL = [propertyProvider10 storeURL];

      if (storeURL)
      {
        propertyProvider11 = [(AEAssetBaseActivityItemProvider *)self propertyProvider];
        storeURL2 = [propertyProvider11 storeURL];
        [v7 setObject:storeURL2 forKeyedSubscript:@"url"];
      }
    }

    v40 = 0;
    v36 = [NSKeyedArchiver archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v40];
    v37 = v40;
    if (!v36 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1E737C();
    }
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type
{
  typeCopy = type;
  if (([typeCopy isEqualToString:UIActivityTypeSaveToNotes] & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", @"com.apple.Notes.SharingExtension"))
  {
    v5 = @"com.apple.notes.share-metadata";
  }

  else
  {
    v5 = &stru_2D2930;
  }

  return v5;
}

@end