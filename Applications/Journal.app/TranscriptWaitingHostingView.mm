@interface TranscriptWaitingHostingView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC7Journal28TranscriptWaitingHostingView)initWithCoder:(id)coder;
- (_TtC7Journal28TranscriptWaitingHostingView)initWithFrame:(CGRect)frame;
@end

@implementation TranscriptWaitingHostingView

- (_TtC7Journal28TranscriptWaitingHostingView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal28TranscriptWaitingHostingView_hostingController) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for TranscriptWaitingHostingView();
  height = [(TranscriptWaitingHostingView *)&v9 initWithFrame:x, y, width, height];
  sub_1002F8620();

  return height;
}

- (_TtC7Journal28TranscriptWaitingHostingView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal28TranscriptWaitingHostingView_hostingController) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal28TranscriptWaitingHostingView_hostingController);
  if (v5)
  {
    selfCopy = self;
    v7 = v5;
    view = [v7 view];
    if (view)
    {
      v11 = view;
      [view sizeThatFits:{width, height}];
      v13 = v12;
      v15 = v14;

      v9 = v13;
      v10 = v15;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = type metadata accessor for TranscriptWaitingHostingView();
    [(TranscriptWaitingHostingView *)&v16 sizeThatFits:width, height];
  }

  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal28TranscriptWaitingHostingView_hostingController);
  if (v2)
  {
    selfCopy = self;
    view = [v2 view];
    if (view)
    {
      v7 = view;
      [view intrinsicContentSize];
      v9 = v8;
      v11 = v10;

      v5 = v9;
      v6 = v11;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = type metadata accessor for TranscriptWaitingHostingView();
    [(TranscriptWaitingHostingView *)&v12 intrinsicContentSize];
  }

  result.height = v6;
  result.width = v5;
  return result;
}

@end