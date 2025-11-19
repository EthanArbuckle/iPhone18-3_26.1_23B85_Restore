@interface VNRequestInstanceCreator
+ (id)defaultCreator;
- (BOOL)_isValidRequestClass:(void *)a1;
- (VNRequestInstanceCreator)initWithDelegate:(id)a3;
- (id)_newVNRequestInstanceOfClass:(Class)a3 withCompletionHandler:(id)a4 revision:(unint64_t)a5 error:(id *)a6;
- (id)_newVNTargetedImageRequestInstanceOfClass:(Class)a3 withCompletionHandler:(id)a4 revision:(unint64_t)a5 error:(id *)a6;
- (id)errorForFailedInstanceCreationOfRequestClass:(Class)a3 withCompletionHandler:(id)a4;
- (id)newRequestInstanceForSpecifier:(id)a3 withCompletionHandler:(id)a4 error:(id *)a5;
- (id)newRequestInstanceOfClass:(Class)a3 withCompletionHandler:(id)a4 revision:(unint64_t)a5 error:(id *)a6;
@end

@implementation VNRequestInstanceCreator

- (id)_newVNTargetedImageRequestInstanceOfClass:(Class)a3 withCompletionHandler:(id)a4 revision:(unint64_t)a5 error:(id *)a6
{
  if (a6)
  {
    *a6 = [(VNRequestInstanceCreator *)self errorForFailedInstanceCreationOfRequestClass:a3 withCompletionHandler:a4, a5];
  }

  return 0;
}

- (id)_newVNRequestInstanceOfClass:(Class)a3 withCompletionHandler:(id)a4 revision:(unint64_t)a5 error:(id *)a6
{
  v10 = a4;
  v11 = [[a3 alloc] initWithCompletionHandler:v10];
  v12 = v11;
  if (!v11)
  {
    if (a6)
    {
      [(VNRequestInstanceCreator *)self errorForFailedInstanceCreationOfRequestClass:a3 withCompletionHandler:v10];
      *a6 = v13 = 0;
      goto LABEL_8;
    }

LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  if (a5 && ![v11 setRevision:a5 error:a6])
  {
    goto LABEL_7;
  }

  v13 = v12;
LABEL_8:

  return v13;
}

- (id)errorForFailedInstanceCreationOfRequestClass:(Class)a3 withCompletionHandler:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = NSStringFromClass(a3);
  v7 = [v5 initWithFormat:@"A new %@ instance cannot be created", v6];

  v11 = *MEMORY[0x1E696A578];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.VN.Tests" code:1 userInfo:v8];

  return v9;
}

- (id)newRequestInstanceForSpecifier:(id)a3 withCompletionHandler:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 requestClassAndReturnError:a5];
  if (v10)
  {
    v11 = -[VNRequestInstanceCreator newRequestInstanceOfClass:withCompletionHandler:revision:error:](self, "newRequestInstanceOfClass:withCompletionHandler:revision:error:", v10, v9, [v8 requestRevision], a5);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)newRequestInstanceOfClass:(Class)a3 withCompletionHandler:(id)a4 revision:(unint64_t)a5 error:(id *)a6
{
  v10 = a4;
  v11 = objc_autoreleasePoolPush();
  v34 = 0;
  v12 = v10;
  if (self)
  {
    if (![VNRequestInstanceCreator _isValidRequestClass:a3])
    {
      [(VNRequestInstanceCreator *)self errorForFailedInstanceCreationOfRequestClass:a3 withCompletionHandler:v12];
      v34 = v17 = 0;
      goto LABEL_22;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v14 = WeakRetained;
    if (WeakRetained)
    {
      v35 = 0;
      v15 = [WeakRetained requestInstanceCreator:self newRequestInstance:&v35 ofClass:a3 withCompletionHandler:v12 revision:a5 error:&v34];
      v16 = v35;
      v17 = v16;
      if (v15)
      {
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v34 = [(VNRequestInstanceCreator *)self errorForFailedInstanceCreationOfRequestClass:a3 withCompletionHandler:v12];
        }

        goto LABEL_21;
      }
    }

    v33 = a6;
    v19 = objc_alloc(MEMORY[0x1E696AEC0]);
    v20 = NSStringFromClass(a3);
    v21 = [v19 initWithFormat:@"new%@InstanceWithCompletionHandler:revision:error:", v20];

    v22 = NSSelectorFromString(v21);
    if (objc_opt_respondsToSelector())
    {
      v23 = ([(VNRequestInstanceCreator *)self methodForSelector:v22])(self, v22, v12, a5, &v34);
    }

    else
    {
      if (!a3)
      {
        goto LABEL_17;
      }

      v24 = a3;
      while (1)
      {
        if ([VNRequestInstanceCreator _isValidRequestClass:a3])
        {
          v25 = objc_alloc(MEMORY[0x1E696AEC0]);
          v26 = NSStringFromClass(v24);
          v27 = [v25 initWithFormat:@"_new%@InstanceOfClass:withCompletionHandler:revision:error:", v26];

          v28 = NSSelectorFromString(v27);
          if (objc_opt_respondsToSelector())
          {
            break;
          }
        }

        v24 = [(objc_class *)v24 superclass];
        if (!v24)
        {
          goto LABEL_17;
        }
      }

      if (!v28)
      {
LABEL_17:
        [(VNRequestInstanceCreator *)self errorForFailedInstanceCreationOfRequestClass:a3 withCompletionHandler:v12];
        v34 = v17 = 0;
        goto LABEL_18;
      }

      v23 = ([(VNRequestInstanceCreator *)self methodForSelector:v28])(self, v28, a3, v12, a5, &v34);
    }

    v17 = v23;
LABEL_18:
    a6 = v33;
LABEL_21:

    goto LABEL_22;
  }

  v17 = 0;
LABEL_22:

  v29 = v34;
  objc_autoreleasePoolPop(v11);
  if (v17)
  {
    v30 = v17;
  }

  else if (a6)
  {
    v31 = v29;
    *a6 = v29;
  }

  return v17;
}

- (BOOL)_isValidRequestClass:(void *)a1
{
  v2 = objc_opt_class();
  v3 = [a1 isSubclassOfClass:v2];
  v4 = v2 == a1 || v3 == 0;
  result = 0;
  if (!v4)
  {
    v5 = NSClassFromString(&cfstr_Vncompoundrequ.isa);
    if (!v5 || ([a1 isSubclassOfClass:v5] & 1) == 0)
    {
      return 1;
    }
  }

  return result;
}

- (VNRequestInstanceCreator)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VNRequestInstanceCreator;
  v5 = [(VNRequestInstanceCreator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

+ (id)defaultCreator
{
  if (defaultCreator_onceToken != -1)
  {
    dispatch_once(&defaultCreator_onceToken, &__block_literal_global_1102);
  }

  v3 = defaultCreator_defaultCreator;

  return v3;
}

uint64_t __42__VNRequestInstanceCreator_defaultCreator__block_invoke()
{
  defaultCreator_defaultCreator = objc_alloc_init(VNRequestInstanceCreator);

  return MEMORY[0x1EEE66BB8]();
}

@end