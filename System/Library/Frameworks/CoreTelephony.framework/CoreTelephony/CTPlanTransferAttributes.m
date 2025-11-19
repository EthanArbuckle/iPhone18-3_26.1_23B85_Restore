@interface CTPlanTransferAttributes
- (BOOL)isEqual:(id)a3;
- (CTPlanTransferAttributes)init;
- (CTPlanTransferAttributes)initWithCoder:(id)a3;
- (CTPlanTransferAttributes)initWithTransferCapability:(unint64_t)a3 transferStatus:(unint64_t)a4 installRestriction:(unint64_t)a5 isSecuredFlow:(BOOL)a6 transferEndpoint:(id)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTPlanTransferAttributes

- (CTPlanTransferAttributes)init
{
  v3.receiver = self;
  v3.super_class = CTPlanTransferAttributes;
  result = [(CTPlanTransferAttributes *)&v3 init];
  if (result)
  {
    result->_isSecuredFlow = 0;
    result->_transferStatus = 0;
    result->_installRestriction = 0;
    result->_transferCapability = 0;
  }

  return result;
}

- (CTPlanTransferAttributes)initWithTransferCapability:(unint64_t)a3 transferStatus:(unint64_t)a4 installRestriction:(unint64_t)a5 isSecuredFlow:(BOOL)a6 transferEndpoint:(id)a7
{
  v12 = a7;
  v18.receiver = self;
  v18.super_class = CTPlanTransferAttributes;
  v13 = [(CTPlanTransferAttributes *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_transferCapability = a3;
    v13->_transferStatus = a4;
    v13->_installRestriction = a5;
    v13->_isSecuredFlow = a6;
    v15 = [v12 copy];
    transferEndpoint = v14->_transferEndpoint;
    v14->_transferEndpoint = v15;
  }

  return v14;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" transferCapability=%s", CTPlanTransferCapabilityAsString(-[CTPlanTransferAttributes transferCapability](self, "transferCapability"))];
  [v3 appendFormat:@" transferStatus=%s", CTPlanTransferStatusAsString(-[CTPlanTransferAttributes transferStatus](self, "transferStatus"))];
  [v3 appendFormat:@" installRestriction=%s", CTPlanInstallRestrictionAsString(-[CTPlanTransferAttributes installRestriction](self, "installRestriction"))];
  [v3 appendFormat:@" isSecuredFlow=%d", self->_isSecuredFlow];
  [v3 appendFormat:@" transferEndpoint=%@", self->_transferEndpoint];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(CTPlanTransferAttributes *)self transferCapability], v5 == [(CTPlanTransferAttributes *)v4 transferCapability]) && (v6 = [(CTPlanTransferAttributes *)self transferStatus], v6 == [(CTPlanTransferAttributes *)v4 transferStatus]) && (v7 = [(CTPlanTransferAttributes *)self installRestriction], v7 == [(CTPlanTransferAttributes *)v4 installRestriction]) && (v8 = [(CTPlanTransferAttributes *)self isSecuredFlow], v8 == [(CTPlanTransferAttributes *)v4 isSecuredFlow]))
    {
      v11 = [(CTPlanTransferAttributes *)self transferEndpoint];
      v12 = [(CTPlanTransferAttributes *)v4 transferEndpoint];
      if (v11 == v12)
      {
        v9 = 1;
      }

      else
      {
        v13 = [(CTPlanTransferAttributes *)self transferEndpoint];
        v14 = [(CTPlanTransferAttributes *)v4 transferEndpoint];
        v9 = [v13 isEqualToString:v14];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (CTPlanTransferAttributes)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTPlanTransferAttributes;
  v5 = [(CTPlanTransferAttributes *)&v9 init];
  if (v5)
  {
    v5->_transferCapability = [v4 decodeIntegerForKey:@"transferCapability"];
    v5->_transferStatus = [v4 decodeIntegerForKey:@"transferStatus"];
    v5->_installRestriction = [v4 decodeIntegerForKey:@"installRestriction"];
    v5->_isSecuredFlow = [v4 decodeBoolForKey:@"isSecuredFlow"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transferEndpoint"];
    transferEndpoint = v5->_transferEndpoint;
    v5->_transferEndpoint = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  transferCapability = self->_transferCapability;
  v5 = a3;
  [v5 encodeInteger:transferCapability forKey:@"transferCapability"];
  [v5 encodeInteger:self->_transferStatus forKey:@"transferStatus"];
  [v5 encodeInteger:self->_installRestriction forKey:@"installRestriction"];
  [v5 encodeBool:self->_isSecuredFlow forKey:@"isSecuredFlow"];
  [v5 encodeObject:self->_transferEndpoint forKey:@"transferEndpoint"];
}

@end