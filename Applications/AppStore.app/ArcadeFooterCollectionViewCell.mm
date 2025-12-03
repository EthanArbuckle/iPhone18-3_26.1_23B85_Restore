@interface ArcadeFooterCollectionViewCell
- (void)buttonTapped;
- (void)didTapFootnoteWithGestureRecognizer:(id)recognizer;
- (void)layoutSubviews;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation ArcadeFooterCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1006049E8();
}

- (void)buttonTapped
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_buttonActionBlock);
  if (v2)
  {
    selfCopy = self;
    v4 = sub_10000827C(v2);
    v2(v4);

    sub_10001F63C(v2);
  }
}

- (void)didTapFootnoteWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  sub_1006066B4();
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_100005744(0, &qword_100981660);
  sub_10008DB40();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  eventCopy = event;
  selfCopy = self;
  sub_10060536C(v6, event);
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  sub_100005744(0, &qword_100981660);
  sub_10008DB40();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteView);
  *(v6 + OBJC_IVAR____TtC8AppStore12FootnoteView_isHighlighted) = 0;
  v7 = qword_10096CF38;
  eventCopy = event;
  selfCopy = self;
  if (v7 != -1)
  {
    swift_once();
  }

  [*(v6 + OBJC_IVAR____TtC8AppStore12FootnoteView_textLabel) setTextColor:qword_1009725B8];
  isa = Set._bridgeToObjectiveC()().super.isa;

  v11.receiver = selfCopy;
  v11.super_class = type metadata accessor for ArcadeFooterCollectionViewCell();
  [(ArcadeFooterCollectionViewCell *)&v11 touchesEnded:isa withEvent:eventCopy];
}

@end