@interface _HMAutomationBuilder
+ (void)adoptExternalCategoriesFromClasses:(Class)classes;
- (_HMAutomationBuilder)initWithContext:(id)context home:(id)home;
@end

@implementation _HMAutomationBuilder

- (_HMAutomationBuilder)initWithContext:(id)context home:(id)home
{
  contextCopy = context;
  homeCopy = home;
  if (!contextCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = homeCopy;
  if (!homeCopy)
  {
LABEL_7:
    v14 = _HMFPreconditionFailure();
    [(_HMAutomationBuilder *)v14 adoptExternalCategoriesFromClasses:v15, v16];
    return result;
  }

  v17.receiver = self;
  v17.super_class = _HMAutomationBuilder;
  v10 = [(_HMAutomationBuilder *)&v17 init];
  if (v10)
  {
    v11 = HMTransientIdentifier();
    uniqueIdentifier = v10->_uniqueIdentifier;
    v10->_uniqueIdentifier = v11;

    objc_storeStrong(&v10->_context, context);
    objc_storeStrong(&v10->_home, home);
  }

  return v10;
}

+ (void)adoptExternalCategoriesFromClasses:(Class)classes
{
  v47 = *MEMORY[0x1E69E9840];
  v36 = &v48;
  v30[0] = [self methodForSelector:a2];
  if (classes)
  {
    v6 = 0;
    v34 = 0;
    *&v5 = 138544386;
    v31 = v5;
    do
    {
      outCount = 0;
      v7 = class_copyMethodList(classes, &outCount);
      if (outCount)
      {
        v8 = v7;
        v30[1] = v30;
        v9 = 8 * (outCount + 1);
        v10 = v30 - ((v9 + 15) & 0xFFFFFFFF0);
        if (v9 >= 0x200)
        {
          v11 = 512;
        }

        else
        {
          v11 = 8 * (outCount + 1);
        }

        bzero(v30 - ((v9 + 15) & 0xFFFFFFFF0), v11);
        v12 = outCount;
        v13 = &v30[-4 * outCount - 4];
        if (outCount)
        {
          for (i = 0; i < outCount; ++i)
          {
            *&v10[8 * i] = method_getImplementation(v8[i]);
            v12 = outCount;
          }
        }

        *&v10[8 * v12] = v30[0];
        _dyld_images_for_addresses();
        v15 = outCount;
        if (outCount)
        {
          v32 = v13;
          classesCopy = classes;
          v16 = 0;
          v17 = v13 + 3;
          do
          {
            if (*v17 != v13[4 * v15 + 3])
            {
              Name = method_getName(v8[v16]);
              v19 = *&v10[8 * v16];
              TypeEncoding = method_getTypeEncoding(v8[v16]);
              if (!class_addMethod(self, Name, v19, TypeEncoding))
              {
                v21 = *v17;
                if (*v17 != v6)
                {
                  v22 = *v17;
                  v34 = dyld_image_path_containing_address();
                  v6 = v21;
                }

                v23 = objc_autoreleasePoolPush();
                v24 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                {
                  HMFGetLogIdentifier();
                  v26 = v25 = v6;
                  v27 = NSStringFromSelector(Name);
                  *buf = v31;
                  v38 = v26;
                  v39 = 2112;
                  selfCopy = self;
                  v41 = 2112;
                  v42 = classesCopy;
                  v43 = 2112;
                  v44 = v27;
                  v45 = 2080;
                  v46 = v34;
                  _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@%@: Did not adopt [%@ %@] defined in %s", buf, 0x34u);

                  v6 = v25;
                  v13 = v32;
                }

                objc_autoreleasePoolPop(v23);
              }
            }

            ++v16;
            v15 = outCount;
            v17 += 4;
          }

          while (v16 < outCount);
        }

        free(v8);
      }

      v28 = v36++;
      classes = *v28;
    }

    while (*v28);
  }

  v29 = *MEMORY[0x1E69E9840];
}

@end