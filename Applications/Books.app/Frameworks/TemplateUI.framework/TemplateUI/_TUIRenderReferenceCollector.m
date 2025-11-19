@interface _TUIRenderReferenceCollector
- (_TUIRenderReferenceCollector)initWithViewState:(id)a3;
- (id)viewStateForIdentifier:(id)a3;
- (void)appendReference:(id)a3 withIdentifier:(id)a4;
@end

@implementation _TUIRenderReferenceCollector

- (_TUIRenderReferenceCollector)initWithViewState:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _TUIRenderReferenceCollector;
  v5 = [(_TUIRenderReferenceCollector *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    viewState = v5->_viewState;
    v5->_viewState = v6;
  }

  return v5;
}

- (id)viewStateForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [v4 tui_identifierUUID];
  if (!v5)
  {
    if (!self->_sectionUUID)
    {
      goto LABEL_5;
    }

    v6 = [v4 tui_identifierByPrependingUUID:?];
    v5 = v4;
    v4 = v6;
  }

LABEL_5:
  v7 = [(TUIViewState *)self->_viewState viewStateForIdentifier:v4];

  return v7;
}

- (void)appendReference:(id)a3 withIdentifier:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v11 && v6)
  {
    collectedReferences = self->_collectedReferences;
    if (!collectedReferences)
    {
      v8 = objc_opt_new();
      v9 = self->_collectedReferences;
      self->_collectedReferences = v8;

      collectedReferences = self->_collectedReferences;
    }

    v10 = [(NSMutableDictionary *)collectedReferences objectForKeyedSubscript:v6];
    if (!v10)
    {
      v10 = objc_opt_new();
      [(NSMutableDictionary *)self->_collectedReferences setObject:v10 forKeyedSubscript:v6];
    }

    [v10 addObject:v11];
  }
}

@end