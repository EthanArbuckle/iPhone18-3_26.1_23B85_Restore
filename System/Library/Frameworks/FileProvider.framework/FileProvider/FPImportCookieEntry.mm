@interface FPImportCookieEntry
- (FPImportCookieEntry)initWithCoder:(id)coder;
- (FPImportCookieEntry)initWithDomainPathRelativeToVolumeRoot:(id)root displayName:(id)name creationTime:(double)time andFileID:(unint64_t)d;
- (FPImportCookieEntry)initWithDomainURL:(id)l displayName:(id)name error:(id *)error;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FPImportCookieEntry

- (FPImportCookieEntry)initWithDomainPathRelativeToVolumeRoot:(id)root displayName:(id)name creationTime:(double)time andFileID:(unint64_t)d
{
  rootCopy = root;
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = FPImportCookieEntry;
  v13 = [(FPImportCookieEntry *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_domainPathRelativeToVolumeRoot, root);
    objc_storeStrong(&v14->_displayName, name);
    v14->_creationTime = time;
    v14->_fileID = d;
  }

  return v14;
}

- (FPImportCookieEntry)initWithDomainURL:(id)l displayName:(id)name error:(id *)error
{
  nameCopy = name;
  v13 = 0;
  v9 = FPPathRelativeToVolumeRoot(l, &v13, error);
  if (v9)
  {
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceReferenceDate];
    self = [(FPImportCookieEntry *)self initWithDomainPathRelativeToVolumeRoot:v9 displayName:nameCopy creationTime:v13 andFileID:?];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  domainPathRelativeToVolumeRoot = self->_domainPathRelativeToVolumeRoot;
  coderCopy = coder;
  [coderCopy encodeObject:domainPathRelativeToVolumeRoot forKey:@"_domainPathRelativeToVolumeRoot"];
  [coderCopy encodeObject:self->_displayName forKey:@"_displayName"];
  [coderCopy encodeDouble:@"_creationTime" forKey:self->_creationTime];
  [coderCopy encodeInt64:self->_fileID forKey:@"_fileID"];
}

- (FPImportCookieEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"_fileID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_domainPathRelativeToVolumeRoot"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_displayName"];
  [coderCopy decodeDoubleForKey:@"_creationTime"];
  v9 = v8;

  v10 = [(FPImportCookieEntry *)self initWithDomainPathRelativeToVolumeRoot:v6 displayName:v7 creationTime:v5 andFileID:v9];
  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  displayName = [(FPImportCookieEntry *)self displayName];
  domainPathRelativeToVolumeRoot = [(FPImportCookieEntry *)self domainPathRelativeToVolumeRoot];
  fp_obfuscatedPath = [domainPathRelativeToVolumeRoot fp_obfuscatedPath];
  fileID = [(FPImportCookieEntry *)self fileID];
  [(FPImportCookieEntry *)self creationTime];
  v9 = [v3 stringWithFormat:@"<n:%@ d:%@ f:%llu ct:%f>", displayName, fp_obfuscatedPath, fileID, v8];

  return v9;
}

@end