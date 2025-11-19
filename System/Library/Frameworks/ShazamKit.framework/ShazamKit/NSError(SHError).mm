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
  v1 = [a1 domain];
  v2 = [v1 isEqualToString:@"com.apple.ShazamKit"];

  return v2;
}

- (uint64_t)sh_isMediaLibraryPublicError
{
  result = [a1 sh_isMediaLibraryError];
  if (result)
  {
    return [a1 code] == 500;
  }

  return result;
}

- (uint64_t)isShazamPublicErrorWithCode:()SHError
{
  result = [a1 sh_hasShazamKitPublicErrorDomain];
  if (result)
  {
    return [a1 code] == a3;
  }

  return result;
}

- (uint64_t)sh_isMediaLibraryError
{
  v1 = [a1 domain];
  v2 = [v1 isEqualToString:@"com.apple.ShazamKit.ShazamLibrary"];

  return v2;
}

- (uint64_t)sh_isMatchAttemptCancelledError
{
  result = [a1 sh_hasShazamKitPublicErrorDomain];
  if (result)
  {
    return [a1 code] == 203;
  }

  return result;
}

- (uint64_t)sh_isPrivacyDisclosureAcknowledgementNeededError
{
  result = [a1 sh_hasShazamKitPublicErrorDomain];
  if (result)
  {
    return [a1 code] == 204;
  }

  return result;
}

- (uint64_t)sh_isMediaItemFetchFailedError
{
  result = [a1 sh_hasShazamKitPublicErrorDomain];
  if (result)
  {
    return [a1 code] == 600;
  }

  return result;
}

@end