@interface _TUIElementSmartSectionBuilder
- (BOOL)supportAdornmentWithRole:(unint64_t)role kind:(unint64_t)kind;
- (void)addModel:(id)model;
- (void)finalizeModelsWithParent:(id)parent;
- (void)finalizeModelsWithParent:(id)parent context:(id)context;
@end

@implementation _TUIElementSmartSectionBuilder

- (void)addModel:(id)model
{
  modelCopy = model;
  models = self->_models;
  v8 = modelCopy;
  if (!models)
  {
    v6 = objc_opt_new();
    v7 = self->_models;
    self->_models = v6;

    modelCopy = v8;
    models = self->_models;
  }

  [(NSMutableArray *)models addObject:modelCopy];
}

- (BOOL)supportAdornmentWithRole:(unint64_t)role kind:(unint64_t)kind
{
  if (kind)
  {
    v4 = 1;
  }

  else
  {
    v4 = role - 3 >= 2;
  }

  return !v4;
}

- (void)finalizeModelsWithParent:(id)parent context:(id)context
{
  parentCopy = parent;
  finalizeModels = [(_TUIElementSmartSectionBuilder *)self finalizeModels];
  [parentCopy updateModelChildren:finalizeModels];
}

- (void)finalizeModelsWithParent:(id)parent
{
  parentCopy = parent;
  finalizeModels = [(_TUIElementSmartSectionBuilder *)self finalizeModels];
  [parentCopy updateModelChildren:finalizeModels];
}

@end