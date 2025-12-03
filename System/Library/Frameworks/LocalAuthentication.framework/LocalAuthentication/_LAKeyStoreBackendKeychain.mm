@interface _LAKeyStoreBackendKeychain
- (BOOL)createGenericPasswordWithQuery:(id)query error:(id *)error;
- (BOOL)createKeyWithQuery:(id)query error:(id *)error;
- (BOOL)removeItemsWithQuery:(id)query error:(id *)error;
- (id)fetchItemWithQuery:(id)query error:(id *)error;
- (id)fetchItemsWithQuery:(id)query error:(id *)error;
@end

@implementation _LAKeyStoreBackendKeychain

- (BOOL)createKeyWithQuery:(id)query error:(id *)error
{
  error = 0;
  v5 = SecKeyCreateRandomKey(query, &error);
  if (v5)
  {
    CFRelease(v5);
  }

  errorCopy2 = error;
  if (error && error)
  {
    *error = error;
    errorCopy2 = error;
  }

  v7 = errorCopy2 == 0;

  return v7;
}

- (BOOL)createGenericPasswordWithQuery:(id)query error:(id *)error
{
  v5 = SecItemAdd(query, 0);
  if (v5)
  {
    v6 = [LAAuthorizationError genericErrorWithStatus:v5];

    if (error)
    {
      if (v6)
      {
        *error = [LAAuthorizationError genericErrorWithStatus:v5];
      }
    }
  }

  return v5 == 0;
}

- (id)fetchItemWithQuery:(id)query error:(id *)error
{
  result = 0;
  v5 = SecItemCopyMatching(query, &result);
  v6 = result;
  if (v5)
  {
    if (result)
    {
      CFRelease(result);
    }

    v7 = [LAAuthorizationError genericErrorWithStatus:v5];

    v6 = MEMORY[0x1E695E0F8];
    if (error && v7)
    {
      *error = [LAAuthorizationError genericErrorWithStatus:v5];
      v6 = MEMORY[0x1E695E0F8];
    }
  }

  return v6;
}

- (id)fetchItemsWithQuery:(id)query error:(id *)error
{
  result = 0;
  v5 = SecItemCopyMatching(query, &result);
  v6 = result;
  if (v5)
  {
    if (result)
    {
      CFRelease(result);
    }

    v7 = [LAAuthorizationError genericErrorWithStatus:v5];

    v6 = MEMORY[0x1E695E0F0];
    if (error && v7)
    {
      *error = [LAAuthorizationError genericErrorWithStatus:v5];
      v6 = MEMORY[0x1E695E0F0];
    }
  }

  return v6;
}

- (BOOL)removeItemsWithQuery:(id)query error:(id *)error
{
  v5 = SecItemDelete(query);
  v6 = v5;
  if (v5 != -25300)
  {
    if (v5)
    {
      v7 = [LAAuthorizationError genericErrorWithStatus:v5];

      if (error)
      {
        if (v7)
        {
          *error = [LAAuthorizationError genericErrorWithStatus:v6];
        }
      }
    }
  }

  return !v6 || v6 == -25300;
}

@end