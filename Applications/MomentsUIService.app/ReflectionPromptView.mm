@interface ReflectionPromptView
- (_TtC16MomentsUIService20ReflectionPromptView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)updatePromptIndex:(id)index;
@end

@implementation ReflectionPromptView

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for ReflectionPromptView();
  [(ReflectionPromptView *)&v2 layoutSubviews];
}

- (void)updatePromptIndex:(id)index
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_updateReflectionIndex);
  selfCopy = self;

  v5 = v3(v4);

  *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService20ReflectionPromptView_promptIndex) = v5;
  (*((swift_isaMask & selfCopy->super.super.super.isa) + 0x1A0))();
}

- (_TtC16MomentsUIService20ReflectionPromptView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end