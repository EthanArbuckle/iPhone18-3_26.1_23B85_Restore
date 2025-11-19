@interface ASTContext
- (ASTContext)init;
- (ASTContext)initWithCoder:(id)a3;
- (ASTContext)initWithIdentity:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASTContext

- (ASTContext)init
{
  v3 = objc_alloc_init(ASTIdentity);
  v4 = [(ASTContext *)self initWithIdentity:v3];

  return v4;
}

- (ASTContext)initWithIdentity:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ASTContext;
  v6 = [(ASTContext *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identity, a3);
    v8 = objc_alloc_init(ASTControlCommand);
    controlCommand = v7->_controlCommand;
    v7->_controlCommand = v8;

    v7->_testSuiteRunning = 0;
    v7->_clientStatus = 0;
    v7->_command = 0;
  }

  return v7;
}

- (ASTContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASTContext *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identity"];
    identity = v5->_identity;
    v5->_identity = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"controlCommand"];
    controlCommand = v5->_controlCommand;
    v5->_controlCommand = v8;

    v5->_clientStatus = [v4 decodeIntegerForKey:@"clientStatus"];
    v5->_command = [v4 decodeIntegerForKey:@"command"];
    v5->_testSuiteRunning = [v4 decodeBoolForKey:@"testSuiteRunning"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(ASTContext *)self identity];
  [v6 encodeObject:v4 forKey:@"identity"];

  v5 = [(ASTContext *)self controlCommand];
  [v6 encodeObject:v5 forKey:@"controlCommand"];

  [v6 encodeInteger:-[ASTContext clientStatus](self forKey:{"clientStatus"), @"clientStatus"}];
  [v6 encodeInteger:-[ASTContext command](self forKey:{"command"), @"command"}];
  [v6 encodeBool:-[ASTContext testSuiteRunning](self forKey:{"testSuiteRunning"), @"testSuiteRunning"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(ASTIdentity *)self->_identity copyWithZone:a3];
    v7 = *(v5 + 16);
    *(v5 + 16) = v6;

    v8 = [(ASTControlCommand *)self->_controlCommand copyWithZone:a3];
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
  v6 = [(ASTContext *)self identity];
  v7 = [ASTRequest stringFromClientStatus:[(ASTContext *)self clientStatus]];
  v8 = [ASTResponse stringFromCommand:[(ASTContext *)self command]];
  v9 = [(ASTContext *)self controlCommand];
  v10 = [v3 stringWithFormat:@"<%@: %p identity = %@, clientStatus = %@, command = %@, controlCommand = %@, testSuiteRunning = %d>", v5, self, v6, v7, v8, v9, -[ASTContext testSuiteRunning](self, "testSuiteRunning")];;

  return v10;
}

@end