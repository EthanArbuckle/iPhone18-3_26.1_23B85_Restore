@interface TPSChecklistViewModel
- (BOOL)hasContent;
- (NSArray)currentDisplayTips;
- (NSArray)tips;
- (NSString)selectedTipIdentifier;
- (id)actionHandler;
- (id)assetsBaseURLFor:(id)a3;
- (id)bodyContentFor:(id)a3;
- (id)firstTip;
- (id)subtitleFor:(id)a3;
- (id)symbolIdentifierFor:(id)a3;
- (id)tipWithIdentifier:(id)a3;
- (id)titleFor:(id)a3;
- (int64_t)suggestedTipsCount;
- (void)reset;
- (void)setActionHandler:(id)a3;
- (void)setCollection:(id)a3;
- (void)setCurrentDisplayTips:(id)a3;
- (void)setCurrentTip:(id)a3;
- (void)setSelectedTipIdentifier:(id)a3;
- (void)updateSelectionIfNeeded;
- (void)updateTips;
@end

@implementation TPSChecklistViewModel

- (void)setCollection:(id)a3
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a3;
  v6 = self;
  v7 = v5;
  static Published.subscript.setter();
  sub_100024904();
}

- (NSString)selectedTipIdentifier
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  static Published.subscript.getter();

  if (v6)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSelectedTipIdentifier:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_100024DD8(v4, v6);
}

- (void)setCurrentTip:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100025098(a3);
}

- (NSArray)tips
{
  v2 = self;
  sub_1000255F0();

  sub_10001AC14(0, &qword_1000B30C8, TPSTip_ptr);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (NSArray)currentDisplayTips
{
  if (*(self + OBJC_IVAR___TPSChecklistViewModel_currentDisplayTips))
  {
    sub_10001AC14(0, &qword_1000B30C8, TPSTip_ptr);

    v2.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  return v2.super.isa;
}

- (void)setCurrentDisplayTips:(id)a3
{
  if (a3)
  {
    sub_10001AC14(0, &qword_1000B30C8, TPSTip_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = *(self + OBJC_IVAR___TPSChecklistViewModel_currentDisplayTips);
  *(self + OBJC_IVAR___TPSChecklistViewModel_currentDisplayTips) = v4;
}

- (id)actionHandler
{
  if (*(self + OBJC_IVAR___TPSChecklistViewModel_actionHandler))
  {
    v2 = *(self + OBJC_IVAR___TPSChecklistViewModel_actionHandler + 8);
    v5[4] = *(self + OBJC_IVAR___TPSChecklistViewModel_actionHandler);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100032D1C;
    v5[3] = &unk_1000A37E0;
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
    v6 = sub_100029480;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___TPSChecklistViewModel_actionHandler);
  v8 = *(self + OBJC_IVAR___TPSChecklistViewModel_actionHandler);
  v9 = *(self + OBJC_IVAR___TPSChecklistViewModel_actionHandler + 8);
  *v7 = v6;
  v7[1] = v4;
  v10 = self;
  sub_10001E970(v8);
}

- (BOOL)hasContent
{
  v2 = self;
  v3 = sub_100025978();

  return v3 & 1;
}

- (int64_t)suggestedTipsCount
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  static Published.subscript.getter();

  if (v6)
  {
    if (v6 >> 62)
    {
      v4 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v4 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateTips
{
  v2 = self;
  sub_100025B08();
}

- (id)tipWithIdentifier:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8 = sub_100026408(v4, v6);

  return v8;
}

- (void)updateSelectionIfNeeded
{
  v2 = self;
  sub_1000268CC();
}

- (id)firstTip
{
  v2 = self;
  v3 = sub_100026BB0();

  return v3;
}

- (void)reset
{
  v2 = self;
  sub_100024DD8(0, 0);
  sub_100025098(0);
}

- (id)assetsBaseURLFor:(id)a3
{
  v5 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v18 - v7;
  v9 = a3;
  v10 = self;
  sub_100027A38(v9, v8);

  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v8, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    URL._bridgeToObjectiveC()(v13);
    v16 = v15;
    (*(v12 + 8))(v8, v11);
    v14 = v16;
  }

  return v14;
}

- (id)titleFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [v4 checklistContent];
  if (v6 && (v7 = v6, v8 = [v6 title], v7, v8))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  v9 = String._bridgeToObjectiveC()();

  return v9;
}

- (id)subtitleFor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100027E1C(v4);

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

- (id)bodyContentFor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100029020(v4);

  sub_10001B4A4(&qword_1000B31C8, &qword_100078040);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (id)symbolIdentifierFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [v4 checklistContent];
  if (v6 && (v7 = v6, v8 = [v6 assets], v7, v8) && (v9 = objc_msgSend(v8, "symbolId"), v8, v9))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  v10 = String._bridgeToObjectiveC()();

  return v10;
}

@end