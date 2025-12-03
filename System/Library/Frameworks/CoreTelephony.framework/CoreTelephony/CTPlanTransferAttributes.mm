@interface CTPlanTransferAttributes
- (BOOL)isEqual:(id)equal;
- (CTPlanTransferAttributes)init;
- (CTPlanTransferAttributes)initWithCoder:(id)coder;
- (CTPlanTransferAttributes)initWithTransferCapability:(unint64_t)capability transferStatus:(unint64_t)status installRestriction:(unint64_t)restriction isSecuredFlow:(BOOL)flow transferEndpoint:(id)endpoint;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (CTPlanTransferAttributes)initWithTransferCapability:(unint64_t)capability transferStatus:(unint64_t)status installRestriction:(unint64_t)restriction isSecuredFlow:(BOOL)flow transferEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v18.receiver = self;
  v18.super_class = CTPlanTransferAttributes;
  v13 = [(CTPlanTransferAttributes *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_transferCapability = capability;
    v13->_transferStatus = status;
    v13->_installRestriction = restriction;
    v13->_isSecuredFlow = flow;
    v15 = [endpointCopy copy];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(CTPlanTransferAttributes *)self transferCapability], v5 == [(CTPlanTransferAttributes *)equalCopy transferCapability]) && (v6 = [(CTPlanTransferAttributes *)self transferStatus], v6 == [(CTPlanTransferAttributes *)equalCopy transferStatus]) && (v7 = [(CTPlanTransferAttributes *)self installRestriction], v7 == [(CTPlanTransferAttributes *)equalCopy installRestriction]) && (v8 = [(CTPlanTransferAttributes *)self isSecuredFlow], v8 == [(CTPlanTransferAttributes *)equalCopy isSecuredFlow]))
    {
      transferEndpoint = [(CTPlanTransferAttributes *)self transferEndpoint];
      transferEndpoint2 = [(CTPlanTransferAttributes *)equalCopy transferEndpoint];
      if (transferEndpoint == transferEndpoint2)
      {
        v9 = 1;
      }

      else
      {
        transferEndpoint3 = [(CTPlanTransferAttributes *)self transferEndpoint];
        transferEndpoint4 = [(CTPlanTransferAttributes *)equalCopy transferEndpoint];
        v9 = [transferEndpoint3 isEqualToString:transferEndpoint4];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (CTPlanTransferAttributes)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTPlanTransferAttributes;
  v5 = [(CTPlanTransferAttributes *)&v9 init];
  if (v5)
  {
    v5->_transferCapability = [coderCopy decodeIntegerForKey:@"transferCapability"];
    v5->_transferStatus = [coderCopy decodeIntegerForKey:@"transferStatus"];
    v5->_installRestriction = [coderCopy decodeIntegerForKey:@"installRestriction"];
    v5->_isSecuredFlow = [coderCopy decodeBoolForKey:@"isSecuredFlow"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transferEndpoint"];
    transferEndpoint = v5->_transferEndpoint;
    v5->_transferEndpoint = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  transferCapability = self->_transferCapability;
  coderCopy = coder;
  [coderCopy encodeInteger:transferCapability forKey:@"transferCapability"];
  [coderCopy encodeInteger:self->_transferStatus forKey:@"transferStatus"];
  [coderCopy encodeInteger:self->_installRestriction forKey:@"installRestriction"];
  [coderCopy encodeBool:self->_isSecuredFlow forKey:@"isSecuredFlow"];
  [coderCopy encodeObject:self->_transferEndpoint forKey:@"transferEndpoint"];
}

@end