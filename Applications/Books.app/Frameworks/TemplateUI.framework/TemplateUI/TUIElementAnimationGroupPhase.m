@interface TUIElementAnimationGroupPhase
+ (id)attributesToIgnoreWhenResolving;
+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5;
+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
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

+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a5;
  v9 = a3;
  [v9 setRunList:{objc_msgSend(v8, "animationReferenceForAttribute:node:", 182, var0)}];
  [v8 floatForAttribute:66 withDefault:var0 node:NAN];
  [v9 setDelay:?];
  [v8 floatForAttribute:69 withDefault:var0 node:NAN];
  [v9 setDuration:?];
  [v9 setOptions:{objc_msgSend(v8, "animationCalculationModeAndCurveForNode:", var0)}];
  v10 = [v8 stringForAttribute:138 node:var0];

  [v9 setName:v10];
}

+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5
{
  v12 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v8 instantiateAnimationReference:{objc_msgSend(v12, "runList")}];

  if ([v9 count])
  {
    v10 = objc_alloc_init(TUIAnimationGroupPhase);
    [v12 delay];
    [(TUIAnimationGroupPhase *)v10 setDelay:?];
    [v12 duration];
    [(TUIAnimationGroupPhase *)v10 setDuration:?];
    -[TUIAnimationGroupPhase setOptions:](v10, "setOptions:", -[TUIAnimationGroupPhase options](v10, "options") | [v12 options]);
    [(TUIAnimationGroupPhase *)v10 setAnimations:v9];
    v11 = [v12 name];
    [v7 addAnimationGroupPhase:v10 withName:v11];
  }
}

@end