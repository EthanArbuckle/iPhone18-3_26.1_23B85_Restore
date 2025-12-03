@interface TUIBoxBuilder
- (BOOL)containsSingleComponent;
- (id)finalizeAnimationGroups;
- (id)finalizeModelsWithParent:(id)parent box:(id)box context:(id)context;
- (void)addAnimationGroup:(id)group withName:(id)name;
- (void)addModel:(id)model;
- (void)finalizeModelsWithParent:(id)parent;
- (void)finalizeModelsWithParent:(id)parent context:(id)context;
@end

@implementation TUIBoxBuilder

- (void)addModel:(id)model
{
  modelCopy = model;
  contents = self->_contents;
  v8 = modelCopy;
  if (!contents)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_contents;
    self->_contents = v6;

    modelCopy = v8;
    contents = self->_contents;
  }

  [(NSMutableArray *)contents addObject:modelCopy];
}

- (BOOL)containsSingleComponent
{
  if ([(NSMutableArray *)self->_contents count]== &dword_0 + 1)
  {
    firstObject = [(NSMutableArray *)self->_contents firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)finalizeModelsWithParent:(id)parent box:(id)box context:(id)context
{
  contextCopy = context;
  contents = self->_contents;
  boxCopy = box;
  parentCopy = parent;
  v12 = [(TUIBoxBuilder *)self checkContents:contents];
  if (v12)
  {
    [contextCopy reportError:v12];
  }

  v13 = self->_contents;
  v14 = self->_contents;
  self->_contents = 0;

  [parentCopy updateModelChildren:v13];
  [boxCopy setAxCustomActions:self->_axActions];
  finalizeAnimationGroups = [(TUIBoxBuilder *)self finalizeAnimationGroups];
  [boxCopy setAnimationGroups:finalizeAnimationGroups];

  return v13;
}

- (void)finalizeModelsWithParent:(id)parent context:(id)context
{
  parentCopy = parent;
  contextCopy = context;
  v7 = objc_opt_class();
  v8 = TUIDynamicCast(v7, parentCopy);
  v9 = [(TUIBoxBuilder *)self finalizeModelsWithParent:parentCopy box:v8 context:contextCopy];
}

- (void)finalizeModelsWithParent:(id)parent
{
  contents = self->_contents;
  self->_contents = 0;
  v5 = contents;
  parentCopy = parent;

  [parentCopy updateModelChildren:v5];
}

- (void)addAnimationGroup:(id)group withName:(id)name
{
  groupCopy = group;
  nameCopy = name;
  animations = self->_animations;
  if (!animations)
  {
    v8 = objc_opt_new();
    v9 = self->_animations;
    self->_animations = v8;

    animations = self->_animations;
  }

  [(NSMutableDictionary *)animations setObject:groupCopy forKeyedSubscript:nameCopy];
}

- (id)finalizeAnimationGroups
{
  if ([(NSMutableDictionary *)self->_animations count])
  {
    v3 = objc_alloc_init(TUIAnimationGroupCollection);
    [(TUIAnimationGroupCollection *)v3 setGroups:self->_animations];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end