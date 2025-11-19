@interface TUIElementExtendBackground
+ (Class)builderClass;
+ (Class)objectClass;
+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5;
- (_TtC10TemplateUI26TUIElementExtendBackground)init;
@end

@implementation TUIElementExtendBackground

+ (Class)objectClass
{
  v2 = type metadata accessor for TUIExtendBackgroundBox();

  return _swift_getObjCClassFromMetadata(v2);
}

+ (Class)builderClass
{
  v2 = sub_199254();

  return _swift_getObjCClassFromMetadata(v2);
}

+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5
{
  v6 = swift_dynamicCastObjCProtocolConditional();
  if (v6)
  {
    v7 = v6;
    type metadata accessor for TUIExtendBackgroundBox();
    [v7 finalizeModelsWithParent:swift_dynamicCastClass() context:a5];
  }
}

- (_TtC10TemplateUI26TUIElementExtendBackground)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TUIElementExtendBackground();
  return [(TUIElementExtendBackground *)&v3 init];
}

@end