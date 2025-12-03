@interface CRLAccessibilitySafeCategory
+ (Class)crlaxTargetClass;
+ (void)_crlaxAddCategoryMethod:(objc_method *)method toClass:(Class)class isClass:(BOOL)isClass;
+ (void)_crlaxInitializeSafeCategory;
+ (void)_crlaxInstallSafeCategoryOnClass:(Class)class;
+ (void)_crlaxInstallSafeCategoryOnClassNamed:(id)named;
@end

@implementation CRLAccessibilitySafeCategory

+ (Class)crlaxTargetClass
{
  crlaxTargetClassName = [self crlaxTargetClassName];

  return NSClassFromString(crlaxTargetClassName);
}

+ (void)_crlaxInitializeSafeCategory
{
  crlaxTargetClassName = [self crlaxTargetClassName];

  [self _crlaxInstallSafeCategoryOnClassNamed:crlaxTargetClassName];
}

+ (void)_crlaxAddCategoryMethod:(objc_method *)method toClass:(Class)class isClass:(BOOL)isClass
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
        if (v18 == [self crlaxBaseSafeCategoryClass])
        {
          if (isClassCopy)
          {
            Class = object_getClass(Class);
          }

          v19 = method_getTypeEncoding(v11);
          v20 = class_addMethod(Class, Name, Implementation, v19);
          if (qword_101A34808 != -1)
          {
            sub_10132DE3C();
          }

          if (!v20 && (byte_101A34800 & 1) != 0)
          {
            if (qword_101A34818 != -1)
            {
              sub_10132DF7C();
            }

            v21 = byte_101A34810;
            if (isClassCopy)
            {
              v22 = @"+";
            }

            else
            {
              v22 = @"-";
            }

            NSStringFromClass(class);
            NSStringFromSelector(Name);
            if (__CRLAccessibilityHandleValidationErrorWithDescription(v21, 1, @"Failed adding %@[%@ %@]", v23, v24, v25, v26, v27, v22))
            {
              abort();
            }
          }
        }
      }
    }
  }
}

+ (void)_crlaxInstallSafeCategoryOnClassNamed:(id)named
{
  v4 = NSClassFromString(named);
  if (qword_101A34808 != -1)
  {
    sub_10132DE3C();
  }

  if (byte_101A34800 == 1 && v4 == 0)
  {
    if (qword_101A34818 != -1)
    {
      sub_10132DF7C();
    }

    v6 = byte_101A34810;
    v7 = NSStringFromClass(self);
    if (__CRLAccessibilityHandleValidationErrorWithDescription(v6, 1, @"Failed installing %@ on %@. %@ does not exist in runtime.", v8, v9, v10, v11, v12, v7))
    {
      abort();
    }
  }

  else if (v4)
  {

    [self _crlaxInstallSafeCategoryOnClass:v4];
  }
}

+ (void)_crlaxInstallSafeCategoryOnClass:(Class)class
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
          v8 = v6[i];
          v9 = class_addProtocol(class, v8);
          if (qword_101A34808 != -1)
          {
            sub_10132DE64();
          }

          if (!v9 && (byte_101A34800 & 1) != 0)
          {
            if (qword_101A34818 != -1)
            {
              sub_10132DF90();
            }

            v10 = byte_101A34810;
            v11 = NSStringFromProtocol(v8);
            NSStringFromClass(self);
            NSStringFromClass(class);
            if (__CRLAccessibilityHandleValidationErrorWithDescription(v10, 1, @"Failed adding protocol %@ from safe category %@ to target class %@.", v12, v13, v14, v15, v16, v11))
            {
              abort();
            }
          }
        }
      }

      free(v6);
    }

    v17 = NSSelectorFromString(@".cxx_destruct");
    v18 = NSSelectorFromString(@".cxx_construct");
    v30 = 0;
    v19 = class_copyMethodList(self, &v30);
    if (v19)
    {
      v20 = v19;
      if (v30)
      {
        v21 = 0;
        do
        {
          v22 = v20[v21];
          if (!v22)
          {
            break;
          }

          Name = method_getName(v22);
          if (Name != v17 && Name != v18)
          {
            [self _crlaxAddCategoryMethod:v20[v21] toClass:class isClass:0];
          }

          ++v21;
        }

        while (v21 < v30);
      }

      free(v20);
    }

    Class = object_getClass(self);
    v26 = class_copyMethodList(Class, &v30);
    if (v26)
    {
      v27 = v26;
      if (v30)
      {
        for (j = 0; j < v30; ++j)
        {
          v29 = v27[j];
          if (!v29)
          {
            break;
          }

          if (method_getName(v29) != "load")
          {
            [self _crlaxAddCategoryMethod:v27[j] toClass:object_getClass(class) isClass:1];
          }
        }
      }

      free(v27);
    }
  }
}

@end