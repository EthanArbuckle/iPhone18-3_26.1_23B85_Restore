@interface REChromeStyle
- (double)menuBottomInset;
@end

@implementation REChromeStyle

- (double)menuBottomInset
{
  v3 = sub_10079CEE4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_10079B9A4();

  (*(v4 + 104))(v6, enum case for UserInterfaceSizeClass.compact(_:), v3);
  v11 = sub_10079CED4();

  v12 = *(v4 + 8);
  v12(v6, v3);
  v12(v9, v3);
  result = 20.0;
  if (v11)
  {
    return 17.0;
  }

  return result;
}

@end