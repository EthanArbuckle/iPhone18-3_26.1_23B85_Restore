@interface CNPRUISPosterSnapshotRequest
+ (id)requestForConfiguration:(id)a3 definition:(id)a4 interfaceOrientation:(int64_t)a5;
+ (id)requestForConfiguration:(id)a3 definition:(id)a4 interfaceOrientation:(int64_t)a5 windowScene:(id)a6 attachments:(id)a7;
- (CNPRUISPosterSnapshotRequest)initWithWrappedRequest:(id)a3;
@end

@implementation CNPRUISPosterSnapshotRequest

- (CNPRUISPosterSnapshotRequest)initWithWrappedRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CNPRUISPosterSnapshotRequest;
  v6 = [(CNPRUISPosterSnapshotRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedRequest, a3);
  }

  return v7;
}

+ (id)requestForConfiguration:(id)a3 definition:(id)a4 interfaceOrientation:(int64_t)a5 windowScene:(id)a6 attachments:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = [v14 _cn_map:&__block_literal_global_372];
  PRUISPosterSnapshotRequestClass = getPRUISPosterSnapshotRequestClass();
  v17 = [v11 wrappedPosterConfiguration];
  v18 = [v12 wrappedDefinition];
  v19 = [PRUISPosterSnapshotRequestClass snapshotRequestForPRSPosterConfiguration:v17 definition:v18 interfaceOrientation:a5];

  v20 = [v19 mutableCopy];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v21 = getPRUISPosterAttachmentConfigurationClass_softClass;
  v32 = getPRUISPosterAttachmentConfigurationClass_softClass;
  if (!getPRUISPosterAttachmentConfigurationClass_softClass)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __getPRUISPosterAttachmentConfigurationClass_block_invoke;
    v28[3] = &unk_1E74E7518;
    v28[4] = &v29;
    __getPRUISPosterAttachmentConfigurationClass_block_invoke(v28);
    v21 = v30[3];
  }

  v22 = v21;
  _Block_object_dispose(&v29, 8);
  v23 = [v21 attachmentConfigurationWithHostWindowScene:v13 attachments:v15];
  [v20 setAttachmentConfiguration:v23];
  v24 = [CNPRUISPosterSnapshotRequest alloc];
  v25 = [v20 copy];
  v26 = [(CNPRUISPosterSnapshotRequest *)v24 initWithWrappedRequest:v25];

  return v26;
}

+ (id)requestForConfiguration:(id)a3 definition:(id)a4 interfaceOrientation:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  PRUISPosterSnapshotRequestClass = getPRUISPosterSnapshotRequestClass();
  v10 = [v8 wrappedPosterConfiguration];

  v11 = [v7 wrappedDefinition];

  v12 = [PRUISPosterSnapshotRequestClass snapshotRequestForPRSPosterConfiguration:v10 definition:v11 interfaceOrientation:a5];

  v13 = [CNPRUISPosterSnapshotRequest alloc];
  v14 = [v12 copy];
  v15 = [(CNPRUISPosterSnapshotRequest *)v13 initWithWrappedRequest:v14];

  return v15;
}

@end