@interface VOTNameSearcherAppSource
- (VOTNameSearcherAppSource)initWithLaunchContext:(int)a3;
- (id)messageForMatchingItemsCount:(int64_t)a3;
- (id)messageForSelectingItem:(id)a3;
- (void)retrieveAllEntries:(id)a3;
@end

@implementation VOTNameSearcherAppSource

- (VOTNameSearcherAppSource)initWithLaunchContext:(int)a3
{
  v3 = *&a3;
  v8.receiver = self;
  v8.super_class = VOTNameSearcherAppSource;
  v4 = [(VOTNameSearcherAppSource *)&v8 init];
  v5 = v4;
  if (v4)
  {
    [(VOTNameSearcherAppSource *)v4 setLaunchContext:v3];
    v6 = v5;
  }

  return v5;
}

- (void)retrieveAllEntries:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = +[VOTElement springBoardApplication];
  v7 = [v6 appIconValues];

  if (![(VOTNameSearcherAppSource *)self launchContext])
  {
    v8 = +[VOTElement springBoardApplication];
    v9 = [v8 launchableApps];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10003D320;
    v19[3] = &unk_1001C82E0;
    v10 = &v20;
    v20 = v7;
    v11 = &v21;
    v21 = v5;
    v12 = v19;
    goto LABEL_5;
  }

  if ([(VOTNameSearcherAppSource *)self launchContext]== 1)
  {
    v8 = +[VOTElement springBoardApplication];
    v9 = [v8 appSwitcherApps];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_10003D3D8;
    v16 = &unk_1001C82E0;
    v10 = &v17;
    v17 = v7;
    v11 = &v18;
    v18 = v5;
    v12 = &v13;
LABEL_5:
    [v9 enumerateKeysAndObjectsUsingBlock:{v12, v13, v14, v15, v16}];
  }

  [v5 sortUsingComparator:&stru_1001C8320];
  [v4 didRetrieveAllEntries:v5];
}

- (id)messageForMatchingItemsCount:(int64_t)a3
{
  v4 = sub_1000511CC(off_1001FDDD0, @"handwrite.num.matching.apps.count", 0);
  v5 = [NSString localizedStringWithFormat:v4, a3];

  return v5;
}

- (id)messageForSelectingItem:(id)a3
{
  v3 = off_1001FDDD0;
  v4 = a3;
  v5 = sub_1000511CC(v3, @"handwrite.launch.app", 0);
  v6 = [NSString stringWithFormat:v5, v4];

  return v6;
}

@end