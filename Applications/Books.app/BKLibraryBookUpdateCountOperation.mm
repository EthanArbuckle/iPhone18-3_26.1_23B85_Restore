@interface BKLibraryBookUpdateCountOperation
- (BKLibraryBookUpdateCountOperation)init;
- (BKLibraryBookUpdateCountOperation)initWithLibraryAssetProvider:(id)provider updatesURL:(id)l;
- (NSDictionary)result;
- (void)main;
- (void)setResult:(id)result;
@end

@implementation BKLibraryBookUpdateCountOperation

- (NSDictionary)result
{
  v3 = OBJC_IVAR___BKLibraryBookUpdateCountOperation_result;
  swift_beginAccess();
  if (*(self + v3))
  {

    v4.super.isa = sub_1007A2024().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)setResult:(id)result
{
  if (result)
  {
    v4 = sub_1007A2044();
  }

  else
  {
    v4 = 0;
  }

  v5 = OBJC_IVAR___BKLibraryBookUpdateCountOperation_result;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (BKLibraryBookUpdateCountOperation)initWithLibraryAssetProvider:(id)provider updatesURL:(id)l
{
  v6 = sub_1007969B4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796974();
  *(self + OBJC_IVAR___BKLibraryBookUpdateCountOperation_result) = 0;
  *(self + OBJC_IVAR___BKLibraryBookUpdateCountOperation_libraryAssetProvider) = provider;
  (*(v7 + 16))(self + OBJC_IVAR___BKLibraryBookUpdateCountOperation_updatesURL, v9, v6);
  updated = type metadata accessor for LibraryBookUpdateCountOperation();
  v13.receiver = self;
  v13.super_class = updated;
  swift_unknownObjectRetain();
  v11 = [(BKLibraryBookUpdateCountOperation *)&v13 init];
  (*(v7 + 8))(v9, v6);
  return v11;
}

- (void)main
{
  selfCopy = self;
  LibraryBookUpdateCountOperation.main()();
}

- (BKLibraryBookUpdateCountOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end