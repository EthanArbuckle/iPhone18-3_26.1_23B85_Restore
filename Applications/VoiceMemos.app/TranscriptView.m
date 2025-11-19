@interface TranscriptView
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (_TtC10VoiceMemos14TranscriptView)initWithFrame:(CGRect)a3;
- (void)didMoveToSuperview;
- (void)didReceivePan:(id)a3;
- (void)didReceiveTap:(id)a3;
- (void)layoutSubviews;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)searchButtonTapped;
- (void)selectAll:(id)a3;
@end

@implementation TranscriptView

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for TranscriptView();
  v2 = v4.receiver;
  [(TranscriptView *)&v4 didMoveToSuperview];
  v3 = [v2 superview];
  if (v3)
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

- (void)didReceiveTap:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001710CC(v4);
}

- (void)didReceivePan:(id)a3
{
  sub_1000CC430(self + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_controller, v10);
  sub_10000AACC(v10, v10[3]);
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textView);
  v6 = a3;
  v7 = self;
  [v6 velocityInView:v5];
  sub_10017EAF0(v8, v9);

  sub_100014B64(v10);
}

- (void)searchButtonTapped
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textView);
  v5 = self;
  v3 = [v2 findInteraction];
  if (v3)
  {
    v4 = v3;
    [v3 presentFindNavigatorShowingReplace:0];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textView);
  v4 = self;
  if (([v3 isScrollAnimating] & 1) == 0)
  {
    sub_10017191C();
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v10 = self;
  v5 = [v4 panGestureRecognizer];
  [v5 velocityInView:v4];
  v7 = v6;
  v9 = v8;

  sub_10000AACC((&v10->super.super.super.isa + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_controller), *&v10->controller[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_controller + 16]);
  sub_10017EB84(v7, v9);
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_100172810();
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v3 = self;
  sub_10017191C();
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_100171B10(v4);

  return self & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100171C50(v6);

  return v9;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = sub_100171EEC(a3, v10);

  sub_100003CBC(v10, &qword_1002D06A8);
  return v8 & 1;
}

- (void)selectAll:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_1001721D4(v6);

  sub_100003CBC(v6, &qword_1002D06A8);
}

- (_TtC10VoiceMemos14TranscriptView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end