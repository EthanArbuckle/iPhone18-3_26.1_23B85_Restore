@interface NSKeyValueChangeDictionary
- (NSKeyValueChangeDictionary)initWithDetailsNoCopy:(id *)a3 originalObservable:(id)a4 isPriorNotification:(BOOL)a5;
- (id)keyEnumerator;
- (id)objectForKey:(id)a3;
- (unint64_t)count;
- (void)dealloc;
- (void)retainObjects;
- (void)setDetailsNoCopy:(id *)a3 originalObservable:(id)a4;
- (void)setOriginalObservable:(id)a3;
@end

@implementation NSKeyValueChangeDictionary

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  if (self->_isRetainingObjects)
  {

    self->_isRetainingObjects = 0;
  }

  v3.receiver = self;
  v3.super_class = NSKeyValueChangeDictionary;
  [(NSKeyValueChangeDictionary *)&v3 dealloc];
}

- (unint64_t)count
{
  v2 = 1;
  if (self->_details.oldValue)
  {
    v2 = 2;
  }

  if (self->_details.newValue)
  {
    ++v2;
  }

  if (self->_details.indexes)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = v2;
  }

  if (self->_originalObservable)
  {
    ++v3;
  }

  return v3 + self->_isPriorNotification;
}

- (id)keyEnumerator
{
  v9[8] = *MEMORY[0x1E69E9840];
  v7 = @"kind";
  if (self->_details.oldValue)
  {
    v2 = v9;
    v8 = @"old";
    v3 = 2;
  }

  else
  {
    v2 = &v8;
    v3 = 1;
  }

  if (self->_details.newValue)
  {
    ++v3;
    *v2 = @"new";
  }

  if (self->_details.indexes)
  {
    *(&v7 + v3++) = @"indexes";
  }

  if (self->_originalObservable)
  {
    *(&v7 + v3++) = @"originalObservable";
  }

  if (self->_isPriorNotification)
  {
    *(&v7 + v3++) = @"notificationIsPrior";
  }

  v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:&v7 count:v3];
  v5 = [v4 objectEnumerator];

  return v5;
}

- (void)retainObjects
{
  if (!self->_isRetainingObjects)
  {
    p_details = &self->_details;
    v4 = self->_details.oldValue;
    v5 = p_details->newValue;
    v6 = p_details->indexes;
    v7 = self->_originalObservable;
    self->_isRetainingObjects = 1;
  }
}

- (NSKeyValueChangeDictionary)initWithDetailsNoCopy:(id *)a3 originalObservable:(id)a4 isPriorNotification:(BOOL)a5
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = NSKeyValueChangeDictionary;
  result = [(NSKeyValueChangeDictionary *)&v11 init];
  if (result)
  {
    var4 = a3->var4;
    v10 = *&a3->var2;
    *&result->_details.kind = *&a3->var0;
    *&result->_details.newValue = v10;
    result->_details.extraData = var4;
    result->_originalObservable = a4;
    result->_isPriorNotification = a5;
  }

  return result;
}

- (void)setDetailsNoCopy:(id *)a3 originalObservable:(id)a4
{
  if (self->_isRetainingObjects)
  {
    p_details = &self->_details;

    self->_isRetainingObjects = 0;
  }

  v8 = *&a3->var0;
  v9 = *&a3->var2;
  self->_details.extraData = a3->var4;
  *&self->_details.kind = v8;
  *&self->_details.newValue = v9;
  self->_originalObservable = a4;
}

- (void)setOriginalObservable:(id)a3
{
  originalObservable = self->_originalObservable;
  if (originalObservable != a3)
  {
    if (self->_isRetainingObjects)
    {
      v6 = a3;

      a3 = v6;
    }

    self->_originalObservable = a3;
    if (self->_isRetainingObjects)
    {

      v5 = a3;
    }
  }
}

- (id)objectForKey:(id)a3
{
  if (@"kind" != a3)
  {
    if (@"new" == a3)
    {
      return self->_details.newValue;
    }

    if (@"old" == a3)
    {
      return self->_details.oldValue;
    }

    if (@"indexes" == a3)
    {
      return self->_details.indexes;
    }

    if (a3 != @"originalObservable")
    {
      if (@"notificationIsPrior" == a3 && self->_isPriorNotification)
      {
        return *MEMORY[0x1E695E4D0];
      }

      if ([a3 isEqualToString:?])
      {
        goto LABEL_10;
      }

      if ([a3 isEqualToString:@"new"])
      {
        return self->_details.newValue;
      }

      if ([a3 isEqualToString:@"old"])
      {
        return self->_details.oldValue;
      }

      if ([a3 isEqualToString:@"indexes"])
      {
        return self->_details.indexes;
      }

      if (![a3 isEqualToString:0x1EEF09E30])
      {
        if (![a3 isEqualToString:@"notificationIsPrior"])
        {
          return 0;
        }

        if (self->_isPriorNotification)
        {
          return *MEMORY[0x1E695E4D0];
        }

        return 0;
      }
    }

    return self->_originalObservable;
  }

LABEL_10:
  kind = self->_details.kind;

  return [NSNumber numberWithInteger:kind];
}

@end