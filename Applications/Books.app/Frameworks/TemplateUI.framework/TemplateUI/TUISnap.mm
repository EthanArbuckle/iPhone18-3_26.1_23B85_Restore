@interface TUISnap
- (BOOL)isEqual:(id)equal;
- (TUISnap)initWithValue:(double)value;
- (TUISnap)initWithValues:(id)values;
- (TUISnap)snapWithIdentifier:(id)identifier;
- (TUISnap)snapWithMax:(double)max;
- (TUISnap)snapWithStep:(double)step;
- (double)valueForValue:(double)value;
- (id)_valueForValue:(double)value;
- (id)description;
- (id)identifierForValue:(double)value;
- (id)snapByAddingValue:(double)value;
- (unint64_t)stepForValue:(double)value;
@end

@implementation TUISnap

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = equalCopy;
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

- (TUISnap)initWithValue:(double)value
{
  v9.receiver = self;
  v9.super_class = TUISnap;
  v4 = [(TUISnap *)&v9 init];
  if (v4)
  {
    v5 = [[_TUISnapValue alloc] initWithValue:value];
    v10 = v5;
    v6 = [NSArray arrayWithObjects:&v10 count:1];
    values = v4->_values;
    v4->_values = v6;
  }

  return v4;
}

- (TUISnap)initWithValues:(id)values
{
  valuesCopy = values;
  v9.receiver = self;
  v9.super_class = TUISnap;
  v6 = [(TUISnap *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_values, values);
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

- (id)snapByAddingValue:(double)value
{
  values = self->_values;
  v4 = [[_TUISnapValue alloc] initWithValue:value];
  v5 = [(NSArray *)values arrayByAddingObject:v4];

  v6 = [[TUISnap alloc] initWithValues:v5];

  return v6;
}

- (TUISnap)snapWithIdentifier:(id)identifier
{
  values = self->_values;
  identifierCopy = identifier;
  lastObject = [(NSArray *)values lastObject];
  v7 = [lastObject valueWithIdentifier:identifierCopy];

  v8 = [(NSArray *)self->_values mutableCopy];
  [v8 removeLastObject];
  [v8 addObject:v7];
  v9 = [[TUISnap alloc] initWithValues:v8];

  return v9;
}

- (TUISnap)snapWithStep:(double)step
{
  lastObject = [(NSArray *)self->_values lastObject];
  v6 = [lastObject valueWithStep:step];

  v7 = [(NSArray *)self->_values mutableCopy];
  [v7 removeLastObject];
  [v7 addObject:v6];
  v8 = [[TUISnap alloc] initWithValues:v7];

  return v8;
}

- (TUISnap)snapWithMax:(double)max
{
  lastObject = [(NSArray *)self->_values lastObject];
  v6 = [lastObject valueWithMax:max];

  v7 = [(NSArray *)self->_values mutableCopy];
  [v7 removeLastObject];
  [v7 addObject:v6];
  v8 = [[TUISnap alloc] initWithValues:v7];

  return v8;
}

- (id)_valueForValue:(double)value
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
    firstObject = [(NSArray *)self->_values firstObject];
    goto LABEL_15;
  }

  v7 = v6;
  firstObject = 0;
  v9 = *v16;
  while (2)
  {
    v10 = 0;
    v11 = firstObject;
    do
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v15 + 1) + 8 * v10);
      [v12 value];
      if (v13 > value)
      {
        firstObject = v11;
        goto LABEL_11;
      }

      firstObject = v12;

      v10 = v10 + 1;
      v11 = firstObject;
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

  if (!firstObject)
  {
    goto LABEL_14;
  }

LABEL_15:

  return firstObject;
}

- (double)valueForValue:(double)value
{
  v4 = [(TUISnap *)self _valueForValue:?];
  [v4 valueForStep:{objc_msgSend(v4, "stepForValue:", value)}];
  v6 = v5;

  return v6;
}

- (id)identifierForValue:(double)value
{
  v3 = [(TUISnap *)self _valueForValue:value];
  identifier = [v3 identifier];

  return identifier;
}

- (unint64_t)stepForValue:(double)value
{
  v4 = [(TUISnap *)self _valueForValue:?];
  v5 = [v4 stepForValue:value];

  return v5;
}

@end