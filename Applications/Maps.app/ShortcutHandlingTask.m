@interface ShortcutHandlingTask
+ (id)taskForShortcutItem:(id)a3;
- (ShortcutHandlingTask)initWithShortcutItem:(id)a3;
- (void)taskFinished:(id)a3;
@end

@implementation ShortcutHandlingTask

- (void)taskFinished:(id)a3
{
  v4.receiver = self;
  v4.super_class = ShortcutHandlingTask;
  [(RichMapsActivityCreatingTaskImpl *)&v4 taskFinished:a3];
  [GEOAPPortal captureUserAction:[(ShortcutHandlingTask *)self analyticsActionType] target:0 value:0];
}

- (ShortcutHandlingTask)initWithShortcutItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ShortcutHandlingTask;
  v6 = [(ShortcutHandlingTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, a3);
  }

  return v7;
}

+ (id)taskForShortcutItem:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v7 = 0;
    goto LABEL_13;
  }

  v5 = [v3 type];
  if (([&off_1016EDA18 containsObject:v5] & 1) == 0)
  {
    v8 = sub_100005610();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v5;
      v9 = "Shortcut item type unknown %@";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v9, &v11, 0xCu);
    }

LABEL_11:

    v7 = 0;
    goto LABEL_12;
  }

  if (![v5 isEqualToString:@"com.apple.Maps.mark-my-location"] && !objc_msgSend(v5, "isEqualToString:", @"com.apple.Maps.action.mark-my-location-from-app-delegate"))
  {
    if ([v5 isEqualToString:@"com.apple.Maps.share-location"] || objc_msgSend(v5, "isEqualToString:", @"com.apple.Maps.action.share-location-from-app-delegate"))
    {
      v6 = _ShareUserLocationShortcutHandlingTask;
      goto LABEL_6;
    }

    if ([v5 isEqualToString:@"com.apple.Maps.search-nearby"])
    {
      v6 = _SearchNearbyShortcutHandlingTask;
      goto LABEL_6;
    }

    v8 = sub_100005610();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v5;
      v9 = "Shortcut item type not handled %@";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v6 = _MarkUserLocationShortcutHandlingTask;
LABEL_6:
  v7 = [[v6 alloc] initWithShortcutItem:v4];
LABEL_12:

LABEL_13:

  return v7;
}

@end