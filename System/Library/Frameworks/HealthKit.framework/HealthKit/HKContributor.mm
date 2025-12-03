@interface HKContributor
- (BOOL)isEqual:(id)equal;
- (HKContributor)initWithCoder:(id)coder;
- (id)_initWithUUID:(id)d appleID:(id)iD callerID:(id)callerID;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKContributor

- (id)_initWithUUID:(id)d appleID:(id)iD callerID:(id)callerID
{
  dCopy = d;
  iDCopy = iD;
  callerIDCopy = callerID;
  v19.receiver = self;
  v19.super_class = HKContributor;
  v11 = [(HKContributor *)&v19 init];
  if (v11)
  {
    v12 = [dCopy copy];
    UUID = v11->_UUID;
    v11->_UUID = v12;

    v14 = [iDCopy copy];
    appleID = v11->_appleID;
    v11->_appleID = v14;

    v16 = [callerIDCopy copy];
    callerID = v11->_callerID;
    v11->_callerID = v16;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  appleID = self->_appleID;
  if (!appleID)
  {
    appleID = @"(no appleID)";
  }

  callerID = self->_callerID;
  if (!callerID)
  {
    callerID = @"(no callerID)";
  }

  callerID = [v3 stringWithFormat:@"<%@ %@ %@ %@>", v5, self->_UUID, appleID, callerID];

  return callerID;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_UUID hash];
  v4 = [(NSString *)self->_appleID hash]^ v3;
  return v4 ^ [(NSString *)self->_callerID hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  UUID = self->_UUID;
  v6 = equalCopy[1];
  if (UUID != v6 && (!v6 || ![(NSUUID *)UUID isEqual:?]))
  {
    goto LABEL_11;
  }

  appleID = self->_appleID;
  v8 = equalCopy[2];
  if (appleID != v8 && (!v8 || ![(NSString *)appleID isEqual:?]))
  {
    goto LABEL_11;
  }

  callerID = self->_callerID;
  v10 = equalCopy[3];
  if (callerID == v10)
  {
    v11 = 1;
    goto LABEL_12;
  }

  if (v10)
  {
    v11 = [(NSString *)callerID isEqual:?];
  }

  else
  {
LABEL_11:
    v11 = 0;
  }

LABEL_12:

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  UUID = self->_UUID;
  coderCopy = coder;
  [coderCopy encodeObject:UUID forKey:@"uuid"];
  [coderCopy encodeObject:self->_appleID forKey:@"appleID"];
  [coderCopy encodeObject:self->_callerID forKey:@"callerID"];
}

- (HKContributor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = HKContributor;
  v5 = [(HKContributor *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appleID"];
    appleID = v5->_appleID;
    v5->_appleID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callerID"];
    callerID = v5->_callerID;
    v5->_callerID = v10;
  }

  return v5;
}

@end