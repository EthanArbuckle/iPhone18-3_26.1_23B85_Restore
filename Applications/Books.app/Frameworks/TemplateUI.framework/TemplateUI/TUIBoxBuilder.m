@interface TUIBoxBuilder
- (BOOL)containsSingleComponent;
- (id)finalizeAnimationGroups;
- (id)finalizeModelsWithParent:(id)a3 box:(id)a4 context:(id)a5;
- (void)addAnimationGroup:(id)a3 withName:(id)a4;
- (void)addModel:(id)a3;
- (void)finalizeModelsWithParent:(id)a3;
- (void)finalizeModelsWithParent:(id)a3 context:(id)a4;
@end

@implementation TUIBoxBuilder

- (void)addModel:(id)a3
{
  v4 = a3;
  contents = self->_contents;
  v8 = v4;
  if (!contents)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_contents;
    self->_contents = v6;

    v4 = v8;
    contents = self->_contents;
  }

  [(NSMutableArray *)contents addObject:v4];
}

- (BOOL)containsSingleComponent
{
  if ([(NSMutableArray *)self->_contents count]== &dword_0 + 1)
  {
    v3 = [(NSMutableArray *)self->_contents firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)finalizeModelsWithParent:(id)a3 box:(id)a4 context:(id)a5
{
  v8 = a5;
  contents = self->_contents;
  v10 = a4;
  v11 = a3;
  v12 = [(TUIBoxBuilder *)self checkContents:contents];
  if (v12)
  {
    [v8 reportError:v12];
  }

  v13 = self->_contents;
  v14 = self->_contents;
  self->_contents = 0;

  [v11 updateModelChildren:v13];
  [v10 setAxCustomActions:self->_axActions];
  v15 = [(TUIBoxBuilder *)self finalizeAnimationGroups];
  [v10 setAnimationGroups:v15];

  return v13;
}

- (void)finalizeModelsWithParent:(id)a3 context:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  v8 = TUIDynamicCast(v7, v10);
  v9 = [(TUIBoxBuilder *)self finalizeModelsWithParent:v10 box:v8 context:v6];
}

- (void)finalizeModelsWithParent:(id)a3
{
  contents = self->_contents;
  self->_contents = 0;
  v5 = contents;
  v6 = a3;

  [v6 updateModelChildren:v5];
}

- (void)addAnimationGroup:(id)a3 withName:(id)a4
{
  v10 = a3;
  v6 = a4;
  animations = self->_animations;
  if (!animations)
  {
    v8 = objc_opt_new();
    v9 = self->_animations;
    self->_animations = v8;

    animations = self->_animations;
  }

  [(NSMutableDictionary *)animations setObject:v10 forKeyedSubscript:v6];
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