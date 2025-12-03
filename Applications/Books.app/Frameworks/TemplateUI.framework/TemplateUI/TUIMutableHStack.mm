@interface TUIMutableHStack
- (BOOL)addChildLayout:(id)layout ifFitting:(BOOL)fitting;
- (TUIMutableHStack)initWithLayout:(id)layout spacing:(id *)spacing maxWidth:(double)width;
@end

@implementation TUIMutableHStack

- (TUIMutableHStack)initWithLayout:(id)layout spacing:(id *)spacing maxWidth:(double)width
{
  v7 = v5;
  v14.receiver = self;
  v14.super_class = TUIMutableHStack;
  v9 = [(TUIHStack *)&v14 initWithLayout:layout];
  v10 = v9;
  if (v9)
  {
    *&v9->_accumulatedWidth = spacing;
    *&v9->_spacing.value = v7;
    *&v9->_muChildren = width;
    v9->_maxWidth = 0.0;
    v11 = objc_opt_new();
    height = v10->super._layoutSize.height;
    *&v10->super._layoutSize.height = v11;
  }

  return v10;
}

- (BOOL)addChildLayout:(id)layout ifFitting:(BOOL)fitting
{
  fittingCopy = fitting;
  layoutCopy = layout;
  [layoutCopy computedTransformedSize];
  v8 = v7;
  guideLayoutController = [(TUIHStack *)self guideLayoutController];
  [layoutCopy setGuideLayoutController:guideLayoutController];

  [layoutCopy validateGuides];
  v10 = [*&self->super._layoutSize.height count];
  if (v10)
  {
    v8 = v8 + *&self->_accumulatedWidth;
  }

  guideLayoutController2 = [(TUIHStack *)self guideLayoutController];
  if (fittingCopy && !TUICGFloatIsLessThanOrAlmostEqualFloat(v8 + self->_maxWidth, *&self->_muChildren))
  {
    v17 = 0;
  }

  else
  {
    if (v10)
    {
      v12 = [_TUIHStackSpacer alloc];
      layout = [(TUIHStack *)self layout];
      layout2 = [(TUIHStack *)self layout];
      controller = [layout2 controller];
      v16 = [(TUILayout *)v12 initWithModel:0 parent:layout controller:controller];

      [(_TUIHStackSpacer *)v16 setSpecifiedWidth:*&self->_accumulatedWidth, *&self->_spacing.value];
      [*&self->super._layoutSize.height addObject:v16];
      [(TUILayout *)v16 setGuideLayoutController:guideLayoutController2];
      if (guideLayoutController2)
      {
        [(TUILayout *)v16 validateGuides];
      }

      [(TUILayout *)v16 invalidateLayout];
    }

    [layoutCopy setGuideLayoutController:guideLayoutController2];
    if (guideLayoutController2)
    {
      [layoutCopy validateGuides];
      [layoutCopy invalidateLayout];
    }

    [*&self->super._layoutSize.height addObject:layoutCopy];
    self->_maxWidth = v8 + self->_maxWidth;
    v17 = 1;
  }

  return v17;
}

@end