@interface TUIInteractionsHelper
- (TUIInteractionsHelper)initWithView:(id)view;
- (void)detachInteractions;
- (void)updateInteractionsWithBuilder:(id)builder;
- (void)updateWithLinkEntities:(id)entities;
@end

@implementation TUIInteractionsHelper

- (TUIInteractionsHelper)initWithView:(id)view
{
  v5.receiver = self;
  v5.super_class = TUIInteractionsHelper;
  result = [(TUIInteractionsHelper *)&v5 init];
  if (result)
  {
    result->_view = view;
    result->_flags.linkEntitiesNeedsUpdate = 0;
  }

  return result;
}

- (void)updateWithLinkEntities:(id)entities
{
  entitiesCopy = entities;
  linkEntities = self->_linkEntities;
  if (linkEntities != entitiesCopy)
  {
    v9 = entitiesCopy;
    v6 = [(NSArray *)linkEntities isEqual:entitiesCopy];
    entitiesCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      v8 = self->_linkEntities;
      self->_linkEntities = v7;

      entitiesCopy = v9;
      self->_flags.linkEntitiesNeedsUpdate = 1;
    }
  }
}

- (void)detachInteractions
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_linkEntityInteractions;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(UIView *)self->_view removeInteraction:*(*(&v9 + 1) + 8 * v7), v9];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  linkEntityInteractions = self->_linkEntityInteractions;
  self->_linkEntityInteractions = 0;
}

- (void)updateInteractionsWithBuilder:(id)builder
{
  builderCopy = builder;
  if (self->_flags.linkEntitiesNeedsUpdate)
  {
    self->_flags.linkEntitiesNeedsUpdate = 0;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = self->_linkEntityInteractions;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(UIView *)self->_view removeInteraction:*(*(&v23 + 1) + 8 * i)];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v7);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = self->_linkEntities;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v20;
      do
      {
        for (j = 0; j != v12; j = j + 1)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = [builderCopy interactionForLinkEntity:{*(*(&v19 + 1) + 8 * j), v19}];
          if (v16)
          {
            if (!v13)
            {
              v13 = objc_opt_new();
            }

            [v13 addObject:v16];
            [(UIView *)self->_view addInteraction:v16];
          }
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }

    v17 = [v13 copy];
    linkEntityInteractions = self->_linkEntityInteractions;
    self->_linkEntityInteractions = v17;
  }
}

@end