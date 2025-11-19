@interface FPMoveInfo
- (FPMoveInfo)initWithCoder:(id)a3;
- (FPMoveInfo)initWithOperationID:(id)a3 roots:(id)a4 rootFilenames:(id)a5 targetFolder:(id)a6 lastUsedDatePolicy:(unint64_t)a7 bounce:(BOOL)a8 byCopy:(BOOL)a9;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FPMoveInfo

- (FPMoveInfo)initWithOperationID:(id)a3 roots:(id)a4 rootFilenames:(id)a5 targetFolder:(id)a6 lastUsedDatePolicy:(unint64_t)a7 bounce:(BOOL)a8 byCopy:(BOOL)a9
{
  v16 = a5;
  v17 = a6;
  v21.receiver = self;
  v21.super_class = FPMoveInfo;
  v18 = [(FPActionOperationInfo *)&v21 initWithOperationID:a3 roots:a4];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_targetFolder, a6);
    v19->_lastUsedDatePolicy = a7;
    v19->_shouldBounce = a8;
    v19->_byCopy = a9;
    objc_storeStrong(&v19->_rootFilenames, a5);
  }

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = FPMoveInfo;
  v4 = a3;
  [(FPActionOperationInfo *)&v5 encodeWithCoder:v4];
  if ([(FPActionOperationInfo *)self attachSandboxExtensionsOnXPCEncoding:v5.receiver])
  {
    [(FPActionOperationLocator *)self->_targetFolder attachSandboxExtensionOnXPCEncoding];
  }

  [v4 encodeObject:self->_targetFolder forKey:@"_targetFolder"];
  [v4 encodeInteger:self->_lastUsedDatePolicy forKey:@"_lastUsedDatePolicy"];
  [v4 encodeBool:self->_shouldBounce forKey:@"_shouldBounce"];
  [v4 encodeBool:self->_byCopy forKey:@"_byCopy"];
  [v4 encodeObject:self->_rootFilenames forKey:@"_rootFilenames"];
}

- (FPMoveInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = FPMoveInfo;
  v5 = [(FPActionOperationInfo *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_targetFolder"];
    targetFolder = v5->_targetFolder;
    v5->_targetFolder = v6;

    v5->_lastUsedDatePolicy = [v4 decodeIntegerForKey:@"_lastUsedDatePolicy"];
    v5->_shouldBounce = [v4 decodeBoolForKey:@"_shouldBounce"];
    v5->_byCopy = [v4 decodeBoolForKey:@"_byCopy"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"_rootFilenames"];
    rootFilenames = v5->_rootFilenames;
    v5->_rootFilenames = v11;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"{ "];
  v4 = v3;
  if (self->_byCopy)
  {
    v5 = @"copy ";
  }

  else
  {
    v5 = @"move ";
  }

  [v3 appendString:v5];
  v6 = [(FPActionOperationInfo *)self roots];
  [v4 appendFormat:@"roots:%@ ", v6];

  v7 = [(FPMoveInfo *)self rootFilenames];
  [v4 appendFormat:@"dst-names:%@ ", v7];

  [v4 appendFormat:@"target:%@ ", self->_targetFolder];
  v8 = 110;
  if (self->_shouldBounce)
  {
    v8 = 121;
  }

  [v4 appendFormat:@"bounce:%c ", v8];
  [v4 appendFormat:@"qos:%2.0x ", -[FPActionOperationInfo qos](self, "qos")];
  [v4 appendString:@"}"];

  return v4;
}

@end