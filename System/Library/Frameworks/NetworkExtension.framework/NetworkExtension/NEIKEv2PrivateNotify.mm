@interface NEIKEv2PrivateNotify
- (BOOL)isEqual:(id)equal;
- (NEIKEv2PrivateNotify)initWithNotifyStatus:(unsigned __int16)status notifyData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation NEIKEv2PrivateNotify

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  notifyStatus = [(NEIKEv2PrivateNotify *)self notifyStatus];
  notifyData = [(NEIKEv2PrivateNotify *)self notifyData];
  v6 = [v3 initWithFormat:@"[Private Notify %u %@]", notifyStatus, notifyData];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && [equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    notifyStatus = [(NEIKEv2PrivateNotify *)self notifyStatus];
    if (notifyStatus == [v5 notifyStatus])
    {
      notifyData = [(NEIKEv2PrivateNotify *)self notifyData];
      notifyData2 = [v5 notifyData];
      if (notifyData == notifyData2)
      {
        v11 = 1;
      }

      else
      {
        notifyData3 = [(NEIKEv2PrivateNotify *)self notifyData];
        notifyData4 = [v5 notifyData];
        v11 = [notifyData3 isEqual:notifyData4];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  notifyStatus = [(NEIKEv2PrivateNotify *)self notifyStatus];
  notifyData = [(NEIKEv2PrivateNotify *)self notifyData];
  v7 = [notifyData copy];
  v8 = [v4 initWithNotifyStatus:notifyStatus notifyData:v7];

  return v8;
}

- (NEIKEv2PrivateNotify)initWithNotifyStatus:(unsigned __int16)status notifyData:(id)data
{
  statusCopy = status;
  v16 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (statusCopy >> 13 <= 4)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v15 = statusCopy;
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
  v7->_notifyStatus = statusCopy;
  v9 = dataCopy;
  self = v8->_notifyData;
  v8->_notifyData = v9;
LABEL_8:

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

@end