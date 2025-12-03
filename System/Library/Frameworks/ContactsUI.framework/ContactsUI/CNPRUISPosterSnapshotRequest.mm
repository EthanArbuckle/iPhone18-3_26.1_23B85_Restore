@interface CNPRUISPosterSnapshotRequest
+ (id)requestForConfiguration:(id)configuration definition:(id)definition interfaceOrientation:(int64_t)orientation;
+ (id)requestForConfiguration:(id)configuration definition:(id)definition interfaceOrientation:(int64_t)orientation windowScene:(id)scene attachments:(id)attachments;
- (CNPRUISPosterSnapshotRequest)initWithWrappedRequest:(id)request;
@end

@implementation CNPRUISPosterSnapshotRequest

- (CNPRUISPosterSnapshotRequest)initWithWrappedRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = CNPRUISPosterSnapshotRequest;
  v6 = [(CNPRUISPosterSnapshotRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedRequest, request);
  }

  return v7;
}

+ (id)requestForConfiguration:(id)configuration definition:(id)definition interfaceOrientation:(int64_t)orientation windowScene:(id)scene attachments:(id)attachments
{
  configurationCopy = configuration;
  definitionCopy = definition;
  sceneCopy = scene;
  attachmentsCopy = attachments;
  v15 = [attachmentsCopy _cn_map:&__block_literal_global_372];
  PRUISPosterSnapshotRequestClass = getPRUISPosterSnapshotRequestClass();
  wrappedPosterConfiguration = [configurationCopy wrappedPosterConfiguration];
  wrappedDefinition = [definitionCopy wrappedDefinition];
  v19 = [PRUISPosterSnapshotRequestClass snapshotRequestForPRSPosterConfiguration:wrappedPosterConfiguration definition:wrappedDefinition interfaceOrientation:orientation];

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
  v23 = [v21 attachmentConfigurationWithHostWindowScene:sceneCopy attachments:v15];
  [v20 setAttachmentConfiguration:v23];
  v24 = [CNPRUISPosterSnapshotRequest alloc];
  v25 = [v20 copy];
  v26 = [(CNPRUISPosterSnapshotRequest *)v24 initWithWrappedRequest:v25];

  return v26;
}

+ (id)requestForConfiguration:(id)configuration definition:(id)definition interfaceOrientation:(int64_t)orientation
{
  definitionCopy = definition;
  configurationCopy = configuration;
  PRUISPosterSnapshotRequestClass = getPRUISPosterSnapshotRequestClass();
  wrappedPosterConfiguration = [configurationCopy wrappedPosterConfiguration];

  wrappedDefinition = [definitionCopy wrappedDefinition];

  v12 = [PRUISPosterSnapshotRequestClass snapshotRequestForPRSPosterConfiguration:wrappedPosterConfiguration definition:wrappedDefinition interfaceOrientation:orientation];

  v13 = [CNPRUISPosterSnapshotRequest alloc];
  v14 = [v12 copy];
  v15 = [(CNPRUISPosterSnapshotRequest *)v13 initWithWrappedRequest:v14];

  return v15;
}

@end