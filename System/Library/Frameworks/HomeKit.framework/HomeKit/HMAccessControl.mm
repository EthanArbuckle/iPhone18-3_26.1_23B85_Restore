@interface HMAccessControl
- (BOOL)isEqual:(id)a3;
- (HMAccessControl)init;
- (HMAccessControl)initWithCoder:(id)a3;
- (HMAccessControl)initWithUser:(id)a3;
- (HMUser)user;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setUser:(id)a3;
@end

@implementation HMAccessControl

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMAccessControl *)self user];
  [v4 encodeConditionalObject:v5 forKey:@"HM.user"];
}

- (HMAccessControl)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.user"];

  v6 = [(HMAccessControl *)self initWithUser:v5];
  return v6;
}

- (void)setUser:(id)a3
{
  obj = a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
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
      v7 = [(HMAccessControl *)self user];
      v8 = [(HMAccessControl *)v6 user];
      v9 = v8;
      v10 = 0;
      if (v7 && v8)
      {
        v11 = [v7 uniqueIdentifier];
        v12 = [v9 uniqueIdentifier];
        v10 = [v11 isEqual:v12];
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

- (HMAccessControl)initWithUser:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HMAccessControl;
  v5 = [(HMAccessControl *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_user, v4);
    v6->_cachedHash = [v4 hash];
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