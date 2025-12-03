@interface NSKeyValueChangeDictionary
- (NSKeyValueChangeDictionary)initWithDetailsNoCopy:(id *)copy originalObservable:(id)observable isPriorNotification:(BOOL)notification;
- (id)keyEnumerator;
- (id)objectForKey:(id)key;
- (unint64_t)count;
- (void)dealloc;
- (void)retainObjects;
- (void)setDetailsNoCopy:(id *)copy originalObservable:(id)observable;
- (void)setOriginalObservable:(id)observable;
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
  objectEnumerator = [v4 objectEnumerator];

  return objectEnumerator;
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

- (NSKeyValueChangeDictionary)initWithDetailsNoCopy:(id *)copy originalObservable:(id)observable isPriorNotification:(BOOL)notification
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = NSKeyValueChangeDictionary;
  result = [(NSKeyValueChangeDictionary *)&v11 init];
  if (result)
  {
    var4 = copy->var4;
    v10 = *&copy->var2;
    *&result->_details.kind = *&copy->var0;
    *&result->_details.newValue = v10;
    result->_details.extraData = var4;
    result->_originalObservable = observable;
    result->_isPriorNotification = notification;
  }

  return result;
}

- (void)setDetailsNoCopy:(id *)copy originalObservable:(id)observable
{
  if (self->_isRetainingObjects)
  {
    p_details = &self->_details;

    self->_isRetainingObjects = 0;
  }

  v8 = *&copy->var0;
  v9 = *&copy->var2;
  self->_details.extraData = copy->var4;
  *&self->_details.kind = v8;
  *&self->_details.newValue = v9;
  self->_originalObservable = observable;
}

- (void)setOriginalObservable:(id)observable
{
  originalObservable = self->_originalObservable;
  if (originalObservable != observable)
  {
    if (self->_isRetainingObjects)
    {
      observableCopy = observable;

      observable = observableCopy;
    }

    self->_originalObservable = observable;
    if (self->_isRetainingObjects)
    {

      observableCopy2 = observable;
    }
  }
}

- (id)objectForKey:(id)key
{
  if (@"kind" != key)
  {
    if (@"new" == key)
    {
      return self->_details.newValue;
    }

    if (@"old" == key)
    {
      return self->_details.oldValue;
    }

    if (@"indexes" == key)
    {
      return self->_details.indexes;
    }

    if (key != @"originalObservable")
    {
      if (@"notificationIsPrior" == key && self->_isPriorNotification)
      {
        return *MEMORY[0x1E695E4D0];
      }

      if ([key isEqualToString:?])
      {
        goto LABEL_10;
      }

      if ([key isEqualToString:@"new"])
      {
        return self->_details.newValue;
      }

      if ([key isEqualToString:@"old"])
      {
        return self->_details.oldValue;
      }

      if ([key isEqualToString:@"indexes"])
      {
        return self->_details.indexes;
      }

      if (![key isEqualToString:0x1EEF09E30])
      {
        if (![key isEqualToString:@"notificationIsPrior"])
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