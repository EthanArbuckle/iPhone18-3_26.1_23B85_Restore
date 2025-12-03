@interface MapsUIDiffableDataSourceListItemSnapshot
- (BOOL)isEqual:(id)equal;
- (BOOL)needsReloadFromPreviousItemSnapshot:(id)snapshot;
- (MapsUIDiffableDataSourceListItemSnapshot)initWithIdentifierPath:(id)path viewModel:(id)model;
@end

@implementation MapsUIDiffableDataSourceListItemSnapshot

- (BOOL)needsReloadFromPreviousItemSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  if ([(MapsUIDiffableDataSourceListItemSnapshot *)self isEqual:snapshotCopy])
  {
    viewModel = self->_viewModel;
    viewModel = [snapshotCopy viewModel];
    v7 = [(MapsUIDiffableDataSourceViewModel *)viewModel needsReloadFromPreviousViewModel:viewModel];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    identifierPath = [(MapsUIDiffableDataSourceListItemSnapshot *)v6 identifierPath];
    v8 = identifierPath;
    if (identifierPath == self->_identifierPath || [(IdentifierPath *)identifierPath isEqual:?])
    {
      viewModel = [(MapsUIDiffableDataSourceListItemSnapshot *)v6 viewModel];
      v10 = viewModel;
      if (viewModel == self->_viewModel)
      {
        v11 = 1;
      }

      else
      {
        v11 = [(MapsUIDiffableDataSourceViewModel *)viewModel isEqual:?];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (MapsUIDiffableDataSourceListItemSnapshot)initWithIdentifierPath:(id)path viewModel:(id)model
{
  pathCopy = path;
  modelCopy = model;
  v12.receiver = self;
  v12.super_class = MapsUIDiffableDataSourceListItemSnapshot;
  v8 = [(MapsUIDiffableDataSourceListItemSnapshot *)&v12 init];
  if (v8)
  {
    v9 = [pathCopy copy];
    identifierPath = v8->_identifierPath;
    v8->_identifierPath = v9;

    objc_storeStrong(&v8->_viewModel, model);
    if (objc_opt_respondsToSelector())
    {
      [(MapsUIDiffableDataSourceViewModel *)v8->_viewModel cellRegistration];
    }
  }

  return v8;
}

@end