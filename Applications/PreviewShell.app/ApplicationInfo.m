@interface ApplicationInfo
- (NSURL)executableURL;
- (void)_loadFromProxy:(id)a3;
@end

@implementation ApplicationInfo

- (void)_loadFromProxy:(id)a3
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ApplicationInfo();
  [(ApplicationInfo *)&v4 _loadFromProxy:a3];
}

- (NSURL)executableURL
{
  v3 = sub_100004C60(&qword_10006F308, &qword_10004E048);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  v7 = self;
  sub_1000151AC(v6);

  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    URL._bridgeToObjectiveC()(v10);
    v13 = v12;
    (*(v9 + 8))(v6, v8);
    v11 = v13;
  }

  return v11;
}

@end