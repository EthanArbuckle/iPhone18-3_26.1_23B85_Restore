@interface UNOneTimeCode
- (BOOL)isEqual:(id)a3;
- (UNOneTimeCode)initWithCode:(id)a3 displayCode:(id)a4 applicationIdentifier:(id)a5 notificationIdentifier:(id)a6 timestamp:(id)a7;
- (UNOneTimeCode)initWithCoder:(id)a3;
- (id)_descriptionForRedacted:(BOOL)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNOneTimeCode

- (UNOneTimeCode)initWithCode:(id)a3 displayCode:(id)a4 applicationIdentifier:(id)a5 notificationIdentifier:(id)a6 timestamp:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = UNOneTimeCode;
  v17 = [(UNOneTimeCode *)&v29 init];
  if (v17)
  {
    v18 = [v12 copy];
    code = v17->_code;
    v17->_code = v18;

    v20 = [v13 copy];
    displayCode = v17->_displayCode;
    v17->_displayCode = v20;

    v22 = [v14 copy];
    applicationIdentifier = v17->_applicationIdentifier;
    v17->_applicationIdentifier = v22;

    v24 = [v15 copy];
    notificationIdentifier = v17->_notificationIdentifier;
    v17->_notificationIdentifier = v24;

    v26 = [v16 copy];
    timestamp = v17->_timestamp;
    v17->_timestamp = v26;
  }

  return v17;
}

- (unint64_t)hash
{
  v3 = [(UNOneTimeCode *)self code];
  v4 = [v3 hash];
  v5 = [(UNOneTimeCode *)self displayCode];
  v6 = [v5 hash] ^ v4;
  v7 = [(UNOneTimeCode *)self applicationIdentifier];
  v8 = [v7 hash];
  v9 = [(UNOneTimeCode *)self notificationIdentifier];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(UNOneTimeCode *)self timestamp];
  v12 = [v11 hash];

  return v10 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(UNOneTimeCode *)self code];
      v7 = [(UNOneTimeCode *)v5 code];
      if (UNEqualObjects(v6, v7))
      {
        v8 = [(UNOneTimeCode *)self displayCode];
        v9 = [(UNOneTimeCode *)v5 displayCode];
        if (UNEqualObjects(v8, v9))
        {
          v10 = [(UNOneTimeCode *)self applicationIdentifier];
          v11 = [(UNOneTimeCode *)v5 applicationIdentifier];
          if (UNEqualObjects(v10, v11))
          {
            v12 = [(UNOneTimeCode *)self notificationIdentifier];
            v13 = [(UNOneTimeCode *)v5 notificationIdentifier];
            v20 = v12;
            v14 = v12;
            v15 = v13;
            if (UNEqualObjects(v14, v13))
            {
              v19 = [(UNOneTimeCode *)self timestamp];
              v18 = [(UNOneTimeCode *)v5 timestamp];
              v16 = UNEqualObjects(v19, v18);
            }

            else
            {
              v16 = 0;
            }
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (id)_descriptionForRedacted:(BOOL)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = [(UNOneTimeCode *)self code];
  v7 = [(UNOneTimeCode *)self displayCode];
  v8 = [(UNOneTimeCode *)self applicationIdentifier];
  v9 = [(UNOneTimeCode *)self notificationIdentifier];
  v10 = [(UNOneTimeCode *)self timestamp];
  v11 = [v4 stringWithFormat:@"<%@: %p code: %@; displayCode: %@; applicationIdentifier: %@; notificationIdentifier: %@; timestamp: %@>", v5, self, v6, v7, v8, v9, v10];;

  return v11;
}

- (UNOneTimeCode)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"code"];
  v7 = [v4 decodeObjectOfClass:v5 forKey:@"displayCode"];
  v8 = [v4 decodeObjectOfClass:v5 forKey:@"applicationIdentifier"];
  v9 = [v4 decodeObjectOfClass:v5 forKey:@"notificationIdentifier"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];

  v11 = [(UNOneTimeCode *)self initWithCode:v6 displayCode:v7 applicationIdentifier:v8 notificationIdentifier:v9 timestamp:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UNOneTimeCode *)self code];
  [v4 encodeObject:v5 forKey:@"code"];

  v6 = [(UNOneTimeCode *)self displayCode];
  [v4 encodeObject:v6 forKey:@"displayCode"];

  v7 = [(UNOneTimeCode *)self applicationIdentifier];
  [v4 encodeObject:v7 forKey:@"applicationIdentifier"];

  v8 = [(UNOneTimeCode *)self notificationIdentifier];
  [v4 encodeObject:v8 forKey:@"notificationIdentifier"];

  v9 = [(UNOneTimeCode *)self timestamp];
  [v4 encodeObject:v9 forKey:@"timestamp"];
}

@end