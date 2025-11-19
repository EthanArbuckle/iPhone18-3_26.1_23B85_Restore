@interface ReflectionPromptView
- (_TtC16MomentsUIService20ReflectionPromptView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)updatePromptIndex:(id)a3;
@end

@implementation ReflectionPromptView

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for ReflectionPromptView();
  [(ReflectionPromptView *)&v2 layoutSubviews];
}

- (void)updatePromptIndex:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_updateReflectionIndex);
  v6 = self;

  v5 = v3(v4);

  *(&v6->super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_promptIndex) = v5;
  (*((swift_isaMask & v6->super.super.super.isa) + 0x1A0))();
}

- (_TtC16MomentsUIService20ReflectionPromptView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end