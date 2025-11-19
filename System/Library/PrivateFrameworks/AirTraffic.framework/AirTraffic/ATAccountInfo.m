@interface ATAccountInfo
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation ATAccountInfo

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = objc_opt_class();
  }

  __Copy(self, a3, v5);
  return objc_claimAutoreleasedReturnValue();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_opt_class();
  }

  __Copy(self, a3, v5);
  return objc_claimAutoreleasedReturnValue();
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATAccountInfo;
  v4 = [(ATAccountInfo *)&v8 description];
  altDSID = self->_altDSID;
  v6 = [v3 stringWithFormat:@"%@ [%@, %@, %@]", v4, self->_appleID, altDSID, self->_DSID];

  return v6;
}

@end