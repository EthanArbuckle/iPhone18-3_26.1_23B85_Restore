@interface BSAbstractDefaultDomain
+ (void)initialize;
- (id)_defaultKeyFromPropertyName:(id)a1;
- (id)_initWithDefaults:(id)a3;
- (id)_initWithDomain:(id)a3;
- (id)_propertyFromSelector:(uint64_t)a1;
- (id)description;
- (id)observeDefault:(id)a3 onQueue:(id)a4 withBlock:(id)a5;
- (id)observeDefaults:(id)a3 onQueue:(id)a4 withBlock:(id)a5;
- (void)_addObserver:(uint64_t)a1;
- (void)_bindProperty:(id)a3 withDefaultKey:(id)a4 toDefaultValue:(id)a5 options:(unint64_t)a6;
- (void)_removeObserver:(uint64_t)a1;
- (void)_setUserDefaults:(id)a3;
- (void)dealloc;
- (void)resetAllDefaults;
@end

@implementation BSAbstractDefaultDomain

+ (void)initialize
{
  v107 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  if (v3 != objc_opt_class())
  {
    v4 = [[BSAbstractDefaultDomainClassMetadata alloc] initWithClass:v3];
    v94 = v4;
    if (v4)
    {
      v4 = v4[1];
    }

    v5 = NSStringFromClass(v4);
    if (v94)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      pthread_mutex_lock(&__classNameToSelectorLock);
      v7 = qword_1ED44FE18;
      if (!qword_1ED44FE18)
      {
        v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v9 = qword_1ED44FE18;
        qword_1ED44FE18 = v8;

        v7 = qword_1ED44FE18;
      }

      [v7 setObject:v94 forKey:v5];
      pthread_mutex_unlock(&__classNameToSelectorLock);
    }

    if ([a1 __useDynamicMethodResolution])
    {
      v96 = v94;
      v92 = objc_opt_self();
      if (v94)
      {
        v10 = v96[1];
      }

      else
      {
        v10 = 0;
      }

      outCount[0] = 0;
      v95 = class_copyPropertyList(v10, outCount);
      if (outCount[0])
      {
        v11 = 0;
        aClass = v10;
        while (1)
        {
          v12 = v95[v11];
          v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:property_getName(v12)];
          v100 = v13;
          objc_opt_self();
          if (qword_1ED44FE10 != -1)
          {
            dispatch_once(&qword_1ED44FE10, &__block_literal_global_15);
          }

          v14 = _MergedGlobals_14;
          v15 = [v14 containsObject:v13];

          if (v15)
          {
            goto LABEL_56;
          }

          v16 = objc_opt_self();
          v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:property_getName(v12)];
          if (!v17)
          {
            v57 = [MEMORY[0x1E696AAA8] currentHandler];
            [v57 handleFailureInMethod:sel___getPropertyMetadataForProperty_class_ object:v16 file:@"BSAbstractDefaultDomain.m" lineNumber:389 description:@"Property name required."];

            v17 = 0;
          }

          v18 = v17;
          v19 = property_copyAttributeValue(v12, "G");
          newValue = v18;
          if (v19)
          {
            newValue = [MEMORY[0x1E696AEC0] stringWithUTF8String:v19];

            free(v19);
          }

          v20 = MEMORY[0x1E696AEC0];
          v21 = [v18 substringToIndex:1];
          v22 = [v21 capitalizedString];
          v23 = [v18 substringFromIndex:1];
          v24 = [v20 stringWithFormat:@"set%@%@", v22, v23];

          v25 = property_copyAttributeValue(v12, "S");
          if (v25)
          {
            v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v25];
            v27 = [v26 substringToIndex:{objc_msgSend(v26, "length") - 1}];

            free(v25);
            v24 = v27;
          }

          v28 = property_copyAttributeValue(v12, "T");
          v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v28];
          if (!v28)
          {
            v58 = [MEMORY[0x1E696AAA8] currentHandler];
            v59 = NSStringFromClass(aClass);
            [v58 handleFailureInMethod:sel___getPropertyMetadataForProperty_class_ object:v16 file:@"BSAbstractDefaultDomain.m" lineNumber:411 description:{@"Property type must be non-nil for property: %@ on class: %@", v18, v59}];
          }

          v30 = [v29 characterAtIndex:0];
          v31 = [v29 substringFromIndex:1];
          if (v30 == 99)
          {
            break;
          }

          if (v30 != 64 || [v29 length] < 2)
          {
            goto LABEL_59;
          }

          v32 = v31;
          v33 = objc_opt_self();
          v34 = [v32 length];
          if ([v32 characterAtIndex:0] != 34 || objc_msgSend(v32, "characterAtIndex:", v34 - 1) != 34 || (objc_msgSend(v32, "substringWithRange:", 1, v34 - 2), v91 = objc_claimAutoreleasedReturnValue(), v35 = NSClassFromString(v91), v91, !v35))
          {
            v36 = [MEMORY[0x1E696AAA8] currentHandler];
            [v36 handleFailureInMethod:sel___classFromPropertyType_ object:v33 file:@"BSAbstractDefaultDomain.m" lineNumber:493 description:{@"Expected a class from property type attribute, but found none <propertyType = %@>", v32}];

            v35 = 0;
          }

          v37 = v35;

          if (!v28)
          {
            goto LABEL_36;
          }

LABEL_35:
          free(v28);
LABEL_36:
          objc_opt_self();
          v38 = 0;
          if (v30 - 64 <= 0x33)
          {
            if (((1 << (v30 - 64)) & 0xA1250000A1204) != 0)
            {
              goto LABEL_38;
            }

            if (v30 == 64)
            {
              if (objc_opt_class() != v35 && objc_opt_class() != v35 && objc_opt_class() != v35 && objc_opt_class() != v35 && objc_opt_class() != v35 && objc_opt_class() != v35 && objc_opt_class() != v35)
              {
                if (objc_opt_class() == v35)
                {
                  v56 = BSLogCommon();
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_error_impl(&dword_18FEF6000, v56, OS_LOG_TYPE_ERROR, "Warning: NSObject not explicitly supported because must be a plistable type.", buf, 2u);
                  }
                }

                v38 = 0;
                goto LABEL_41;
              }

LABEL_38:
              v39 = objc_alloc_init(BSPropertyMetadata);
              v38 = v39;
              if (v39)
              {
                objc_setProperty_nonatomic_copy(v39, v40, v18, 48);
                objc_setProperty_nonatomic_copy(v38, v41, newValue, 32);
                objc_setProperty_nonatomic_copy(v38, v42, v24, 40);
                *(v38 + 8) = v30;
                objc_setProperty_nonatomic_copy(v38, v43, v31, 16);
              }

              [(BSPropertyMetadata *)v38 setClassType:v35];
            }
          }

LABEL_41:

          if (!v38)
          {
            v60 = [MEMORY[0x1E696AAA8] currentHandler];
            v61 = NSStringFromClass(aClass);
            [v60 handleFailureInMethod:sel___processPropertyMetadata_ object:v92 file:@"BSAbstractDefaultDomain.m" lineNumber:372 description:{@"Metadata required but not obtained for property with name: %@ [class=%@]", v100, v61}];
          }

          if (v94)
          {
            v44 = v96[2];
          }

          else
          {
            v44 = 0;
          }

          v45 = v44;
          if (v38)
          {
            v46 = *(v38 + 48);
          }

          else
          {
            v46 = 0;
          }

          v47 = v46;
          [v45 setObject:v38 forKey:v47];

          if (v94)
          {
            v48 = v96[3];
          }

          else
          {
            v48 = 0;
          }

          v49 = v48;
          if (v38)
          {
            v50 = *(v38 + 32);
          }

          else
          {
            v50 = 0;
          }

          v51 = v50;
          [v49 setObject:v38 forKey:v51];

          if (v94)
          {
            v52 = v96[3];
          }

          else
          {
            v52 = 0;
          }

          v53 = v52;
          if (v38)
          {
            v54 = *(v38 + 40);
          }

          else
          {
            v54 = 0;
          }

          v55 = v54;
          [v53 setObject:v38 forKey:v55];

LABEL_56:
          if (++v11 >= outCount[0])
          {
            goto LABEL_82;
          }
        }

        [MEMORY[0x1E695DF30] raise:@"BSUnsupportedTypeException" format:@"Character types are explicitly unsupported in the default domain at this time."];
LABEL_59:
        v35 = 0;
        if (!v28)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (v95)
      {
LABEL_82:
        free(v95);
      }

      v93 = v96;
      v97 = objc_opt_self();
      if (v94)
      {
        v63 = v93[1];
        v62 = v93[2];
      }

      else
      {
        v63 = 0;
        v62 = 0;
      }

      v64 = v62;
      v65 = [v64 allValues];

      v104 = 0u;
      v105 = 0u;
      *buf = 0u;
      v103 = 0u;
      newValuea = v65;
      v66 = [newValuea countByEnumeratingWithState:buf objects:outCount count:16];
      if (v66)
      {
        v101 = *v103;
        do
        {
          v67 = 0;
          do
          {
            if (*v103 != v101)
            {
              objc_enumerationMutation(newValuea);
            }

            v68 = *(*&buf[8] + 8 * v67);
            if (v68)
            {
              v69 = *(v68 + 32);
            }

            else
            {
              v69 = 0;
            }

            v70 = v69;
            v71 = NSSelectorFromString(v70);

            if (v68)
            {
              v72 = *(v68 + 40);
            }

            else
            {
              v72 = 0;
            }

            v73 = MEMORY[0x1E696AEC0];
            v74 = v72;
            v75 = [v73 stringWithFormat:@"%@:", v74];
            v76 = NSSelectorFromString(v75);

            if (!v68)
            {
LABEL_114:
              v80 = [MEMORY[0x1E696AAA8] currentHandler];
              [v80 handleFailureInMethod:sel___assignPropertyImplementations_ object:v97 file:@"BSAbstractDefaultDomain.m" lineNumber:592 description:@"Should always have a getter and setter available."];

              goto LABEL_130;
            }

            v77 = *(v68 + 8);
            v78 = sbDefaults_setBool;
            if (*(v68 + 8) > 0x63u)
            {
              if (*(v68 + 8) > 0x6Bu)
              {
                switch(v77)
                {
                  case 'l':
                    v78 = sbDefaults_setLong;
                    v79 = sbDefaults_getLong;
                    v77 = 108;
                    break;
                  case 'q':
                    v78 = sbDefaults_setLongLong;
                    v79 = sbDefaults_getLongLong;
                    v77 = 113;
                    break;
                  case 's':
                    v78 = sbDefaults_setShort;
                    v79 = sbDefaults_getShort;
                    v77 = 115;
                    break;
                  default:
                    goto LABEL_114;
                }
              }

              else
              {
                switch(v77)
                {
                  case 'd':
                    v78 = sbDefaults_setDouble;
                    v79 = sbDefaults_getDouble;
                    v77 = 100;
                    break;
                  case 'f':
                    v78 = sbDefaults_setFloat;
                    v79 = sbDefaults_getFloat;
                    v77 = 102;
                    break;
                  case 'i':
                    v78 = sbDefaults_setInt;
                    v79 = sbDefaults_getInt;
                    v77 = 105;
                    break;
                  default:
                    goto LABEL_114;
                }
              }
            }

            else if (*(v68 + 8) > 0x4Bu)
            {
              switch(v77)
              {
                case 'L':
                  v78 = sbDefaults_setUnsignedLong;
                  v79 = sbDefaults_getUnsignedLong;
                  v77 = 76;
                  break;
                case 'Q':
                  v78 = sbDefaults_setUnsignedLongLong;
                  v79 = sbDefaults_getUnsignedLongLong;
                  v77 = 81;
                  break;
                case 'S':
                  v78 = sbDefaults_setUnsignedShort;
                  v79 = sbDefaults_getUnsignedShort;
                  v77 = 83;
                  break;
                default:
                  goto LABEL_114;
              }
            }

            else
            {
              switch(v77)
              {
                case '@':
                  v81 = *(v68 + 24);
                  v82 = objc_opt_class();
                  if (v81 == v82)
                  {
                    v79 = sbDefaults_getURL;
                  }

                  else
                  {
                    v79 = sbDefaults_getObject;
                  }

                  if (v81 == v82)
                  {
                    v78 = sbDefaults_setURL;
                  }

                  else
                  {
                    v78 = sbDefaults_setObject;
                  }

                  v77 = *(v68 + 8);
                  break;
                case 'B':
                  v79 = sbDefaults_getBool;
                  break;
                case 'I':
                  v78 = sbDefaults_setUnsignedInt;
                  v79 = sbDefaults_getUnsignedInt;
                  v77 = 73;
                  break;
                default:
                  goto LABEL_114;
              }
            }

            v83 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c@:", v77];
            v84 = v83;
            v85 = [v83 UTF8String];

            class_addMethod(v63, v71, v79, v85);
            v86 = [MEMORY[0x1E696AEC0] stringWithFormat:@"v@:%c", *(v68 + 8)];
            v87 = v86;
            v88 = [v86 UTF8String];

            class_addMethod(v63, v76, v78, v88);
LABEL_130:
            ++v67;
          }

          while (v66 != v67);
          v89 = [newValuea countByEnumeratingWithState:buf objects:outCount count:16];
          v66 = v89;
        }

        while (v89);
      }
    }
  }
}

void __47__BSAbstractDefaultDomain___excludedProperties__block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F03B7608];
  v1 = _MergedGlobals_14;
  _MergedGlobals_14 = v0;
}

- (void)dealloc
{
  [(NSMutableSet *)self->_observerQueue_observers removeAllObjects];
  v3.receiver = self;
  v3.super_class = BSAbstractDefaultDomain;
  [(BSAbstractDefaultDomain *)&v3 dealloc];
}

- (id)_initWithDefaults:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v32.receiver = self;
  v32.super_class = BSAbstractDefaultDomain;
  v6 = [(BSAbstractDefaultDomain *)&v32 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userDefaults, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    defaultKeyToDefaultValue = v7->_defaultKeyToDefaultValue;
    v7->_defaultKeyToDefaultValue = v8;

    Serial = BSDispatchQueueCreateSerial(@"observerQueue");
    observerQueue = v7->_observerQueue;
    v7->_observerQueue = Serial;

    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    observerQueue_observers = v7->_observerQueue_observers;
    v7->_observerQueue_observers = v12;

    if (!v7->_boundDefaults)
    {
      if ([objc_opt_class() __useDynamicMethodResolution])
      {
        [(BSAbstractDefaultDomain *)v7 _bindAndRegisterDefaults];
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v14 = objc_opt_class();
        v15 = __getMetadataForClass(v14);
        v16 = v15;
        if (v15)
        {
          v17 = *(v15 + 16);
        }

        else
        {
          v17 = 0;
        }

        v18 = v17;
        v19 = [v18 allValues];

        v20 = [v19 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v20)
        {
          v21 = *v34;
          do
          {
            v22 = 0;
            do
            {
              if (*v34 != v21)
              {
                objc_enumerationMutation(v19);
              }

              v23 = *(*(&v33 + 1) + 8 * v22);
              if (v23)
              {
                v24 = *(v23 + 56);
              }

              else
              {
                v24 = 0;
              }

              v25 = v24;
              v26 = v25 == 0;

              if (v26)
              {
                v27 = [MEMORY[0x1E696AAA8] currentHandler];
                if (v23)
                {
                  v28 = *(v23 + 48);
                }

                else
                {
                  v28 = 0;
                }

                v29 = v28;
                [v27 handleFailureInMethod:sel__bindDefaultsIfNecessary object:v7 file:@"BSAbstractDefaultDomain.m" lineNumber:315 description:{@"Expected default key specified for property: %@.  Use BIND_DEFAULT_AND_KEY to assign it.", v29}];
              }

              ++v22;
            }

            while (v20 != v22);
            v30 = [v19 countByEnumeratingWithState:&v33 objects:v37 count:16];
            v20 = v30;
          }

          while (v30);
        }

        [(NSUserDefaults *)v7->_userDefaults registerDefaults:v7->_defaultKeyToDefaultValue];
      }

      v7->_boundDefaults = 1;
    }
  }

  return v7;
}

- (id)_initWithDomain:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"BSAbstractDefaultDomain.m" lineNumber:135 description:{@"Invalid parameter not satisfying: %@", @"domain"}];
  }

  v6 = [MEMORY[0x1E696AAE8] mainBundle];
  v7 = [v6 bundleIdentifier];
  v8 = [v5 isEqualToString:v7];

  if (v8)
  {
    v9 = [MEMORY[0x1E695E000] standardUserDefaults];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:v5];
  }

  v10 = v9;
  [v9 bs_setDomain:v5];
  v11 = [(BSAbstractDefaultDomain *)self _initWithDefaults:v10];

  return v11;
}

- (id)observeDefault:(id)a3 onQueue:(id)a4 withBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObject:a3];
  v11 = [(BSAbstractDefaultDomain *)self observeDefaults:v10 onQueue:v8 withBlock:v9];

  return v11;
}

- (id)observeDefaults:(id)a3 onQueue:(id)a4 withBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[_BSDefaultObserver alloc] initWithAbstractDefaultDomain:v8 defaultsToObserve:v9 onQueue:v10 withBlock:?];

  return v11;
}

- (void)resetAllDefaults
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [(BSAbstractDefaultDomain *)self _store];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = objc_opt_class();
  v4 = __getMetadataForClass(v3);
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 16);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v7 allValues];

  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (v12)
        {
          v12 = v12[7];
        }

        v13 = v12;
        [v2 removeObjectForKey:v13];
      }

      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)_addObserver:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    v5 = *(a1 + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__BSAbstractDefaultDomain__addObserver___block_invoke;
    v6[3] = &unk_1E72CACC0;
    v6[4] = a1;
    v7 = v3;
    dispatch_sync(v5, v6);
  }
}

- (void)_removeObserver:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    v5 = *(a1 + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __43__BSAbstractDefaultDomain__removeObserver___block_invoke;
    v6[3] = &unk_1E72CACC0;
    v6[4] = a1;
    v7 = v3;
    dispatch_sync(v5, v6);
  }
}

uint64_t __43__BSAbstractDefaultDomain__removeObserver___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) containsObject:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 32);

    return [v4 removeObject:v3];
  }

  return result;
}

- (void)_bindProperty:(id)a3 withDefaultKey:(id)a4 toDefaultValue:(id)a5 options:(unint64_t)a6
{
  v25 = a3;
  v11 = a4;
  v12 = a5;
  if (v25)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"BSAbstractDefaultDomain.m" lineNumber:217 description:{@"Invalid parameter not satisfying: %@", @"propertyName"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v21 = [MEMORY[0x1E696AAA8] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"BSAbstractDefaultDomain.m" lineNumber:218 description:{@"Invalid parameter not satisfying: %@", @"defaultKey"}];

LABEL_3:
  if (self->_boundDefaults)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"BSAbstractDefaultDomain.m" lineNumber:223 description:@"Cannot bind new defaults after we've registered them."];
    goto LABEL_10;
  }

  v14 = objc_opt_class();
  v15 = __getMetadataForClass(v14);
  v16 = v15;
  if (v15)
  {
    v17 = *(v15 + 16);
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v13 = [v18 objectForKey:v25];

  if (v13)
  {
    objc_setProperty_nonatomic_copy(v13, v19, v11, 56);
    [(BSPropertyMetadata *)v13 setDefaultValue:v12];
    v13[9] = a6;
    if (!v12)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  [v22 handleFailureInMethod:a2 object:self file:@"BSAbstractDefaultDomain.m" lineNumber:228 description:{@"Must have a property to bind to, but didn't find one for property: %@ [Class=%@]", v25, v24}];

  [(BSPropertyMetadata *)0 setDefaultValue:v12];
  if (v12)
  {
LABEL_9:
    [(NSMutableDictionary *)self->_defaultKeyToDefaultValue setObject:v12 forKey:v11];
  }

LABEL_10:
}

- (id)description
{
  v3 = @"\t";
  if (self)
  {
    v4 = [BSDescriptionBuilder builderWithObject:self];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __65__BSAbstractDefaultDomain_descriptionBuilderWithMultilinePrefix___block_invoke;
    v14 = &unk_1E72CACC0;
    v15 = self;
    v5 = v4;
    v16 = v5;
    v6 = [v5 modifyBody:&v11];
    v7 = v16;
    v8 = v5;

    v9 = [v8 build];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __65__BSAbstractDefaultDomain_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v3 = __getMetadataForClass(v2);
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 16);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 allValues];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        if (v12)
        {
          v13 = *(v12 + 48);
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;
        v15 = [*(a1 + 32) valueForKey:{v14, v24}];
        v16 = v15;
        if (v12 && *(v12 + 8) == 66)
        {
          v17 = [*(a1 + 40) appendBool:objc_msgSend(v15 withName:{"BOOLValue"), v14}];
        }

        else if (v15)
        {
          v18 = [*(a1 + 40) appendObject:v15 withName:v14];
        }

        else
        {
          v19 = [(BSPropertyMetadata *)v12 isNumber];
          v20 = *(a1 + 40);
          if (v19)
          {
            v21 = [v20 appendInt:0 withName:v14];
          }

          else
          {
            v22 = [v20 appendObject:@"nil" withName:v14];
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v23 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      v9 = v23;
    }

    while (v23);
  }
}

- (void)_setUserDefaults:(id)a3
{
  v5 = a3;
  userDefaults = self->_userDefaults;
  p_userDefaults = &self->_userDefaults;
  if (userDefaults != v5)
  {
    v8 = v5;
    objc_storeStrong(p_userDefaults, a3);
    v5 = v8;
  }
}

- (id)_defaultKeyFromPropertyName:(id)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_opt_class();
    v5 = __getMetadataForClass(v4);
    v6 = v5;
    if (v5)
    {
      v7 = *(v5 + 16);
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = [v8 objectForKey:v3];

    if (v9)
    {
      v10 = v9[7];
    }

    else
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      [v12 handleFailureInMethod:sel__defaultKeyFromPropertyName_ object:a1 file:@"BSAbstractDefaultDomain.m" lineNumber:328 description:{@"Must have property for default: '%@' on class: %@", v3, v14}];

      v10 = 0;
    }

    a1 = v10;
  }

  return a1;
}

- (id)_propertyFromSelector:(uint64_t)a1
{
  if (a1)
  {
    if (!aSelector)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:sel__propertyFromSelector_ object:a1 file:@"BSAbstractDefaultDomain.m" lineNumber:334 description:{@"Invalid parameter not satisfying: %@", @"selector"}];
    }

    v4 = NSStringFromSelector(aSelector);
    if ([v4 hasSuffix:@":"])
    {
      v5 = [v4 substringToIndex:{objc_msgSend(v4, "length") - 1}];

      v4 = v5;
    }

    v6 = objc_opt_class();
    v7 = __getMetadataForClass(v6);
    v8 = v7;
    if (v7)
    {
      v9 = *(v7 + 24);
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    v11 = [v10 objectForKey:v4];

    if (!v11)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      [v14 handleFailureInMethod:sel__propertyFromSelector_ object:a1 file:@"BSAbstractDefaultDomain.m" lineNumber:344 description:{@"Unable to resolve property metadata for selector: '%@' on class: %@", v4, v16}];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end