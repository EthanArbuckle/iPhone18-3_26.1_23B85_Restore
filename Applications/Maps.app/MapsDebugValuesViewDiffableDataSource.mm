@interface MapsDebugValuesViewDiffableDataSource
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
@end

@implementation MapsDebugValuesViewDiffableDataSource

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  WeakRetained = objc_loadWeakRetained(&self->_debugVC);
  v6 = [WeakRetained sectionAtIndex:section];

  footer = [v6 footer];

  return footer;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  WeakRetained = objc_loadWeakRetained(&self->_debugVC);
  v6 = [WeakRetained sectionAtIndex:section];

  title = [v6 title];

  return title;
}

@end