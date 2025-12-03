@interface TUILayerOpacityTriggerObserver
- (NSDictionary)opacityTriggers;
- (TUITriggerStateManager)manager;
- (_TtC10TemplateUI30TUILayerOpacityTriggerObserver)init;
- (_TtC10TemplateUI30TUILayerOpacityTriggerObserver)initWithLayer:(id)layer opacityTriggers:(id)triggers;
- (void)dealloc;
- (void)setManager:(id)manager;
- (void)triggerStateManager:(id)manager triggersDidChangeValues:(id)values;
@end

@implementation TUILayerOpacityTriggerObserver

- (NSDictionary)opacityTriggers
{
  type metadata accessor for TUITriggerName(0);
  sub_1989AC();

  v2.super.isa = sub_19C4C8().super.isa;

  return v2.super.isa;
}

- (TUITriggerStateManager)manager
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  sub_198584();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  sub_1977E8();
}

- (_TtC10TemplateUI30TUILayerOpacityTriggerObserver)initWithLayer:(id)layer opacityTriggers:(id)triggers
{
  type metadata accessor for TUITriggerName(0);
  sub_1989AC();
  v5 = sub_19C4D8();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(self + OBJC_IVAR____TtC10TemplateUI30TUILayerOpacityTriggerObserver_opacityTriggers) = v5;
  v7.receiver = self;
  v7.super_class = type metadata accessor for TUILayerOpacityTriggerObserver();
  return [(TUILayerOpacityTriggerObserver *)&v7 init];
}

- (void)dealloc
{
  selfCopy = self;
  sub_198584();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for TUILayerOpacityTriggerObserver();
  [(TUILayerOpacityTriggerObserver *)&v3 dealloc];
}

- (void)triggerStateManager:(id)manager triggersDidChangeValues:(id)values
{
  type metadata accessor for TUITriggerName(0);
  sub_198960();
  sub_1989AC();
  v6 = sub_19C4D8();
  managerCopy = manager;
  selfCopy = self;
  sub_197EDC(managerCopy, v6);
}

- (_TtC10TemplateUI30TUILayerOpacityTriggerObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end