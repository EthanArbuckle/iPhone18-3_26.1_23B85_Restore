@interface STCall
- (STCall)initWithCoder:(id)coder;
- (id)_aceContextObjectValue;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STCall

- (STCall)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = STCall;
  v5 = [(STSiriModelObject *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_service = [coderCopy decodeIntegerForKey:@"_service"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_initiatorAddress"];
    initiatorAddress = v5->_initiatorAddress;
    v5->_initiatorAddress = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_recipientAddress"];
    recipientAddress = v5->_recipientAddress;
    v5->_recipientAddress = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STCall;
  coderCopy = coder;
  [(STSiriModelObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_service forKey:{@"_service", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_initiatorAddress forKey:@"_initiatorAddress"];
  [coderCopy encodeObject:self->_recipientAddress forKey:@"_recipientAddress"];
}

- (id)_aceContextObjectValue
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69C7930]);
  initiatorAddress = [(STCall *)self initiatorAddress];
  if ([initiatorAddress type] == 2)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69C77D8]);
    stringValue = [initiatorAddress stringValue];
    [v5 setEmailAddress:stringValue];

    v12[0] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [v3 setEmails:v7];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E69C7940]);
    stringValue2 = [initiatorAddress stringValue];
    [v5 setNumber:stringValue2];

    v11 = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
    [v3 setPhones:v7];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"<"];
  v4 = [objc_opt_class() description];
  [v3 appendString:v4];

  [v3 appendFormat:@": %p", self];
  [v3 appendString:@"; service="];
  service = self->_service;
  if (STCallServiceGetDescription_onceToken != -1)
  {
    dispatch_once(&STCallServiceGetDescription_onceToken, &__block_literal_global_31988);
    if (service)
    {
      goto LABEL_3;
    }

LABEL_10:
    v7 = @"Unknown";
    goto LABEL_11;
  }

  if (!service)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (service == 3)
  {
    faceTimeAudioServiceName = [STCallServiceGetDescription_facetimeServiceNames faceTimeAudioServiceName];
    goto LABEL_7;
  }

  if (service == 2)
  {
    faceTimeAudioServiceName = [STCallServiceGetDescription_facetimeServiceNames faceTimeServiceName];
LABEL_7:
    v7 = faceTimeAudioServiceName;
    goto LABEL_11;
  }

  v7 = @"Telephony";
LABEL_11:
  [v3 appendString:v7];

  [v3 appendString:@"; initiatorAddress="];
  initiatorAddress = self->_initiatorAddress;
  if (initiatorAddress)
  {
    v9 = [(STContactAddress *)initiatorAddress description];
    [v3 appendString:v9];
  }

  else
  {
    [v3 appendString:@"nil"];
  }

  [v3 appendString:@"; recipientAddress="];
  recipientAddress = self->_recipientAddress;
  if (recipientAddress)
  {
    v11 = [(STContactAddress *)recipientAddress description];
    [v3 appendString:v11];
  }

  else
  {
    [v3 appendString:@"nil"];
  }

  [v3 appendString:@">"];

  return v3;
}

@end