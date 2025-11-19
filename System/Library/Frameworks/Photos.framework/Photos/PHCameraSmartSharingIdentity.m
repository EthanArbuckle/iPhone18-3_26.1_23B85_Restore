@interface PHCameraSmartSharingIdentity
- (BOOL)isEqual:(id)a3;
- (PHCameraSmartSharingIdentity)initWithCoder:(id)a3;
- (PHCameraSmartSharingIdentity)initWithPhoneNumber:(id)a3 emailAddress:(id)a4 contactIdentifiers:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PHCameraSmartSharingIdentity

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PHCameraSmartSharingIdentity *)self phoneNumber];
  [v4 encodeObject:v5 forKey:@"phoneNumber"];

  v6 = [(PHCameraSmartSharingIdentity *)self emailAddress];
  [v4 encodeObject:v6 forKey:@"emailAddress"];

  v7 = [(PHCameraSmartSharingIdentity *)self contactIdentifiers];
  [v4 encodeObject:v7 forKey:@"contactIdentifiers"];
}

- (PHCameraSmartSharingIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"emailAddress"];
  v7 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v8 = [v4 decodeArrayOfObjectsOfClasses:v7 forKey:@"contactIdentifiers"];

  if ([v5 length] || objc_msgSend(v6, "length") || objc_msgSend(v8, "count"))
  {
    self = [(PHCameraSmartSharingIdentity *)self initWithPhoneNumber:v5 emailAddress:v6 contactIdentifiers:v8];
    v9 = self;
  }

  else
  {
    v11 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_ERROR, "[PHCameraSmartSharingIdentity] decode fail, no valid properties", v12, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(PHCameraSmartSharingIdentity *)self phoneNumber];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(PHCameraSmartSharingIdentity *)self phoneNumber];
    v6 = [v5 hash];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(PHCameraSmartSharingIdentity *)self emailAddress];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [(PHCameraSmartSharingIdentity *)self emailAddress];
    v6 ^= [v9 hash];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [(PHCameraSmartSharingIdentity *)self contactIdentifiers];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v10);
        }

        v6 ^= [*(*(&v16 + 1) + 8 * v14++) hash];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 != self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(PHCameraSmartSharingIdentity *)self phoneNumber];
      if (v6 || ([(PHCameraSmartSharingIdentity *)v5 phoneNumber], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v7 = [(PHCameraSmartSharingIdentity *)self phoneNumber];
        v8 = [(PHCameraSmartSharingIdentity *)v5 phoneNumber];
        v9 = [v7 isEqual:v8];

        if (v6)
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

      v11 = [(PHCameraSmartSharingIdentity *)self emailAddress];
      if (!v11)
      {
        v3 = [(PHCameraSmartSharingIdentity *)v5 emailAddress];
        if (!v3)
        {
LABEL_14:
          v15 = [(PHCameraSmartSharingIdentity *)self contactIdentifiers];
          if (v15 || ([(PHCameraSmartSharingIdentity *)v5 contactIdentifiers], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v16 = [(PHCameraSmartSharingIdentity *)self contactIdentifiers];
            v17 = [(PHCameraSmartSharingIdentity *)v5 contactIdentifiers];
            v10 = [v16 isEqual:v17];

            if (v15)
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

      v12 = [(PHCameraSmartSharingIdentity *)self emailAddress];
      v13 = [(PHCameraSmartSharingIdentity *)v5 emailAddress];
      v14 = [v12 isEqual:v13];

      if (v11)
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
  v6 = [(PHCameraSmartSharingIdentity *)self phoneNumber];
  v7 = [(PHCameraSmartSharingIdentity *)self emailAddress];
  v8 = [(PHCameraSmartSharingIdentity *)self contactIdentifiers];
  v9 = [v8 componentsJoinedByString:{@", "}];
  v10 = [v3 stringWithFormat:@"<%@:%p phoneNumber:%@ emailAddress:%@ contactIdentifier:%@>", v5, self, v6, v7, v9];;

  return v10;
}

- (PHCameraSmartSharingIdentity)initWithPhoneNumber:(id)a3 emailAddress:(id)a4 contactIdentifiers:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = PHCameraSmartSharingIdentity;
  v11 = [(PHCameraSmartSharingIdentity *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    phoneNumber = v11->_phoneNumber;
    v11->_phoneNumber = v12;

    v14 = [v9 copy];
    emailAddress = v11->_emailAddress;
    v11->_emailAddress = v14;

    v16 = [v10 copy];
    contactIdentifiers = v11->_contactIdentifiers;
    v11->_contactIdentifiers = v16;
  }

  return v11;
}

@end