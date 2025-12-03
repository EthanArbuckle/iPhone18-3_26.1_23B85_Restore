@interface EpisodeView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (_TtC23ShelfKitCollectionViews11EpisodeView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)titleTapped;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation EpisodeView

- (void)titleTapped
{
  selfCopy = self;
  sub_8C290();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_8D9C8();
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  traitCollection = [(EpisodeView *)selfCopy traitCollection];
  v4 = sub_30C968();

  if (v4)
  {
  }

  else
  {
    if (qword_3FAD98 != -1)
    {
      swift_once();
    }

    v9[2] = xmmword_42A450;
    v9[3] = unk_42A460;
    v10[0] = xmmword_42A470;
    *(v10 + 10) = *(&xmmword_42A470 + 10);
    v9[0] = xmmword_42A430;
    v9[1] = unk_42A440;
    v7[2] = xmmword_42A450;
    v7[3] = unk_42A460;
    v8[0] = xmmword_42A470;
    *(v8 + 10) = *(&xmmword_42A470 + 10);
    v7[0] = xmmword_42A430;
    v7[1] = unk_42A440;
    sub_8FC54(v9, v6);
    sub_235E5C(v7);
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  view = [touch view];
  if (!view)
  {
    return 1;
  }

  v5 = view;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass() == 0;

  return v6;
}

- (_TtC23ShelfKitCollectionViews11EpisodeView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end