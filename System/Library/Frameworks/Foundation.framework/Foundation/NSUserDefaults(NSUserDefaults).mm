@interface NSUserDefaults(NSUserDefaults)
+ (id)_copyStandardUserDefaultsIfPresent;
+ (id)standardUserDefaults;
+ (void)setStandardUserDefaults:()NSUserDefaults;
- (BOOL)synchronize;
- (CFArrayRef)persistentDomainNames;
- (double)doubleForKey:()NSUserDefaults;
- (double)floatForKey:()NSUserDefaults;
- (id)URLForKey:()NSUserDefaults;
- (id)dealloc;
- (id)dictionaryRepresentation;
- (id)objectForKey:()NSUserDefaults;
- (id)objectForKey:()NSUserDefaults inDomain:;
- (id)persistentDomainForName:()NSUserDefaults;
- (id)volatileDomainForName:()NSUserDefaults;
- (id)volatileDomainNames;
- (uint64_t)BOOLForKey:()NSUserDefaults;
- (uint64_t)_didEndKeyValueObserving;
- (uint64_t)_willBeginKeyValueObserving;
- (uint64_t)arrayForKey:()NSUserDefaults;
- (uint64_t)dataForKey:()NSUserDefaults;
- (uint64_t)dictionaryForKey:()NSUserDefaults;
- (uint64_t)integerForKey:()NSUserDefaults;
- (uint64_t)longForKey:()NSUserDefaults;
- (uint64_t)removeSuiteNamed:()NSUserDefaults;
- (uint64_t)removeVolatileDomainForName:()NSUserDefaults;
- (uint64_t)searchList;
- (uint64_t)setBool:()NSUserDefaults forKey:;
- (uint64_t)setDouble:()NSUserDefaults forKey:;
- (uint64_t)setFloat:()NSUserDefaults forKey:;
- (uint64_t)setInteger:()NSUserDefaults forKey:;
- (uint64_t)setLong:()NSUserDefaults forKey:;
- (uint64_t)setObject:()NSUserDefaults forKey:;
- (uint64_t)setObject:()NSUserDefaults forKey:inDomain:;
- (uint64_t)setPersistentDomain:()NSUserDefaults forName:;
- (uint64_t)setVolatileDomain:()NSUserDefaults forName:;
- (uint64_t)stringForKey:()NSUserDefaults;
- (void)_initWithSuiteName:()NSUserDefaults container:;
- (void)addSuiteNamed:()NSUserDefaults;
- (void)registerDefaults:()NSUserDefaults;
- (void)setSearchList:()NSUserDefaults;
- (void)setURL:()NSUserDefaults forKey:;
- (void)stringArrayForKey:()NSUserDefaults;
@end

@implementation NSUserDefaults(NSUserDefaults)

- (id)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  if ([a1 _kvo])
  {
    _CFPrefsUnregisterUserDefaultsInstance();
  }

  [a1 _setIdentifier:0];
  [a1 _setContainer:0];
  v3.receiver = a1;
  v3.super_class = &off_1EEF970D8;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

+ (id)standardUserDefaults
{
  os_unfair_lock_lock(&_MergedGlobals_126);
  v0 = qword_1ED43FC48;
  if (!qword_1ED43FC48)
  {
    _CFAutoreleasePoolPush();
    qword_1ED43FC48 = [objc_allocWithZone(MEMORY[0x1E695E000]) init];
    _CFPreferencesRegisterStandardUserDefaultsExists();
    _CFAutoreleasePoolPop();
    v0 = qword_1ED43FC48;
  }

  v1 = v0;
  os_unfair_lock_unlock(&_MergedGlobals_126);

  return v1;
}

- (id)dictionaryRepresentation
{
  [a1 _identifier];
  [a1 _container];
  v2 = _CFPrefsCopyAppDictionaryWithContainer();

  return v2;
}

- (BOOL)synchronize
{
  [a1 _identifier];
  [a1 _container];
  v2 = _CFPreferencesAppSynchronizeWithContainer() != 0;
  _CFPrefsSynchronizeForProcessTermination();
  return v2;
}

- (uint64_t)_willBeginKeyValueObserving
{
  result = [a1 _kvo];
  if (!result)
  {
    [a1 _setKVO:&off_1EEF573B0];

    return MEMORY[0x1EEDB8488](a1);
  }

  return result;
}

- (uint64_t)_didEndKeyValueObserving
{
  result = [a1 _kvo];
  if (result)
  {
    _CFPrefsUnregisterUserDefaultsInstance();

    return [a1 _setKVO:0];
  }

  return result;
}

- (id)objectForKey:()NSUserDefaults
{
  [a1 _identifier];
  [a1 _container];
  v2 = _CFPreferencesCopyAppValueWithContainer();

  return v2;
}

- (uint64_t)setObject:()NSUserDefaults forKey:
{
  [a1 _identifier];
  [a1 _container];
  _CFPreferencesSetAppValueWithContainer();
  v2 = +[NSNotificationCenter defaultCenter];

  return [(NSNotificationCenter *)v2 postNotificationName:@"NSUserDefaultsDidChangeNotification" object:a1 userInfo:0];
}

- (id)objectForKey:()NSUserDefaults inDomain:
{
  if (!a4 || [(__CFString *)a4 isEqualToString:&stru_1EEEFDF90])
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: domain name cannot be nil or empty", _NSMethodExceptionProem(a1, a2)), 0}];
    objc_exception_throw(v11);
  }

  if ([(__CFString *)a4 isEqualToString:@"NSGlobalDomain"])
  {
    v8 = *MEMORY[0x1E695E890];
  }

  else
  {
    v8 = a4;
  }

  v9 = CFPreferencesCopyAppValue(a3, v8);

  return v9;
}

- (uint64_t)setObject:()NSUserDefaults forKey:inDomain:
{
  if (!a5 || [(__CFString *)a5 isEqualToString:&stru_1EEEFDF90])
  {
    v15 = [NSString stringWithFormat:@"%@: domain name cannot be nil or empty", _NSMethodExceptionProem(a1, a2)];
    goto LABEL_14;
  }

  if ([(__CFString *)a5 isEqualToString:@"NSGlobalDomain"])
  {
    v10 = *MEMORY[0x1E695E890];
    v11 = *MEMORY[0x1E695E8B8];
    v12 = *MEMORY[0x1E695E898];
    CFPreferencesSetValue(a4, a3, *MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    CFPreferencesSynchronize(v10, v11, v12);
    goto LABEL_10;
  }

  if (([(__CFString *)a5 isEqualToString:@"NSRegistrationDomain"]& 1) != 0 || [(__CFString *)a5 isEqualToString:@"NSArgumentDomain"])
  {
    if (a3)
    {
      [MEMORY[0x1E695DF20] dictionaryWithObject:a3 forKey:a4];
      _CFXPreferencesReplaceValuesInNamedVolatileSource();
      goto LABEL_10;
    }

    v15 = [NSString stringWithFormat:@"%@: value name cannot be nil for registration or argument domain", _NSMethodExceptionProem(a1, a2)];
LABEL_14:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v15 userInfo:0]);
  }

  CFPreferencesSetAppValue(a4, a3, a5);
  CFPreferencesAppSynchronize(a5);
LABEL_10:
  v13 = +[NSNotificationCenter defaultCenter];

  return [(NSNotificationCenter *)v13 postNotificationName:@"NSUserDefaultsDidChangeNotification" object:a1 userInfo:0];
}

- (uint64_t)stringForKey:()NSUserDefaults
{
  v1 = [a1 objectForKey:?];
  if (_NSIsNSString())
  {
    return v1;
  }

  if (!_NSIsNSNumber())
  {
    return 0;
  }

  return [v1 stringValue];
}

- (uint64_t)arrayForKey:()NSUserDefaults
{
  v1 = [a1 objectForKey:?];
  if (_NSIsNSArray())
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)dictionaryForKey:()NSUserDefaults
{
  v1 = [a1 objectForKey:?];
  if (_NSIsNSDictionary())
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)dataForKey:()NSUserDefaults
{
  v1 = [a1 objectForKey:?];
  if (_NSIsNSData())
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

- (void)stringArrayForKey:()NSUserDefaults
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = [a1 objectForKey:?];
  if (!_NSIsNSArray())
  {
    return 0;
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
LABEL_4:
    v5 = 0;
    while (1)
    {
      if (*v9 != v4)
      {
        objc_enumerationMutation(v1);
      }

      if (!_NSIsNSString())
      {
        return 0;
      }

      if (v3 == ++v5)
      {
        v3 = [v1 countByEnumeratingWithState:&v8 objects:v7 count:16];
        if (v3)
        {
          goto LABEL_4;
        }

        return v1;
      }
    }
  }

  return v1;
}

- (uint64_t)integerForKey:()NSUserDefaults
{
  if ([a1 isMemberOfClass:MEMORY[0x1E695E000]])
  {
    v5 = [a1 _identifier];
    v6 = [a1 _container];

    return MEMORY[0x1EEDB8408](a3, v5, v6, 0);
  }

  else
  {
    v7 = [a1 objectForKey:a3];
    if (v7 && ((v8 = v7, (_NSIsNSString() & 1) != 0) || _NSIsNSNumber()))
    {

      return [v8 integerValue];
    }

    else
    {
      return 0;
    }
  }
}

- (uint64_t)longForKey:()NSUserDefaults
{
  v4[1] = *MEMORY[0x1E69E9840];
  result = [a1 objectForKey:?];
  v4[0] = 0;
  if (result)
  {
    v2 = result;
    if (_NSIsNSNumber())
    {

      return [v2 longLongValue];
    }

    else if (_NSIsNSString())
    {
      v3 = 0;
      if (_NSScanLongLongFromString(v2, +[NSCharacterSet whitespaceAndNewlineCharacterSet], v4, &v3))
      {
        return v4[0];
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (double)floatForKey:()NSUserDefaults
{
  v1 = [a1 objectForKey:?];
  if (!v1)
  {
    return 0.0;
  }

  v2 = v1;
  if ((_NSIsNSNumber() & 1) == 0 && !_NSIsNSString())
  {
    return 0.0;
  }

  [v2 floatValue];
  return result;
}

- (double)doubleForKey:()NSUserDefaults
{
  v1 = [a1 objectForKey:?];
  if (!v1)
  {
    return 0.0;
  }

  v2 = v1;
  if ((_NSIsNSNumber() & 1) == 0 && !_NSIsNSString())
  {
    return 0.0;
  }

  [v2 doubleValue];
  return result;
}

- (uint64_t)BOOLForKey:()NSUserDefaults
{
  if ([a1 isMemberOfClass:MEMORY[0x1E695E000]])
  {
    [a1 _identifier];
    [a1 _container];
    v5 = _CFPreferencesGetAppBooleanValueWithContainer() == 0;
    return !v5;
  }

  v8 = [a1 objectForKey:a3];
  if (_NSIsNSString())
  {
    if (([v8 isEqualToString:@"YES"] & 1) == 0)
    {
      v9 = [v8 length];
      v6 = 1;
      if (![v8 compare:@"YES" options:1 range:{0, v9}])
      {
        return v6;
      }

      v6 = 1;
      if (![v8 compare:@"Y" options:1 range:{0, v9}])
      {
        return v6;
      }

      v5 = [v8 integerValue] == 0;
      return !v5;
    }

    return 1;
  }

  if (!_NSIsNSNumber())
  {
    return 0;
  }

  return [v8 BOOLValue];
}

- (id)URLForKey:()NSUserDefaults
{
  v1 = [a1 objectForKey:?];
  if (_NSIsNSData())
  {
    v2 = +[NSKeyedUnarchiver _strictlyUnarchivedObjectOfClasses:fromData:error:](NSKeyedUnarchiver, "_strictlyUnarchivedObjectOfClasses:fromData:error:", [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()], v1, 0);

    return v2;
  }

  else if (_NSIsNSString())
  {
    v4 = MEMORY[0x1E695DFF8];
    v5 = [v1 stringByExpandingTildeInPath];

    return [v4 fileURLWithPath:v5];
  }

  else
  {
    return 0;
  }
}

- (uint64_t)setInteger:()NSUserDefaults forKey:
{
  v6 = [NSNumber numberWithInteger:?];

  return [a1 setObject:v6 forKey:a4];
}

- (uint64_t)setLong:()NSUserDefaults forKey:
{
  v6 = [NSNumber numberWithLongLong:?];

  return [a1 setObject:v6 forKey:a4];
}

- (uint64_t)setFloat:()NSUserDefaults forKey:
{
  v5 = [NSNumber numberWithFloat:?];

  return [a1 setObject:v5 forKey:a3];
}

- (uint64_t)setDouble:()NSUserDefaults forKey:
{
  v5 = [NSNumber numberWithDouble:?];

  return [a1 setObject:v5 forKey:a3];
}

- (uint64_t)setBool:()NSUserDefaults forKey:
{
  v6 = [NSNumber numberWithBool:?];

  return [a1 setObject:v6 forKey:a4];
}

- (void)setURL:()NSUserDefaults forKey:
{
  v7 = objc_autoreleasePoolPush();
  [a1 setObject:encodeURLForDefaults(a3) forKey:a4];

  objc_autoreleasePoolPop(v7);
}

- (uint64_t)searchList
{
  if ((searchList_warnonce & 1) == 0)
  {
    searchList_warnonce = 1;
    NSLog(@"[NSUserDefaults searchList] is obsolete and returns nil; convert off of it.");
  }

  return 0;
}

- (void)setSearchList:()NSUserDefaults
{
  if ((setSearchList__warnonce & 1) == 0)
  {
    setSearchList__warnonce = 1;
    NSLog(@"[NSUserDefaults setSearchList:] is obsolete and has no effect; convert off of it.");
  }
}

- (void)addSuiteNamed:()NSUserDefaults
{
  if (([a3 isEqualToString:@"NSGlobalDomain"] & 1) != 0 || (MainBundle = CFBundleGetMainBundle(), objc_msgSend(a3, "isEqualToString:", CFBundleGetIdentifier(MainBundle))))
  {

    _NSUserDefaults_Log_Nonsensical_Suites(a3);
  }

  else
  {
    v6 = [a1 _identifier];
    v7 = [a1 _container];

    MEMORY[0x1EEDB83C8](v6, a3, v7);
  }
}

- (uint64_t)removeSuiteNamed:()NSUserDefaults
{
  v5 = [a1 _identifier];
  v6 = [a1 _container];

  return MEMORY[0x1EEDB8438](v5, a3, v6);
}

- (void)registerDefaults:()NSUserDefaults
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3 && [a3 count])
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3052000000;
    v12 = __Block_byref_object_copy__18;
    v13 = __Block_byref_object_dispose__18;
    v14 = 0;
    v5 = objc_opt_class();
    v6 = objc_autoreleasePoolPush();
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__NSUserDefaults_NSUserDefaults__registerDefaults___block_invoke;
    v8[3] = &unk_1E69F6590;
    v8[5] = a3;
    v8[6] = &v9;
    v8[4] = v5;
    [a3 enumerateKeysAndObjectsUsingBlock:v8];
    objc_autoreleasePoolPop(v6);
    _CFXPreferencesRegisterDefaultValues();
    v7 = v10[5];
    if (v7)
    {
    }

    [+[NSNotificationCenter defaultCenter](NSNotificationCenter postNotificationName:"postNotificationName:object:userInfo:" object:@"NSUserDefaultsDidChangeNotification" userInfo:a1, 0];
    _Block_object_dispose(&v9, 8);
  }
}

- (void)_initWithSuiteName:()NSUserDefaults container:
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3 && (([a3 isEqualToString:@"NSGlobalDomain"] & 1) != 0 || (MainBundle = CFBundleGetMainBundle(), objc_msgSend(a3, "isEqualToString:", CFBundleGetIdentifier(MainBundle)))))
  {
    _NSUserDefaults_Log_Nonsensical_Suites(a3);

    return 0;
  }

  else
  {
    v11.receiver = a1;
    v11.super_class = &off_1EEF970D8;
    v9 = objc_msgSendSuper2(&v11, sel_init);
    v8 = v9;
    if (v9)
    {
      [v9 _setContainer:a4];
      [v8 _setIdentifier:a3];
    }
  }

  return v8;
}

+ (void)setStandardUserDefaults:()NSUserDefaults
{
  os_unfair_lock_lock(&_MergedGlobals_126);
  v4 = a3;

  qword_1ED43FC48 = a3;

  os_unfair_lock_unlock(&_MergedGlobals_126);
}

+ (id)_copyStandardUserDefaultsIfPresent
{
  os_unfair_lock_lock(&_MergedGlobals_126);
  v0 = qword_1ED43FC48;
  os_unfair_lock_unlock(&_MergedGlobals_126);
  return v0;
}

- (id)volatileDomainNames
{
  v0 = _CFXPreferencesCopyVolatileSourceNames();

  return v0;
}

- (id)volatileDomainForName:()NSUserDefaults
{
  v0 = _CFXPreferencesCopyDictionaryForNamedVolatileSource();

  return v0;
}

- (uint64_t)setVolatileDomain:()NSUserDefaults forName:
{
  _CFXPreferencesReplaceValuesInNamedVolatileSource();
  v2 = +[NSNotificationCenter defaultCenter];

  return [(NSNotificationCenter *)v2 postNotificationName:@"NSUserDefaultsDidChangeNotification" object:a1 userInfo:0];
}

- (uint64_t)removeVolatileDomainForName:()NSUserDefaults
{
  _CFXPreferencesRemoveNamedVolatileSource();
  v2 = +[NSNotificationCenter defaultCenter];

  return [(NSNotificationCenter *)v2 postNotificationName:@"NSUserDefaultsDidChangeNotification" object:a1 userInfo:0];
}

- (CFArrayRef)persistentDomainNames
{
  v0 = CFPreferencesCopyApplicationList(*MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v1 = [(__CFArray *)v0 indexOfObject:*MEMORY[0x1E695E890]];
  if (v1 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = v1;
    v3 = [(__CFArray *)v0 mutableCopyWithZone:0];
    [v3 replaceObjectAtIndex:v2 withObject:@"NSGlobalDomain"];

    v0 = [v3 copyWithZone:0];
  }

  return v0;
}

- (id)persistentDomainForName:()NSUserDefaults
{
  [a3 isEqualToString:@"NSGlobalDomain"];
  v3 = _CFXPreferencesCopyDictionaryForSourceWithBundleID();

  return v3;
}

- (uint64_t)setPersistentDomain:()NSUserDefaults forName:
{
  if (a3 && [a3 count] && ((objc_msgSend(a4, "isEqual:", @"NSArgumentDomain") & 1) != 0 || objc_msgSend(a4, "isEqual:", @"NSRegistrationDomain")))
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: cannot create persistent domain %@. Volatile domain %@ already exists.", _NSMethodExceptionProem(a1, a2), a4, a4), 0}];
    objc_exception_throw(v9);
  }

  [a4 isEqual:@"NSGlobalDomain"];
  [(objc_class *)a1 _container];
  _CFXPreferencesReplaceValuesInSourceWithBundleIDWithContainer();
  [(objc_class *)a1 _container];
  _CFPreferencesSynchronizeWithContainer();
  v7 = +[NSNotificationCenter defaultCenter];

  return [(NSNotificationCenter *)v7 postNotificationName:@"NSUserDefaultsDidChangeNotification" object:a1 userInfo:0];
}

@end