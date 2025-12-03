@interface NEIKEv2DeleteIKEContext
- (id)description;
- (id)initDeleteIKEWithResponse:(void *)response callbackQueue:(void *)queue callback:;
@end

@implementation NEIKEv2DeleteIKEContext

- (id)initDeleteIKEWithResponse:(void *)response callbackQueue:(void *)queue callback:
{
  responseCopy = response;
  queueCopy = queue;
  if (self)
  {
    v15.receiver = self;
    v15.super_class = NEIKEv2DeleteIKEContext;
    v10 = objc_msgSendSuper2(&v15, sel_init);
    if (v10)
    {
      self = v10;
      *(v10 + 24) = a2;
      objc_storeStrong(v10 + 4, response);
      objc_setProperty_nonatomic_copy(self, v11, queueCopy, 40);
    }

    else
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        v14[0] = 0;
        _os_log_fault_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_FAULT, "[super init] failed", v14, 2u);
      }

      self = 0;
    }
  }

  return self;
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