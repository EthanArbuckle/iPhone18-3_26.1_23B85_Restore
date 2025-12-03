@interface MapsUIDiffableDataSourceOutlineNodeSnapshot
- (BOOL)isEqual:(id)equal;
- (BOOL)needsReloadFromPreviousItemSnapshot:(id)snapshot;
- (MapsUIDiffableDataSourceOutlineNodeSnapshot)initWithIdentifierPath:(id)path viewModel:(id)model childSnapshots:(id)snapshots expanded:(BOOL)expanded;
- (NSString)description;
- (NSString)recursiveDescription;
- (id)childSnapshotWithIdentifier:(id)identifier;
- (id)nodeSnapshotAtIdentifierPath:(id)path;
@end

@implementation MapsUIDiffableDataSourceOutlineNodeSnapshot

- (id)childSnapshotWithIdentifier:(id)identifier
{
  v4 = [(NSDictionary *)self->_childMap objectForKeyedSubscript:identifier];
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

- (id)nodeSnapshotAtIdentifierPath:(id)path
{
  pathCopy = path;
  if ([pathCopy length])
  {
    firstIdentifier = [pathCopy firstIdentifier];
    v6 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)self childSnapshotWithIdentifier:firstIdentifier];
    identifierPathByRemovingFirstIdentifier = [pathCopy identifierPathByRemovingFirstIdentifier];
    selfCopy = [v6 nodeSnapshotAtIdentifierPath:identifierPathByRemovingFirstIdentifier];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)needsReloadFromPreviousItemSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  identifierPath = [snapshotCopy identifierPath];
  v6 = identifierPath;
  if (identifierPath == self->_identifierPath)
  {

    goto LABEL_5;
  }

  v7 = [(IdentifierPath *)identifierPath isEqual:?];

  if (v7)
  {
LABEL_5:
    viewModel = self->_viewModel;
    viewModel = [snapshotCopy viewModel];
    v8 = [(MapsUIDiffableDataSourceViewModel *)viewModel needsReloadFromPreviousViewModel:viewModel];

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

        recursiveDescription = [*(*(&v13 + 1) + 8 * i) recursiveDescription];
        v11 = [recursiveDescription stringByReplacingOccurrencesOfString:@"\n" withString:@"\n |  "];
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
  visualDescription = [(IdentifierPath *)self->_identifierPath visualDescription];
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
  v11 = [NSString stringWithFormat:@"<%@: %p identifierPath = %@, viewModel = <%@: %p>, expanded = %@>", v4, self, visualDescription, v7, viewModel, v10];;

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    identifierPath = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)v6 identifierPath];
    v8 = identifierPath;
    if (identifierPath == self->_identifierPath || [(IdentifierPath *)identifierPath isEqual:?])
    {
      viewModel = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)v6 viewModel];
      v10 = viewModel;
      if (viewModel == self->_viewModel || [(MapsUIDiffableDataSourceViewModel *)viewModel isEqual:?])
      {
        childSnapshots = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)v6 childSnapshots];
        v12 = childSnapshots;
        v13 = (childSnapshots == self->_childSnapshots || [(NSArray *)childSnapshots isEqual:?]) && self->_expanded == [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)v6 expanded];
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

- (MapsUIDiffableDataSourceOutlineNodeSnapshot)initWithIdentifierPath:(id)path viewModel:(id)model childSnapshots:(id)snapshots expanded:(BOOL)expanded
{
  pathCopy = path;
  modelCopy = model;
  snapshotsCopy = snapshots;
  v13 = snapshotsCopy;
  selfCopy = 0;
  if (pathCopy && modelCopy && snapshotsCopy)
  {
    v34.receiver = self;
    v34.super_class = MapsUIDiffableDataSourceOutlineNodeSnapshot;
    self = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)&v34 init];
    if (self)
    {
      v15 = [pathCopy copy];
      identifierPath = self->_identifierPath;
      self->_identifierPath = v15;

      objc_storeStrong(&self->_viewModel, model);
      v17 = [v13 copy];
      childSnapshots = self->_childSnapshots;
      self->_childSnapshots = v17;

      self->_expanded = expanded;
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

          selfCopy = 0;
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
    selfCopy = self;
  }

LABEL_11:

  return selfCopy;
}

@end