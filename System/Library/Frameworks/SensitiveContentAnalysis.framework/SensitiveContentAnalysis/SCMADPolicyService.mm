@interface SCMADPolicyService
+ (BOOL)checkAvailability:(id *)a3;
- (SCMADPolicyService)initWithUpdateHandler:(id)a3 error:(id *)a4;
@end

@implementation SCMADPolicyService

+ (BOOL)checkAvailability:(id *)a3
{
  v4 = objc_alloc(getMADServiceClass());
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    if (!a3)
    {
      v9 = 0;
      return v9 & 1;
    }

    v10 = @"Failed to find MADService policy method";
    goto LABEL_9;
  }

  NSSelectorFromString(&cfstr_Policytype.isa);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v6 = getMADUserSafetyPolicyClass_softClass;
  v16 = getMADUserSafetyPolicyClass_softClass;
  if (!getMADUserSafetyPolicyClass_softClass)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __getMADUserSafetyPolicyClass_block_invoke;
    v12[3] = &unk_1E7A43950;
    v12[4] = &v13;
    __getMADUserSafetyPolicyClass_block_invoke(v12);
    v6 = v14[3];
  }

  v7 = v6;
  _Block_object_dispose(&v13, 8);
  v8 = [v6 alloc];
  v9 = objc_opt_respondsToSelector();

  if (a3 && (v9 & 1) == 0)
  {
    v10 = @"Failed to find MADUserSafetyPolicy";
LABEL_9:
    SCAError(100, v10);
    *a3 = v9 = 0;
  }

  return v9 & 1;
}

- (SCMADPolicyService)initWithUpdateHandler:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = SCMADPolicyService;
  v7 = [(SCMADPolicyService *)&v16 init];
  if (!v7 || [objc_opt_class() checkAvailability:a4] && (objc_msgSend(getMADServiceClass(), "service"), v8 = objc_claimAutoreleasedReturnValue(), service = v7->_service, v7->_service = v8, service, v10 = v7->_service, v14[0] = MEMORY[0x1E69E9820], v14[1] = 3221225472, v14[2] = __50__SCMADPolicyService_initWithUpdateHandler_error___block_invoke, v14[3] = &unk_1E7A43C38, v15 = v6, v11 = -[MADService registerUserSafetyPolicyUpdateHandler:error:](v10, "registerUserSafetyPolicyUpdateHandler:error:", v14, a4), v15, v11))
  {
    v12 = v7;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __50__SCMADPolicyService_initWithUpdateHandler_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = objc_alloc_init(SCMADUserSafetyPolicy);
    -[SCMADUserSafetyPolicy setType:](v3, "setType:", [v4 performSelector:NSSelectorFromString(&cfstr_Policytype.isa)]);
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

@end