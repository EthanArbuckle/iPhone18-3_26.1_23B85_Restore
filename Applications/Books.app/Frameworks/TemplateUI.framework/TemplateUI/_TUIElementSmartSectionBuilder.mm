@interface _TUIElementSmartSectionBuilder
- (BOOL)supportAdornmentWithRole:(unint64_t)a3 kind:(unint64_t)a4;
- (void)addModel:(id)a3;
- (void)finalizeModelsWithParent:(id)a3;
- (void)finalizeModelsWithParent:(id)a3 context:(id)a4;
@end

@implementation _TUIElementSmartSectionBuilder

- (void)addModel:(id)a3
{
  v4 = a3;
  models = self->_models;
  v8 = v4;
  if (!models)
  {
    v6 = objc_opt_new();
    v7 = self->_models;
    self->_models = v6;

    v4 = v8;
    models = self->_models;
  }

  [(NSMutableArray *)models addObject:v4];
}

- (BOOL)supportAdornmentWithRole:(unint64_t)a3 kind:(unint64_t)a4
{
  if (a4)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3 - 3 >= 2;
  }

  return !v4;
}

- (void)finalizeModelsWithParent:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = [(_TUIElementSmartSectionBuilder *)self finalizeModels];
  [v5 updateModelChildren:v6];
}

- (void)finalizeModelsWithParent:(id)a3
{
  v4 = a3;
  v5 = [(_TUIElementSmartSectionBuilder *)self finalizeModels];
  [v4 updateModelChildren:v5];
}

@end