@interface _TUIRenderReferenceCollector
- (_TUIRenderReferenceCollector)initWithViewState:(id)state;
- (id)viewStateForIdentifier:(id)identifier;
- (void)appendReference:(id)reference withIdentifier:(id)identifier;
@end

@implementation _TUIRenderReferenceCollector

- (_TUIRenderReferenceCollector)initWithViewState:(id)state
{
  stateCopy = state;
  v9.receiver = self;
  v9.super_class = _TUIRenderReferenceCollector;
  v5 = [(_TUIRenderReferenceCollector *)&v9 init];
  if (v5)
  {
    v6 = [stateCopy copy];
    viewState = v5->_viewState;
    v5->_viewState = v6;
  }

  return v5;
}

- (id)viewStateForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  tui_identifierUUID = [identifierCopy tui_identifierUUID];
  if (!tui_identifierUUID)
  {
    if (!self->_sectionUUID)
    {
      goto LABEL_5;
    }

    v6 = [identifierCopy tui_identifierByPrependingUUID:?];
    tui_identifierUUID = identifierCopy;
    identifierCopy = v6;
  }

LABEL_5:
  v7 = [(TUIViewState *)self->_viewState viewStateForIdentifier:identifierCopy];

  return v7;
}

- (void)appendReference:(id)reference withIdentifier:(id)identifier
{
  referenceCopy = reference;
  identifierCopy = identifier;
  if (referenceCopy && identifierCopy)
  {
    collectedReferences = self->_collectedReferences;
    if (!collectedReferences)
    {
      v8 = objc_opt_new();
      v9 = self->_collectedReferences;
      self->_collectedReferences = v8;

      collectedReferences = self->_collectedReferences;
    }

    v10 = [(NSMutableDictionary *)collectedReferences objectForKeyedSubscript:identifierCopy];
    if (!v10)
    {
      v10 = objc_opt_new();
      [(NSMutableDictionary *)self->_collectedReferences setObject:v10 forKeyedSubscript:identifierCopy];
    }

    [v10 addObject:referenceCopy];
  }
}

@end