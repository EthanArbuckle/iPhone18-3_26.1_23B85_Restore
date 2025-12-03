@interface SHMediaLibraryInfo
- (SHMediaLibraryInfo)initWithCoder:(id)coder;
- (SHMediaLibraryInfo)initWithStatus:(int64_t)status encrypted:(BOOL)encrypted;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SHMediaLibraryInfo

- (SHMediaLibraryInfo)initWithStatus:(int64_t)status encrypted:(BOOL)encrypted
{
  v7.receiver = self;
  v7.super_class = SHMediaLibraryInfo;
  result = [(SHMediaLibraryInfo *)&v7 init];
  if (result)
  {
    result->_status = status;
    result->_isEncrypted = encrypted;
  }

  return result;
}

- (SHMediaLibraryInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = -[SHMediaLibraryInfo initWithStatus:encrypted:](self, "initWithStatus:encrypted:", [coderCopy decodeIntegerForKey:@"SHMediaLibraryInfoStatus"], objc_msgSend(coderCopy, "decodeBoolForKey:", @"SHMediaLibraryInfoEncrypted"));
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHMediaLibraryInfoIdentifier"];

  [(SHMediaLibraryInfo *)v5 setIdentityToken:v6];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identityToken = self->_identityToken;
  coderCopy = coder;
  [coderCopy encodeObject:identityToken forKey:@"SHMediaLibraryInfoIdentifier"];
  [coderCopy encodeInteger:self->_status forKey:@"SHMediaLibraryInfoStatus"];
  [coderCopy encodeBool:self->_isEncrypted forKey:@"SHMediaLibraryInfoEncrypted"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[SHMediaLibraryInfo allocWithZone:](SHMediaLibraryInfo initWithStatus:"initWithStatus:encrypted:" encrypted:[(SHMediaLibraryInfo *)self status], [(SHMediaLibraryInfo *)self isEncrypted]];
  identityToken = [(SHMediaLibraryInfo *)self identityToken];
  v7 = [identityToken copyWithZone:zone];
  [(SHMediaLibraryInfo *)v5 setIdentityToken:v7];

  return v5;
}

@end