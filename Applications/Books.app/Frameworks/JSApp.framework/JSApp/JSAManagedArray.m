@interface JSAManagedArray
- (JSAManagedArray)initWithArray:(id)a3 ownerObject:(id)a4;
- (id)jsValuesWithContext:(id)a3;
- (void)dealloc;
@end

@implementation JSAManagedArray

- (JSAManagedArray)initWithArray:(id)a3 ownerObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30.receiver = self;
  v30.super_class = JSAManagedArray;
  v8 = [(JSAManagedArray *)&v30 init];
  v9 = v8;
  if (v8)
  {
    v24 = v7;
    objc_storeStrong(&v8->_ownerObject, a4);
    v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v25 = v6;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (!v12)
    {
      goto LABEL_15;
    }

    v13 = v12;
    v14 = *v27;
    while (1)
    {
      v15 = 0;
      do
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v26 + 1) + 8 * v15);
        objc_opt_class();
        v17 = BUDynamicCast();
        v18 = [v17 isObject];

        if (v18)
        {
          v19 = [JSManagedValue managedValueWithValue:v16 andOwner:v9->_ownerObject];
LABEL_10:
          [(NSArray *)v10 addObject:v19, v24];
          goto LABEL_11;
        }

        v19 = [v16 toObject];
        if (v19)
        {
          goto LABEL_10;
        }

        v20 = +[NSNull null];
        [(NSArray *)v10 addObject:v20];

LABEL_11:
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v21 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
      v13 = v21;
      if (!v21)
      {
LABEL_15:

        managedArray = v9->_managedArray;
        v9->_managedArray = v10;

        v7 = v24;
        v6 = v25;
        break;
      }
    }
  }

  return v9;
}

- (void)dealloc
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = self->_managedArray;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        objc_opt_class();
        v9 = BUDynamicCast();
        v10 = [v9 value];

        v11 = [v10 context];
        v12 = [v11 virtualMachine];
        [v12 removeManagedReference:v8 withOwner:self->_ownerObject];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v13.receiver = self;
  v13.super_class = JSAManagedArray;
  [(JSAManagedArray *)&v13 dealloc];
}

- (id)jsValuesWithContext:(id)a3
{
  v4 = a3;
  v5 = [NSMutableArray arrayWithCapacity:[(NSArray *)self->_managedArray count]];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_managedArray;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v11 value];
        }

        else
        {
          [JSValue valueWithObject:v11 inContext:v4, v15];
        }
        v12 = ;
        if (v12)
        {
          [v5 addObject:v12];
        }

        else
        {
          v13 = +[NSNull null];
          [v5 addObject:v13];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

@end