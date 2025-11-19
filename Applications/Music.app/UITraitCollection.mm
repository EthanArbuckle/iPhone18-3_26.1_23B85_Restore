@interface UITraitCollection
- (BOOL)shouldLimitMusicLists;
@end

@implementation UITraitCollection

- (BOOL)shouldLimitMusicLists
{
  v3 = type metadata accessor for CPUILimitedUserInterfaces();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  if (UITraitCollection.isLimitedUI.getter())
  {
    v8 = UITraitCollection.limitedUserInterfaces.getter();
    (*(v4 + 104))(v6, enum case for CPUILimitedUserInterfaces.musicLists(_:), v3);
    v9 = sub_10048B7D0(v6, v8);

    (*(v4 + 8))(v6, v3);
  }

  else
  {

    v9 = 0;
  }

  return v9 & 1;
}

@end