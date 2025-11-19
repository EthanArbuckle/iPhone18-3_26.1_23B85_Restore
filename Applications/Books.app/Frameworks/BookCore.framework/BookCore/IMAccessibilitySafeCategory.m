@interface IMAccessibilitySafeCategory
+ (Class)imaxTargetClass;
+ (void)_imaxAddCategoryMethod:(objc_method *)a3 toClass:(Class)a4 isClass:(BOOL)a5;
+ (void)_imaxInitializeSafeCategory;
+ (void)_imaxInstallSafeCategoryOnClass:(Class)a3;
+ (void)_imaxInstallSafeCategoryOnClassNamed:(id)a3;
@end

@implementation IMAccessibilitySafeCategory

+ (Class)imaxTargetClass
{
  v2 = [a1 imaxTargetClassName];
  v3 = NSClassFromString(v2);

  return v3;
}

+ (void)_imaxInitializeSafeCategory
{
  v3 = [a1 imaxTargetClassName];
  [a1 _imaxInstallSafeCategoryOnClassNamed:v3];
}

+ (void)_imaxAddCategoryMethod:(objc_method *)a3 toClass:(Class)a4 isClass:(BOOL)a5
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
        if (v18 == [a1 imaxBaseSafeCategoryClass])
        {
          if (v5)
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
            if (v5)
            {
              v22 = @"+";
            }

            else
            {
              v22 = @"-";
            }

            v23 = NSStringFromClass(a4);
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

+ (void)_imaxInstallSafeCategoryOnClassNamed:(id)a3
{
  v14 = a3;
  v4 = NSClassFromString(v14);
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
    v7 = NSStringFromClass(a1);
    v13 = __IMAccessibilityHandleValidationErrorWithDescription(v6, 1, @"Failed installing %@ on %@. %@ does not exist in runtime.", v8, v9, v10, v11, v12, v7);

    if (v13)
    {
      abort();
    }
  }

  else if (v4)
  {
    [a1 _imaxInstallSafeCategoryOnClass:v4];
  }
}

+ (void)_imaxInstallSafeCategoryOnClass:(Class)a3
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
        v7 = 0;
        v8 = &qword_345000;
        do
        {
          v9 = v6[v7];
          v10 = class_addProtocol(a3, v9);
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
            v13 = NSStringFromClass(a1);
            v29 = NSStringFromClass(a3);
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
    v20 = class_copyMethodList(a1, &v30);
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

          [a1 _imaxAddCategoryMethod:v23 toClass:a3 isClass:0];
        }
      }

      free(v21);
    }

    Class = object_getClass(a1);
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
            [a1 _imaxAddCategoryMethod:v26[j] toClass:object_getClass(a3) isClass:1];
          }
        }
      }

      free(v26);
    }
  }
}

@end