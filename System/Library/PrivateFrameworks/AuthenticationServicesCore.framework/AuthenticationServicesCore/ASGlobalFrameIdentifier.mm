@interface ASGlobalFrameIdentifier
- (ASGlobalFrameIdentifier)initWithCoder:(id)coder;
- (ASGlobalFrameIdentifier)initWithCoreFrameIdentifier:(id)identifier;
- (ASGlobalFrameIdentifier)initWithPageID:(id)d frameID:(id)iD;
- (BOOL)isEqual:(id)equal;
- (WBSGlobalFrameIdentifier)coreFrameIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ASGlobalFrameIdentifier

- (ASGlobalFrameIdentifier)initWithPageID:(id)d frameID:(id)iD
{
  v6 = MEMORY[0x1E69C88A0];
  iDCopy = iD;
  dCopy = d;
  v9 = [[v6 alloc] initWithPageID:dCopy frameID:iDCopy];

  v10 = [(ASGlobalFrameIdentifier *)self initWithCoreFrameIdentifier:v9];
  return v10;
}

- (ASGlobalFrameIdentifier)initWithCoreFrameIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = ASGlobalFrameIdentifier;
  v6 = [(ASGlobalFrameIdentifier *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coreFrameIdentifier, identifier);
    v8 = v7;
  }

  return v7;
}

- (WBSGlobalFrameIdentifier)coreFrameIdentifier
{
  v2 = [(WBSGlobalFrameIdentifier *)self->_coreFrameIdentifier copy];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [ASGlobalFrameIdentifier allocWithZone:?];
  v6 = [(WBSGlobalFrameIdentifier *)self->_coreFrameIdentifier copyWithZone:zone];
  v7 = [(ASGlobalFrameIdentifier *)v5 initWithCoreFrameIdentifier:v6];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(WBSGlobalFrameIdentifier *)self->_coreFrameIdentifier isEqual:equalCopy[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (ASGlobalFrameIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"coreFrameIdentifierKey"];

  v6 = [(ASGlobalFrameIdentifier *)self initWithCoreFrameIdentifier:v5];
  return v6;
}

@end