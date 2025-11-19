@interface MapsUIDiffableDataSourceOutlineNodeSnapshot
- (BOOL)isEqual:(id)a3;
- (BOOL)needsReloadFromPreviousItemSnapshot:(id)a3;
- (MapsUIDiffableDataSourceOutlineNodeSnapshot)initWithIdentifierPath:(id)a3 viewModel:(id)a4 childSnapshots:(id)a5 expanded:(BOOL)a6;
- (NSString)description;
- (NSString)recursiveDescription;
- (id)childSnapshotWithIdentifier:(id)a3;
- (id)nodeSnapshotAtIdentifierPath:(id)a3;
@end

@implementation MapsUIDiffableDataSourceOutlineNodeSnapshot

- (id)childSnapshotWithIdentifier:(id)a3
{
  v4 = [(NSDictionary *)self->_childMap objectForKeyedSubscript:a3];
  v5 = v4;
  if (v4)
  {
    v6 = -[NSArray objectAtIndexedSubscript:](self->_childSnapshots, "objectAtIndexedSubscript:", [v4 unsignedIntegerValue]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)nodeSnapshotAtIdentifierPath:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [v4 firstIdentifier];
    v6 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)self childSnapshotWithIdentifier:v5];
    v7 = [v4 identifierPathByRemovingFirstIdentifier];
    v8 = [v6 nodeSnapshotAtIdentifierPath:v7];
  }

  else
  {
    v8 = self;
  }

  return v8;
}

- (BOOL)needsReloadFromPreviousItemSnapshot:(id)a3
{
  v4 = a3;
  v5 = [v4 identifierPath];
  v6 = v5;
  if (v5 == self->_identifierPath)
  {

    goto LABEL_5;
  }

  v7 = [(IdentifierPath *)v5 isEqual:?];

  if (v7)
  {
LABEL_5:
    viewModel = self->_viewModel;
    v10 = [v4 viewModel];
    v8 = [(MapsUIDiffableDataSourceViewModel *)viewModel needsReloadFromPreviousViewModel:v10];

    goto LABEL_6;
  }

  v8 = 1;
LABEL_6:

  return v8;
}

- (NSString)recursiveDescription
{
  v3 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)self description];
  v4 = [NSMutableString stringWithString:v3];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_childSnapshots;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) recursiveDescription];
        v11 = [v10 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n |  "];
        [v4 appendFormat:@"\n +-- %@", v11];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(IdentifierPath *)self->_identifierPath visualDescription];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  viewModel = self->_viewModel;
  if (self->_expanded)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = v9;
  v11 = [NSString stringWithFormat:@"<%@: %p identifierPath = %@, viewModel = <%@: %p>, expanded = %@>", v4, self, v5, v7, viewModel, v10];;

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v13 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)v6 identifierPath];
    v8 = v7;
    if (v7 == self->_identifierPath || [(IdentifierPath *)v7 isEqual:?])
    {
      v9 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)v6 viewModel];
      v10 = v9;
      if (v9 == self->_viewModel || [(MapsUIDiffableDataSourceViewModel *)v9 isEqual:?])
      {
        v11 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)v6 childSnapshots];
        v12 = v11;
        v13 = (v11 == self->_childSnapshots || [(NSArray *)v11 isEqual:?]) && self->_expanded == [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)v6 expanded];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (MapsUIDiffableDataSourceOutlineNodeSnapshot)initWithIdentifierPath:(id)a3 viewModel:(id)a4 childSnapshots:(id)a5 expanded:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  v14 = 0;
  if (v10 && v11 && v12)
  {
    v34.receiver = self;
    v34.super_class = MapsUIDiffableDataSourceOutlineNodeSnapshot;
    self = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)&v34 init];
    if (self)
    {
      v15 = [v10 copy];
      identifierPath = self->_identifierPath;
      self->_identifierPath = v15;

      objc_storeStrong(&self->_viewModel, a4);
      v17 = [v13 copy];
      childSnapshots = self->_childSnapshots;
      self->_childSnapshots = v17;

      self->_expanded = a6;
      if ([(NSArray *)self->_childSnapshots count])
      {
        v19 = [(IdentifierPath *)self->_identifierPath length];
        v20 = [NSMutableDictionary dictionaryWithCapacity:[(NSArray *)self->_childSnapshots count]];
        v21 = self->_childSnapshots;
        v28 = _NSConcreteStackBlock;
        v29 = 3221225472;
        v30 = sub_1007CC630;
        v31 = &unk_10162A478;
        v33 = v19;
        v22 = v20;
        v32 = v22;
        [(NSArray *)v21 enumerateObjectsUsingBlock:&v28];
        v23 = [(NSDictionary *)v22 count:v28];
        if (v23 != [(NSArray *)self->_childSnapshots count])
        {

          v14 = 0;
          goto LABEL_11;
        }

        v24 = [NSDictionary dictionaryWithDictionary:v22];
        childMap = self->_childMap;
        self->_childMap = v24;
      }

      else
      {
        v26 = +[NSDictionary dictionary];
        v22 = self->_childMap;
        self->_childMap = v26;
      }

      [(MapsUIDiffableDataSourceViewModel *)self->_viewModel cellRegistration];
    }

    self = self;
    v14 = self;
  }

LABEL_11:

  return v14;
}

@end