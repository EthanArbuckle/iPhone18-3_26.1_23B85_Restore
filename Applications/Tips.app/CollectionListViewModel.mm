@interface CollectionListViewModel
- (BOOL)hasCollections;
- (BOOL)isChecklistFeatured;
- (BOOL)shouldDisplayBadgeFor:(id)for;
- (BOOL)shouldDisplayCheckmarkFor:(id)for;
- (NSArray)userGuides;
- (TPSAssetsInfo)featuredCollectionAssetsInfo;
- (TPSChecklistViewModel)checklistViewModel;
- (id)actionHandler;
- (id)assetsInfoFor:(id)for;
- (id)assetsInfoFor:(id)for userInterfaceStyle:(int64_t)style;
- (id)checklistHandler;
- (id)supportFlowHandler;
- (id)titleFor:(id)for;
- (id)userGuideHandler;
- (int64_t)tipCountFor:(id)for;
- (void)resetChecklist;
- (void)setActionHandler:(id)handler;
- (void)setChecklistCollection:(id)collection;
- (void)setChecklistHandler:(id)handler;
- (void)setChecklistViewModel:(id)model;
- (void)setCurrentCollectionID:(id)d;
- (void)setSelectedCollectionID:(id)d;
- (void)setSelectedItemID:(id)d;
- (void)setSupportFlowHandler:(id)handler;
- (void)setUserGuideHandler:(id)handler;
- (void)setUserGuides:(id)guides;
@end

@implementation CollectionListViewModel

- (void)setCurrentCollectionID:(id)d
{
  if (d)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v5 = selfCopy;
  static Published.subscript.setter();
  sub_10002E098(v6, v7);
}

- (void)setSelectedItemID:(id)d
{
  if (d)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.setter();
  sub_10002E43C();
}

- (void)setSelectedCollectionID:(id)d
{
  if (d)
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
  selfCopy = self;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v5)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    selfCopy;
    static Published.subscript.setter();
    sub_10002E43C();
  }
}

- (void)setChecklistCollection:(id)collection
{
  swift_getKeyPath();
  swift_getKeyPath();
  collectionCopy = collection;
  selfCopy = self;
  v7 = collectionCopy;
  static Published.subscript.setter();
  sub_10002ECBC();
}

- (TPSChecklistViewModel)checklistViewModel
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.getter();

  return v5;
}

- (void)setChecklistViewModel:(id)model
{
  swift_getKeyPath();
  swift_getKeyPath();
  modelCopy = model;
  selfCopy = self;
  static Published.subscript.setter();
}

- (NSArray)userGuides
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.getter();

  type metadata accessor for UserGuide();
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (void)setUserGuides:(id)guides
{
  type metadata accessor for UserGuide();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.setter();
}

- (BOOL)isChecklistFeatured
{
  selfCopy = self;
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

- (void)setActionHandler:(id)handler
{
  v4 = _Block_copy(handler);
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
  selfCopy = self;
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

- (void)setChecklistHandler:(id)handler
{
  v4 = _Block_copy(handler);
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
  selfCopy = self;
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

- (void)setUserGuideHandler:(id)handler
{
  v4 = _Block_copy(handler);
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
  selfCopy = self;
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

- (void)setSupportFlowHandler:(id)handler
{
  v4 = _Block_copy(handler);
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
  selfCopy = self;
  sub_10001E970(v8);
}

- (BOOL)hasCollections
{
  selfCopy = self;
  v3 = sub_10002FFE4();

  return v3 & 1;
}

- (void)resetChecklist
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.getter();

  sub_100024DD8(0, 0);
  sub_100025098(0);
}

- (TPSAssetsInfo)featuredCollectionAssetsInfo
{
  selfCopy = self;
  v3 = sub_100031874();

  return v3;
}

- (id)titleFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  title = [forCopy title];
  if (title)
  {
    v7 = title;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  v8 = String._bridgeToObjectiveC()();

  return v8;
}

- (int64_t)tipCountFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v6 = sub_100031B44(forCopy);

  return v6;
}

- (BOOL)shouldDisplayBadgeFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  LOBYTE(self) = sub_100031D54(forCopy);

  return self & 1;
}

- (BOOL)shouldDisplayCheckmarkFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  LOBYTE(self) = sub_100031F14(forCopy);

  return self & 1;
}

- (id)assetsInfoFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v6 = sub_100032050(forCopy);

  return v6;
}

- (id)assetsInfoFor:(id)for userInterfaceStyle:(int64_t)style
{
  forCopy = for;
  selfCopy = self;
  v8 = sub_100032390(forCopy, style);

  return v8;
}

@end