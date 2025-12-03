@interface _TUIElementSmartGridBuilder
- (id)finalizeContentsWithContext:(id)context;
- (id)finalizeTriggers;
- (void)addAdornment:(id)adornment;
- (void)addCellOrAdornment:(id)adornment;
- (void)addConfiguration:(id)configuration;
- (void)addSectionOrAdornment:(id)adornment;
- (void)addTrigger:(id)trigger withBehavior:(id)behavior;
- (void)finalizeModelsWithParent:(id)parent;
- (void)finalizeModelsWithParent:(id)parent context:(id)context;
@end

@implementation _TUIElementSmartGridBuilder

- (void)addTrigger:(id)trigger withBehavior:(id)behavior
{
  triggerCopy = trigger;
  behaviorCopy = behavior;
  actionsMap = self->_actionsMap;
  if (!actionsMap)
  {
    v8 = objc_opt_new();
    v9 = self->_actionsMap;
    self->_actionsMap = v8;

    actionsMap = self->_actionsMap;
  }

  [(NSMutableDictionary *)actionsMap setObject:behaviorCopy forKeyedSubscript:triggerCopy];
}

- (id)finalizeTriggers
{
  v2 = [[TUIElementTriggerBehaviorMap alloc] initWithMap:self->_actionsMap];

  return v2;
}

- (void)addCellOrAdornment:(id)adornment
{
  adornmentCopy = adornment;
  cellsAndAdornments = self->_cellsAndAdornments;
  v8 = adornmentCopy;
  if (!cellsAndAdornments)
  {
    v6 = objc_opt_new();
    v7 = self->_cellsAndAdornments;
    self->_cellsAndAdornments = v6;

    adornmentCopy = v8;
    cellsAndAdornments = self->_cellsAndAdornments;
  }

  [(NSMutableArray *)cellsAndAdornments addObject:adornmentCopy];
}

- (void)addSectionOrAdornment:(id)adornment
{
  adornmentCopy = adornment;
  sectionsAndAdornments = self->_sectionsAndAdornments;
  v8 = adornmentCopy;
  if (!sectionsAndAdornments)
  {
    v6 = objc_opt_new();
    v7 = self->_sectionsAndAdornments;
    self->_sectionsAndAdornments = v6;

    adornmentCopy = v8;
    sectionsAndAdornments = self->_sectionsAndAdornments;
  }

  [(NSMutableArray *)sectionsAndAdornments addObject:adornmentCopy];
}

- (void)addAdornment:(id)adornment
{
  adornmentCopy = adornment;
  if ([adornmentCopy role] - 3 > &dword_0 + 1)
  {
    [(_TUIElementSmartGridBuilder *)self addSectionOrAdornment:adornmentCopy];
  }

  else
  {
    [(_TUIElementSmartGridBuilder *)self addCellOrAdornment:adornmentCopy];
  }
}

- (id)finalizeContentsWithContext:(id)context
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

- (void)addConfiguration:(id)configuration
{
  data = [configuration data];
  configuration = self->_configuration;
  self->_configuration = data;
}

- (void)finalizeModelsWithParent:(id)parent context:(id)context
{
  parentCopy = parent;
  v7 = [(_TUIElementSmartGridBuilder *)self finalizeContentsWithContext:context];
  [parentCopy updateModelChildren:v7];
}

- (void)finalizeModelsWithParent:(id)parent
{
  parentCopy = parent;
  v5 = [(_TUIElementSmartGridBuilder *)self finalizeContentsWithContext:0];
  [parentCopy updateModelChildren:v5];
}

@end