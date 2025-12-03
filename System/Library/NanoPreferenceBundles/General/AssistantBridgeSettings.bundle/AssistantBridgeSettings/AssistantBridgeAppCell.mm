@interface AssistantBridgeAppCell
+ (id)_iconCache;
- (id)blankIcon;
- (id)getLazyIcon;
@end

@implementation AssistantBridgeAppCell

+ (id)_iconCache
{
  if (qword_156B8 != -1)
  {
    sub_91B0();
  }

  v3 = qword_156B0;

  return v3;
}

- (id)blankIcon
{
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_91C4();
  }

  getLazyIconID = [(AssistantBridgeAppCell *)self getLazyIconID];
  v4 = +[AssistantBridgeAppCell _iconCache];
  blankIcon = [v4 objectForKey:getLazyIconID];

  if (!blankIcon)
  {
    v11.receiver = self;
    v11.super_class = AssistantBridgeAppCell;
    blankIcon = [(AssistantBridgeAppCell *)&v11 blankIcon];
  }

  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  v7 = [WeakRetained propertyForKey:PSIconImageShouldFlipForRightToLeftKey];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    imageFlippedForRightToLeftLayoutDirection = [blankIcon imageFlippedForRightToLeftLayoutDirection];

    blankIcon = imageFlippedForRightToLeftLayoutDirection;
  }

  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_9244();
  }

  return blankIcon;
}

- (id)getLazyIcon
{
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_92CC();
  }

  v24 = 0;
  v25[0] = &v24;
  v25[1] = 0x3032000000;
  v25[2] = sub_8A08;
  v25[3] = sub_8A18;
  v26 = 0;
  getLazyIconID = [(AssistantBridgeAppCell *)self getLazyIconID];
  v4 = +[AssistantBridgeAppCell _iconCache];
  v5 = [v4 objectForKey:getLazyIconID];
  v6 = *(v25[0] + 40);
  *(v25[0] + 40) = v5;

  if (!*(v25[0] + 40))
  {
    v7 = +[UIScreen mainScreen];
    traitCollection = [v7 traitCollection];
    [traitCollection displayScale];
    v10 = v9;

    v11 = dispatch_semaphore_create(0);
    v12 = +[NanoResourceGrabber sharedInstance];
    if (v10 <= 2.0)
    {
      v13 = 47;
    }

    else
    {
      v13 = 48;
    }

    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_8A20;
    v21 = &unk_107F0;
    v23 = &v24;
    v14 = v11;
    v22 = v14;
    [v12 getIconForBundleID:getLazyIconID iconVariant:v13 block:&v18 timeout:60.0];

    dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
    if (*(v25[0] + 40))
    {
      v15 = [AssistantBridgeAppCell _iconCache:v18];
      [v15 setObject:*(v25[0] + 40) forKey:getLazyIconID];
    }
  }

  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_934C(v25);
  }

  v16 = *(v25[0] + 40);

  _Block_object_dispose(&v24, 8);

  return v16;
}

@end