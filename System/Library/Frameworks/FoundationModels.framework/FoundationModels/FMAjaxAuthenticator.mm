@interface FMAjaxAuthenticator
+ (void)initialize;
- (FMAjaxAuthenticator)init;
- (void)authenticate:(int64_t)a3 clientID:(id)a4 scopes:(id)a5 resource:(id)a6 withCompletionHandler:(id)a7;
- (void)authenticateIfNeeded:(int64_t)a3 clientID:(id)a4 scopes:(id)a5 resource:(id)a6 withCompletionHandler:(id)a7;
@end

@implementation FMAjaxAuthenticator

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_27DF31B20 = dispatch_queue_create("FMAjaxAuthenticator", 0);

    MEMORY[0x2821F96F8]();
  }
}

- (FMAjaxAuthenticator)init
{
  v25.receiver = self;
  v25.super_class = FMAjaxAuthenticator;
  v2 = [(FMAjaxAuthenticator *)&v25 init];
  if (v2)
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x2050000000;
    v3 = qword_27DF31B30;
    v34 = qword_27DF31B30;
    if (!qword_27DF31B30)
    {
      v26 = MEMORY[0x277D85DD0];
      v27 = 3221225472;
      v28 = sub_238810938;
      v29 = &unk_278A57858;
      v30 = &v31;
      sub_238810988();
      Class = objc_getClass("ACMobileAuthenticationContext");
      *(v30[1] + 24) = Class;
      qword_27DF31B30 = *(v30[1] + 24);
      v3 = v32[3];
    }

    v5 = v3;
    _Block_object_dispose(&v31, 8);
    v6 = objc_alloc_init(v3);
    context = v2->_context;
    v2->_context = v6;

    v13 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v8, 191000, v9, v10, v11, v12);
    objc_msgSend_setAppID_(v2->_context, v14, v13, v15, v16, v17, v18);

    objc_msgSend_setEnvironment_(v2->_context, v19, 0, v20, v21, v22, v23);
  }

  return v2;
}

- (void)authenticateIfNeeded:(int64_t)a3 clientID:(id)a4 scopes:(id)a5 resource:(id)a6 withCompletionHandler:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = qword_27DF31B20;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2388103CC;
  v21[3] = &unk_278A577B8;
  v25 = v15;
  v26 = a3;
  v21[4] = self;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v17 = v14;
  v18 = v13;
  v19 = v12;
  v20 = v15;
  dispatch_async(v16, v21);
}

- (void)authenticate:(int64_t)a3 clientID:(id)a4 scopes:(id)a5 resource:(id)a6 withCompletionHandler:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_238810518;
  v20[3] = &unk_278A57830;
  v20[4] = self;
  v21 = v12;
  v22 = v14;
  v23 = v13;
  v24 = v15;
  v25 = a3;
  v16 = v13;
  v17 = v14;
  v18 = v12;
  v19 = v15;
  dispatch_async(MEMORY[0x277D85CD0], v20);
}

@end