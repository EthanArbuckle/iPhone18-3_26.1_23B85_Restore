@interface TUIVisibilityChangeNode
- (TUIVisibilityChangeNode)initWithIdentifiers:(id)a3 added:(id)a4 removed:(id)a5 identifierNodeMap:(id)a6 attributesMap:(id)a7;
- (id)newAdded;
- (id)newRemoved;
@end

@implementation TUIVisibilityChangeNode

- (TUIVisibilityChangeNode)initWithIdentifiers:(id)a3 added:(id)a4 removed:(id)a5 identifierNodeMap:(id)a6 attributesMap:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = TUIVisibilityChangeNode;
  v17 = [(TUIVisibilityChangeNode *)&v29 init];
  if (v17)
  {
    v18 = [v12 copy];
    identifiers = v17->_identifiers;
    v17->_identifiers = v18;

    v20 = [v13 copy];
    added = v17->_added;
    v17->_added = v20;

    v22 = [v14 copy];
    removed = v17->_removed;
    v17->_removed = v22;

    v24 = [v15 copy];
    identifierNodeMap = v17->_identifierNodeMap;
    v17->_identifierNodeMap = v24;

    v26 = [v16 copy];
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