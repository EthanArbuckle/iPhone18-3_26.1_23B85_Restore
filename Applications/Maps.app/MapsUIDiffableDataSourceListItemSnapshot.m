@interface MapsUIDiffableDataSourceListItemSnapshot
- (BOOL)isEqual:(id)a3;
- (BOOL)needsReloadFromPreviousItemSnapshot:(id)a3;
- (MapsUIDiffableDataSourceListItemSnapshot)initWithIdentifierPath:(id)a3 viewModel:(id)a4;
@end

@implementation MapsUIDiffableDataSourceListItemSnapshot

- (BOOL)needsReloadFromPreviousItemSnapshot:(id)a3
{
  v4 = a3;
  if ([(MapsUIDiffableDataSourceListItemSnapshot *)self isEqual:v4])
  {
    viewModel = self->_viewModel;
    v6 = [v4 viewModel];
    v7 = [(MapsUIDiffableDataSourceViewModel *)viewModel needsReloadFromPreviousViewModel:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(MapsUIDiffableDataSourceListItemSnapshot *)v6 identifierPath];
    v8 = v7;
    if (v7 == self->_identifierPath || [(IdentifierPath *)v7 isEqual:?])
    {
      v9 = [(MapsUIDiffableDataSourceListItemSnapshot *)v6 viewModel];
      v10 = v9;
      if (v9 == self->_viewModel)
      {
        v11 = 1;
      }

      else
      {
        v11 = [(MapsUIDiffableDataSourceViewModel *)v9 isEqual:?];
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

- (MapsUIDiffableDataSourceListItemSnapshot)initWithIdentifierPath:(id)a3 viewModel:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = MapsUIDiffableDataSourceListItemSnapshot;
  v8 = [(MapsUIDiffableDataSourceListItemSnapshot *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifierPath = v8->_identifierPath;
    v8->_identifierPath = v9;

    objc_storeStrong(&v8->_viewModel, a4);
    if (objc_opt_respondsToSelector())
    {
      [(MapsUIDiffableDataSourceViewModel *)v8->_viewModel cellRegistration];
    }
  }

  return v8;
}

@end