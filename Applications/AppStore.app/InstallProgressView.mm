@interface InstallProgressView
- (_TtC8AppStore19InstallProgressView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation InstallProgressView

- (_TtC8AppStore19InstallProgressView)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC8AppStore19InstallProgressView_state;
  *v3 = 0;
  v3[8] = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore19InstallProgressView_progressLayer) = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore19InstallProgressView_completionHandler);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore19InstallProgressView_progress) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = type metadata accessor for InstallProgressView();
  v2 = v14.receiver;
  [(InstallProgressView *)&v14 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8AppStore19InstallProgressView_progressLayer];
  if (v3)
  {
    v4 = v3;
    v5 = [v2 layer];
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [v4 setFrame:{v7, v9, v11, v13}];
    v2 = v4;
  }
}

@end