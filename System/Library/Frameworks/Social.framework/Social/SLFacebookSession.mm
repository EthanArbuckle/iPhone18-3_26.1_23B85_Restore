@interface SLFacebookSession
+ (id)sharedSession;
- (BOOL)uploadProfilePicture:(id)a3 error:(id *)a4;
- (SLFacebookSession)init;
- (id)tokenSecretForEntitledClientWithError:(id *)a3;
- (void)fetchLikeStatusForURL:(id)a3 flags:(unint64_t)a4 completion:(id)a5;
- (void)likeURL:(id)a3 completion:(id)a4;
- (void)unlikeURL:(id)a3 completion:(id)a4;
- (void)uploadPost:(id)a3 suppressAlerts:(BOOL)a4 withPostCompletion:(id)a5;
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

- (id)tokenSecretForEntitledClientWithError:(id *)a3
{
  *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6959978] code:3 userInfo:0];
  return 0;
}

- (void)uploadPost:(id)a3 suppressAlerts:(BOOL)a4 withPostCompletion:(id)a5
{
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E6959978];
  v8 = a5;
  v9 = [v6 errorWithDomain:v7 code:3 userInfo:0];
  (*(a5 + 2))(v8, 0, v9);
}

- (BOOL)uploadProfilePicture:(id)a3 error:(id *)a4
{
  *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6959978] code:3 userInfo:0];
  return 0;
}

- (void)likeURL:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E6959978];
  v7 = a4;
  v8 = [v5 errorWithDomain:v6 code:3 userInfo:0];
  (*(a4 + 2))(v7, v8);
}

- (void)unlikeURL:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E6959978];
  v7 = a4;
  v8 = [v5 errorWithDomain:v6 code:3 userInfo:0];
  (*(a4 + 2))(v7, v8);
}

- (void)fetchLikeStatusForURL:(id)a3 flags:(unint64_t)a4 completion:(id)a5
{
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E6959978];
  v8 = a5;
  v9 = [v6 errorWithDomain:v7 code:3 userInfo:0];
  (*(a5 + 2))(v8, 0, v9);
}

@end