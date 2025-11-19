@interface TranscriptWaitingHostingView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC7Journal28TranscriptWaitingHostingView)initWithCoder:(id)a3;
- (_TtC7Journal28TranscriptWaitingHostingView)initWithFrame:(CGRect)a3;
@end

@implementation TranscriptWaitingHostingView

- (_TtC7Journal28TranscriptWaitingHostingView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal28TranscriptWaitingHostingView_hostingController) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for TranscriptWaitingHostingView();
  v7 = [(TranscriptWaitingHostingView *)&v9 initWithFrame:x, y, width, height];
  sub_1002F8620();

  return v7;
}

- (_TtC7Journal28TranscriptWaitingHostingView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal28TranscriptWaitingHostingView_hostingController) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal28TranscriptWaitingHostingView_hostingController);
  if (v5)
  {
    v6 = self;
    v7 = v5;
    v8 = [v7 view];
    if (v8)
    {
      v11 = v8;
      [v8 sizeThatFits:{width, height}];
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
    v3 = self;
    v4 = [v2 view];
    if (v4)
    {
      v7 = v4;
      [v4 intrinsicContentSize];
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