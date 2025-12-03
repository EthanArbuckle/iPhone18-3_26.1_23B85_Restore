@interface SLFacebookSession
+ (id)sharedSession;
- (BOOL)uploadProfilePicture:(id)picture error:(id *)error;
- (SLFacebookSession)init;
- (id)tokenSecretForEntitledClientWithError:(id *)error;
- (void)fetchLikeStatusForURL:(id)l flags:(unint64_t)flags completion:(id)completion;
- (void)likeURL:(id)l completion:(id)completion;
- (void)unlikeURL:(id)l completion:(id)completion;
- (void)uploadPost:(id)post suppressAlerts:(BOOL)alerts withPostCompletion:(id)completion;
@end

@implementation SLFacebookSession

+ (id)sharedSession
{
  if (sharedSession_onceToken != -1)
  {
    +[SLFacebookSession sharedSession];
  }

  v3 = sharedSession___sharedSession;

  return v3;
}

uint64_t __34__SLFacebookSession_sharedSession__block_invoke()
{
  sharedSession___sharedSession = objc_alloc_init(SLFacebookSession);

  return MEMORY[0x1EEE66BB8]();
}

- (SLFacebookSession)init
{
  v3.receiver = self;
  v3.super_class = SLFacebookSession;
  return [(SLFacebookSession *)&v3 init];
}

- (id)tokenSecretForEntitledClientWithError:(id *)error
{
  *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6959978] code:3 userInfo:0];
  return 0;
}

- (void)uploadPost:(id)post suppressAlerts:(BOOL)alerts withPostCompletion:(id)completion
{
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E6959978];
  completionCopy = completion;
  v9 = [v6 errorWithDomain:v7 code:3 userInfo:0];
  (*(completion + 2))(completionCopy, 0, v9);
}

- (BOOL)uploadProfilePicture:(id)picture error:(id *)error
{
  *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6959978] code:3 userInfo:0];
  return 0;
}

- (void)likeURL:(id)l completion:(id)completion
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E6959978];
  completionCopy = completion;
  v8 = [v5 errorWithDomain:v6 code:3 userInfo:0];
  (*(completion + 2))(completionCopy, v8);
}

- (void)unlikeURL:(id)l completion:(id)completion
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E6959978];
  completionCopy = completion;
  v8 = [v5 errorWithDomain:v6 code:3 userInfo:0];
  (*(completion + 2))(completionCopy, v8);
}

- (void)fetchLikeStatusForURL:(id)l flags:(unint64_t)flags completion:(id)completion
{
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E6959978];
  completionCopy = completion;
  v9 = [v6 errorWithDomain:v7 code:3 userInfo:0];
  (*(completion + 2))(completionCopy, 0, v9);
}

@end