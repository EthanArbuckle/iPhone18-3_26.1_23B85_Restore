@interface HMHomeInvitation
- (BOOL)isEqual:(id)a3;
- (HMHome)home;
- (HMHomeInvitation)initWithCoder:(id)a3;
- (HMHomeInvitation)initWithCoder:(id)a3 invitationData:(id)a4;
- (HMHomeInvitation)initWithInvitationData:(id)a3 home:(id)a4;
- (NSDate)endDate;
- (NSDate)startDate;
- (NSURL)homeObjectURL;
- (NSUUID)identifier;
- (int64_t)invitationState;
- (unint64_t)hash;
- (void)_updateInvitationState:(int64_t)a3;
- (void)cancelInviteWithCompletionHandler:(id)a3;
- (void)setHome:(id)a3;
@end

@implementation HMHomeInvitation

- (HMHomeInvitation)initWithCoder:(id)a3 invitationData:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 decodeObjectOfClass:objc_opt_class() forKey:@"home"];

  v9 = [(HMHomeInvitation *)self initWithInvitationData:v6 home:v8];
  return v9;
}

- (HMHomeInvitation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMHomeInvitation *)self initWithInvitationData:0 home:0];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"home"];
    objc_storeWeak(&v5->_home, v6);
  }

  return v5;
}

- (void)_updateInvitationState:(int64_t)a3
{
  v4 = [(HMHomeInvitation *)self invitationData];
  [v4 setInvitationState:a3];
}

- (void)cancelInviteWithCompletionHandler:(id)a3
{
  v8 = a3;
  if (!v8)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
    objc_exception_throw(v7);
  }

  v4 = [(HMHomeInvitation *)self context];
  v5 = [v4 delegateCaller];
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:48 userInfo:0];
  [v5 callCompletion:v8 error:v6];
}

- (int64_t)invitationState
{
  v2 = [(HMHomeInvitation *)self invitationData];
  v3 = [v2 invitationState];

  return v3;
}

- (NSDate)endDate
{
  v2 = [(HMHomeInvitation *)self invitationData];
  v3 = [v2 endDate];

  return v3;
}

- (NSDate)startDate
{
  v2 = [(HMHomeInvitation *)self invitationData];
  v3 = [v2 startDate];

  return v3;
}

- (NSUUID)identifier
{
  v2 = [(HMHomeInvitation *)self invitationData];
  v3 = [v2 identifier];

  return v3;
}

- (NSURL)homeObjectURL
{
  v3 = [(HMHomeInvitation *)self uniqueIdentifier];
  os_unfair_lock_lock_with_options();
  homeObjectURL = self->_homeObjectURL;
  if (!homeObjectURL)
  {
    v5 = [v3 UUIDString];
    v6 = [HMBulletinObjectTuple tupleWithQueryType:4 uuidString:v5];

    v7 = generateURLForHomeKitObject(v6, 0);
    v8 = self->_homeObjectURL;
    self->_homeObjectURL = v7;

    homeObjectURL = self->_homeObjectURL;
  }

  v9 = homeObjectURL;
  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (void)setHome:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_home, v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMHome)home
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_home);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HMHomeInvitation *)self identifier];
      v8 = [(HMHomeInvitation *)v6 identifier];
      v9 = [v7 isEqual:v8];
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
  v2 = [(HMHomeInvitation *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (HMHomeInvitation)initWithInvitationData:(id)a3 home:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMHomeInvitation;
  v9 = [(HMHomeInvitation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_invitationData, a3);
    objc_storeWeak(&v10->_home, v8);
  }

  return v10;
}

@end