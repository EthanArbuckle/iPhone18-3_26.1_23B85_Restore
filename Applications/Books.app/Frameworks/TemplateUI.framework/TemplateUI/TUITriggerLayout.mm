@interface TUITriggerLayout
- (void)appendAnchorsToSet:(id)a3 inRoot:(id)a4;
@end

@implementation TUITriggerLayout

- (void)appendAnchorsToSet:(id)a3 inRoot:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 axis];
  [(TUILayout *)self computedTransformInAncestorLayout:v6];

  y = CGPointZero.y;
  v10 = y * 0.0 + 0.0 * CGPointZero.x;
  v11 = v10 + 0.0;
  v12 = y * 0.0;
  if (v8 == &dword_0 + 1)
  {
    v13 = v10 + 0.0;
  }

  else
  {
    v13 = v12 + 0.0 * CGPointZero.x + 0.0;
  }

  if (v8 == &dword_0 + 1 && [(TUILayout *)self computedLayoutDirection]== &dword_0 + 2)
  {
    v14 = [(TUILayout *)self box];
    [v14 anchorOffset];
    v16 = v11 - v15;
  }

  else
  {
    v14 = [(TUILayout *)self box];
    [v14 anchorOffset];
    v16 = v13 + v17;
  }

  v18 = [TUITrigger alloc];
  v19 = [(TUILayout *)self box];
  v20 = [v19 name];
  v21 = [(TUILayout *)self box];
  v22 = -[TUITrigger initWithName:observationMode:](v18, "initWithName:observationMode:", v20, [v21 observationMode]);

  [v7 appendTriggerAnchorWithOffset:v22 trigger:objc_msgSend(v7 axis:{"axis"), v16}];
}

@end