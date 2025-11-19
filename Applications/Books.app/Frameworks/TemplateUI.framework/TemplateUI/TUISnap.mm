@interface TUISnap
- (BOOL)isEqual:(id)a3;
- (TUISnap)initWithValue:(double)a3;
- (TUISnap)initWithValues:(id)a3;
- (TUISnap)snapWithIdentifier:(id)a3;
- (TUISnap)snapWithMax:(double)a3;
- (TUISnap)snapWithStep:(double)a3;
- (double)valueForValue:(double)a3;
- (id)_valueForValue:(double)a3;
- (id)description;
- (id)identifierForValue:(double)a3;
- (id)snapByAddingValue:(double)a3;
- (unint64_t)stepForValue:(double)a3;
@end

@implementation TUISnap

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 == self;
  if (v6)
  {
    v8 = v6 == self;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v7 = [(NSArray *)self->_values isEqualToArray:v6->_values];
  }

  return v7;
}

- (TUISnap)initWithValue:(double)a3
{
  v9.receiver = self;
  v9.super_class = TUISnap;
  v4 = [(TUISnap *)&v9 init];
  if (v4)
  {
    v5 = [[_TUISnapValue alloc] initWithValue:a3];
    v10 = v5;
    v6 = [NSArray arrayWithObjects:&v10 count:1];
    values = v4->_values;
    v4->_values = v6;
  }

  return v4;
}

- (TUISnap)initWithValues:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TUISnap;
  v6 = [(TUISnap *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_values, a3);
  }

  return v7;
}

- (id)description
{
  v3 = objc_opt_new();
  [v3 appendString:@"["];
  values = self->_values;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_7B720;
  v7[3] = &unk_260350;
  v5 = v3;
  v8 = v5;
  [(NSArray *)values enumerateObjectsUsingBlock:v7];
  [v5 appendString:@"]"];

  return v5;
}

- (id)snapByAddingValue:(double)a3
{
  values = self->_values;
  v4 = [[_TUISnapValue alloc] initWithValue:a3];
  v5 = [(NSArray *)values arrayByAddingObject:v4];

  v6 = [[TUISnap alloc] initWithValues:v5];

  return v6;
}

- (TUISnap)snapWithIdentifier:(id)a3
{
  values = self->_values;
  v5 = a3;
  v6 = [(NSArray *)values lastObject];
  v7 = [v6 valueWithIdentifier:v5];

  v8 = [(NSArray *)self->_values mutableCopy];
  [v8 removeLastObject];
  [v8 addObject:v7];
  v9 = [[TUISnap alloc] initWithValues:v8];

  return v9;
}

- (TUISnap)snapWithStep:(double)a3
{
  v5 = [(NSArray *)self->_values lastObject];
  v6 = [v5 valueWithStep:a3];

  v7 = [(NSArray *)self->_values mutableCopy];
  [v7 removeLastObject];
  [v7 addObject:v6];
  v8 = [[TUISnap alloc] initWithValues:v7];

  return v8;
}

- (TUISnap)snapWithMax:(double)a3
{
  v5 = [(NSArray *)self->_values lastObject];
  v6 = [v5 valueWithMax:a3];

  v7 = [(NSArray *)self->_values mutableCopy];
  [v7 removeLastObject];
  [v7 addObject:v6];
  v8 = [[TUISnap alloc] initWithValues:v7];

  return v8;
}

- (id)_valueForValue:(double)a3
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_values;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v6)
  {

LABEL_14:
    v8 = [(NSArray *)self->_values firstObject];
    goto LABEL_15;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v16;
  while (2)
  {
    v10 = 0;
    v11 = v8;
    do
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v15 + 1) + 8 * v10);
      [v12 value];
      if (v13 > a3)
      {
        v8 = v11;
        goto LABEL_11;
      }

      v8 = v12;

      v10 = v10 + 1;
      v11 = v8;
    }

    while (v7 != v10);
    v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_11:

  if (!v8)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v8;
}

- (double)valueForValue:(double)a3
{
  v4 = [(TUISnap *)self _valueForValue:?];
  [v4 valueForStep:{objc_msgSend(v4, "stepForValue:", a3)}];
  v6 = v5;

  return v6;
}

- (id)identifierForValue:(double)a3
{
  v3 = [(TUISnap *)self _valueForValue:a3];
  v4 = [v3 identifier];

  return v4;
}

- (unint64_t)stepForValue:(double)a3
{
  v4 = [(TUISnap *)self _valueForValue:?];
  v5 = [v4 stepForValue:a3];

  return v5;
}

@end