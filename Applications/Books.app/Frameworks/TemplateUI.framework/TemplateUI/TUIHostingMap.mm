@interface TUIHostingMap
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMap:(id)map;
- (TUIHostingMap)initWithMap:(id)map order:(id)order;
- (id)description;
- (id)reverseEnumeratorForGroup:(id)group;
@end

@implementation TUIHostingMap

- (TUIHostingMap)initWithMap:(id)map order:(id)order
{
  mapCopy = map;
  orderCopy = order;
  v37.receiver = self;
  v37.super_class = TUIHostingMap;
  v8 = [(TUIHostingMap *)&v37 init];
  if (v8)
  {
    v9 = [mapCopy copy];
    map = v8->_map;
    v8->_map = v9;

    v11 = [orderCopy copy];
    order = v8->_order;
    v8->_order = v11;

    v13 = v8->_order ? [[NSSet alloc] initWithArray:v8->_order] : 0;
    identifiers = v8->_identifiers;
    v8->_identifiers = v13;

    if ([(NSArray *)v8->_order count])
    {
      v15 = objc_opt_new();
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v29 = v8;
      v16 = v8->_order;
      v17 = [(NSArray *)v16 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v34;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v34 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v33 + 1) + 8 * i);
            v22 = [mapCopy objectForKeyedSubscript:{v21, v29}];
            groupIdentifier = [v22 groupIdentifier];

            if (groupIdentifier)
            {
              v24 = [v15 objectForKeyedSubscript:groupIdentifier];
              if (!v24)
              {
                v24 = objc_opt_new();
                [v15 setObject:v24 forKeyedSubscript:groupIdentifier];
              }

              [v24 addObject:v21];
            }
          }

          v18 = [(NSArray *)v16 countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v18);
      }

      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_18FC0;
      v30[3] = &unk_25E038;
      v31 = mapCopy;
      v8 = v29;
      v25 = v29;
      v32 = v25;
      [v15 enumerateKeysAndObjectsUsingBlock:v30];
      v26 = [v15 copy];
      groupMap = v25->_groupMap;
      v25->_groupMap = v26;
    }
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 != objc_opt_class() || equalCopy == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(TUIHostingMap *)self isEqualToMap:equalCopy];
  }

  return v7;
}

- (BOOL)isEqualToMap:(id)map
{
  mapCopy = map;
  v6 = mapCopy;
  if (mapCopy)
  {
    map = self->_map;
    v8 = [mapCopy map];
    if (map == v8 || (v9 = self->_map, [v6 map], v3 = objc_claimAutoreleasedReturnValue(), -[NSDictionary isEqualToDictionary:](v9, "isEqualToDictionary:", v3)))
    {
      order = self->_order;
      order = [v6 order];
      v13 = order;
      if (order == order)
      {

        v10 = 1;
      }

      else
      {
        v14 = self->_order;
        order2 = [v6 order];
        v10 = [(NSArray *)v14 isEqualToArray:order2];
      }

      if (map == v8)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_11:
    goto LABEL_12;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (id)reverseEnumeratorForGroup:(id)group
{
  v3 = [(NSDictionary *)self->_groupMap objectForKeyedSubscript:group];
  reverseObjectEnumerator = [v3 reverseObjectEnumerator];

  return reverseObjectEnumerator;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ %p map=%@ order=%@ groups=%@>", v4, self, self->_map, self->_order, self->_groupMap];

  return v5;
}

@end