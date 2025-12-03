@interface NSKeyValueObservance
- (id)_initWithObserver:(id)observer property:(id)property options:(unint64_t)options context:(void *)context originalObservable:(id)observable;
- (id)description;
- (uint64_t)_safelyStore:(id *)store at:;
- (uint64_t)tryRetainMember:(uint64_t)result;
- (uint64_t)tryRetainMembers;
- (unint64_t)hash;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)releaseMembers;
@end

@implementation NSKeyValueObservance

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *(self + 40);
  if (v3)
  {
    objc_destroyWeak(&self->_observer);
    v3 = *(self + 40);
  }

  if ((v3 & 2) != 0)
  {
    if ((*(self + 41) & 1) == 0)
    {
      __assert_rtn("[NSKeyValueObservance dealloc]", "NSKeyValueObservationInfo.m", 548, "_isObservedByAnObservance");
    }

    objc_destroyWeak(&self->_originalObservableOrUnownedObserver.originalObservable);
  }

  v4.receiver = self;
  v4.super_class = NSKeyValueObservance;
  [(NSKeyValueObservance *)&v4 dealloc];
}

- (unint64_t)hash
{
  selfCopy = self;
  LODWORD(self) = 0;
  v13 = *MEMORY[0x1E69E9840];
  v10 = *(selfCopy + 8);
  v11 = *(selfCopy + 40) >> 4;
  v12 = *(selfCopy + 24);
  v3 = &v10 + 3;
  for (i = 44; i > 7; i -= 4)
  {
    v5 = *(v3 - 3) + 16 * self;
    v6 = *(v3 - 2) + 16 * (v5 ^ (16 * (v5 >> 28)));
    v7 = *(v3 - 1) + 16 * (v6 ^ (16 * (v6 >> 28)));
    v8 = *v3;
    v3 += 4;
    v9 = v8 + 16 * (v7 ^ (16 * (v7 >> 28)));
    self = (v9 ^ ((v9 & 0xF0000000) >> 24)) & ~(v9 & 0xF0000000);
  }

  return self;
}

- (uint64_t)_safelyStore:(id *)store at:
{
  if (object_isClass(obj))
  {
    result = 0;
LABEL_3:
    v7 = 0;
    *store = obj;
    goto LABEL_6;
  }

  if (!objc_initWeakOrNil(store, obj))
  {
    result = [obj _isDeallocating];
    if (result)
    {
      result = _NSKVOIsDeallocTracked(obj);
    }

    goto LABEL_3;
  }

  v7 = 1;
  result = 1;
LABEL_6:
  if ((self + 8) == store)
  {
    v13 = *(self + 40);
    v9 = (self + 40);
    v11 = v13 & 0xFA;
    v12 = 4;
  }

  else
  {
    if ((*(self + 41) & 1) == 0)
    {
      __assert_rtn("[NSKeyValueObservance _safelyStore:at:]", "NSKeyValueObservationInfo.m", 356, "_isObservedByAnObservance");
    }

    if ((self + 32) != store)
    {
      __assert_rtn("[NSKeyValueObservance _safelyStore:at:]", "NSKeyValueObservationInfo.m", 357, "ref == &(_originalObservableOrUnownedObserver.originalObservable)");
    }

    v10 = *(self + 40);
    v9 = (self + 40);
    v8 = v10;
    if (v7)
    {
      LOBYTE(v7) = 2;
    }

    else
    {
      LOBYTE(v7) = 0;
    }

    v11 = v8 & 0xF5;
    v12 = 8;
  }

  if (!result)
  {
    v12 = 0;
  }

  *v9 = v12 | v7 | v11;
  return result;
}

- (id)_initWithObserver:(id)observer property:(id)property options:(unint64_t)options context:(void *)context originalObservable:(id)observable
{
  optionsCopy = options;
  v20 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = NSKeyValueObservance;
  v12 = [(NSKeyValueObservance *)&v19 init];
  v13 = v12;
  if (v12)
  {
    *(v12 + 40) = *(v12 + 40) & 0xF | (16 * optionsCopy) & 0xBF;
    v12->_property = property;
    v12->_context = context;
    Class = object_getClass(observer);
    v15 = Class == NSKeyValueObservance || _NSKVONotifyingOriginalClassForIsa(Class) == NSKeyValueObservance;
    *(v13 + 41) = *(v13 + 41) & 0xFE | v15;
    [(NSKeyValueObservance *)v13 _safelyStore:observer at:(v13 + 8)];
    if (*(v13 + 41))
    {
      if (!observable)
      {
        __assert_rtn("[NSKeyValueObservance _initWithObserver:property:options:context:originalObservable:]", "NSKeyValueObservationInfo.m", 385, "inOriginalObservableOrNil != nil");
      }

      [(NSKeyValueObservance *)v13 _safelyStore:observable at:(v13 + 32)];
    }

    else
    {
      *(v13 + 32) = observer;
    }

    if (objc_opt_isKindOfClass())
    {
      v16 = 0;
    }

    else
    {
      v16 = 2;
    }

    *(v13 + 41) = *(v13 + 41) & 0xFD | v16;
    if (objc_opt_respondsToSelector())
    {
      v17 = 4;
    }

    else
    {
      v17 = 0;
    }

    *(v13 + 41) = *(v13 + 41) & 0xFB | v17;
  }

  return v13;
}

- (uint64_t)tryRetainMember:(uint64_t)result
{
  if (result)
  {
    v3 = *(result + 40);
    if ((result + 8) == location)
    {
      v4 = 4;
    }

    else
    {
      v4 = 8;
    }

    if ((v3 & v4) != 0)
    {
      if ((result + 8) == location)
      {
        v5 = 1;
      }

      else
      {
        v5 = 2;
      }

      if ((v3 & v5) == 0 || !objc_loadWeakRetained(location))
      {
        result = _NSKVOIsObservableBeingDeallocated(*location);
        if (result)
        {
          return *location != 0;
        }

        return result;
      }
    }

    else
    {
      v6 = *location;
      if (!object_isClass(*location))
      {
        v7 = v6;
      }
    }

    return 1;
  }

  return result;
}

- (uint64_t)tryRetainMembers
{
  if (result)
  {
    v1 = result;
    result = [(NSKeyValueObservance *)result tryRetainMember:?];
    if (result)
    {
      if ((*(v1 + 41) & 1) != 0 && ([(NSKeyValueObservance *)v1 tryRetainMember:?]& 1) == 0)
      {
        v2 = *(v1 + 8);
        if (!object_isClass(v2))
        {
        }

        return 0;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

- (void)releaseMembers
{
  if (self)
  {
    v2 = *(self + 8);
    if (!object_isClass(v2))
    {
    }

    if (*(self + 41))
    {
      v3 = *(self + 32);
      if (!object_isClass(v3))
      {
      }
    }
  }
}

- (id)description
{
  v3 = objc_opt_class();
  observer = self->_observer;
  keyPath = [(NSKeyValueProperty *)self->_property keyPath];
  v6 = *(self + 40);
  v7 = v6;
  if ((v6 >> 4))
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if (((v6 >> 4) & 2) != 0)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (v7 < 0)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  return [NSString stringWithFormat:@"<%@ %p: Observer: %p, Key path: %@, Options: <New: %@, Old: %@, Prior: %@> Context: %p, Property: %p>", v3, self, observer, keyPath, v8, v9, v10, self->_context, self->_property];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  v16 = *MEMORY[0x1E69E9840];
  v9 = [change objectForKey:{0x1EEF09E30, object}];
  if (v9)
  {
    v10 = v9;
    if (context)
    {
      v15 = 0;
      v11 = [context dependentValueKeyOrKeysIsASet:&v15];
      if ([objc_msgSend(changeCopy objectForKey:{@"notificationIsPrior", "BOOLValue"}])
      {
        NSKeyValueWillChangeForObservance(v10, v11, v15, self);
      }

      else
      {
        NSKeyValueDidChangeForObservance(v10, v11, v15, self);
      }
    }

    else if ([(NSKeyValueObservance *)self tryRetainMembers])
    {
      if (self && (*(self + 41) & 1) != 0)
      {
        originalObservable = self->_originalObservableOrUnownedObserver.originalObservable;
      }

      else
      {
        originalObservable = 0;
      }

      Class = object_getClass(changeCopy);
      if (Class == NSKeyValueChangeDictionary)
      {
        [changeCopy setOriginalObservable:originalObservable];
      }

      else
      {
        v14 = [changeCopy mutableCopy];
        changeCopy = v14;
        if (originalObservable)
        {
          [v14 setObject:originalObservable forKey:0x1EEF09E30];
        }

        else
        {
          [v14 removeObjectForKey:0x1EEF09E30];
        }
      }

      NSKVONotify(self->_observer, [(NSKeyValueProperty *)self->_property keyPath], v10, changeCopy, self->_context);
      if (Class != NSKeyValueChangeDictionary)
      {
      }

      [(NSKeyValueObservance *)self releaseMembers];
    }
  }
}

@end