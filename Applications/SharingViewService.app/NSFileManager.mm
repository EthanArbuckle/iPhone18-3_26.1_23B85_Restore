@interface NSFileManager
+ (id)sharingContainerURL;
@end

@implementation NSFileManager

+ (id)sharingContainerURL
{
  v2 = sub_100005DCC(&qword_1001BA7B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  sub_100020000(&v12 - v3);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v4, 1, v5);
  v8 = 0;
  if (v7 != 1)
  {
    URL._bridgeToObjectiveC()(v7);
    v10 = v9;
    (*(v6 + 8))(v4, v5);
    v8 = v10;
  }

  return v8;
}

@end