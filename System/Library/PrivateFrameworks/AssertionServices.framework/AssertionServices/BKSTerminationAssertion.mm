@interface BKSTerminationAssertion
- (BKSTerminationAssertion)initWithBundleIdentifier:(id)identifier efficacy:(unint64_t)efficacy name:(id)name context:(id)context withHandler:(id)handler;
- (BKSTerminationAssertion)initWithBundleIdentifier:(id)identifier efficacy:(unint64_t)efficacy name:(id)name withHandler:(id)handler;
- (BOOL)acquire;
- (unint64_t)_bksErrorForRBSRequestError:(unint64_t)error;
@end

@implementation BKSTerminationAssertion

- (unint64_t)_bksErrorForRBSRequestError:(unint64_t)error
{
  if (error - 1 > 8)
  {
    return 0;
  }

  else
  {
    return qword_22EEBF118[error - 1];
  }
}

- (BKSTerminationAssertion)initWithBundleIdentifier:(id)identifier efficacy:(unint64_t)efficacy name:(id)name withHandler:(id)handler
{
  handlerCopy = handler;
  nameCopy = name;
  identifierCopy = identifier;
  v13 = +[BKSTerminationContext terminationAssertionContext];
  v14 = [(BKSTerminationAssertion *)self initWithBundleIdentifier:identifierCopy efficacy:efficacy name:nameCopy context:v13 withHandler:handlerCopy];

  return v14;
}

- (BKSTerminationAssertion)initWithBundleIdentifier:(id)identifier efficacy:(unint64_t)efficacy name:(id)name context:(id)context withHandler:(id)handler
{
  v27[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  contextCopy = context;
  v26.receiver = self;
  v26.super_class = BKSTerminationAssertion;
  v14 = [(BKSAssertion *)&v26 _initWithName:name handler:handler];
  if (v14)
  {
    v15 = [identifierCopy copy];
    bundleIdentifier = v14->_bundleIdentifier;
    v14->_bundleIdentifier = v15;

    v14->_efficacy = efficacy;
    v17 = [contextCopy copy];
    context = v14->_context;
    v14->_context = v17;

    systemTarget = [MEMORY[0x277D47008] systemTarget];
    [(BKSAssertion *)v14 _setTarget:systemTarget];

    v20 = MEMORY[0x277D46F00];
    v21 = [MEMORY[0x277D46FA0] predicateMatchingBundleIdentifier:identifierCopy];
    v22 = [v20 limitationWithPredicate:v21];
    v27[0] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    [(BKSAssertion *)v14 _setAttributes:v23];

    [(BKSAssertion *)v14 _acquireAsynchronously];
  }

  v24 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)acquire
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__49;
  v10[4] = __Block_byref_object_dispose__50;
  v11 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__BKSTerminationAssertion_acquire__block_invoke;
  v5[3] = &unk_278871C90;
  v5[4] = self;
  v5[5] = &v6;
  v5[6] = v10;
  v5[7] = &v12;
  [(BKSAssertion *)self _lock:v5];
  if (v13[5])
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __34__BKSTerminationAssertion_acquire__block_invoke_2;
    v4[3] = &unk_278871CB8;
    v4[4] = &v12;
    v4[5] = &v6;
    v4[6] = v10;
    [MEMORY[0x277D47028] performBackgroundWork:v4];
  }

  v2 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(v10, 8);

  _Block_object_dispose(&v12, 8);
  return v2;
}

void __34__BKSTerminationAssertion_acquire__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D46F60] identityForEmbeddedApplicationIdentifier:*(*(a1 + 32) + 64) jobLabel:*(*(a1 + 32) + 64) auid:getuid() platform:6];
  v3 = objc_alloc_init(MEMORY[0x277D47010]);
  [v3 setExceptionCode:{objc_msgSend(*(*(a1 + 32) + 80), "exceptionCode")}];
  v4 = [*(a1 + 32) _lock_name];
  [v3 setExplanation:v4];

  v5 = *(*(a1 + 32) + 72);
  if (v5 == 2)
  {
    v6 = 30;
  }

  else
  {
    v6 = 20;
  }

  if (v5 == 3)
  {
    v7 = 40;
  }

  else
  {
    v7 = v6;
  }

  [v3 setMaximumTerminationResistance:v7];
  v8 = [objc_alloc(MEMORY[0x277D47018]) initWithProcessIdentity:v2 context:v3];
  v23 = 0;
  v24 = 0;
  v9 = [v8 execute:&v24 error:&v23];
  v10 = v24;
  v11 = v23;
  *(*(*(a1 + 40) + 8) + 24) = v9;
  [*(a1 + 32) _lock_setInternalAssertion:v10];
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && v10)
  {
    v12 = [v11 domain];
    if ([v12 isEqualToString:*MEMORY[0x277D47088]])
    {
      v13 = [v11 code];

      if (v13 == 3)
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }

    else
    {
    }
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = [*(a1 + 32) _bksErrorForRBSRequestError:{objc_msgSend(v11, "code")}];
    v16 = [v11 userInfo];
    v17 = [v14 errorWithDomain:@"BKSAssertionError" code:v15 userInfo:v16];
    v18 = *(*(a1 + 48) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;
  }

  v20 = [*(a1 + 32) _lock_acquisitionHandler];
  v21 = *(*(a1 + 56) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;
}

@end