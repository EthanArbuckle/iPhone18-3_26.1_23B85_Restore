@interface ApplicationDelegate
- (_TtC11PosterBoard19ApplicationDelegate)init;
@end

@implementation ApplicationDelegate

- (_TtC11PosterBoard19ApplicationDelegate)init
{
  v3 = OBJC_IVAR____TtC11PosterBoard19ApplicationDelegate_glue;
  *(&self->super.super.isa + v3) = [objc_opt_self() sharedInstance];
  v6.receiver = self;
  v6.super_class = type metadata accessor for ApplicationDelegate();
  v4 = [(ApplicationDelegate *)&v6 init];
  PRSetupSharedWidgetExtensionProvider();
  return v4;
}

@end