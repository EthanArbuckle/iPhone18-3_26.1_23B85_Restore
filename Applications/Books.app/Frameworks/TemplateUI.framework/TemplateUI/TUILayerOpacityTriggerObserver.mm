@interface TUILayerOpacityTriggerObserver
- (NSDictionary)opacityTriggers;
- (TUITriggerStateManager)manager;
- (_TtC10TemplateUI30TUILayerOpacityTriggerObserver)init;
- (_TtC10TemplateUI30TUILayerOpacityTriggerObserver)initWithLayer:(id)a3 opacityTriggers:(id)a4;
- (void)dealloc;
- (void)setManager:(id)a3;
- (void)triggerStateManager:(id)a3 triggersDidChangeValues:(id)a4;
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

- (void)setManager:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_198584();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  sub_1977E8();
}

- (_TtC10TemplateUI30TUILayerOpacityTriggerObserver)initWithLayer:(id)a3 opacityTriggers:(id)a4
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
  v2 = self;
  sub_198584();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for TUILayerOpacityTriggerObserver();
  [(TUILayerOpacityTriggerObserver *)&v3 dealloc];
}

- (void)triggerStateManager:(id)a3 triggersDidChangeValues:(id)a4
{
  type metadata accessor for TUITriggerName(0);
  sub_198960();
  sub_1989AC();
  v6 = sub_19C4D8();
  v7 = a3;
  v8 = self;
  sub_197EDC(v7, v6);
}

- (_TtC10TemplateUI30TUILayerOpacityTriggerObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end