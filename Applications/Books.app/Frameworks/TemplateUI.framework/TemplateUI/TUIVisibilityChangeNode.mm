@interface TUIVisibilityChangeNode
- (TUIVisibilityChangeNode)initWithIdentifiers:(id)identifiers added:(id)added removed:(id)removed identifierNodeMap:(id)map attributesMap:(id)attributesMap;
- (id)newAdded;
- (id)newRemoved;
@end

@implementation TUIVisibilityChangeNode

- (TUIVisibilityChangeNode)initWithIdentifiers:(id)identifiers added:(id)added removed:(id)removed identifierNodeMap:(id)map attributesMap:(id)attributesMap
{
  identifiersCopy = identifiers;
  addedCopy = added;
  removedCopy = removed;
  mapCopy = map;
  attributesMapCopy = attributesMap;
  v29.receiver = self;
  v29.super_class = TUIVisibilityChangeNode;
  v17 = [(TUIVisibilityChangeNode *)&v29 init];
  if (v17)
  {
    v18 = [identifiersCopy copy];
    identifiers = v17->_identifiers;
    v17->_identifiers = v18;

    v20 = [addedCopy copy];
    added = v17->_added;
    v17->_added = v20;

    v22 = [removedCopy copy];
    removed = v17->_removed;
    v17->_removed = v22;

    v24 = [mapCopy copy];
    identifierNodeMap = v17->_identifierNodeMap;
    v17->_identifierNodeMap = v24;

    v26 = [attributesMapCopy copy];
    attributesMap = v17->_attributesMap;
    v17->_attributesMap = v26;
  }

  return v17;
}

- (id)newAdded
{
  v3 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSDictionary count](self->_identifierNodeMap, "count")}];
  identifierNodeMap = self->_identifierNodeMap;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_19B78;
  v8[3] = &unk_25E060;
  v9 = v3;
  v5 = v3;
  [(NSDictionary *)identifierNodeMap enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [[TUIVisibilityChangeNode alloc] initWithIdentifiers:self->_identifiers added:self->_identifiers removed:0 identifierNodeMap:v5 attributesMap:self->_attributesMap];

  return v6;
}

- (id)newRemoved
{
  v3 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSDictionary count](self->_identifierNodeMap, "count")}];
  identifierNodeMap = self->_identifierNodeMap;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_19CD4;
  v8[3] = &unk_25E060;
  v9 = v3;
  v5 = v3;
  [(NSDictionary *)identifierNodeMap enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [[TUIVisibilityChangeNode alloc] initWithIdentifiers:self->_identifiers added:0 removed:self->_identifiers identifierNodeMap:v5 attributesMap:self->_attributesMap];

  return v6;
}

@end