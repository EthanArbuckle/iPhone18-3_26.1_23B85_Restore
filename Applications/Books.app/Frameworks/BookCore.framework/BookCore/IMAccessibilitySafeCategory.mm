@interface IMAccessibilitySafeCategory
+ (Class)imaxTargetClass;
+ (void)_imaxAddCategoryMethod:(objc_method *)method toClass:(Class)class isClass:(BOOL)isClass;
+ (void)_imaxInitializeSafeCategory;
+ (void)_imaxInstallSafeCategoryOnClass:(Class)class;
+ (void)_imaxInstallSafeCategoryOnClassNamed:(id)named;
@end

@implementation IMAccessibilitySafeCategory

+ (Class)imaxTargetClass
{
  imaxTargetClassName = [self imaxTargetClassName];
  v3 = NSClassFromString(imaxTargetClassName);

  return v3;
}

+ (void)_imaxInitializeSafeCategory
{
  imaxTargetClassName = [self imaxTargetClassName];
  [self _imaxInstallSafeCategoryOnClassNamed:imaxTargetClassName];
}

+ (void)_imaxAddCategoryMethod:(objc_method *)method toClass:(Class)class isClass:(BOOL)isClass
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
        if (v18 == [self imaxBaseSafeCategoryClass])
        {
          if (isClassCopy)
          {
            Class = object_getClass(Class);
          }

          v19 = method_getTypeEncoding(v11);
          v20 = class_addMethod(Class, Name, Implementation, v19);
          if (qword_345F18 != -1)
          {
            sub_1EB088();
          }

          if (!v20 && (byte_345F10 & 1) != 0)
          {
            if (qword_345F28 != -1)
            {
              sub_1EB128();
            }

            v21 = byte_345F20;
            if (isClassCopy)
            {
              v22 = @"+";
            }

            else
            {
              v22 = @"-";
            }

            v23 = NSStringFromClass(class);
            v30 = NSStringFromSelector(Name);
            v29 = __IMAccessibilityHandleValidationErrorWithDescription(v21, 1, @"Failed adding %@[%@ %@]", v24, v25, v26, v27, v28, v22);

            if (v29)
            {
              abort();
            }
          }
        }
      }
    }
  }
}

+ (void)_imaxInstallSafeCategoryOnClassNamed:(id)named
{
  namedCopy = named;
  v4 = NSClassFromString(namedCopy);
  if (qword_345F18 != -1)
  {
    sub_1EB088();
  }

  if (byte_345F10 == 1 && v4 == 0)
  {
    if (qword_345F28 != -1)
    {
      sub_1EB128();
    }

    v6 = byte_345F20;
    v7 = NSStringFromClass(self);
    v13 = __IMAccessibilityHandleValidationErrorWithDescription(v6, 1, @"Failed installing %@ on %@. %@ does not exist in runtime.", v8, v9, v10, v11, v12, v7);

    if (v13)
    {
      abort();
    }
  }

  else if (v4)
  {
    [self _imaxInstallSafeCategoryOnClass:v4];
  }
}

+ (void)_imaxInstallSafeCategoryOnClass:(Class)class
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
        v7 = 0;
        v8 = &qword_345000;
        do
        {
          v9 = v6[v7];
          v10 = class_addProtocol(class, v9);
          if (v8[483] != -1)
          {
            sub_1EB0B0();
          }

          if (!v10 && (byte_345F10 & 1) != 0)
          {
            if (qword_345F28 != -1)
            {
              sub_1EB13C();
            }

            v11 = byte_345F20;
            v12 = NSStringFromProtocol(v9);
            v13 = NSStringFromClass(self);
            v29 = NSStringFromClass(class);
            v19 = __IMAccessibilityHandleValidationErrorWithDescription(v11, 1, @"Failed adding protocol %@ from safe category %@ to target class %@.", v14, v15, v16, v17, v18, v12);

            v8 = &qword_345000;
            if (v19)
            {
              abort();
            }
          }

          ++v7;
        }

        while (v7 < outCount);
      }

      free(v6);
    }

    v30 = 0;
    v20 = class_copyMethodList(self, &v30);
    if (v20)
    {
      v21 = v20;
      if (v30)
      {
        for (i = 0; i < v30; ++i)
        {
          v23 = v21[i];
          if (!v23)
          {
            break;
          }

          [self _imaxAddCategoryMethod:v23 toClass:class isClass:0];
        }
      }

      free(v21);
    }

    Class = object_getClass(self);
    v25 = class_copyMethodList(Class, &v30);
    if (v25)
    {
      v26 = v25;
      if (v30)
      {
        for (j = 0; j < v30; ++j)
        {
          v28 = v26[j];
          if (!v28)
          {
            break;
          }

          if (method_getName(v28) != "load")
          {
            [self _imaxAddCategoryMethod:v26[j] toClass:object_getClass(class) isClass:1];
          }
        }
      }

      free(v26);
    }
  }
}

@end