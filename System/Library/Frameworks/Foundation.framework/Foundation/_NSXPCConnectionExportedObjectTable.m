@interface _NSXPCConnectionExportedObjectTable
- (_NSXPCConnectionExportedObjectTable)init;
- (id)description;
- (id)exportedObjectForProxyNumber:(id)result;
- (id)interfaceForProxyNumber:(id)result;
- (uint64_t)proxyNumberForExportedObject:(const void *)a3 interface:;
- (void)dealloc;
- (void)invalidate;
- (void)receivedReleaseForProxyNumber:(dispatch_queue_t)queue userQueue:;
- (void)setExportedObject:(const void *)a3 forProxyNumber:;
- (void)setInterface:(const void *)a3 forProxyNumber:;
@end

@implementation _NSXPCConnectionExportedObjectTable

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  objectToProxyNumber = self->_objectToProxyNumber;
  if (objectToProxyNumber)
  {
    CFRelease(objectToProxyNumber);
  }

  proxyNumberToObject = self->_proxyNumberToObject;
  if (proxyNumberToObject)
  {
    CFRelease(proxyNumberToObject);
  }

  proxyNumberToInterface = self->_proxyNumberToInterface;
  if (proxyNumberToInterface)
  {
    CFRelease(proxyNumberToInterface);
  }

  dispatch_release(self->_replyGroup);
  v6.receiver = self;
  v6.super_class = _NSXPCConnectionExportedObjectTable;
  [(_NSXPCConnectionExportedObjectTable *)&v6 dealloc];
}

- (void)invalidate
{
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    *(a1 + 68) = 0;
    v2 = *(a1 + 40);
    if (v2)
    {
      CFDictionaryRemoveAllValues(v2);
    }

    v3 = *(a1 + 24);
    if (v3)
    {
      CFDictionaryRemoveAllValues(v3);
    }

    v4 = *(a1 + 32);
    if (v4)
    {
      CFDictionaryRemoveAllValues(v4);
    }

    *(a1 + 8) = 0;
    *(a1 + 16) = 0;

    os_unfair_lock_unlock((a1 + 64));
  }
}

- (_NSXPCConnectionExportedObjectTable)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = _NSXPCConnectionExportedObjectTable;
  v2 = [(_NSXPCConnectionExportedObjectTable *)&v4 init];
  v2->_next = 2;
  v2->_lock._os_unfair_lock_opaque = 0;
  v2->_valid = 1;
  v2->_replyGroup = dispatch_group_create();
  return v2;
}

- (void)setExportedObject:(const void *)a3 forProxyNumber:
{
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    if (a3 == 1)
    {
      v6 = *(a1 + 8);
      if (v6 != a2)
      {

        *(a1 + 8) = a2;
      }
    }

    else
    {
      _createTablesIfNeeded_locked(a1);
      CFDictionarySetValue(*(a1 + 24), a3, a2);
    }

    os_unfair_lock_unlock((a1 + 64));
  }
}

- (id)exportedObjectForProxyNumber:(id)result
{
  if (result)
  {
    v3 = result;
    os_unfair_lock_lock_with_options();
    if (a2 == 1)
    {
      Value = *(v3 + 1);
    }

    else
    {
      _createTablesIfNeeded_locked(v3);
      Value = CFDictionaryGetValue(*(v3 + 3), a2);
    }

    v5 = Value;
    os_unfair_lock_unlock(v3 + 16);

    return Value;
  }

  return result;
}

- (void)setInterface:(const void *)a3 forProxyNumber:
{
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    if (*(a1 + 68) == 1)
    {
      if (a3 == 1)
      {
        v6 = *(a1 + 16);
        if (v6 != a2)
        {

          *(a1 + 16) = a2;
        }
      }

      else
      {
        _createTablesIfNeeded_locked(a1);
        CFDictionarySetValue(*(a1 + 32), a3, a2);
      }
    }

    os_unfair_lock_unlock((a1 + 64));
  }
}

- (id)interfaceForProxyNumber:(id)result
{
  if (result)
  {
    v3 = result;
    os_unfair_lock_lock_with_options();
    if (a2 == 1)
    {
      Value = *(v3 + 2);
    }

    else
    {
      _createTablesIfNeeded_locked(v3);
      Value = CFDictionaryGetValue(*(v3 + 4), a2);
    }

    v5 = Value;
    os_unfair_lock_unlock(v3 + 16);

    return Value;
  }

  return result;
}

- (uint64_t)proxyNumberForExportedObject:(const void *)a3 interface:
{
  if (!a1)
  {
    return 0;
  }

  os_unfair_lock_lock_with_options();
  _createTablesIfNeeded_locked(a1);
  if (*(a1 + 68) == 1)
  {
    v6 = *(a1 + 56);
    *(a1 + 56) = v6 + 1;
    CFDictionarySetValue(*(a1 + 24), v6, a2);
    CFDictionarySetValue(*(a1 + 32), v6, a3);
    CFDictionarySetValue(*(a1 + 40), a2, v6);
  }

  else
  {
    v6 = -1;
  }

  os_unfair_lock_unlock((a1 + 64));
  return v6;
}

- (void)receivedReleaseForProxyNumber:(dispatch_queue_t)queue userQueue:
{
  block[6] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = *(a1 + 48);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79___NSXPCConnectionExportedObjectTable_receivedReleaseForProxyNumber_userQueue___block_invoke;
    block[3] = &unk_1E69F4618;
    block[4] = a1;
    block[5] = a2;
    dispatch_group_notify(v3, queue, block);
  }
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = _NSXPCConnectionExportedObjectTable;
  return [NSString stringWithFormat:@"%@ : Root Obj: %p Root Ifc: %p Object->PN: %p PN->Object: %p", [(_NSXPCConnectionExportedObjectTable *)&v3 description], self->_proxy1Object, self->_proxy1Interface, self->_objectToProxyNumber, self->_proxyNumberToObject];
}

@end