@interface TranscriptView
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (_TtC10VoiceMemos14TranscriptView)initWithFrame:(CGRect)frame;
- (void)didMoveToSuperview;
- (void)didReceivePan:(id)pan;
- (void)didReceiveTap:(id)tap;
- (void)layoutSubviews;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)searchButtonTapped;
- (void)selectAll:(id)all;
@end

@implementation TranscriptView

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for TranscriptView();
  v2 = v4.receiver;
  [(TranscriptView *)&v4 didMoveToSuperview];
  superview = [v2 superview];
  if (superview)
  {
  }

  else
  {
    [*&v2[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textView] setSelectedRange:{0, 0}];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TranscriptView();
  v2 = v3.receiver;
  [(TranscriptView *)&v3 layoutSubviews];
  sub_100170A40();
}

- (void)didReceiveTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  sub_1001710CC(tapCopy);
}

- (void)didReceivePan:(id)pan
{
  sub_1000CC430(self + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_controller, v10);
  sub_10000AACC(v10, v10[3]);
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textView);
  panCopy = pan;
  selfCopy = self;
  [panCopy velocityInView:v5];
  sub_10017EAF0(v8, v9);

  sub_100014B64(v10);
}

- (void)searchButtonTapped
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textView);
  selfCopy = self;
  findInteraction = [v2 findInteraction];
  if (findInteraction)
  {
    v4 = findInteraction;
    [findInteraction presentFindNavigatorShowingReplace:0];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textView);
  selfCopy = self;
  if (([v3 isScrollAnimating] & 1) == 0)
  {
    sub_10017191C();
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  selfCopy = self;
  panGestureRecognizer = [draggingCopy panGestureRecognizer];
  [panGestureRecognizer velocityInView:draggingCopy];
  v7 = v6;
  v9 = v8;

  sub_10000AACC((&selfCopy->super.super.super.isa + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_controller), *&selfCopy->controller[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_controller + 16]);
  sub_10017EB84(v7, v9);
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  selfCopy = self;
  sub_100172810();
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  selfCopy = self;
  sub_10017191C();
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = sub_100171B10(beginCopy);

  return self & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = sub_100171C50(recognizerCopy);

  return v9;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = sub_100171EEC(action, v10);

  sub_100003CBC(v10, &qword_1002D06A8);
  return v8 & 1;
}

- (void)selectAll:(id)all
{
  if (all)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_1001721D4(v6);

  sub_100003CBC(v6, &qword_1002D06A8);
}

- (_TtC10VoiceMemos14TranscriptView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end