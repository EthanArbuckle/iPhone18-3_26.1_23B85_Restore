@interface NSString(FPProviderDomainID)
+ (id)fp_providerDomainIDFromProviderID:()FPProviderDomainID domainIdentifier:;
- (__CFString)fp_toDomainIdentifier;
- (id)fp_toProviderID;
- (uint64_t)fp_isCiconiaDomain;
@end

@implementation NSString(FPProviderDomainID)

- (id)fp_toProviderID
{
  v2 = [self rangeOfString:@"/"];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [self substringToIndex:v2];
  }

  return selfCopy;
}

- (__CFString)fp_toDomainIdentifier
{
  v2 = [self rangeOfString:@"/"];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = @"NSFileProviderDomainDefaultIdentifier";
  }

  else
  {
    v4 = [self substringFromIndex:v2 + v3];
  }

  return v4;
}

+ (id)fp_providerDomainIDFromProviderID:()FPProviderDomainID domainIdentifier:
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"FPProviderDomain.m" lineNumber:63 description:@"domain identifier shouldn't be nil"];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"FPProviderDomain.m" lineNumber:64 description:@"provider identifier shouldn't be nil"];

LABEL_3:
  if ([v8 isEqualToString:@"NSFileProviderDomainDefaultIdentifier"])
  {
    v9 = v7;
  }

  else
  {
    v9 = [v7 stringByAppendingPathComponent:v8];
  }

  v10 = v9;

  return v10;
}

- (uint64_t)fp_isCiconiaDomain
{
  fp_toProviderID = [self fp_toProviderID];
  if (([fp_toProviderID isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProvider"] & 1) != 0 || objc_msgSend(fp_toProviderID, "isEqualToString:", @"com.apple.CloudDocs.iCloudDriveFileProviderManaged"))
  {
    fp_toDomainIdentifier = [self fp_toDomainIdentifier];
    v4 = [fp_toDomainIdentifier hasPrefix:@"Ciconia-"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end