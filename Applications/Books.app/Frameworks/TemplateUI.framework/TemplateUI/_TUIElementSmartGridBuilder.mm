@interface _TUIElementSmartGridBuilder
- (id)finalizeContentsWithContext:(id)a3;
- (id)finalizeTriggers;
- (void)addAdornment:(id)a3;
- (void)addCellOrAdornment:(id)a3;
- (void)addConfiguration:(id)a3;
- (void)addSectionOrAdornment:(id)a3;
- (void)addTrigger:(id)a3 withBehavior:(id)a4;
- (void)finalizeModelsWithParent:(id)a3;
- (void)finalizeModelsWithParent:(id)a3 context:(id)a4;
@end

@implementation _TUIElementSmartGridBuilder

- (void)addTrigger:(id)a3 withBehavior:(id)a4
{
  v10 = a3;
  v6 = a4;
  actionsMap = self->_actionsMap;
  if (!actionsMap)
  {
    v8 = objc_opt_new();
    v9 = self->_actionsMap;
    self->_actionsMap = v8;

    actionsMap = self->_actionsMap;
  }

  [(NSMutableDictionary *)actionsMap setObject:v6 forKeyedSubscript:v10];
}

- (id)finalizeTriggers
{
  v2 = [[TUIElementTriggerBehaviorMap alloc] initWithMap:self->_actionsMap];

  return v2;
}

- (void)addCellOrAdornment:(id)a3
{
  v4 = a3;
  cellsAndAdornments = self->_cellsAndAdornments;
  v8 = v4;
  if (!cellsAndAdornments)
  {
    v6 = objc_opt_new();
    v7 = self->_cellsAndAdornments;
    self->_cellsAndAdornments = v6;

    v4 = v8;
    cellsAndAdornments = self->_cellsAndAdornments;
  }

  [(NSMutableArray *)cellsAndAdornments addObject:v4];
}

- (void)addSectionOrAdornment:(id)a3
{
  v4 = a3;
  sectionsAndAdornments = self->_sectionsAndAdornments;
  v8 = v4;
  if (!sectionsAndAdornments)
  {
    v6 = objc_opt_new();
    v7 = self->_sectionsAndAdornments;
    self->_sectionsAndAdornments = v6;

    v4 = v8;
    sectionsAndAdornments = self->_sectionsAndAdornments;
  }

  [(NSMutableArray *)sectionsAndAdornments addObject:v4];
}

- (void)addAdornment:(id)a3
{
  v4 = a3;
  if ([v4 role] - 3 > &dword_0 + 1)
  {
    [(_TUIElementSmartGridBuilder *)self addSectionOrAdornment:v4];
  }

  else
  {
    [(_TUIElementSmartGridBuilder *)self addCellOrAdornment:v4];
  }
}

- (id)finalizeContentsWithContext:(id)a3
{
  if ([(NSMutableArray *)self->_cellsAndAdornments count])
  {
    v4 = objc_alloc_init(TUISectionModel);
    [(TUIModelContainer *)v4 updateModelChildren:self->_cellsAndAdornments];
    cellsAndAdornments = self->_cellsAndAdornments;
    self->_cellsAndAdornments = 0;

    sectionsAndAdornments = self->_sectionsAndAdornments;
    if (!sectionsAndAdornments)
    {
      v7 = objc_opt_new();
      v8 = self->_sectionsAndAdornments;
      self->_sectionsAndAdornments = v7;

      sectionsAndAdornments = self->_sectionsAndAdornments;
    }

    [(NSMutableArray *)sectionsAndAdornments addObject:v4];
  }

  v9 = self->_sectionsAndAdornments;

  return v9;
}

- (void)addConfiguration:(id)a3
{
  v4 = [a3 data];
  configuration = self->_configuration;
  self->_configuration = v4;
}

- (void)finalizeModelsWithParent:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = [(_TUIElementSmartGridBuilder *)self finalizeContentsWithContext:a4];
  [v6 updateModelChildren:v7];
}

- (void)finalizeModelsWithParent:(id)a3
{
  v4 = a3;
  v5 = [(_TUIElementSmartGridBuilder *)self finalizeContentsWithContext:0];
  [v4 updateModelChildren:v5];
}

@end