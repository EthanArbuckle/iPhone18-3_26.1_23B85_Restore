@interface _LAKeyStoreBackendKeychain
- (BOOL)createGenericPasswordWithQuery:(id)a3 error:(id *)a4;
- (BOOL)createKeyWithQuery:(id)a3 error:(id *)a4;
- (BOOL)removeItemsWithQuery:(id)a3 error:(id *)a4;
- (id)fetchItemWithQuery:(id)a3 error:(id *)a4;
- (id)fetchItemsWithQuery:(id)a3 error:(id *)a4;
@end

@implementation _LAKeyStoreBackendKeychain

- (BOOL)createKeyWithQuery:(id)a3 error:(id *)a4
{
  error = 0;
  v5 = SecKeyCreateRandomKey(a3, &error);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = error;
  if (a4 && error)
  {
    *a4 = error;
    v6 = error;
  }

  v7 = v6 == 0;

  return v7;
}

- (BOOL)createGenericPasswordWithQuery:(id)a3 error:(id *)a4
{
  v5 = SecItemAdd(a3, 0);
  if (v5)
  {
    v6 = [LAAuthorizationError genericErrorWithStatus:v5];

    if (a4)
    {
      if (v6)
      {
        *a4 = [LAAuthorizationError genericErrorWithStatus:v5];
      }
    }
  }

  return v5 == 0;
}

- (id)fetchItemWithQuery:(id)a3 error:(id *)a4
{
  result = 0;
  v5 = SecItemCopyMatching(a3, &result);
  v6 = result;
  if (v5)
  {
    if (result)
    {
      CFRelease(result);
    }

    v7 = [LAAuthorizationError genericErrorWithStatus:v5];

    v6 = MEMORY[0x1E695E0F8];
    if (a4 && v7)
    {
      *a4 = [LAAuthorizationError genericErrorWithStatus:v5];
      v6 = MEMORY[0x1E695E0F8];
    }
  }

  return v6;
}

- (id)fetchItemsWithQuery:(id)a3 error:(id *)a4
{
  result = 0;
  v5 = SecItemCopyMatching(a3, &result);
  v6 = result;
  if (v5)
  {
    if (result)
    {
      CFRelease(result);
    }

    v7 = [LAAuthorizationError genericErrorWithStatus:v5];

    v6 = MEMORY[0x1E695E0F0];
    if (a4 && v7)
    {
      *a4 = [LAAuthorizationError genericErrorWithStatus:v5];
      v6 = MEMORY[0x1E695E0F0];
    }
  }

  return v6;
}

- (BOOL)removeItemsWithQuery:(id)a3 error:(id *)a4
{
  v5 = SecItemDelete(a3);
  v6 = v5;
  if (v5 != -25300)
  {
    if (v5)
    {
      v7 = [LAAuthorizationError genericErrorWithStatus:v5];

      if (a4)
      {
        if (v7)
        {
          *a4 = [LAAuthorizationError genericErrorWithStatus:v6];
        }
      }
    }
  }

  return !v6 || v6 == -25300;
}

@end