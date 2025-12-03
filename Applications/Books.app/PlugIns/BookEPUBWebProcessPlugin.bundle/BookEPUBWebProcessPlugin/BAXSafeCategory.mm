@interface BAXSafeCategory
+ (Class)baxTargetClass;
+ (void)_baxAddCategoryMethod:(objc_method *)method toClass:(Class)class isClass:(BOOL)isClass;
+ (void)_baxInitializeSafeCategory;
+ (void)_baxInstallSafeCategoryOnClass:(Class)class;
+ (void)_baxInstallSafeCategoryOnClassNamed:(id)named;
@end

@implementation BAXSafeCategory

+ (Class)baxTargetClass
{
  baxTargetClassName = [self baxTargetClassName];
  v3 = NSClassFromString(baxTargetClassName);

  return v3;
}

+ (void)_baxInitializeSafeCategory
{
  baxTargetClassName = [self baxTargetClassName];
  [self _baxInstallSafeCategoryOnClassNamed:baxTargetClassName];
}

+ (void)_baxAddCategoryMethod:(objc_method *)method toClass:(Class)class isClass:(BOOL)isClass
{
  isClassCopy = isClass;
  Name = method_getName(method);
  InstanceMethod = class_getInstanceMethod(class, Name);
  v11 = InstanceMethod;
  if (InstanceMethod)
  {
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    Implementation = 0;
  }

  v13 = method_getImplementation(method);
  TypeEncoding = method_getTypeEncoding(method);
  if (!class_addMethod(class, Name, v13, TypeEncoding))
  {
    v15 = method_getImplementation(method);
    method_setImplementation(v11, v15);
  }

  if (v11)
  {
    if (Implementation)
    {
      Superclass = class_getSuperclass(self);
      if (Superclass)
      {
        Class = Superclass;
        v18 = class_getSuperclass(Superclass);
        if (v18 == [self baxBaseSafeCategoryClass])
        {
          if (isClassCopy)
          {
            Class = object_getClass(Class);
          }

          v19 = method_getTypeEncoding(v11);
          class_addMethod(Class, Name, Implementation, v19);
          if (qword_26DD0 != -1)
          {
            sub_12F64();
          }
        }
      }
    }
  }
}

+ (void)_baxInstallSafeCategoryOnClassNamed:(id)named
{
  v4 = NSClassFromString(named);
  v5 = v4;
  if (qword_26DD0 == -1)
  {
    if (!v4)
    {
      return;
    }
  }

  else
  {
    sub_12F64();
    if (!v5)
    {
      return;
    }
  }

  [self _baxInstallSafeCategoryOnClass:v5];
}

+ (void)_baxInstallSafeCategoryOnClass:(Class)class
{
  if (class)
  {
    outCount = 0;
    v5 = class_copyProtocolList(self, &outCount);
    if (v5)
    {
      v6 = v5;
      if (outCount)
      {
        for (i = 0; i < outCount; ++i)
        {
          class_addProtocol(class, v6[i]);
          if (qword_26DD0 != -1)
          {
            sub_12F78();
          }
        }
      }

      free(v6);
    }

    v17 = 0;
    v8 = class_copyMethodList(self, &v17);
    if (v8)
    {
      v9 = v8;
      if (v17)
      {
        for (j = 0; j < v17; ++j)
        {
          v11 = v9[j];
          if (!v11)
          {
            break;
          }

          [self _baxAddCategoryMethod:v11 toClass:class isClass:0];
        }
      }

      free(v9);
    }

    Class = object_getClass(self);
    v13 = class_copyMethodList(Class, &v17);
    if (v13)
    {
      v14 = v13;
      if (v17)
      {
        for (k = 0; k < v17; ++k)
        {
          v16 = v14[k];
          if (!v16)
          {
            break;
          }

          if (method_getName(v16) != "load")
          {
            [self _baxAddCategoryMethod:v14[k] toClass:object_getClass(class) isClass:1];
          }
        }
      }

      free(v14);
    }
  }
}

@end