@interface BNPresentableIdentification
+ (id)genericIdentificationForPresentable:(id)presentable;
+ (id)identificationWithRequesterIdentifier:(id)identifier;
+ (id)identificationWithRequesterIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier;
+ (id)identificationWithRequesterIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier uniqueIdentifier:(id)uniqueIdentifier;
+ (id)requesterIdentificationForPresentable:(id)presentable;
+ (id)uniqueIdentificationForPresentable:(id)presentable;
- (BNPresentableIdentification)initWithBSXPCCoder:(id)coder;
- (BNPresentableIdentification)initWithRequesterIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier uniqueIdentifier:(id)uniqueIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation BNPresentableIdentification

+ (id)identificationWithRequesterIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier uniqueIdentifier:(id)uniqueIdentifier
{
  uniqueIdentifierCopy = uniqueIdentifier;
  requestIdentifierCopy = requestIdentifier;
  identifierCopy = identifier;
  v11 = [[self alloc] initWithRequesterIdentifier:identifierCopy requestIdentifier:requestIdentifierCopy uniqueIdentifier:uniqueIdentifierCopy];

  return v11;
}

+ (id)identificationWithRequesterIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier
{
  requestIdentifierCopy = requestIdentifier;
  identifierCopy = identifier;
  v8 = [[self alloc] initWithRequesterIdentifier:identifierCopy requestIdentifier:requestIdentifierCopy uniqueIdentifier:0];

  return v8;
}

+ (id)identificationWithRequesterIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[self alloc] initWithRequesterIdentifier:identifierCopy requestIdentifier:0 uniqueIdentifier:0];

  return v5;
}

+ (id)uniqueIdentificationForPresentable:(id)presentable
{
  presentableCopy = presentable;
  if (objc_opt_respondsToSelector())
  {
    requesterIdentifier = [presentableCopy requesterIdentifier];
  }

  else
  {
    requesterIdentifier = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    requestIdentifier = [presentableCopy requestIdentifier];
  }

  else
  {
    requestIdentifier = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    uniquePresentableIdentifier = [presentableCopy uniquePresentableIdentifier];
    if (requesterIdentifier)
    {
      goto LABEL_14;
    }
  }

  else
  {
    uniquePresentableIdentifier = 0;
    if (requesterIdentifier)
    {
      goto LABEL_14;
    }
  }

  if (!requestIdentifier && !uniquePresentableIdentifier)
  {
    v8 = 0;
    goto LABEL_15;
  }

LABEL_14:
  v8 = [[self alloc] initWithRequesterIdentifier:requesterIdentifier requestIdentifier:requestIdentifier uniqueIdentifier:uniquePresentableIdentifier];
LABEL_15:

  return v8;
}

+ (id)genericIdentificationForPresentable:(id)presentable
{
  presentableCopy = presentable;
  if (objc_opt_respondsToSelector())
  {
    requesterIdentifier = [presentableCopy requesterIdentifier];
  }

  else
  {
    requesterIdentifier = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    requestIdentifier = [presentableCopy requestIdentifier];
  }

  else
  {
    requestIdentifier = 0;
  }

  if (requesterIdentifier | requestIdentifier)
  {
    v7 = [[self alloc] initWithRequesterIdentifier:requesterIdentifier requestIdentifier:requestIdentifier uniqueIdentifier:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)requesterIdentificationForPresentable:(id)presentable
{
  presentableCopy = presentable;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([presentableCopy requesterIdentifier], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [[self alloc] initWithRequesterIdentifier:v5 requestIdentifier:0 uniqueIdentifier:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BNPresentableIdentification)initWithRequesterIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier uniqueIdentifier:(id)uniqueIdentifier
{
  identifierCopy = identifier;
  requestIdentifierCopy = requestIdentifier;
  uniqueIdentifierCopy = uniqueIdentifier;
  if (!identifierCopy)
  {
    [BNPresentableIdentification initWithRequesterIdentifier:a2 requestIdentifier:self uniqueIdentifier:?];
  }

  v20.receiver = self;
  v20.super_class = BNPresentableIdentification;
  v12 = [(BNPresentableIdentification *)&v20 init];
  if (v12)
  {
    v13 = [identifierCopy copy];
    requesterIdentifier = v12->_requesterIdentifier;
    v12->_requesterIdentifier = v13;

    v15 = [requestIdentifierCopy copy];
    requestIdentifier = v12->_requestIdentifier;
    v12->_requestIdentifier = v15;

    v17 = [uniqueIdentifierCopy copy];
    uniquePresentableIdentifier = v12->_uniquePresentableIdentifier;
    v12->_uniquePresentableIdentifier = v17;
  }

  return v12;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  requesterIdentifier = self->_requesterIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:requesterIdentifier forKey:@"requesterIdentifier"];
  [coderCopy encodeObject:self->_requestIdentifier forKey:@"requestIdentifier"];
  [coderCopy encodeObject:self->_uniquePresentableIdentifier forKey:@"uniquePresentableIdentifier"];
}

- (BNPresentableIdentification)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = BNPresentableIdentification;
  v5 = [(BNPresentableIdentification *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requesterIdentifier"];
    requesterIdentifier = v5->_requesterIdentifier;
    v5->_requesterIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestIdentifier"];
    requestIdentifier = v5->_requestIdentifier;
    v5->_requestIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniquePresentableIdentifier"];
    uniquePresentableIdentifier = v5->_uniquePresentableIdentifier;
    v5->_uniquePresentableIdentifier = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  requesterIdentifier = self->_requesterIdentifier;
  requestIdentifier = self->_requestIdentifier;
  uniquePresentableIdentifier = self->_uniquePresentableIdentifier;

  return [v4 initWithRequesterIdentifier:requesterIdentifier requestIdentifier:requestIdentifier uniqueIdentifier:uniquePresentableIdentifier];
}

- (void)initWithRequesterIdentifier:(uint64_t)a1 requestIdentifier:(uint64_t)a2 uniqueIdentifier:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BNPresentableIdentification.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"requesterID"}];
}

@end