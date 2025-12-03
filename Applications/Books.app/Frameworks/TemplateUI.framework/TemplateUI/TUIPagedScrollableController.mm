@interface TUIPagedScrollableController
- (TUIPagedScrollableController)init;
- (id)_proxyForIdentifier:(id)identifier;
- (id)registerPagedScrollableWithWithIdentifier:(id)identifier action:(id)action;
- (void)unregisterPagedScrollableWithIdentifier:(id)identifier;
@end

@implementation TUIPagedScrollableController

- (TUIPagedScrollableController)init
{
  v6.receiver = self;
  v6.super_class = TUIPagedScrollableController;
  v2 = [(TUIPagedScrollableController *)&v6 init];
  if (v2)
  {
    v3 = [NSMapTable mapTableWithKeyOptions:0 valueOptions:5];
    pagedScrollableMap = v2->_pagedScrollableMap;
    v2->_pagedScrollableMap = v3;
  }

  return v2;
}

- (id)_proxyForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (identifierCopy)
  {
    v5 = [(NSMapTable *)self->_pagedScrollableMap objectForKey:identifierCopy];
    if (!v5)
    {
      v5 = objc_alloc_init(_TUIPagedScrollableProxy);
      [(NSMapTable *)self->_pagedScrollableMap setObject:v5 forKey:identifierCopy];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)registerPagedScrollableWithWithIdentifier:(id)identifier action:(id)action
{
  actionCopy = action;
  v7 = [(TUIPagedScrollableController *)self _proxyForIdentifier:identifier];
  [v7 setAction:actionCopy];

  return v7;
}

- (void)unregisterPagedScrollableWithIdentifier:(id)identifier
{
  v3 = [(TUIPagedScrollableController *)self _proxyForIdentifier:identifier];
  [v3 setAction:0];
  [v3 updateWithPageIndices:0x7FFFFFFFFFFFFFFFLL pageCount:{0, 0x7FFFFFFFFFFFFFFFLL}];
}

@end