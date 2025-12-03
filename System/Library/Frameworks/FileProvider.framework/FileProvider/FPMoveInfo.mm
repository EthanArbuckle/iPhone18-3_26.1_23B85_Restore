@interface FPMoveInfo
- (FPMoveInfo)initWithCoder:(id)coder;
- (FPMoveInfo)initWithOperationID:(id)d roots:(id)roots rootFilenames:(id)filenames targetFolder:(id)folder lastUsedDatePolicy:(unint64_t)policy bounce:(BOOL)bounce byCopy:(BOOL)copy;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FPMoveInfo

- (FPMoveInfo)initWithOperationID:(id)d roots:(id)roots rootFilenames:(id)filenames targetFolder:(id)folder lastUsedDatePolicy:(unint64_t)policy bounce:(BOOL)bounce byCopy:(BOOL)copy
{
  filenamesCopy = filenames;
  folderCopy = folder;
  v21.receiver = self;
  v21.super_class = FPMoveInfo;
  v18 = [(FPActionOperationInfo *)&v21 initWithOperationID:d roots:roots];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_targetFolder, folder);
    v19->_lastUsedDatePolicy = policy;
    v19->_shouldBounce = bounce;
    v19->_byCopy = copy;
    objc_storeStrong(&v19->_rootFilenames, filenames);
  }

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = FPMoveInfo;
  coderCopy = coder;
  [(FPActionOperationInfo *)&v5 encodeWithCoder:coderCopy];
  if ([(FPActionOperationInfo *)self attachSandboxExtensionsOnXPCEncoding:v5.receiver])
  {
    [(FPActionOperationLocator *)self->_targetFolder attachSandboxExtensionOnXPCEncoding];
  }

  [coderCopy encodeObject:self->_targetFolder forKey:@"_targetFolder"];
  [coderCopy encodeInteger:self->_lastUsedDatePolicy forKey:@"_lastUsedDatePolicy"];
  [coderCopy encodeBool:self->_shouldBounce forKey:@"_shouldBounce"];
  [coderCopy encodeBool:self->_byCopy forKey:@"_byCopy"];
  [coderCopy encodeObject:self->_rootFilenames forKey:@"_rootFilenames"];
}

- (FPMoveInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = FPMoveInfo;
  v5 = [(FPActionOperationInfo *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_targetFolder"];
    targetFolder = v5->_targetFolder;
    v5->_targetFolder = v6;

    v5->_lastUsedDatePolicy = [coderCopy decodeIntegerForKey:@"_lastUsedDatePolicy"];
    v5->_shouldBounce = [coderCopy decodeBoolForKey:@"_shouldBounce"];
    v5->_byCopy = [coderCopy decodeBoolForKey:@"_byCopy"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"_rootFilenames"];
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
  roots = [(FPActionOperationInfo *)self roots];
  [v4 appendFormat:@"roots:%@ ", roots];

  rootFilenames = [(FPMoveInfo *)self rootFilenames];
  [v4 appendFormat:@"dst-names:%@ ", rootFilenames];

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