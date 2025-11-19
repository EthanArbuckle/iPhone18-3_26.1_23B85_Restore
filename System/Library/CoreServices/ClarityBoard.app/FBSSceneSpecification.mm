@interface FBSSceneSpecification
+ (Class)assistiveAccessClass;
@end

@implementation FBSSceneSpecification

+ (Class)assistiveAccessClass
{
  type metadata accessor for AssistiveAccessApplicationSceneSpecificationWrapper();
  static AssistiveAccessApplicationSceneSpecificationWrapper.specificationClass.getter();
  sub_10002C9FC(0, &qword_10032DCD0);
  if (swift_dynamicCastMetatype())
  {

    return swift_getObjCClassFromMetadata();
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

@end