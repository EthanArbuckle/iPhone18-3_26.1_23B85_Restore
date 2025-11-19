@interface BAXSafeCategory
+ (Class)baxTargetClass;
+ (void)_baxAddCategoryMethod:(objc_method *)a3 toClass:(Class)a4 isClass:(BOOL)a5;
+ (void)_baxInitializeSafeCategory;
+ (void)_baxInstallSafeCategoryOnClass:(Class)a3;
+ (void)_baxInstallSafeCategoryOnClassNamed:(id)a3;
@end

@implementation BAXSafeCategory

+ (Class)baxTargetClass
{
  v2 = [a1 baxTargetClassName];
  v3 = NSClassFromString(v2);

  return v3;
}

+ (void)_baxInitializeSafeCategory
{
  v3 = [a1 baxTargetClassName];
  [a1 _baxInstallSafeCategoryOnClassNamed:v3];
}

+ (void)_baxAddCategoryMethod:(objc_method *)a3 toClass:(Class)a4 isClass:(BOOL)a5
{
  v5 = a5;
  Name = method_getName(a3);
  InstanceMethod = class_getInstanceMethod(a4, Name);
  v11 = InstanceMethod;
  if (InstanceMethod)
  {
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    Implementation = 0;
  }

  v13 = method_getImplementation(a3);
  TypeEncoding = method_getTypeEncoding(a3);
  if (!class_addMethod(a4, Name, v13, TypeEncoding))
  {
    v15 = method_getImplementation(a3);
    method_setImplementation(v11, v15);
  }

  if (v11)
  {
    if (Implementation)
    {
      Superclass = class_getSuperclass(a1);
      if (Superclass)
      {
        Class = Superclass;
        v18 = class_getSuperclass(Superclass);
        if (v18 == [a1 baxBaseSafeCategoryClass])
        {
          if (v5)
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

+ (void)_baxInstallSafeCategoryOnClassNamed:(id)a3
{
  v4 = NSClassFromString(a3);
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

  [a1 _baxInstallSafeCategoryOnClass:v5];
}

+ (void)_baxInstallSafeCategoryOnClass:(Class)a3
{
  if (a3)
  {
    outCount = 0;
    v5 = class_copyProtocolList(a1, &outCount);
    if (v5)
    {
      v6 = v5;
      if (outCount)
      {
        for (i = 0; i < outCount; ++i)
        {
          class_addProtocol(a3, v6[i]);
          if (qword_26DD0 != -1)
          {
            sub_12F78();
          }
        }
      }

      free(v6);
    }

    v17 = 0;
    v8 = class_copyMethodList(a1, &v17);
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

          [a1 _baxAddCategoryMethod:v11 toClass:a3 isClass:0];
        }
      }

      free(v9);
    }

    Class = object_getClass(a1);
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
            [a1 _baxAddCategoryMethod:v14[k] toClass:object_getClass(a3) isClass:1];
          }
        }
      }

      free(v14);
    }
  }
}

@end