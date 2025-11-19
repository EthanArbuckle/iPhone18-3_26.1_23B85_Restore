@interface NEIKEv2PrivateNotify
- (BOOL)isEqual:(id)a3;
- (NEIKEv2PrivateNotify)initWithNotifyStatus:(unsigned __int16)a3 notifyData:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation NEIKEv2PrivateNotify

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(NEIKEv2PrivateNotify *)self notifyStatus];
  v5 = [(NEIKEv2PrivateNotify *)self notifyData];
  v6 = [v3 initWithFormat:@"[Private Notify %u %@]", v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && [v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(NEIKEv2PrivateNotify *)self notifyStatus];
    if (v6 == [v5 notifyStatus])
    {
      v7 = [(NEIKEv2PrivateNotify *)self notifyData];
      v8 = [v5 notifyData];
      if (v7 == v8)
      {
        v11 = 1;
      }

      else
      {
        v9 = [(NEIKEv2PrivateNotify *)self notifyData];
        v10 = [v5 notifyData];
        v11 = [v9 isEqual:v10];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(NEIKEv2PrivateNotify *)self notifyStatus];
  v6 = [(NEIKEv2PrivateNotify *)self notifyData];
  v7 = [v6 copy];
  v8 = [v4 initWithNotifyStatus:v5 notifyData:v7];

  return v8;
}

- (NEIKEv2PrivateNotify)initWithNotifyStatus:(unsigned __int16)a3 notifyData:(id)a4
{
  v4 = a3;
  v16 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v4 >> 13 <= 4)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v15 = v4;
      _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "Invalid private notify status %u", buf, 8u);
    }

    goto LABEL_7;
  }

  v13.receiver = self;
  v13.super_class = NEIKEv2PrivateNotify;
  v7 = [(NEIKEv2PrivateNotify *)&v13 init];
  if (!v7)
  {
    self = ne_log_obj();
    if (os_log_type_enabled(&self->super, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, &self->super, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
    }

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v8 = v7;
  v7->_notifyStatus = v4;
  v9 = v6;
  self = v8->_notifyData;
  v8->_notifyData = v9;
LABEL_8:

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

@end