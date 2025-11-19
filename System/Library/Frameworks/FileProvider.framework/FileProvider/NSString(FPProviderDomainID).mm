@interface NSString(FPProviderDomainID)
+ (id)fp_providerDomainIDFromProviderID:()FPProviderDomainID domainIdentifier:;
- (__CFString)fp_toDomainIdentifier;
- (id)fp_toProviderID;
- (uint64_t)fp_isCiconiaDomain;
@end

@implementation NSString(FPProviderDomainID)

- (id)fp_toProviderID
{
  v2 = [a1 rangeOfString:@"/"];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = a1;
  }

  else
  {
    v3 = [a1 substringToIndex:v2];
  }

  return v3;
}

- (__CFString)fp_toDomainIdentifier
{
  v2 = [a1 rangeOfString:@"/"];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = @"NSFileProviderDomainDefaultIdentifier";
  }

  else
  {
    v4 = [a1 substringFromIndex:v2 + v3];
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
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"FPProviderDomain.m" lineNumber:63 description:@"domain identifier shouldn't be nil"];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v13 = [MEMORY[0x1E696AAA8] currentHandler];
  [v13 handleFailureInMethod:a2 object:a1 file:@"FPProviderDomain.m" lineNumber:64 description:@"provider identifier shouldn't be nil"];

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
  v2 = [a1 fp_toProviderID];
  if (([v2 isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProvider"] & 1) != 0 || objc_msgSend(v2, "isEqualToString:", @"com.apple.CloudDocs.iCloudDriveFileProviderManaged"))
  {
    v3 = [a1 fp_toDomainIdentifier];
    v4 = [v3 hasPrefix:@"Ciconia-"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end