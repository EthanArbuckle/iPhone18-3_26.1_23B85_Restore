@interface PHCameraSmartSharingIdentity
- (BOOL)isEqual:(id)equal;
- (PHCameraSmartSharingIdentity)initWithCoder:(id)coder;
- (PHCameraSmartSharingIdentity)initWithPhoneNumber:(id)number emailAddress:(id)address contactIdentifiers:(id)identifiers;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PHCameraSmartSharingIdentity

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  phoneNumber = [(PHCameraSmartSharingIdentity *)self phoneNumber];
  [coderCopy encodeObject:phoneNumber forKey:@"phoneNumber"];

  emailAddress = [(PHCameraSmartSharingIdentity *)self emailAddress];
  [coderCopy encodeObject:emailAddress forKey:@"emailAddress"];

  contactIdentifiers = [(PHCameraSmartSharingIdentity *)self contactIdentifiers];
  [coderCopy encodeObject:contactIdentifiers forKey:@"contactIdentifiers"];
}

- (PHCameraSmartSharingIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"emailAddress"];
  v7 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v8 = [coderCopy decodeArrayOfObjectsOfClasses:v7 forKey:@"contactIdentifiers"];

  if ([v5 length] || objc_msgSend(v6, "length") || objc_msgSend(v8, "count"))
  {
    self = [(PHCameraSmartSharingIdentity *)self initWithPhoneNumber:v5 emailAddress:v6 contactIdentifiers:v8];
    selfCopy = self;
  }

  else
  {
    v11 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_ERROR, "[PHCameraSmartSharingIdentity] decode fail, no valid properties", v12, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (unint64_t)hash
{
  v21 = *MEMORY[0x1E69E9840];
  phoneNumber = [(PHCameraSmartSharingIdentity *)self phoneNumber];
  v4 = [phoneNumber length];

  if (v4)
  {
    phoneNumber2 = [(PHCameraSmartSharingIdentity *)self phoneNumber];
    v6 = [phoneNumber2 hash];
  }

  else
  {
    v6 = 0;
  }

  emailAddress = [(PHCameraSmartSharingIdentity *)self emailAddress];
  v8 = [emailAddress length];

  if (v8)
  {
    emailAddress2 = [(PHCameraSmartSharingIdentity *)self emailAddress];
    v6 ^= [emailAddress2 hash];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  contactIdentifiers = [(PHCameraSmartSharingIdentity *)self contactIdentifiers];
  v11 = [contactIdentifiers countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(contactIdentifiers);
        }

        v6 ^= [*(*(&v16 + 1) + 8 * v14++) hash];
      }

      while (v12 != v14);
      v12 = [contactIdentifiers countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy != self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      phoneNumber = [(PHCameraSmartSharingIdentity *)self phoneNumber];
      if (phoneNumber || ([(PHCameraSmartSharingIdentity *)equalCopy phoneNumber], (emailAddress2 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        phoneNumber2 = [(PHCameraSmartSharingIdentity *)self phoneNumber];
        phoneNumber3 = [(PHCameraSmartSharingIdentity *)equalCopy phoneNumber];
        v9 = [phoneNumber2 isEqual:phoneNumber3];

        if (phoneNumber)
        {

          if (!v9)
          {
            goto LABEL_19;
          }
        }

        else
        {

          if ((v9 & 1) == 0)
          {
            goto LABEL_19;
          }
        }
      }

      emailAddress = [(PHCameraSmartSharingIdentity *)self emailAddress];
      if (!emailAddress)
      {
        emailAddress2 = [(PHCameraSmartSharingIdentity *)equalCopy emailAddress];
        if (!emailAddress2)
        {
LABEL_14:
          contactIdentifiers = [(PHCameraSmartSharingIdentity *)self contactIdentifiers];
          if (contactIdentifiers || ([(PHCameraSmartSharingIdentity *)equalCopy contactIdentifiers], (emailAddress2 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            contactIdentifiers2 = [(PHCameraSmartSharingIdentity *)self contactIdentifiers];
            contactIdentifiers3 = [(PHCameraSmartSharingIdentity *)equalCopy contactIdentifiers];
            v10 = [contactIdentifiers2 isEqual:contactIdentifiers3];

            if (contactIdentifiers)
            {
LABEL_23:

              goto LABEL_20;
            }
          }

          else
          {
            v10 = 1;
          }

          goto LABEL_23;
        }
      }

      emailAddress3 = [(PHCameraSmartSharingIdentity *)self emailAddress];
      emailAddress4 = [(PHCameraSmartSharingIdentity *)equalCopy emailAddress];
      v14 = [emailAddress3 isEqual:emailAddress4];

      if (emailAddress)
      {

        if (v14)
        {
          goto LABEL_14;
        }
      }

      else
      {

        if (v14)
        {
          goto LABEL_14;
        }
      }
    }

LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  v10 = 1;
LABEL_20:

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  phoneNumber = [(PHCameraSmartSharingIdentity *)self phoneNumber];
  emailAddress = [(PHCameraSmartSharingIdentity *)self emailAddress];
  contactIdentifiers = [(PHCameraSmartSharingIdentity *)self contactIdentifiers];
  v9 = [contactIdentifiers componentsJoinedByString:{@", "}];
  v10 = [v3 stringWithFormat:@"<%@:%p phoneNumber:%@ emailAddress:%@ contactIdentifier:%@>", v5, self, phoneNumber, emailAddress, v9];;

  return v10;
}

- (PHCameraSmartSharingIdentity)initWithPhoneNumber:(id)number emailAddress:(id)address contactIdentifiers:(id)identifiers
{
  numberCopy = number;
  addressCopy = address;
  identifiersCopy = identifiers;
  v19.receiver = self;
  v19.super_class = PHCameraSmartSharingIdentity;
  v11 = [(PHCameraSmartSharingIdentity *)&v19 init];
  if (v11)
  {
    v12 = [numberCopy copy];
    phoneNumber = v11->_phoneNumber;
    v11->_phoneNumber = v12;

    v14 = [addressCopy copy];
    emailAddress = v11->_emailAddress;
    v11->_emailAddress = v14;

    v16 = [identifiersCopy copy];
    contactIdentifiers = v11->_contactIdentifiers;
    v11->_contactIdentifiers = v16;
  }

  return v11;
}

@end