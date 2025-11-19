@interface FPImportCookieEntry
- (FPImportCookieEntry)initWithCoder:(id)a3;
- (FPImportCookieEntry)initWithDomainPathRelativeToVolumeRoot:(id)a3 displayName:(id)a4 creationTime:(double)a5 andFileID:(unint64_t)a6;
- (FPImportCookieEntry)initWithDomainURL:(id)a3 displayName:(id)a4 error:(id *)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FPImportCookieEntry

- (FPImportCookieEntry)initWithDomainPathRelativeToVolumeRoot:(id)a3 displayName:(id)a4 creationTime:(double)a5 andFileID:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = FPImportCookieEntry;
  v13 = [(FPImportCookieEntry *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_domainPathRelativeToVolumeRoot, a3);
    objc_storeStrong(&v14->_displayName, a4);
    v14->_creationTime = a5;
    v14->_fileID = a6;
  }

  return v14;
}

- (FPImportCookieEntry)initWithDomainURL:(id)a3 displayName:(id)a4 error:(id *)a5
{
  v8 = a4;
  v13 = 0;
  v9 = FPPathRelativeToVolumeRoot(a3, &v13, a5);
  if (v9)
  {
    v10 = [MEMORY[0x1E695DF00] date];
    [v10 timeIntervalSinceReferenceDate];
    self = [(FPImportCookieEntry *)self initWithDomainPathRelativeToVolumeRoot:v9 displayName:v8 creationTime:v13 andFileID:?];

    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  domainPathRelativeToVolumeRoot = self->_domainPathRelativeToVolumeRoot;
  v5 = a3;
  [v5 encodeObject:domainPathRelativeToVolumeRoot forKey:@"_domainPathRelativeToVolumeRoot"];
  [v5 encodeObject:self->_displayName forKey:@"_displayName"];
  [v5 encodeDouble:@"_creationTime" forKey:self->_creationTime];
  [v5 encodeInt64:self->_fileID forKey:@"_fileID"];
}

- (FPImportCookieEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"_fileID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_domainPathRelativeToVolumeRoot"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_displayName"];
  [v4 decodeDoubleForKey:@"_creationTime"];
  v9 = v8;

  v10 = [(FPImportCookieEntry *)self initWithDomainPathRelativeToVolumeRoot:v6 displayName:v7 creationTime:v5 andFileID:v9];
  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(FPImportCookieEntry *)self displayName];
  v5 = [(FPImportCookieEntry *)self domainPathRelativeToVolumeRoot];
  v6 = [v5 fp_obfuscatedPath];
  v7 = [(FPImportCookieEntry *)self fileID];
  [(FPImportCookieEntry *)self creationTime];
  v9 = [v3 stringWithFormat:@"<n:%@ d:%@ f:%llu ct:%f>", v4, v6, v7, v8];

  return v9;
}

@end