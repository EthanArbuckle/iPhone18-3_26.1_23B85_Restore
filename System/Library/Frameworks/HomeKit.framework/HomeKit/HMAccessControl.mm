@interface HMAccessControl
- (BOOL)isEqual:(id)equal;
- (HMAccessControl)init;
- (HMAccessControl)initWithCoder:(id)coder;
- (HMAccessControl)initWithUser:(id)user;
- (HMUser)user;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setUser:(id)user;
@end

@implementation HMAccessControl

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  user = [(HMAccessControl *)self user];
  [coderCopy encodeConditionalObject:user forKey:@"HM.user"];
}

- (HMAccessControl)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.user"];

  v6 = [(HMAccessControl *)self initWithUser:v5];
  return v6;
}

- (void)setUser:(id)user
{
  obj = user;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_user, obj);
  if (obj)
  {
    self->_cachedHash = [obj hash];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (HMUser)user
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_user);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
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
      user = [(HMAccessControl *)self user];
      user2 = [(HMAccessControl *)v6 user];
      v9 = user2;
      v10 = 0;
      if (user && user2)
      {
        uniqueIdentifier = [user uniqueIdentifier];
        uniqueIdentifier2 = [v9 uniqueIdentifier];
        v10 = [uniqueIdentifier isEqual:uniqueIdentifier2];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  if ([(HMAccessControl *)self cachedHash])
  {

    return [(HMAccessControl *)self cachedHash];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = HMAccessControl;
    return [(HMAccessControl *)&v4 hash];
  }
}

- (HMAccessControl)initWithUser:(id)user
{
  userCopy = user;
  v8.receiver = self;
  v8.super_class = HMAccessControl;
  v5 = [(HMAccessControl *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_user, userCopy);
    v6->_cachedHash = [userCopy hash];
  }

  return v6;
}

- (HMAccessControl)init
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end