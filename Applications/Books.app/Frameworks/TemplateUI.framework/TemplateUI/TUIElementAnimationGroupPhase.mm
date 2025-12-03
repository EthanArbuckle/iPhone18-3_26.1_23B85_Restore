@interface TUIElementAnimationGroupPhase
+ (id)attributesToIgnoreWhenResolving;
+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context;
+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementAnimationGroupPhase

+ (id)attributesToIgnoreWhenResolving
{
  if (qword_2E6500 != -1)
  {
    sub_19B6D4();
  }

  v3 = qword_2E64F8;

  return v3;
}

+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  attributesCopy = attributes;
  objectCopy = object;
  [objectCopy setRunList:{objc_msgSend(attributesCopy, "animationReferenceForAttribute:node:", 182, var0)}];
  [attributesCopy floatForAttribute:66 withDefault:var0 node:NAN];
  [objectCopy setDelay:?];
  [attributesCopy floatForAttribute:69 withDefault:var0 node:NAN];
  [objectCopy setDuration:?];
  [objectCopy setOptions:{objc_msgSend(attributesCopy, "animationCalculationModeAndCurveForNode:", var0)}];
  v10 = [attributesCopy stringForAttribute:138 node:var0];

  [objectCopy setName:v10];
}

+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context
{
  objectCopy = object;
  builderCopy = builder;
  contextCopy = context;
  v9 = [contextCopy instantiateAnimationReference:{objc_msgSend(objectCopy, "runList")}];

  if ([v9 count])
  {
    v10 = objc_alloc_init(TUIAnimationGroupPhase);
    [objectCopy delay];
    [(TUIAnimationGroupPhase *)v10 setDelay:?];
    [objectCopy duration];
    [(TUIAnimationGroupPhase *)v10 setDuration:?];
    -[TUIAnimationGroupPhase setOptions:](v10, "setOptions:", -[TUIAnimationGroupPhase options](v10, "options") | [objectCopy options]);
    [(TUIAnimationGroupPhase *)v10 setAnimations:v9];
    name = [objectCopy name];
    [builderCopy addAnimationGroupPhase:v10 withName:name];
  }
}

@end