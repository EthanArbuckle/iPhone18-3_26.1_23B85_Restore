@interface UNOneTimeCode
- (BOOL)isEqual:(id)equal;
- (UNOneTimeCode)initWithCode:(id)code displayCode:(id)displayCode applicationIdentifier:(id)identifier notificationIdentifier:(id)notificationIdentifier timestamp:(id)timestamp;
- (UNOneTimeCode)initWithCoder:(id)coder;
- (id)_descriptionForRedacted:(BOOL)redacted;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNOneTimeCode

- (UNOneTimeCode)initWithCode:(id)code displayCode:(id)displayCode applicationIdentifier:(id)identifier notificationIdentifier:(id)notificationIdentifier timestamp:(id)timestamp
{
  codeCopy = code;
  displayCodeCopy = displayCode;
  identifierCopy = identifier;
  notificationIdentifierCopy = notificationIdentifier;
  timestampCopy = timestamp;
  v29.receiver = self;
  v29.super_class = UNOneTimeCode;
  v17 = [(UNOneTimeCode *)&v29 init];
  if (v17)
  {
    v18 = [codeCopy copy];
    code = v17->_code;
    v17->_code = v18;

    v20 = [displayCodeCopy copy];
    displayCode = v17->_displayCode;
    v17->_displayCode = v20;

    v22 = [identifierCopy copy];
    applicationIdentifier = v17->_applicationIdentifier;
    v17->_applicationIdentifier = v22;

    v24 = [notificationIdentifierCopy copy];
    notificationIdentifier = v17->_notificationIdentifier;
    v17->_notificationIdentifier = v24;

    v26 = [timestampCopy copy];
    timestamp = v17->_timestamp;
    v17->_timestamp = v26;
  }

  return v17;
}

- (unint64_t)hash
{
  code = [(UNOneTimeCode *)self code];
  v4 = [code hash];
  displayCode = [(UNOneTimeCode *)self displayCode];
  v6 = [displayCode hash] ^ v4;
  applicationIdentifier = [(UNOneTimeCode *)self applicationIdentifier];
  v8 = [applicationIdentifier hash];
  notificationIdentifier = [(UNOneTimeCode *)self notificationIdentifier];
  v10 = v6 ^ v8 ^ [notificationIdentifier hash];
  timestamp = [(UNOneTimeCode *)self timestamp];
  v12 = [timestamp hash];

  return v10 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      code = [(UNOneTimeCode *)self code];
      code2 = [(UNOneTimeCode *)v5 code];
      if (UNEqualObjects(code, code2))
      {
        displayCode = [(UNOneTimeCode *)self displayCode];
        displayCode2 = [(UNOneTimeCode *)v5 displayCode];
        if (UNEqualObjects(displayCode, displayCode2))
        {
          applicationIdentifier = [(UNOneTimeCode *)self applicationIdentifier];
          applicationIdentifier2 = [(UNOneTimeCode *)v5 applicationIdentifier];
          if (UNEqualObjects(applicationIdentifier, applicationIdentifier2))
          {
            notificationIdentifier = [(UNOneTimeCode *)self notificationIdentifier];
            notificationIdentifier2 = [(UNOneTimeCode *)v5 notificationIdentifier];
            v20 = notificationIdentifier;
            v14 = notificationIdentifier;
            v15 = notificationIdentifier2;
            if (UNEqualObjects(v14, notificationIdentifier2))
            {
              timestamp = [(UNOneTimeCode *)self timestamp];
              timestamp2 = [(UNOneTimeCode *)v5 timestamp];
              v16 = UNEqualObjects(timestamp, timestamp2);
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

- (id)_descriptionForRedacted:(BOOL)redacted
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  code = [(UNOneTimeCode *)self code];
  displayCode = [(UNOneTimeCode *)self displayCode];
  applicationIdentifier = [(UNOneTimeCode *)self applicationIdentifier];
  notificationIdentifier = [(UNOneTimeCode *)self notificationIdentifier];
  timestamp = [(UNOneTimeCode *)self timestamp];
  v11 = [v4 stringWithFormat:@"<%@: %p code: %@; displayCode: %@; applicationIdentifier: %@; notificationIdentifier: %@; timestamp: %@>", v5, self, code, displayCode, applicationIdentifier, notificationIdentifier, timestamp];;

  return v11;
}

- (UNOneTimeCode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"code"];
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:@"displayCode"];
  v8 = [coderCopy decodeObjectOfClass:v5 forKey:@"applicationIdentifier"];
  v9 = [coderCopy decodeObjectOfClass:v5 forKey:@"notificationIdentifier"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];

  v11 = [(UNOneTimeCode *)self initWithCode:v6 displayCode:v7 applicationIdentifier:v8 notificationIdentifier:v9 timestamp:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  code = [(UNOneTimeCode *)self code];
  [coderCopy encodeObject:code forKey:@"code"];

  displayCode = [(UNOneTimeCode *)self displayCode];
  [coderCopy encodeObject:displayCode forKey:@"displayCode"];

  applicationIdentifier = [(UNOneTimeCode *)self applicationIdentifier];
  [coderCopy encodeObject:applicationIdentifier forKey:@"applicationIdentifier"];

  notificationIdentifier = [(UNOneTimeCode *)self notificationIdentifier];
  [coderCopy encodeObject:notificationIdentifier forKey:@"notificationIdentifier"];

  timestamp = [(UNOneTimeCode *)self timestamp];
  [coderCopy encodeObject:timestamp forKey:@"timestamp"];
}

@end