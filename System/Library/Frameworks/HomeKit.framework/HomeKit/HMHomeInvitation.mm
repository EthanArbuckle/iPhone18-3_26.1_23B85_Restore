@interface HMHomeInvitation
- (BOOL)isEqual:(id)equal;
- (HMHome)home;
- (HMHomeInvitation)initWithCoder:(id)coder;
- (HMHomeInvitation)initWithCoder:(id)coder invitationData:(id)data;
- (HMHomeInvitation)initWithInvitationData:(id)data home:(id)home;
- (NSDate)endDate;
- (NSDate)startDate;
- (NSURL)homeObjectURL;
- (NSUUID)identifier;
- (int64_t)invitationState;
- (unint64_t)hash;
- (void)_updateInvitationState:(int64_t)state;
- (void)cancelInviteWithCompletionHandler:(id)handler;
- (void)setHome:(id)home;
@end

@implementation HMHomeInvitation

- (HMHomeInvitation)initWithCoder:(id)coder invitationData:(id)data
{
  dataCopy = data;
  coderCopy = coder;
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"home"];

  v9 = [(HMHomeInvitation *)self initWithInvitationData:dataCopy home:v8];
  return v9;
}

- (HMHomeInvitation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(HMHomeInvitation *)self initWithInvitationData:0 home:0];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"home"];
    objc_storeWeak(&v5->_home, v6);
  }

  return v5;
}

- (void)_updateInvitationState:(int64_t)state
{
  invitationData = [(HMHomeInvitation *)self invitationData];
  [invitationData setInvitationState:state];
}

- (void)cancelInviteWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
    objc_exception_throw(v7);
  }

  context = [(HMHomeInvitation *)self context];
  delegateCaller = [context delegateCaller];
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:48 userInfo:0];
  [delegateCaller callCompletion:handlerCopy error:v6];
}

- (int64_t)invitationState
{
  invitationData = [(HMHomeInvitation *)self invitationData];
  invitationState = [invitationData invitationState];

  return invitationState;
}

- (NSDate)endDate
{
  invitationData = [(HMHomeInvitation *)self invitationData];
  endDate = [invitationData endDate];

  return endDate;
}

- (NSDate)startDate
{
  invitationData = [(HMHomeInvitation *)self invitationData];
  startDate = [invitationData startDate];

  return startDate;
}

- (NSUUID)identifier
{
  invitationData = [(HMHomeInvitation *)self invitationData];
  identifier = [invitationData identifier];

  return identifier;
}

- (NSURL)homeObjectURL
{
  uniqueIdentifier = [(HMHomeInvitation *)self uniqueIdentifier];
  os_unfair_lock_lock_with_options();
  homeObjectURL = self->_homeObjectURL;
  if (!homeObjectURL)
  {
    uUIDString = [uniqueIdentifier UUIDString];
    v6 = [HMBulletinObjectTuple tupleWithQueryType:4 uuidString:uUIDString];

    v7 = generateURLForHomeKitObject(v6, 0);
    v8 = self->_homeObjectURL;
    self->_homeObjectURL = v7;

    homeObjectURL = self->_homeObjectURL;
  }

  v9 = homeObjectURL;
  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (void)setHome:(id)home
{
  homeCopy = home;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_home, homeCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMHome)home
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_home);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      identifier = [(HMHomeInvitation *)self identifier];
      identifier2 = [(HMHomeInvitation *)v6 identifier];
      v9 = [identifier isEqual:identifier2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  identifier = [(HMHomeInvitation *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (HMHomeInvitation)initWithInvitationData:(id)data home:(id)home
{
  dataCopy = data;
  homeCopy = home;
  v12.receiver = self;
  v12.super_class = HMHomeInvitation;
  v9 = [(HMHomeInvitation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_invitationData, data);
    objc_storeWeak(&v10->_home, homeCopy);
  }

  return v10;
}

@end