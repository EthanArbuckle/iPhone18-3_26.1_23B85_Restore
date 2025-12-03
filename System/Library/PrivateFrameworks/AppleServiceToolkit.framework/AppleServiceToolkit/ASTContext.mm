@interface ASTContext
- (ASTContext)init;
- (ASTContext)initWithCoder:(id)coder;
- (ASTContext)initWithIdentity:(id)identity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASTContext

- (ASTContext)init
{
  v3 = objc_alloc_init(ASTIdentity);
  v4 = [(ASTContext *)self initWithIdentity:v3];

  return v4;
}

- (ASTContext)initWithIdentity:(id)identity
{
  identityCopy = identity;
  v11.receiver = self;
  v11.super_class = ASTContext;
  v6 = [(ASTContext *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identity, identity);
    v8 = objc_alloc_init(ASTControlCommand);
    controlCommand = v7->_controlCommand;
    v7->_controlCommand = v8;

    v7->_testSuiteRunning = 0;
    v7->_clientStatus = 0;
    v7->_command = 0;
  }

  return v7;
}

- (ASTContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASTContext *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identity"];
    identity = v5->_identity;
    v5->_identity = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"controlCommand"];
    controlCommand = v5->_controlCommand;
    v5->_controlCommand = v8;

    v5->_clientStatus = [coderCopy decodeIntegerForKey:@"clientStatus"];
    v5->_command = [coderCopy decodeIntegerForKey:@"command"];
    v5->_testSuiteRunning = [coderCopy decodeBoolForKey:@"testSuiteRunning"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identity = [(ASTContext *)self identity];
  [coderCopy encodeObject:identity forKey:@"identity"];

  controlCommand = [(ASTContext *)self controlCommand];
  [coderCopy encodeObject:controlCommand forKey:@"controlCommand"];

  [coderCopy encodeInteger:-[ASTContext clientStatus](self forKey:{"clientStatus"), @"clientStatus"}];
  [coderCopy encodeInteger:-[ASTContext command](self forKey:{"command"), @"command"}];
  [coderCopy encodeBool:-[ASTContext testSuiteRunning](self forKey:{"testSuiteRunning"), @"testSuiteRunning"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    v6 = [(ASTIdentity *)self->_identity copyWithZone:zone];
    v7 = *(v5 + 16);
    *(v5 + 16) = v6;

    v8 = [(ASTControlCommand *)self->_controlCommand copyWithZone:zone];
    v9 = *(v5 + 40);
    *(v5 + 40) = v8;

    *(v5 + 24) = self->_clientStatus;
    *(v5 + 32) = self->_command;
    *(v5 + 8) = self->_testSuiteRunning;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identity = [(ASTContext *)self identity];
  v7 = [ASTRequest stringFromClientStatus:[(ASTContext *)self clientStatus]];
  v8 = [ASTResponse stringFromCommand:[(ASTContext *)self command]];
  controlCommand = [(ASTContext *)self controlCommand];
  v10 = [v3 stringWithFormat:@"<%@: %p identity = %@, clientStatus = %@, command = %@, controlCommand = %@, testSuiteRunning = %d>", v5, self, identity, v7, v8, controlCommand, -[ASTContext testSuiteRunning](self, "testSuiteRunning")];;

  return v10;
}

@end