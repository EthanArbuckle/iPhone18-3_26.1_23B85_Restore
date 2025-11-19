@interface MFSendMailIntentDonation
- (void)donateSendActionFromMessageFuture:(id)a3;
@end

@implementation MFSendMailIntentDonation

- (void)donateSendActionFromMessageFuture:(id)a3
{
  v3 = [a3 map:&__block_literal_global_35];
  [v3 addSuccessBlock:&__block_literal_global_3];
}

id __62__MFSendMailIntentDonation_donateSendActionFromMessageFuture___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(MFMailIntentTransformer);
  v4 = [(MFMailIntentTransformer *)v3 transformedValue:v2];

  return v4;
}

void __62__MFSendMailIntentDonation_donateSendActionFromMessageFuture___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_alloc(MEMORY[0x1E696E8B8]) initWithIntent:v2 response:0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__MFSendMailIntentDonation_donateSendActionFromMessageFuture___block_invoke_3;
  v5[3] = &unk_1E806EA30;
  v4 = v2;
  v6 = v4;
  [v3 donateInteractionWithCompletion:v5];
}

void __62__MFSendMailIntentDonation_donateSendActionFromMessageFuture___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = MFLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 description];
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_DEFAULT, "donation failed with %@", &v7, 0xCu);
    }
  }

  else
  {
    v4 = MFLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_INFO, "donation with messageInfo %@", &v7, 0xCu);
    }
  }
}

@end