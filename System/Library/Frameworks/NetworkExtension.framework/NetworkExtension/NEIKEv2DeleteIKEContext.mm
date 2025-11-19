@interface NEIKEv2DeleteIKEContext
- (id)description;
- (id)initDeleteIKEWithResponse:(void *)a3 callbackQueue:(void *)a4 callback:;
@end

@implementation NEIKEv2DeleteIKEContext

- (id)initDeleteIKEWithResponse:(void *)a3 callbackQueue:(void *)a4 callback:
{
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = NEIKEv2DeleteIKEContext;
    v10 = objc_msgSendSuper2(&v15, sel_init);
    if (v10)
    {
      a1 = v10;
      *(v10 + 24) = a2;
      objc_storeStrong(v10 + 4, a3);
      objc_setProperty_nonatomic_copy(a1, v11, v9, 40);
    }

    else
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        v14[0] = 0;
        _os_log_fault_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_FAULT, "[super init] failed", v14, 2u);
      }

      a1 = 0;
    }
  }

  return a1;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = @"NO";
  if (self && self->_responseNeeded)
  {
    v4 = @"YES";
  }

  v5 = [v3 initWithFormat:@"delete IKE, response %@", v4];

  return v5;
}

@end