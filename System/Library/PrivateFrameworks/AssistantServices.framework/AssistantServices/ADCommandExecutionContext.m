@interface ADCommandExecutionContext
- (ADCommandExecutionContext)initWithInfo:(id)a3;
- (ADPeerInfo)originPeerInfo;
- (AFCommandExecutionInfo)info;
- (BOOL)isFromRemote;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)performBlock:(id)a3;
- (void)updateInfoUsingBlock:(id)a3;
@end

@implementation ADCommandExecutionContext

- (id)description
{
  v3 = [(ADCommandExecutionContext *)self info];
  v4 = [NSString alloc];
  v14.receiver = self;
  v14.super_class = ADCommandExecutionContext;
  v5 = [(ADCommandExecutionContext *)&v14 description];
  v6 = [v3 executionID];
  v7 = [v3 requestID];
  v8 = [v3 turnId];
  v9 = [v3 originPeerInfo];
  v10 = AFPeerInfoGetCompactDescription();
  v11 = [v3 instanceInfo];
  v12 = [v4 initWithFormat:@"%@ (id = %@, requestID = %@, turnID = %@, originPeer = %@, instance = %@)", v5, v6, v7, v8, v10, v11];

  return v12;
}

- (AFCommandExecutionInfo)info
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_info;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)isFromRemote
{
  v2 = [(ADCommandExecutionContext *)self info];
  v3 = [v2 originPeerInfo];
  v4 = v3 != 0;

  return v4;
}

- (ADPeerInfo)originPeerInfo
{
  v2 = [(ADCommandExecutionContext *)self info];
  v3 = [v2 originPeerInfo];

  if (v3)
  {
    v4 = [[ADPeerInfo alloc] initWithAFPeerInfo:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ADCommandExecutionContext alloc];
  v5 = [(AFCommandExecutionInfo *)self->_info copy];
  v6 = [(ADCommandExecutionContext *)v4 initWithInfo:v5];

  return v6;
}

- (void)performBlock:(id)a3
{
  v4 = self->_voucher;
  v5 = a3;
  voucher_adopt();
  v5[2](v5);

  v6 = voucher_adopt();
}

- (void)updateInfoUsingBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    v5 = [(ADCommandExecutionContext *)self info];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 mutatedCopyWithMutator:v10];
    }

    else
    {
      v7 = [AFCommandExecutionInfo newWithBuilder:v10];
    }

    os_unfair_lock_lock(&self->_lock);
    v8 = [v7 copy];
    info = self->_info;
    self->_info = v8;

    os_unfair_lock_unlock(&self->_lock);
    v4 = v10;
  }
}

- (ADCommandExecutionContext)initWithInfo:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ADCommandExecutionContext;
  v5 = [(ADCommandExecutionContext *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [v4 copy];
    info = v6->_info;
    v6->_info = v7;

    v9 = +[NSDate now];
    creationDate = v6->_creationDate;
    v6->_creationDate = v9;

    v11 = voucher_copy();
    voucher = v6->_voucher;
    v6->_voucher = v11;
  }

  return v6;
}

@end