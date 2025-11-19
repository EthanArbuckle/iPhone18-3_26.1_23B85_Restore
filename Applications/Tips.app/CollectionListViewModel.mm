@interface CollectionListViewModel
- (BOOL)hasCollections;
- (BOOL)isChecklistFeatured;
- (BOOL)shouldDisplayBadgeFor:(id)a3;
- (BOOL)shouldDisplayCheckmarkFor:(id)a3;
- (NSArray)userGuides;
- (TPSAssetsInfo)featuredCollectionAssetsInfo;
- (TPSChecklistViewModel)checklistViewModel;
- (id)actionHandler;
- (id)assetsInfoFor:(id)a3;
- (id)assetsInfoFor:(id)a3 userInterfaceStyle:(int64_t)a4;
- (id)checklistHandler;
- (id)supportFlowHandler;
- (id)titleFor:(id)a3;
- (id)userGuideHandler;
- (int64_t)tipCountFor:(id)a3;
- (void)resetChecklist;
- (void)setActionHandler:(id)a3;
- (void)setChecklistCollection:(id)a3;
- (void)setChecklistHandler:(id)a3;
- (void)setChecklistViewModel:(id)a3;
- (void)setCurrentCollectionID:(id)a3;
- (void)setSelectedCollectionID:(id)a3;
- (void)setSelectedItemID:(id)a3;
- (void)setSupportFlowHandler:(id)a3;
- (void)setUserGuideHandler:(id)a3;
- (void)setUserGuides:(id)a3;
@end

@implementation CollectionListViewModel

- (void)setCurrentCollectionID:(id)a3
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  static Published.subscript.setter();
  sub_10002E098(v6, v7);
}

- (void)setSelectedItemID:(id)a3
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  static Published.subscript.setter();
  sub_10002E43C();
}

- (void)setSelectedCollectionID:(id)a3
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v6 = self;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v5)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v6;
    static Published.subscript.setter();
    sub_10002E43C();
  }
}

- (void)setChecklistCollection:(id)a3
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a3;
  v6 = self;
  v7 = v5;
  static Published.subscript.setter();
  sub_10002ECBC();
}

- (TPSChecklistViewModel)checklistViewModel
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  static Published.subscript.getter();

  return v5;
}

- (void)setChecklistViewModel:(id)a3
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a3;
  v6 = self;
  static Published.subscript.setter();
}

- (NSArray)userGuides
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  static Published.subscript.getter();

  type metadata accessor for UserGuide();
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (void)setUserGuides:(id)a3
{
  type metadata accessor for UserGuide();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  static Published.subscript.setter();
}

- (BOOL)isChecklistFeatured
{
  v2 = self;
  v3 = sub_10002F6BC();

  return v3 & 1;
}

- (id)actionHandler
{
  if (*(self + OBJC_IVAR___CollectionListViewModel_actionHandler))
  {
    v2 = *(self + OBJC_IVAR___CollectionListViewModel_actionHandler + 8);
    v5[4] = *(self + OBJC_IVAR___CollectionListViewModel_actionHandler);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_10002F8F8;
    v5[3] = &unk_1000A39E8;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setActionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_100032C9C;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___CollectionListViewModel_actionHandler);
  v8 = *(self + OBJC_IVAR___CollectionListViewModel_actionHandler);
  v9 = *(self + OBJC_IVAR___CollectionListViewModel_actionHandler + 8);
  *v7 = v6;
  v7[1] = v4;
  v10 = self;
  sub_10001E970(v8);
}

- (id)checklistHandler
{
  if (*(self + OBJC_IVAR___CollectionListViewModel_checklistHandler))
  {
    v2 = *(self + OBJC_IVAR___CollectionListViewModel_checklistHandler + 8);
    v5[4] = *(self + OBJC_IVAR___CollectionListViewModel_checklistHandler);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100032D1C;
    v5[3] = &unk_1000A3998;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setChecklistHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_100032D18;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___CollectionListViewModel_checklistHandler);
  v8 = *(self + OBJC_IVAR___CollectionListViewModel_checklistHandler);
  v9 = *(self + OBJC_IVAR___CollectionListViewModel_checklistHandler + 8);
  *v7 = v6;
  v7[1] = v4;
  v10 = self;
  sub_10001E970(v8);
}

- (id)userGuideHandler
{
  if (*(self + OBJC_IVAR___CollectionListViewModel_userGuideHandler))
  {
    v2 = *(self + OBJC_IVAR___CollectionListViewModel_userGuideHandler + 8);
    v5[4] = *(self + OBJC_IVAR___CollectionListViewModel_userGuideHandler);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100032D1C;
    v5[3] = &unk_1000A3948;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUserGuideHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_100032C88;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___CollectionListViewModel_userGuideHandler);
  v8 = *(self + OBJC_IVAR___CollectionListViewModel_userGuideHandler);
  v9 = *(self + OBJC_IVAR___CollectionListViewModel_userGuideHandler + 8);
  *v7 = v6;
  v7[1] = v4;
  v10 = self;
  sub_10001E970(v8);
}

- (id)supportFlowHandler
{
  if (*(self + OBJC_IVAR___CollectionListViewModel_supportFlowHandler))
  {
    v2 = *(self + OBJC_IVAR___CollectionListViewModel_supportFlowHandler + 8);
    v5[4] = *(self + OBJC_IVAR___CollectionListViewModel_supportFlowHandler);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_10002FE2C;
    v5[3] = &unk_1000A38F8;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSupportFlowHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_100032C68;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___CollectionListViewModel_supportFlowHandler);
  v8 = *(self + OBJC_IVAR___CollectionListViewModel_supportFlowHandler);
  v9 = *(self + OBJC_IVAR___CollectionListViewModel_supportFlowHandler + 8);
  *v7 = v6;
  v7[1] = v4;
  v10 = self;
  sub_10001E970(v8);
}

- (BOOL)hasCollections
{
  v2 = self;
  v3 = sub_10002FFE4();

  return v3 & 1;
}

- (void)resetChecklist
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  static Published.subscript.getter();

  sub_100024DD8(0, 0);
  sub_100025098(0);
}

- (TPSAssetsInfo)featuredCollectionAssetsInfo
{
  v2 = self;
  v3 = sub_100031874();

  return v3;
}

- (id)titleFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [v4 title];
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  v8 = String._bridgeToObjectiveC()();

  return v8;
}

- (int64_t)tipCountFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100031B44(v4);

  return v6;
}

- (BOOL)shouldDisplayBadgeFor:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_100031D54(v4);

  return self & 1;
}

- (BOOL)shouldDisplayCheckmarkFor:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_100031F14(v4);

  return self & 1;
}

- (id)assetsInfoFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100032050(v4);

  return v6;
}

- (id)assetsInfoFor:(id)a3 userInterfaceStyle:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_100032390(v6, a4);

  return v8;
}

@end