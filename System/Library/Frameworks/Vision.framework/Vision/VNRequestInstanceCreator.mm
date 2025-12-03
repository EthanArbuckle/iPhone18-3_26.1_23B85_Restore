@interface VNRequestInstanceCreator
+ (id)defaultCreator;
- (BOOL)_isValidRequestClass:(void *)class;
- (VNRequestInstanceCreator)initWithDelegate:(id)delegate;
- (id)_newVNRequestInstanceOfClass:(Class)class withCompletionHandler:(id)handler revision:(unint64_t)revision error:(id *)error;
- (id)_newVNTargetedImageRequestInstanceOfClass:(Class)class withCompletionHandler:(id)handler revision:(unint64_t)revision error:(id *)error;
- (id)errorForFailedInstanceCreationOfRequestClass:(Class)class withCompletionHandler:(id)handler;
- (id)newRequestInstanceForSpecifier:(id)specifier withCompletionHandler:(id)handler error:(id *)error;
- (id)newRequestInstanceOfClass:(Class)class withCompletionHandler:(id)handler revision:(unint64_t)revision error:(id *)error;
@end

@implementation VNRequestInstanceCreator

- (id)_newVNTargetedImageRequestInstanceOfClass:(Class)class withCompletionHandler:(id)handler revision:(unint64_t)revision error:(id *)error
{
  if (error)
  {
    *error = [(VNRequestInstanceCreator *)self errorForFailedInstanceCreationOfRequestClass:class withCompletionHandler:handler, revision];
  }

  return 0;
}

- (id)_newVNRequestInstanceOfClass:(Class)class withCompletionHandler:(id)handler revision:(unint64_t)revision error:(id *)error
{
  handlerCopy = handler;
  v11 = [[class alloc] initWithCompletionHandler:handlerCopy];
  v12 = v11;
  if (!v11)
  {
    if (error)
    {
      [(VNRequestInstanceCreator *)self errorForFailedInstanceCreationOfRequestClass:class withCompletionHandler:handlerCopy];
      *error = v13 = 0;
      goto LABEL_8;
    }

LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  if (revision && ![v11 setRevision:revision error:error])
  {
    goto LABEL_7;
  }

  v13 = v12;
LABEL_8:

  return v13;
}

- (id)errorForFailedInstanceCreationOfRequestClass:(Class)class withCompletionHandler:(id)handler
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = NSStringFromClass(class);
  v7 = [v5 initWithFormat:@"A new %@ instance cannot be created", v6];

  v11 = *MEMORY[0x1E696A578];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.VN.Tests" code:1 userInfo:v8];

  return v9;
}

- (id)newRequestInstanceForSpecifier:(id)specifier withCompletionHandler:(id)handler error:(id *)error
{
  specifierCopy = specifier;
  handlerCopy = handler;
  v10 = [specifierCopy requestClassAndReturnError:error];
  if (v10)
  {
    v11 = -[VNRequestInstanceCreator newRequestInstanceOfClass:withCompletionHandler:revision:error:](self, "newRequestInstanceOfClass:withCompletionHandler:revision:error:", v10, handlerCopy, [specifierCopy requestRevision], error);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)newRequestInstanceOfClass:(Class)class withCompletionHandler:(id)handler revision:(unint64_t)revision error:(id *)error
{
  handlerCopy = handler;
  v11 = objc_autoreleasePoolPush();
  v34 = 0;
  v12 = handlerCopy;
  if (self)
  {
    if (![VNRequestInstanceCreator _isValidRequestClass:class])
    {
      [(VNRequestInstanceCreator *)self errorForFailedInstanceCreationOfRequestClass:class withCompletionHandler:v12];
      v34 = v17 = 0;
      goto LABEL_22;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v14 = WeakRetained;
    if (WeakRetained)
    {
      v35 = 0;
      v15 = [WeakRetained requestInstanceCreator:self newRequestInstance:&v35 ofClass:class withCompletionHandler:v12 revision:revision error:&v34];
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
          v34 = [(VNRequestInstanceCreator *)self errorForFailedInstanceCreationOfRequestClass:class withCompletionHandler:v12];
        }

        goto LABEL_21;
      }
    }

    errorCopy = error;
    v19 = objc_alloc(MEMORY[0x1E696AEC0]);
    v20 = NSStringFromClass(class);
    v21 = [v19 initWithFormat:@"new%@InstanceWithCompletionHandler:revision:error:", v20];

    v22 = NSSelectorFromString(v21);
    if (objc_opt_respondsToSelector())
    {
      v23 = ([(VNRequestInstanceCreator *)self methodForSelector:v22])(self, v22, v12, revision, &v34);
    }

    else
    {
      if (!class)
      {
        goto LABEL_17;
      }

      classCopy = class;
      while (1)
      {
        if ([VNRequestInstanceCreator _isValidRequestClass:class])
        {
          v25 = objc_alloc(MEMORY[0x1E696AEC0]);
          v26 = NSStringFromClass(classCopy);
          v27 = [v25 initWithFormat:@"_new%@InstanceOfClass:withCompletionHandler:revision:error:", v26];

          v28 = NSSelectorFromString(v27);
          if (objc_opt_respondsToSelector())
          {
            break;
          }
        }

        classCopy = [(objc_class *)classCopy superclass];
        if (!classCopy)
        {
          goto LABEL_17;
        }
      }

      if (!v28)
      {
LABEL_17:
        [(VNRequestInstanceCreator *)self errorForFailedInstanceCreationOfRequestClass:class withCompletionHandler:v12];
        v34 = v17 = 0;
        goto LABEL_18;
      }

      v23 = ([(VNRequestInstanceCreator *)self methodForSelector:v28])(self, v28, class, v12, revision, &v34);
    }

    v17 = v23;
LABEL_18:
    error = errorCopy;
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

  else if (error)
  {
    v31 = v29;
    *error = v29;
  }

  return v17;
}

- (BOOL)_isValidRequestClass:(void *)class
{
  v2 = objc_opt_class();
  v3 = [class isSubclassOfClass:v2];
  v4 = v2 == class || v3 == 0;
  result = 0;
  if (!v4)
  {
    v5 = NSClassFromString(&cfstr_Vncompoundrequ.isa);
    if (!v5 || ([class isSubclassOfClass:v5] & 1) == 0)
    {
      return 1;
    }
  }

  return result;
}

- (VNRequestInstanceCreator)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = VNRequestInstanceCreator;
  v5 = [(VNRequestInstanceCreator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
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