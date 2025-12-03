@interface NSManagedImmutableObject
+ (Class)classForEntity:(id)entity;
+ (id)allocWithEntity:(id)entity;
- (BOOL)respondsToSelector:(SEL)selector;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)valueForKey:(id)key;
- (void)methodForSelector:(SEL)selector;
@end

@implementation NSManagedImmutableObject

- (BOOL)respondsToSelector:(SEL)selector
{
  if (!selector)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@: null selector", _NSMethodExceptionProem()}];
  }

  Class = object_getClass(self);

  return class_respondsToSelector(Class, selector);
}

- (void)methodForSelector:(SEL)selector
{
  if (!selector)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@: null selector", _NSMethodExceptionProem()}];
  }

  Class = object_getClass(self);

  return class_getMethodImplementation(Class, selector);
}

- (id)methodSignatureForSelector:(SEL)selector
{
  if (!selector)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@: null selector", _NSMethodExceptionProem()}];
  }

  Class = object_getClass(self);
  v6 = Class;
  if (Class)
  {
    Superclass = Class;
    while (1)
    {
      outCount = 0;
      v8 = class_copyProtocolList(Superclass, &outCount);
      v9 = v8;
      if (outCount)
      {
        break;
      }

      if (v8)
      {
LABEL_12:
        free(v9);
      }

      Superclass = class_getSuperclass(Superclass);
      if (!Superclass)
      {
        goto LABEL_14;
      }
    }

    v10 = 0;
    while (1)
    {
      v11 = v9[v10];
      isMetaClass = class_isMetaClass(Superclass);
      MethodDescription = protocol_getMethodDescription(v11, selector, 1, !isMetaClass);
      types = MethodDescription.types;
      if (MethodDescription.name)
      {
        break;
      }

      v15 = v9[v10];
      v16 = class_isMetaClass(Superclass);
      v17 = protocol_getMethodDescription(v15, selector, 0, !v16);
      types = v17.types;
      if (v17.name)
      {
        break;
      }

      if (++v10 >= outCount)
      {
        goto LABEL_12;
      }
    }

    v20 = types;
    free(v9);
  }

  else
  {
LABEL_14:
    result = class_getInstanceMethod(v6, selector);
    if (!result)
    {
      return result;
    }

    Description = method_getDescription(result);
    if (!Description->name)
    {
      return 0;
    }

    v20 = Description->types;
  }

  return [MEMORY[0x1E695DF68] signatureWithObjCTypes:v20];
}

+ (id)allocWithEntity:(id)entity
{
  v5 = _PFFastEntityClass(entity);
  if (v5)
  {
    v6 = v5;
    if (!atomic_load(entity + 124))
    {
      managedObjectModel = [entity managedObjectModel];
      entityCopy = entity;
      if (managedObjectModel)
      {
        entityCopy = [entity managedObjectModel];
      }

      [entityCopy _setIsEditable:0];
    }

    _PFMOClassFactoryData = [v6 _PFMOClassFactoryData];
    if (_PFMOClassFactoryData)
    {
      v9 = _PFMOClassFactoryData;
      if (!*(_PFMOClassFactoryData + 24))
      {
        v14 = *(entity + 14);
        if (v14)
        {
          v15 = *(v14 + 8);
        }

        else
        {
          v15 = [objc_msgSend(entity "propertiesByName")];
        }

        if (v15 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15;
        }

        *(v9 + 24) = 8 * v16;
      }
    }

    selfCopy = v6;
  }

  else
  {
    selfCopy = self;
  }

  return _PFAllocateObject(selfCopy, 0);
}

+ (Class)classForEntity:(id)entity
{
  entityCopy = entity;
  v96 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(entity "name")];
  if (!v5 || (v6 = v5, !*v5))
  {
    v89 = MEMORY[0x1E695DF30];
    v90 = *MEMORY[0x1E695D940];
    v91 = @"Entity name must not be nil.";
    goto LABEL_71;
  }

  if (!atomic_load(entityCopy + 124))
  {
    managedObjectModel = [entityCopy managedObjectModel];
    managedObjectModel2 = entityCopy;
    if (managedObjectModel)
    {
      managedObjectModel2 = [entityCopy managedObjectModel];
    }

    [managedObjectModel2 _setIsEditable:0];
  }

  Name = class_getName(self);
  snprintf(__str, 0x200uLL, "%s_%s_", Name, v6);
  os_unfair_lock_lock(&_MergedGlobals_82);
  v9 = 0;
  v10 = 2;
  v92 = entityCopy;
  while (1)
  {
    Class = objc_getClass(__str);
    if (Class)
    {
      v12 = Class;
      goto LABEL_49;
    }

    while (1)
    {
      ClassPair = objc_allocateClassPair(self, __str, 0);
      if (ClassPair)
      {
        break;
      }

      v14 = class_getName(self);
      v15 = v10 + 1;
      snprintf(__str, 0x200uLL, "%s_%s_%x", v14, v6, v10);
      v16 = objc_getClass(__str);
      ++v10;
      if (v16)
      {
        v12 = v16;
        v10 = v15;
        goto LABEL_49;
      }
    }

    v12 = ClassPair;
    v17 = object_getClass(ClassPair);
    ClassMethod = class_getClassMethod(v12, sel__retain_1);
    Implementation = method_getImplementation(ClassMethod);
    TypeEncoding = method_getTypeEncoding(ClassMethod);
    class_addMethod(v17, sel_retain, Implementation, TypeEncoding);
    v21 = class_getClassMethod(v12, sel__release_1);
    v22 = method_getImplementation(v21);
    v23 = method_getTypeEncoding(v21);
    class_addMethod(v17, sel_release, v22, v23);
    v24 = class_getClassMethod(v12, sel__isGeneratedClass_1);
    v25 = method_getImplementation(v24);
    v26 = method_getTypeEncoding(v24);
    class_addMethod(v17, sel__isGeneratedClass, v25, v26);
    v27 = class_getClassMethod(self, sel_class);
    v28 = method_getTypeEncoding(v27);
    class_addMethod(v12, sel_class, override_instace_class_0, v28);
    v29 = class_getClassMethod(self, sel_class);
    v30 = method_getTypeEncoding(v29);
    class_addMethod(v17, sel_class, override_class_class_0, v30);
    v31 = class_getClassMethod(self, sel_superclass);
    v32 = method_getTypeEncoding(v31);
    class_addMethod(v17, sel_superclass, override_class_superclass_0, v32);
    v33 = [objc_msgSend(entityCopy "properties")];
    v34 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v34 = malloc_default_zone();
    }

    if (v33)
    {
      v35 = (((v33 - 1) >> 3) & 0x1FFFFFFC) + 84;
    }

    else
    {
      v35 = 84;
    }

    v36 = malloc_type_zone_calloc(v34, 1uLL, v35, 0x1090040B505F455uLL);
    ReturnPointerMethod = generateReturnPointerMethod(v36);
    class_addMethod(v17, sel__PFMOClassFactoryData, ReturnPointerMethod, "@@:");
    v38 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v38 = malloc_default_zone();
    }

    InstanceSize = class_getInstanceSize(self);
    v9 = malloc_type_zone_calloc(v38, 1uLL, (InstanceSize + 7) & 0xFFFFFFFFFFFFFFF8, 0xDD369F49uLL);
    v36[6] = v9;
    if (objc_opt_class() != self)
    {
      v93 = v9;
      v40 = objc_opt_class();
      MethodImplementation = class_getMethodImplementation(v40, sel_willAccessValueForKey_);
      v42 = class_getMethodImplementation(self, sel_willAccessValueForKey_);
      v43 = objc_opt_class();
      v44 = class_getMethodImplementation(v43, sel_didAccessValueForKey_);
      v45 = class_getMethodImplementation(self, sel_didAccessValueForKey_);
      v46 = MethodImplementation == v42 && v44 == v45;
      v47 = v36[9] & 0xFFFFFFFE;
      if (!v46)
      {
        ++v47;
      }

      *(v36 + 18) = v47;
      v48 = objc_opt_class();
      v49 = class_getMethodImplementation(v48, sel_validateValue_forKey_error_);
      if (v49 != class_getMethodImplementation(self, sel_validateValue_forKey_error_))
      {
        *(v36 + 18) |= 0x10u;
        v50 = objc_opt_class();
        v51 = class_getClassMethod(v50, sel__isGeneratedClass);
        v52 = method_getImplementation(v51);
        v53 = method_getTypeEncoding(v51);
        class_addMethod(v17, sel__useFastValidationMethod, v52, v53);
      }

      v54 = objc_opt_class();
      v55 = class_getMethodImplementation(v54, sel_awakeFromFetch);
      if (v55 != class_getMethodImplementation(self, sel_awakeFromFetch))
      {
        *(v36 + 18) |= 0x20u;
      }

      v56 = objc_opt_class();
      v57 = class_getMethodImplementation(v56, sel_willChangeValueForKey_);
      v58 = class_getMethodImplementation(self, sel_willChangeValueForKey_);
      v59 = objc_opt_class();
      v60 = class_getMethodImplementation(v59, sel_didChangeValueForKey_);
      if (v60 == class_getMethodImplementation(self, sel_didChangeValueForKey_) && v57 == v58)
      {
        v62 = 0;
      }

      else
      {
        v62 = 2;
      }

      *(v36 + 18) = v62 | v36[9] & 0xFFFFFFFD;
      v63 = objc_opt_class();
      v64 = class_getMethodImplementation(v63, sel_willChangeValueForKey_withSetMutation_usingObjects_);
      v65 = class_getMethodImplementation(self, sel_willChangeValueForKey_withSetMutation_usingObjects_);
      v66 = objc_opt_class();
      v67 = class_getMethodImplementation(v66, sel_didChangeValueForKey_withSetMutation_usingObjects_);
      if (v67 == class_getMethodImplementation(self, sel_didChangeValueForKey_withSetMutation_usingObjects_) && v64 == v65)
      {
        v69 = 0;
      }

      else
      {
        v69 = 4;
      }

      *(v36 + 18) = v69 | v36[9] & 0xFFFFFFFB;
      entityCopy = v92;
      v9 = v93;
    }

    v70 = [objc_msgSend(entityCopy "properties")];
    if ((v70 & 0xFFFFFFF8) != 0)
    {
      v71 = v70;
      snprintf(__str, 0x200uLL, "_cd_bits_%p", v12);
      if (v71)
      {
        v72 = ((v71 - 1) >> 5) + 1;
      }

      else
      {
        v72 = 1;
      }

      if (v72 > 0x4000)
      {
        v89 = MEMORY[0x1E695DF30];
        v90 = *MEMORY[0x1E695D930];
        v91 = @"Incorrect ivar generation";
      }

      else
      {
        snprintf(types, 0xAuLL, "[%dI]", v72);
        if (class_addIvar(v12, __str, 4 * v72, 1u, types))
        {
          objc_registerClassPair(v12);
          object_setClass(v9, v12);
          v9[4] |= 0x100000u;
          v9[2] = 10000;
          v73 = generateReturnPointerMethod(v9);
          class_addMethod(v17, sel__PFPlaceHolderSingleton, v73, "@@:");
          InstanceVariable = class_getInstanceVariable(v12, __str);
          Offset = ivar_getOffset(InstanceVariable);
          v76 = (((class_getInstanceSize(v12) + 7) & 0x3F8) - Offset) >> 2;
          goto LABEL_48;
        }

        v89 = MEMORY[0x1E695DF30];
        v90 = *MEMORY[0x1E695D930];
        v91 = @"class_addIvar failed";
      }

LABEL_71:
      objc_exception_throw([v89 exceptionWithName:v90 reason:v91 userInfo:0]);
    }

    objc_registerClassPair(v12);
    object_setClass(v9, v12);
    v9[4] |= 0x100000u;
    v9[2] = 10000;
    v77 = generateReturnPointerMethod(v9);
    class_addMethod(v17, sel__PFPlaceHolderSingleton, v77, "@@:");
    LOBYTE(v76) = 0;
LABEL_48:
    *(v36 + 32) = v76;
    v36[5] = 0;
LABEL_49:
    _PFMOClassFactoryData = [(objc_class *)v12 _PFMOClassFactoryData];
    v79 = *(_PFMOClassFactoryData + 8);
    if (!v79 || v79 == entityCopy)
    {
      v81 = _PFMOClassFactoryData;
      if (!*(_PFMOClassFactoryData + 56))
      {
        goto LABEL_58;
      }

      if ([objc_msgSend(entityCopy "versionHash")])
      {
        break;
      }
    }

    v82 = class_getName(self);
    snprintf(__str, 0x200uLL, "%s_%s_%x", v82, v6, v10++);
  }

  v79 = *(v81 + 8);
LABEL_58:
  if (!v79)
  {
    *v81 = 0;
    *(v81 + 8) = entityCopy;
    *(v81 + 16) = [objc_msgSend(entityCopy "name")];
    *(v81 + 24) = 0;
    _PFPlaceHolderSingleton = [(objc_class *)v12 _PFPlaceHolderSingleton];
    object_setClass(_PFPlaceHolderSingleton, v12);
    *(v81 + 48) = _PFPlaceHolderSingleton;
  }

  os_unfair_lock_unlock(&_MergedGlobals_82);
  if (v9)
  {
    os_unfair_lock_lock_with_options();
    Mutable = qword_1ED4BEAE0;
    if (!qword_1ED4BEAE0)
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
      qword_1ED4BEAE0 = Mutable;
    }

    CFArrayAppendValue(Mutable, v9);
    os_unfair_lock_unlock(&stru_1ED4BEADC);
  }

  objc_opt_self();
  __dmb(0xBu);
  v85 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)valueForKey:(id)key
{
  v4.receiver = self;
  v4.super_class = NSManagedImmutableObject;
  return [(NSManagedImmutableObject *)&v4 valueForKey:key];
}

@end