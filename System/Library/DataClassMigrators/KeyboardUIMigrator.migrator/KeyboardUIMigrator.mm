@interface KeyboardUIMigrator
- (BOOL)performMigration;
- (CPBitmapStore)store;
- (float)estimatedDuration;
- (void)dealloc;
@end

@implementation KeyboardUIMigrator

- (void)dealloc
{
  store = self->_store;
  if (store)
  {
  }

  v4.receiver = self;
  v4.super_class = KeyboardUIMigrator;
  [(KeyboardUIMigrator *)&v4 dealloc];
}

- (CPBitmapStore)store
{
  result = self->_store;
  if (!result)
  {
    v4 = [CPBitmapStore alloc];
    v5 = [NSString pathWithComponents:[NSArray arrayWithObjects:CPSharedResourcesDirectory(), @"Library", @"Caches", @"com.apple.keyboards", 0]];
    if (qword_8188 != -1)
    {
      sub_E90();
    }

    result = [v4 initWithPath:v5 version:dword_8190];
    self->_store = result;
  }

  return result;
}

- (float)estimatedDuration
{
  v3 = [(CPBitmapStore *)[(KeyboardUIMigrator *)self store] version];
  if (qword_8188 != -1)
  {
    sub_E90();
  }

  if (v3 == dword_8190)
  {
    return 0.012;
  }

  v5 = [(CPBitmapStore *)[(KeyboardUIMigrator *)self store] imageCount]* 0.2;
  return v5 + 0.012;
}

- (BOOL)performMigration
{
  v3 = [(CPBitmapStore *)[(KeyboardUIMigrator *)self store] version];
  if (qword_8188 != -1)
  {
    sub_E90();
  }

  if (v3 != dword_8190)
  {
    [(CPBitmapStore *)[(KeyboardUIMigrator *)self store] purge];
  }

  return 1;
}

@end