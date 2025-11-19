@interface _TUIRenderUpdateCollectionSectionChanges
- (NSString)description;
- (_TUIRenderUpdateCollectionSectionChanges)initWithSectionUpdates:(id)a3 model:(id)a4;
- (void)applyToContext:(id)a3;
@end

@implementation _TUIRenderUpdateCollectionSectionChanges

- (_TUIRenderUpdateCollectionSectionChanges)initWithSectionUpdates:(id)a3 model:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _TUIRenderUpdateCollectionSectionChanges;
  v8 = [(_TUIRenderUpdateCollectionSectionChanges *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    sectionUpdates = v8->_sectionUpdates;
    v8->_sectionUpdates = v9;

    objc_storeStrong(&v8->_model, a4);
  }

  return v8;
}

- (void)applyToContext:(id)a3
{
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_sectionUpdates;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8) applyToContext:{v4, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (NSString)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ %p", v5, self];

  [v6 appendFormat:@" sectionUpdates=%@", self->_sectionUpdates];
  [v6 appendFormat:@" model=%@", self->_model];
  [v6 appendFormat:@">"];
  v7 = [v6 copy];

  return v7;
}

@end