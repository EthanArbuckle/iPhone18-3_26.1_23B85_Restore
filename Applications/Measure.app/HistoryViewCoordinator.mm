@interface HistoryViewCoordinator
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (id)copyWithZone:(void *)zone;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)scrollViewDidScroll:(id)scroll;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didEndEditingRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willBeginEditingRowAtIndexPath:(id)path;
@end

@implementation HistoryViewCoordinator

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_10015A650();
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
  {
    return 0;
  }

  v5 = qword_1004AB560;
  swift_beginAccess();
  return *(*(self + v5) + 16);
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_100153E50(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_1001545B4(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = *(v6 + 8);
  selfCopy = self;
  v9(v8, v5);
  LOBYTE(self) = *(*(selfCopy + qword_1004AB590) + OBJC_IVAR____TtC7Measure23CardContainerController_isPanningCard);

  return (self & 1) == 0;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_10015532C(viewCopy, style, v11);

  (*(v9 + 8))(v11, v8);
}

- (void)tableView:(id)view willBeginEditingRowAtIndexPath:(id)path
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = *(v6 + 8);
  selfCopy = self;
  v9(v8, v5);
  *(selfCopy + qword_1004AB598) = 1;
}

- (void)tableView:(id)view didEndEditingRowAtIndexPath:(id)path
{
  v6 = sub_10000F974(&unk_1004ABA88);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  if (path)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for IndexPath();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for IndexPath();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  selfCopy = self;
  sub_100018F04(v8, &unk_1004ABA88);
  *(selfCopy + qword_1004AB598) = 0;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_10015A818();
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_100157818(v6);

  sub_10000FEBC(v6, v6[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_10000FF00(v6);
  return v4;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_100157984(recognizerCopy, touchCopy);

  return v9 & 1;
}

@end