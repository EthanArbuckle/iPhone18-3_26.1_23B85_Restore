@interface ATXDocumentInteractionDonationClient
+ (id)shared;
- (void)donateDocumentInteraction:(id)a3 completion:(id)a4;
- (void)donateDocumentInteractionForType:(unint64_t)a3 fileURL:(id)a4 contentTypeIdentifier:(id)a5 completion:(id)a6;
@end

@implementation ATXDocumentInteractionDonationClient

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    +[ATXDocumentInteractionDonationClient shared];
  }

  v3 = shared_sharedInstance;

  return v3;
}

uint64_t __46__ATXDocumentInteractionDonationClient_shared__block_invoke()
{
  v0 = objc_alloc_init(ATXDocumentInteractionDonationClient);
  v1 = shared_sharedInstance;
  shared_sharedInstance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)donateDocumentInteraction:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = __atxlog_handle_client_donations();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ATXDocumentInteractionDonationClient donateDocumentInteraction:v5 completion:v7];
  }

  v8 = +[ATXDonationManager sharedManager];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__ATXDocumentInteractionDonationClient_donateDocumentInteraction_completion___block_invoke;
  v10[3] = &unk_1E80C08E0;
  v11 = v6;
  v9 = v6;
  [v8 donateDocumentInteraction:v5 completion:v10];
}

uint64_t __77__ATXDocumentInteractionDonationClient_donateDocumentInteraction_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)donateDocumentInteractionForType:(unint64_t)a3 fileURL:(id)a4 contentTypeIdentifier:(id)a5 completion:(id)a6
{
  v16 = a5;
  v10 = a6;
  v11 = a4;
  v12 = +[ATXAppIdentity currentAppIdentity];
  v13 = [[ATXFileIdentity alloc] initWithItemURL:v11];

  if (v12)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    if (!v10)
    {
      goto LABEL_9;
    }

    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ATXPredictionErrorDomain" code:6 userInfo:0];
    v10[2](v10, v15);
  }

  else
  {
    v15 = [[ATXDocumentInteraction alloc] initWithType:a3 fileIdentity:v13 contentTypeIdentifier:v16 appIdentity:v12];
    [(ATXDocumentInteractionDonationClient *)self donateDocumentInteraction:v15 completion:v10];
  }

LABEL_9:
}

- (void)donateDocumentInteraction:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1BF549000, a2, OS_LOG_TYPE_DEBUG, "Donate document interaction: %@", &v2, 0xCu);
}

@end