@interface GKVoiceChatError
+ (BOOL)getNSError:(id *)a3 code:(int64_t)a4 detailedCode:(int64_t)a5 filePath:(id)a6 description:(id)a7 reason:(id)a8;
+ (BOOL)getNSError:(id *)a3 code:(int64_t)a4 detailedCode:(int64_t)a5 returnCode:(int64_t)a6 filePath:(id)a7 description:(id)a8 reason:(id)a9;
@end

@implementation GKVoiceChatError

+ (BOOL)getNSError:(id *)a3 code:(int64_t)a4 detailedCode:(int64_t)a5 returnCode:(int64_t)a6 filePath:(id)a7 description:(id)a8 reason:(id)a9
{
  if (!a3)
  {
    return 0;
  }

  v10 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:a4 detailedCode:a5 returnCode:a6 filePath:a7 description:a8 reason:a9];
  *a3 = v10;
  return v10 == 0;
}

+ (BOOL)getNSError:(id *)a3 code:(int64_t)a4 detailedCode:(int64_t)a5 filePath:(id)a6 description:(id)a7 reason:(id)a8
{
  if (!a3)
  {
    return 0;
  }

  v9 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:a4 detailedCode:a5 filePath:a6 description:a7 reason:a8];
  *a3 = v9;
  return v9 == 0;
}

@end