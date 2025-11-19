@interface TUIMutableHStack
- (BOOL)addChildLayout:(id)a3 ifFitting:(BOOL)a4;
- (TUIMutableHStack)initWithLayout:(id)a3 spacing:(id *)a4 maxWidth:(double)a5;
@end

@implementation TUIMutableHStack

- (TUIMutableHStack)initWithLayout:(id)a3 spacing:(id *)a4 maxWidth:(double)a5
{
  v7 = v5;
  v14.receiver = self;
  v14.super_class = TUIMutableHStack;
  v9 = [(TUIHStack *)&v14 initWithLayout:a3];
  v10 = v9;
  if (v9)
  {
    *&v9->_accumulatedWidth = a4;
    *&v9->_spacing.value = v7;
    *&v9->_muChildren = a5;
    v9->_maxWidth = 0.0;
    v11 = objc_opt_new();
    height = v10->super._layoutSize.height;
    *&v10->super._layoutSize.height = v11;
  }

  return v10;
}

- (BOOL)addChildLayout:(id)a3 ifFitting:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [v6 computedTransformedSize];
  v8 = v7;
  v9 = [(TUIHStack *)self guideLayoutController];
  [v6 setGuideLayoutController:v9];

  [v6 validateGuides];
  v10 = [*&self->super._layoutSize.height count];
  if (v10)
  {
    v8 = v8 + *&self->_accumulatedWidth;
  }

  v11 = [(TUIHStack *)self guideLayoutController];
  if (v4 && !TUICGFloatIsLessThanOrAlmostEqualFloat(v8 + self->_maxWidth, *&self->_muChildren))
  {
    v17 = 0;
  }

  else
  {
    if (v10)
    {
      v12 = [_TUIHStackSpacer alloc];
      v13 = [(TUIHStack *)self layout];
      v14 = [(TUIHStack *)self layout];
      v15 = [v14 controller];
      v16 = [(TUILayout *)v12 initWithModel:0 parent:v13 controller:v15];

      [(_TUIHStackSpacer *)v16 setSpecifiedWidth:*&self->_accumulatedWidth, *&self->_spacing.value];
      [*&self->super._layoutSize.height addObject:v16];
      [(TUILayout *)v16 setGuideLayoutController:v11];
      if (v11)
      {
        [(TUILayout *)v16 validateGuides];
      }

      [(TUILayout *)v16 invalidateLayout];
    }

    [v6 setGuideLayoutController:v11];
    if (v11)
    {
      [v6 validateGuides];
      [v6 invalidateLayout];
    }

    [*&self->super._layoutSize.height addObject:v6];
    self->_maxWidth = v8 + self->_maxWidth;
    v17 = 1;
  }

  return v17;
}

@end