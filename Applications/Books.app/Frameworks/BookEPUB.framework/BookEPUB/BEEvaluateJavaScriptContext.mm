@interface BEEvaluateJavaScriptContext
- (id)_jsonRepresentation;
- (id)_transformResults:(id)a3 error:(id)a4;
- (void)addScriptToEvaluate:(id)a3 key:(id)a4 transform:(id)a5;
@end

@implementation BEEvaluateJavaScriptContext

- (void)addScriptToEvaluate:(id)a3 key:(id)a4 transform:(id)a5
{
  v18 = a3;
  v8 = a4;
  v9 = a5;
  if ([v18 length])
  {
    if (!self->_scripts)
    {
      v10 = objc_alloc_init(NSMutableDictionary);
      scripts = self->_scripts;
      self->_scripts = v10;
    }

    if (!self->_scriptKeyOrdered)
    {
      v12 = objc_alloc_init(NSMutableArray);
      scriptKeyOrdered = self->_scriptKeyOrdered;
      self->_scriptKeyOrdered = v12;
    }

    if (!self->_transforms)
    {
      v14 = objc_alloc_init(NSMutableDictionary);
      transforms = self->_transforms;
      self->_transforms = v14;
    }

    [(NSMutableDictionary *)self->_scripts setObject:v18 forKeyedSubscript:v8];
    [(NSMutableArray *)self->_scriptKeyOrdered addObject:v8];
    if (v9)
    {
      v16 = [v9 copy];
      v17 = objc_retainBlock(v16);
      [(NSMutableDictionary *)self->_transforms setObject:v17 forKeyedSubscript:v8];
    }
  }
}

- (id)_jsonRepresentation
{
  v3 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_scriptKeyOrdered;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_scripts objectForKeyedSubscript:v9];
        v11 = [NSString stringWithFormat:@"%@: () => { return %@ }", v9, v10, v14];
        [v3 addObject:v11];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [v3 componentsJoinedByString:{@", "}];

  return v12;
}

- (id)_transformResults:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1EFD0;
  v13[3] = &unk_328C00;
  v13[4] = self;
  v14 = v6;
  v8 = objc_opt_new();
  v15 = v8;
  v9 = v6;
  [v7 enumerateKeysAndObjectsUsingBlock:v13];

  v10 = v15;
  v11 = v8;

  return v8;
}

@end