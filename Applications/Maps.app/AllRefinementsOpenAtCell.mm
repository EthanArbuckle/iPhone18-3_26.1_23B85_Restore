@interface AllRefinementsOpenAtCell
+ (NSString)reuseIdentifier;
- (id)dateSelectionHandler;
- (void)datePickedValueChanged:(id)a3;
- (void)datePickerTapped:(id)a3;
- (void)setDateSelectionHandler:(id)a3;
- (void)shouldEnableControl:(BOOL)a3;
- (void)updateForSizeClassChange;
- (void)updatedContentsWithTime:(double)a3 displayName:(id)a4 openAtSelected:(BOOL)a5;
@end

@implementation AllRefinementsOpenAtCell

+ (NSString)reuseIdentifier
{
  swift_getObjCClassMetadata();
  sub_1000CE6B8(&qword_1019266E8);
  String.init<A>(describing:)();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (id)dateSelectionHandler
{
  if (*(self + OBJC_IVAR____TtC4Maps24AllRefinementsOpenAtCell_dateSelectionHandler))
  {
    v2 = *(self + OBJC_IVAR____TtC4Maps24AllRefinementsOpenAtCell_dateSelectionHandler + 8);
    v5[4] = *(self + OBJC_IVAR____TtC4Maps24AllRefinementsOpenAtCell_dateSelectionHandler);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100543994;
    v5[3] = &unk_101620A88;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDateSelectionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1005450B0;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC4Maps24AllRefinementsOpenAtCell_dateSelectionHandler);
  v8 = *(self + OBJC_IVAR____TtC4Maps24AllRefinementsOpenAtCell_dateSelectionHandler);
  *v7 = v6;
  v7[1] = v4;
  v9 = self;
  sub_1000588AC(v8);
}

- (void)updatedContentsWithTime:(double)a3 displayName:(id)a4 openAtSelected:(BOOL)a5
{
  v5 = a5;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = self;
  sub_1005444B4(a3, v8, v10, v5);
}

- (void)datePickedValueChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100544820(v4);
}

- (void)datePickerTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100544890(v4);
}

- (void)shouldEnableControl:(BOOL)a3
{
  v3 = a3;
  v6 = self;
  v4 = sub_1005436D4();
  [v4 setEnabled:v3];

  v5 = sub_100543770();
  [v5 setUserInteractionEnabled:v3];
}

- (void)updateForSizeClassChange
{
  v3 = type metadata accessor for UIListContentConfiguration.TextProperties();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UIListContentConfiguration();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = self;
  static UIListContentConfiguration.cell()();
  v12 = sub_1005436D4();
  UIListContentConfiguration.textProperties.getter();
  v13 = UIListContentConfiguration.TextProperties.font.getter();
  (*(v4 + 8))(v6, v3);
  [v12 setFont:v13];

  (*(v8 + 8))(v10, v7);
}

@end