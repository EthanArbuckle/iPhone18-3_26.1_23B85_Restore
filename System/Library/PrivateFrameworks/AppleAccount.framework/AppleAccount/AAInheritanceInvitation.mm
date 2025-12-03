@interface AAInheritanceInvitation
- (AAInheritanceInvitation)initWithBeneficiaryID:(id)d beneficiaryHandle:(id)handle beneficiaryFirstName:(id)name beneficiaryLastName:(id)lastName beneficiaryDisplayName:(id)displayName status:(int64_t)status;
- (AAInheritanceInvitation)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_statusDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AAInheritanceInvitation

- (AAInheritanceInvitation)initWithBeneficiaryID:(id)d beneficiaryHandle:(id)handle beneficiaryFirstName:(id)name beneficiaryLastName:(id)lastName beneficiaryDisplayName:(id)displayName status:(int64_t)status
{
  dCopy = d;
  handleCopy = handle;
  nameCopy = name;
  lastNameCopy = lastName;
  displayNameCopy = displayName;
  v23.receiver = self;
  v23.super_class = AAInheritanceInvitation;
  v18 = [(AAInheritanceInvitation *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_beneficiaryID, d);
    objc_storeStrong(&v19->_beneficiaryHandle, handle);
    objc_storeStrong(&v19->_beneficiaryFirstName, name);
    objc_storeStrong(&v19->_beneficiaryLastName, lastName);
    objc_storeStrong(&v19->_beneficiaryDisplayName, displayName);
    v19->_status = status;
  }

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  beneficiaryID = self->_beneficiaryID;
  coderCopy = coder;
  [coderCopy encodeObject:beneficiaryID forKey:@"_beneficiaryID"];
  [coderCopy encodeObject:self->_beneficiaryHandle forKey:@"_beneficiaryHandle"];
  [coderCopy encodeObject:self->_beneficiaryFirstName forKey:@"_beneficiaryFirstName"];
  [coderCopy encodeObject:self->_beneficiaryLastName forKey:@"_beneficiaryLastName"];
  [coderCopy encodeObject:self->_beneficiaryDisplayName forKey:@"_beneficiaryHandle"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_status];
  [coderCopy encodeObject:v6 forKey:@"_status"];
}

- (AAInheritanceInvitation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AAInheritanceInvitation *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_beneficiaryID"];
    beneficiaryID = v5->_beneficiaryID;
    v5->_beneficiaryID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_beneficiaryHandle"];
    beneficiaryHandle = v5->_beneficiaryHandle;
    v5->_beneficiaryHandle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_beneficiaryFirstName"];
    beneficiaryFirstName = v5->_beneficiaryFirstName;
    v5->_beneficiaryFirstName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_beneficiaryLastName"];
    beneficiaryLastName = v5->_beneficiaryLastName;
    v5->_beneficiaryLastName = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_beneficiaryHandle"];
    beneficiaryDisplayName = v5->_beneficiaryDisplayName;
    v5->_beneficiaryDisplayName = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_status"];
    v5->_status = [v16 integerValue];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSUUID *)self->_beneficiaryID copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSString *)self->_beneficiaryHandle copy];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [(NSString *)self->_beneficiaryFirstName copy];
  v10 = v4[3];
  v4[3] = v9;

  v11 = [(NSString *)self->_beneficiaryLastName copy];
  v12 = v4[4];
  v4[4] = v11;

  v13 = [(NSString *)self->_beneficiaryDisplayName copy];
  v14 = v4[5];
  v4[5] = v13;

  v4[6] = self->_status;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      beneficiaryID = [(AAInheritanceInvitation *)self beneficiaryID];
      beneficiaryID2 = [(AAInheritanceInvitation *)v5 beneficiaryID];

      v8 = [beneficiaryID isEqual:beneficiaryID2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)_statusDescription
{
  status = [(AAInheritanceInvitation *)self status];
  if ((status + 1) > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7C9BFE0 + status + 1);
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  _statusDescription = [(AAInheritanceInvitation *)self _statusDescription];
  v6 = [v3 stringWithFormat:@"<%@: %p> Inheritance Invitation with Status: %@ \nBeneficiary ID: %@ \nBeneficiary Handle: %@", v4, self, _statusDescription, self->_beneficiaryID, self->_beneficiaryHandle];

  return v6;
}

@end