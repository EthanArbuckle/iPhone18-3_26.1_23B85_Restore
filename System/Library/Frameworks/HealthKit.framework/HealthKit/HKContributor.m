@interface HKContributor
- (BOOL)isEqual:(id)a3;
- (HKContributor)initWithCoder:(id)a3;
- (id)_initWithUUID:(id)a3 appleID:(id)a4 callerID:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKContributor

- (id)_initWithUUID:(id)a3 appleID:(id)a4 callerID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = HKContributor;
  v11 = [(HKContributor *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    UUID = v11->_UUID;
    v11->_UUID = v12;

    v14 = [v9 copy];
    appleID = v11->_appleID;
    v11->_appleID = v14;

    v16 = [v10 copy];
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

  v9 = [v3 stringWithFormat:@"<%@ %@ %@ %@>", v5, self->_UUID, appleID, callerID];

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_UUID hash];
  v4 = [(NSString *)self->_appleID hash]^ v3;
  return v4 ^ [(NSString *)self->_callerID hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  UUID = self->_UUID;
  v6 = v4[1];
  if (UUID != v6 && (!v6 || ![(NSUUID *)UUID isEqual:?]))
  {
    goto LABEL_11;
  }

  appleID = self->_appleID;
  v8 = v4[2];
  if (appleID != v8 && (!v8 || ![(NSString *)appleID isEqual:?]))
  {
    goto LABEL_11;
  }

  callerID = self->_callerID;
  v10 = v4[3];
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

- (void)encodeWithCoder:(id)a3
{
  UUID = self->_UUID;
  v5 = a3;
  [v5 encodeObject:UUID forKey:@"uuid"];
  [v5 encodeObject:self->_appleID forKey:@"appleID"];
  [v5 encodeObject:self->_callerID forKey:@"callerID"];
}

- (HKContributor)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HKContributor;
  v5 = [(HKContributor *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appleID"];
    appleID = v5->_appleID;
    v5->_appleID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callerID"];
    callerID = v5->_callerID;
    v5->_callerID = v10;
  }

  return v5;
}

@end