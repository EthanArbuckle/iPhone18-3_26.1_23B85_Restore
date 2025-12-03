@interface FavoritesShortcutsProvider
- (NSArray)filteredItems;
@end

@implementation FavoritesShortcutsProvider

- (NSArray)filteredItems
{
  favoritesManager = [(FavoritesShortcutsProvider *)self favoritesManager];
  mailboxesCollection = [favoritesManager mailboxesCollection];
  visibleItems = [mailboxesCollection visibleItems];

  if (![(NSArray *)self->_items isEqualToArray:visibleItems])
  {
    objc_storeStrong(&self->_items, visibleItems);
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2020000000;
    v12[3] = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000B9D00;
    v11[3] = &unk_10064F1E0;
    v11[4] = v12;
    v6 = [visibleItems ef_compactMap:v11];
    filteredItems = self->_filteredItems;
    self->_filteredItems = v6;

    _Block_object_dispose(v12, 8);
  }

  v8 = self->_filteredItems;
  v9 = v8;

  return v8;
}

@end