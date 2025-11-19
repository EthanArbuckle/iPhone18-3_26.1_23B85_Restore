@interface _CFPrefsPendingKVONotification
- (id)oldValues;
- (id)source;
- (id)values;
- (void)dealloc;
- (void)setOldValues:(void *)a1;
- (void)setSource:(void *)a1;
- (void)setValues:(void *)a1;
@end

@implementation _CFPrefsPendingKVONotification

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  v4.receiver = self;
  v4.super_class = _CFPrefsPendingKVONotification;
  [(_CFPrefsPendingKVONotification *)&v4 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

- (id)source
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_9(result, a2, 8);
  }

  return result;
}

- (void)setSource:(void *)a1
{
  if (a1)
  {
    objc_setProperty_atomic(a1, newValue, newValue, 8);
  }
}

- (id)oldValues
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_9(result, a2, 16);
  }

  return result;
}

- (void)setOldValues:(void *)a1
{
  if (a1)
  {
    objc_setProperty_atomic(a1, newValue, newValue, 16);
  }
}

- (id)values
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_9(result, a2, 24);
  }

  return result;
}

- (void)setValues:(void *)a1
{
  if (a1)
  {
    objc_setProperty_atomic(a1, newValue, newValue, 24);
  }
}

@end