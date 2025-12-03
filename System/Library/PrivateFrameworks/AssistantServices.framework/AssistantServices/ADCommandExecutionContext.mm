@interface ADCommandExecutionContext
- (ADCommandExecutionContext)initWithInfo:(id)info;
- (ADPeerInfo)originPeerInfo;
- (AFCommandExecutionInfo)info;
- (BOOL)isFromRemote;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)performBlock:(id)block;
- (void)updateInfoUsingBlock:(id)block;
@end

@implementation ADCommandExecutionContext

- (id)description
{
  info = [(ADCommandExecutionContext *)self info];
  v4 = [NSString alloc];
  v14.receiver = self;
  v14.super_class = ADCommandExecutionContext;
  v5 = [(ADCommandExecutionContext *)&v14 description];
  executionID = [info executionID];
  requestID = [info requestID];
  turnId = [info turnId];
  originPeerInfo = [info originPeerInfo];
  v10 = AFPeerInfoGetCompactDescription();
  instanceInfo = [info instanceInfo];
  v12 = [v4 initWithFormat:@"%@ (id = %@, requestID = %@, turnID = %@, originPeer = %@, instance = %@)", v5, executionID, requestID, turnId, v10, instanceInfo];

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
  info = [(ADCommandExecutionContext *)self info];
  originPeerInfo = [info originPeerInfo];
  v4 = originPeerInfo != 0;

  return v4;
}

- (ADPeerInfo)originPeerInfo
{
  info = [(ADCommandExecutionContext *)self info];
  originPeerInfo = [info originPeerInfo];

  if (originPeerInfo)
  {
    v4 = [[ADPeerInfo alloc] initWithAFPeerInfo:originPeerInfo];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ADCommandExecutionContext alloc];
  v5 = [(AFCommandExecutionInfo *)self->_info copy];
  v6 = [(ADCommandExecutionContext *)v4 initWithInfo:v5];

  return v6;
}

- (void)performBlock:(id)block
{
  v4 = self->_voucher;
  blockCopy = block;
  voucher_adopt();
  blockCopy[2](blockCopy);

  v6 = voucher_adopt();
}

- (void)updateInfoUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v10 = blockCopy;
    info = [(ADCommandExecutionContext *)self info];
    if (info)
    {
      v6 = info;
      v7 = [info mutatedCopyWithMutator:v10];
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
    blockCopy = v10;
  }
}

- (ADCommandExecutionContext)initWithInfo:(id)info
{
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = ADCommandExecutionContext;
  v5 = [(ADCommandExecutionContext *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [infoCopy copy];
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