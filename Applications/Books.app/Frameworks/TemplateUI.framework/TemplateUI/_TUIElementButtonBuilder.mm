@interface _TUIElementButtonBuilder
- (id)finalizeLinkEntities;
- (id)finalizeStateMapWithContext:(id)a3;
- (void)addLinkEntity:(id)a3;
@end

@implementation _TUIElementButtonBuilder

- (id)finalizeStateMapWithContext:(id)a3
{
  v26.receiver = self;
  v26.super_class = _TUIElementButtonBuilder;
  v3 = a3;
  v4 = [(TUIStateAndActionBuilder *)&v26 finalizeStateMapWithContext:?];
  v20 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = objc_opt_class();
        v12 = [v5 objectForKeyedSubscript:v10];
        v13 = [v12 submodel];
        v14 = TUIDynamicCast(v11, v13);

        v15 = [v14 modelForButtonType:-[_TUIElementButtonBuilder buttonType](self context:{"buttonType"), v3}];
        if (v15)
        {
          v16 = [v5 objectForKeyedSubscript:v10];
          v17 = [v16 submodel];

          if (v17 != v15)
          {
            v27 = v15;
            v18 = [NSArray arrayWithObjects:&v27 count:1];
            [v16 updateModelChildren:v18];
          }

          [v20 setObject:v16 forKeyedSubscript:{v10, v20}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v7);
  }

  return v20;
}

- (void)addLinkEntity:(id)a3
{
  v4 = a3;
  linkEntities = self->_linkEntities;
  v8 = v4;
  if (!linkEntities)
  {
    v6 = objc_opt_new();
    v7 = self->_linkEntities;
    self->_linkEntities = v6;

    v4 = v8;
    linkEntities = self->_linkEntities;
  }

  [(NSMutableArray *)linkEntities addObject:v4];
}

- (id)finalizeLinkEntities
{
  v2 = [(NSMutableArray *)self->_linkEntities copy];

  return v2;
}

@end