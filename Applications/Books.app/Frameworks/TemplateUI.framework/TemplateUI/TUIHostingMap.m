@interface TUIHostingMap
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMap:(id)a3;
- (TUIHostingMap)initWithMap:(id)a3 order:(id)a4;
- (id)description;
- (id)reverseEnumeratorForGroup:(id)a3;
@end

@implementation TUIHostingMap

- (TUIHostingMap)initWithMap:(id)a3 order:(id)a4
{
  v6 = a3;
  v7 = a4;
  v37.receiver = self;
  v37.super_class = TUIHostingMap;
  v8 = [(TUIHostingMap *)&v37 init];
  if (v8)
  {
    v9 = [v6 copy];
    map = v8->_map;
    v8->_map = v9;

    v11 = [v7 copy];
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
            v22 = [v6 objectForKeyedSubscript:{v21, v29}];
            v23 = [v22 groupIdentifier];

            if (v23)
            {
              v24 = [v15 objectForKeyedSubscript:v23];
              if (!v24)
              {
                v24 = objc_opt_new();
                [v15 setObject:v24 forKeyedSubscript:v23];
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
      v31 = v6;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 != objc_opt_class() || v4 == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(TUIHostingMap *)self isEqualToMap:v4];
  }

  return v7;
}

- (BOOL)isEqualToMap:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    map = self->_map;
    v8 = [v5 map];
    if (map == v8 || (v9 = self->_map, [v6 map], v3 = objc_claimAutoreleasedReturnValue(), -[NSDictionary isEqualToDictionary:](v9, "isEqualToDictionary:", v3)))
    {
      order = self->_order;
      v12 = [v6 order];
      v13 = v12;
      if (order == v12)
      {

        v10 = 1;
      }

      else
      {
        v14 = self->_order;
        v15 = [v6 order];
        v10 = [(NSArray *)v14 isEqualToArray:v15];
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

- (id)reverseEnumeratorForGroup:(id)a3
{
  v3 = [(NSDictionary *)self->_groupMap objectForKeyedSubscript:a3];
  v4 = [v3 reverseObjectEnumerator];

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ %p map=%@ order=%@ groups=%@>", v4, self, self->_map, self->_order, self->_groupMap];

  return v5;
}

@end