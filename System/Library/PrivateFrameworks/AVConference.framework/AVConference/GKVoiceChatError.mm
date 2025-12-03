@interface GKVoiceChatError
+ (BOOL)getNSError:(id *)error code:(int64_t)code detailedCode:(int64_t)detailedCode filePath:(id)path description:(id)description reason:(id)reason;
+ (BOOL)getNSError:(id *)error code:(int64_t)code detailedCode:(int64_t)detailedCode returnCode:(int64_t)returnCode filePath:(id)path description:(id)description reason:(id)reason;
@end

@implementation GKVoiceChatError

+ (BOOL)getNSError:(id *)error code:(int64_t)code detailedCode:(int64_t)detailedCode returnCode:(int64_t)returnCode filePath:(id)path description:(id)description reason:(id)reason
{
  if (!error)
  {
    return 0;
  }

  v10 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:code detailedCode:detailedCode returnCode:returnCode filePath:path description:description reason:reason];
  *error = v10;
  return v10 == 0;
}

+ (BOOL)getNSError:(id *)error code:(int64_t)code detailedCode:(int64_t)detailedCode filePath:(id)path description:(id)description reason:(id)reason
{
  if (!error)
  {
    return 0;
  }

  v9 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:code detailedCode:detailedCode filePath:path description:description reason:reason];
  *error = v9;
  return v9 == 0;
}

@end