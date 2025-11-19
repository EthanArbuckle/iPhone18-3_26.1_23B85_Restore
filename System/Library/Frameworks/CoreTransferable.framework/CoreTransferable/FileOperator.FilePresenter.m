@interface FileOperator.FilePresenter
- (NSURL)presentedItemURL;
- (_TtCC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator13FilePresenter)init;
- (void)dealloc;
- (void)setPresentedItemOperationQueue:(id)a3;
- (void)setPresentedItemURL:(id)a3;
@end

@implementation FileOperator.FilePresenter

- (NSURL)presentedItemURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = OBJC_IVAR____TtCC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator13FilePresenter_presentedItemURL;
  swift_beginAccess();
  outlined init with copy of UTType?(self + v7, v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
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

- (void)setPresentedItemURL:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  if (a3)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = OBJC_IVAR____TtCC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator13FilePresenter_presentedItemURL;
  swift_beginAccess();
  v12 = self;
  outlined assign with take of URL?(v8, self + v11);
  swift_endAccess();
}

- (void)setPresentedItemOperationQueue:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtCC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator13FilePresenter_presentedItemOperationQueue);
  *(self + OBJC_IVAR____TtCC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator13FilePresenter_presentedItemOperationQueue) = a3;
  v3 = a3;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  v5 = self;
  [v4 removeFilePresenter_];
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(FileOperator.FilePresenter *)&v6 dealloc];
}

- (_TtCC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator13FilePresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end