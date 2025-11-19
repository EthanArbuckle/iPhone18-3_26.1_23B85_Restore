@interface ASGlobalFrameIdentifier
- (ASGlobalFrameIdentifier)initWithCoder:(id)a3;
- (ASGlobalFrameIdentifier)initWithCoreFrameIdentifier:(id)a3;
- (ASGlobalFrameIdentifier)initWithPageID:(id)a3 frameID:(id)a4;
- (BOOL)isEqual:(id)a3;
- (WBSGlobalFrameIdentifier)coreFrameIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ASGlobalFrameIdentifier

- (ASGlobalFrameIdentifier)initWithPageID:(id)a3 frameID:(id)a4
{
  v6 = MEMORY[0x1E69C88A0];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithPageID:v8 frameID:v7];

  v10 = [(ASGlobalFrameIdentifier *)self initWithCoreFrameIdentifier:v9];
  return v10;
}

- (ASGlobalFrameIdentifier)initWithCoreFrameIdentifier:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = ASGlobalFrameIdentifier;
  v6 = [(ASGlobalFrameIdentifier *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coreFrameIdentifier, a3);
    v8 = v7;
  }

  return v7;
}

- (WBSGlobalFrameIdentifier)coreFrameIdentifier
{
  v2 = [(WBSGlobalFrameIdentifier *)self->_coreFrameIdentifier copy];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [ASGlobalFrameIdentifier allocWithZone:?];
  v6 = [(WBSGlobalFrameIdentifier *)self->_coreFrameIdentifier copyWithZone:a3];
  v7 = [(ASGlobalFrameIdentifier *)v5 initWithCoreFrameIdentifier:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(WBSGlobalFrameIdentifier *)self->_coreFrameIdentifier isEqual:v4[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (ASGlobalFrameIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"coreFrameIdentifierKey"];

  v6 = [(ASGlobalFrameIdentifier *)self initWithCoreFrameIdentifier:v5];
  return v6;
}

@end