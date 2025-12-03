@interface AllRefinementsOpenAtCell
+ (NSString)reuseIdentifier;
- (id)dateSelectionHandler;
- (void)datePickedValueChanged:(id)changed;
- (void)datePickerTapped:(id)tapped;
- (void)setDateSelectionHandler:(id)handler;
- (void)shouldEnableControl:(BOOL)control;
- (void)updateForSizeClassChange;
- (void)updatedContentsWithTime:(double)time displayName:(id)name openAtSelected:(BOOL)selected;
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

- (void)setDateSelectionHandler:(id)handler
{
  v4 = _Block_copy(handler);
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
  selfCopy = self;
  sub_1000588AC(v8);
}

- (void)updatedContentsWithTime:(double)time displayName:(id)name openAtSelected:(BOOL)selected
{
  selectedCopy = selected;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  selfCopy = self;
  sub_1005444B4(time, v8, v10, selectedCopy);
}

- (void)datePickedValueChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_100544820(changedCopy);
}

- (void)datePickerTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_100544890(tappedCopy);
}

- (void)shouldEnableControl:(BOOL)control
{
  controlCopy = control;
  selfCopy = self;
  v4 = sub_1005436D4();
  [v4 setEnabled:controlCopy];

  v5 = sub_100543770();
  [v5 setUserInteractionEnabled:controlCopy];
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
  selfCopy = self;
  static UIListContentConfiguration.cell()();
  v12 = sub_1005436D4();
  UIListContentConfiguration.textProperties.getter();
  v13 = UIListContentConfiguration.TextProperties.font.getter();
  (*(v4 + 8))(v6, v3);
  [v12 setFont:v13];

  (*(v8 + 8))(v10, v7);
}

@end