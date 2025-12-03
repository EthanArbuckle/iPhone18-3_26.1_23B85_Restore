@interface _NSBundleDidLoadNotificationPayloadArray
- (_NSBundleDidLoadNotificationPayloadArray)initWithHeader:(const mach_header *)header;
- (id)objectAtIndex:(unint64_t)index;
- (unint64_t)count;
- (void)_generateStorageLocked;
- (void)dealloc;
@end

@implementation _NSBundleDidLoadNotificationPayloadArray

- (_NSBundleDidLoadNotificationPayloadArray)initWithHeader:(const mach_header *)header
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = _NSBundleDidLoadNotificationPayloadArray;
  result = [(_NSBundleDidLoadNotificationPayloadArray *)&v5 init];
  result->_lock._os_unfair_lock_opaque = 0;
  result->_libraryHeader = header;
  return result;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _NSBundleDidLoadNotificationPayloadArray;
  [(_NSBundleDidLoadNotificationPayloadArray *)&v3 dealloc];
}

- (void)_generateStorageLocked
{
  v3 = objc_copyClassNamesForImageHeader();
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  free(v3);
  self->_storage = v4;
}

- (unint64_t)count
{
  os_unfair_lock_lock(&self->_lock);
  storage = self->_storage;
  if (!storage)
  {
    [(_NSBundleDidLoadNotificationPayloadArray *)self _generateStorageLocked];
    storage = self->_storage;
  }

  v4 = [(NSArray *)storage count];
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (id)objectAtIndex:(unint64_t)index
{
  os_unfair_lock_lock(&self->_lock);
  storage = self->_storage;
  if (!storage)
  {
    [(_NSBundleDidLoadNotificationPayloadArray *)self _generateStorageLocked];
    storage = self->_storage;
  }

  v6 = [(NSArray *)storage objectAtIndex:index];
  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

@end