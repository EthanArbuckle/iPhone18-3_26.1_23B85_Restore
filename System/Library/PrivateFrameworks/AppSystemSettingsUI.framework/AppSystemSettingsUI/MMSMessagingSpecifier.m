@interface MMSMessagingSpecifier
- (_TtC19AppSystemSettingsUI21MMSMessagingSpecifier)init;
- (_TtC19AppSystemSettingsUI21MMSMessagingSpecifier)initWithName:(id)a3 target:(id)a4 set:(SEL)a5 get:(SEL)a6 detail:(Class)a7 cell:(int64_t)a8 edit:(Class)a9;
- (id)isMMSEnabledFor:(id)a3;
- (void)setMMSEnabled:(id)a3 specifier:(id)a4;
@end

@implementation MMSMessagingSpecifier

- (id)isMMSEnabledFor:(id)a3
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  v7 = sub_21BB11E70(v5);

  return v7;
}

- (void)setMMSEnabled:(id)a3 specifier:(id)a4
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_21BB1221C(v7, v8);
}

- (_TtC19AppSystemSettingsUI21MMSMessagingSpecifier)initWithName:(id)a3 target:(id)a4 set:(SEL)a5 get:(SEL)a6 detail:(Class)a7 cell:(int64_t)a8 edit:(Class)a9
{
  if (a4)
  {
    swift_unknownObjectRetain();
    sub_21BB2319C();
    swift_unknownObjectRelease();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC19AppSystemSettingsUI21MMSMessagingSpecifier)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end