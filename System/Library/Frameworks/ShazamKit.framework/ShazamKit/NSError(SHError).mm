@interface NSError(SHError)
- (uint64_t)isShazamPublicErrorWithCode:()SHError;
- (uint64_t)sh_hasShazamKitPublicErrorDomain;
- (uint64_t)sh_isMatchAttemptCancelledError;
- (uint64_t)sh_isMediaItemFetchFailedError;
- (uint64_t)sh_isMediaLibraryError;
- (uint64_t)sh_isMediaLibraryPublicError;
- (uint64_t)sh_isPrivacyDisclosureAcknowledgementNeededError;
@end

@implementation NSError(SHError)

- (uint64_t)sh_hasShazamKitPublicErrorDomain
{
  domain = [self domain];
  v2 = [domain isEqualToString:@"com.apple.ShazamKit"];

  return v2;
}

- (uint64_t)sh_isMediaLibraryPublicError
{
  result = [self sh_isMediaLibraryError];
  if (result)
  {
    return [self code] == 500;
  }

  return result;
}

- (uint64_t)isShazamPublicErrorWithCode:()SHError
{
  result = [self sh_hasShazamKitPublicErrorDomain];
  if (result)
  {
    return [self code] == a3;
  }

  return result;
}

- (uint64_t)sh_isMediaLibraryError
{
  domain = [self domain];
  v2 = [domain isEqualToString:@"com.apple.ShazamKit.ShazamLibrary"];

  return v2;
}

- (uint64_t)sh_isMatchAttemptCancelledError
{
  result = [self sh_hasShazamKitPublicErrorDomain];
  if (result)
  {
    return [self code] == 203;
  }

  return result;
}

- (uint64_t)sh_isPrivacyDisclosureAcknowledgementNeededError
{
  result = [self sh_hasShazamKitPublicErrorDomain];
  if (result)
  {
    return [self code] == 204;
  }

  return result;
}

- (uint64_t)sh_isMediaItemFetchFailedError
{
  result = [self sh_hasShazamKitPublicErrorDomain];
  if (result)
  {
    return [self code] == 600;
  }

  return result;
}

@end