@interface TUIPagedScrollableController
- (TUIPagedScrollableController)init;
- (id)_proxyForIdentifier:(id)a3;
- (id)registerPagedScrollableWithWithIdentifier:(id)a3 action:(id)a4;
- (void)unregisterPagedScrollableWithIdentifier:(id)a3;
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

- (id)_proxyForIdentifier:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (v4)
  {
    v5 = [(NSMapTable *)self->_pagedScrollableMap objectForKey:v4];
    if (!v5)
    {
      v5 = objc_alloc_init(_TUIPagedScrollableProxy);
      [(NSMapTable *)self->_pagedScrollableMap setObject:v5 forKey:v4];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)registerPagedScrollableWithWithIdentifier:(id)a3 action:(id)a4
{
  v6 = a4;
  v7 = [(TUIPagedScrollableController *)self _proxyForIdentifier:a3];
  [v7 setAction:v6];

  return v7;
}

- (void)unregisterPagedScrollableWithIdentifier:(id)a3
{
  v3 = [(TUIPagedScrollableController *)self _proxyForIdentifier:a3];
  [v3 setAction:0];
  [v3 updateWithPageIndices:0x7FFFFFFFFFFFFFFFLL pageCount:{0, 0x7FFFFFFFFFFFFFFFLL}];
}

@end