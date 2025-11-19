@interface SWShareableContentExtractor
+ (OS_dispatch_queue)contentExtractorQueue;
+ (id)_buildStartCollaborationURLForContentSceneIdentifier:(id)a3 shareOptions:(id)a4 recipients:(id)a5 faceTimeConversationUUID:(id)a6;
- (SLDServiceProxy)serviceProxy;
- (SWShareableContentExtractor)init;
- (id)remoteService;
- (void)_addContentExtractionRequest:(id)a3;
- (void)_processPendingContentExtractionRequests;
- (void)initiateBackgroundCollaborationForContent:(id)a3 faceTimeConversation:(id)a4;
- (void)initiateBackgroundCollaborationForContent:(id)a3 shareOptions:(id)a4 recipients:(id)a5 faceTimeConversationUUID:(id)a6;
- (void)loadRepresentationForContent:(id)a3 typeIdentifier:(id)a4 itemProviderIndex:(int64_t)a5 completionHandler:(id)a6;
- (void)presentMessageComposeSheetForContent:(id)a3 completion:(id)a4;
- (void)retrieveAsynchronousLPMetadataForBundleIdentifier:(id)a3 completion:(id)a4;
- (void)retrieveAsynchronousLPMetadataForBundleIdentifier:(id)a3 sceneIdentifier:(id)a4 completion:(id)a5;
- (void)retrieveAsynchronousLPMetadataForSceneIdentifier:(id)a3 completion:(id)a4;
- (void)retrieveAsynchronousLPMetadataMatchingBundleIdentifier:(id)a3 sceneIdentifier:(id)a4 completion:(id)a5;
- (void)retrieveAsynchronousLPMetadataWithCompletion:(id)a3;
- (void)retrieveShareableContentForBundleIdentifier:(id)a3 sceneIdentifier:(id)a4 completion:(id)a5;
- (void)retrieveShareableContentForSceneIdentifier:(id)a3 completion:(id)a4;
- (void)retrieveShareableContentMatchingBundleIdentifier:(id)a3 sceneIdentifier:(id)a4 completion:(id)a5;
- (void)serviceProxyDidConnect:(id)a3;
- (void)serviceProxyDidDisconnect:(id)a3;
@end

@implementation SWShareableContentExtractor

- (SWShareableContentExtractor)init
{
  v8.receiver = self;
  v8.super_class = SWShareableContentExtractor;
  v2 = [(SWShareableContentExtractor *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    pendingContentExtractionRequests = v2->_pendingContentExtractionRequests;
    v2->_pendingContentExtractionRequests = v3;

    v5 = SWShareableContentLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1BBC06000, v5, OS_LOG_TYPE_DEFAULT, "Initialized SWShareableContentExtractor", v7, 2u);
    }
  }

  return v2;
}

+ (OS_dispatch_queue)contentExtractorQueue
{
  if (contentExtractorQueue_onceToken != -1)
  {
    +[SWShareableContentExtractor contentExtractorQueue];
  }

  v3 = contentExtractorQueue_contentExtractorQueue;

  return v3;
}

void __52__SWShareableContentExtractor_contentExtractorQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.SharedWithYou.SWShareableContentExtractor", v2);
  v1 = contentExtractorQueue_contentExtractorQueue;
  contentExtractorQueue_contentExtractorQueue = v0;
}

- (void)retrieveShareableContentForBundleIdentifier:(id)a3 sceneIdentifier:(id)a4 completion:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __102__SWShareableContentExtractor_retrieveShareableContentForBundleIdentifier_sceneIdentifier_completion___block_invoke;
  v10[3] = &unk_1E7FDDCC8;
  v11 = v8;
  v9 = v8;
  [(SWShareableContentExtractor *)self retrieveShareableContentMatchingBundleIdentifier:a3 sceneIdentifier:a4 completion:v10];
}

void __102__SWShareableContentExtractor_retrieveShareableContentForBundleIdentifier_sceneIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 firstObject];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)retrieveShareableContentForSceneIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__SWShareableContentExtractor_retrieveShareableContentForSceneIdentifier_completion___block_invoke;
  v8[3] = &unk_1E7FDDCC8;
  v9 = v6;
  v7 = v6;
  [(SWShareableContentExtractor *)self retrieveShareableContentMatchingBundleIdentifier:0 sceneIdentifier:a3 completion:v8];
}

void __85__SWShareableContentExtractor_retrieveShareableContentForSceneIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 firstObject];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)retrieveAsynchronousLPMetadataForBundleIdentifier:(id)a3 sceneIdentifier:(id)a4 completion:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = SWShareableContentLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_1BBC06000, v11, OS_LOG_TYPE_DEFAULT, "SWY Retrieving LPmetadata for bundle identifier and scene identifier %@, %@.", &v13, 0x16u);
  }

  [(SWShareableContentExtractor *)self retrieveAsynchronousLPMetadataMatchingBundleIdentifier:v8 sceneIdentifier:v9 completion:v10];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)retrieveAsynchronousLPMetadataForSceneIdentifier:(id)a3 completion:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = SWShareableContentLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_1BBC06000, v8, OS_LOG_TYPE_DEFAULT, "SWY Retrieving LPmetadata for scene identifier %@.", &v10, 0xCu);
  }

  [(SWShareableContentExtractor *)self retrieveAsynchronousLPMetadataMatchingBundleIdentifier:0 sceneIdentifier:v6 completion:v7];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)retrieveAsynchronousLPMetadataForBundleIdentifier:(id)a3 completion:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = SWShareableContentLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_1BBC06000, v8, OS_LOG_TYPE_DEFAULT, "SWY Retrieving LPmetadata for bundle identifier %@.", &v10, 0xCu);
  }

  [(SWShareableContentExtractor *)self retrieveAsynchronousLPMetadataMatchingBundleIdentifier:v6 sceneIdentifier:0 completion:v7];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)retrieveAsynchronousLPMetadataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = SWShareableContentLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BBC06000, v5, OS_LOG_TYPE_DEFAULT, "SWY Retrieving metadata for the on screen content.", v6, 2u);
  }

  [(SWShareableContentExtractor *)self retrieveAsynchronousLPMetadataMatchingBundleIdentifier:0 sceneIdentifier:0 completion:v4];
}

- (void)retrieveShareableContentMatchingBundleIdentifier:(id)a3 sceneIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __107__SWShareableContentExtractor_retrieveShareableContentMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke;
  v18 = &unk_1E7FDDC60;
  v19 = self;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  v14 = _Block_copy(&v15);
  [(SWShareableContentExtractor *)self _addContentExtractionRequest:v14, v15, v16, v17, v18, v19];
}

void __107__SWShareableContentExtractor_retrieveShareableContentMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = SWShareableContentLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BBC06000, v2, OS_LOG_TYPE_DEFAULT, "Retrieving metadata for the on screen content.", buf, 2u);
  }

  v3 = [*(a1 + 32) remoteService];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __107__SWShareableContentExtractor_retrieveShareableContentMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_67;
  v6[3] = &unk_1E7FDDCF0;
  v6[4] = *(a1 + 32);
  v7 = *(a1 + 56);
  [v3 retrieveShareableContentMetadataMatchingBundleIdentifier:v4 sceneIdentifier:v5 completion:v6];
}

void __107__SWShareableContentExtractor_retrieveShareableContentMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_67(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v2;
  v3 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v19 = *v23;
    do
    {
      v5 = 0;
      do
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v22 + 1) + 8 * v5);
        v7 = [SWShareableContent alloc];
        v8 = [v6 sceneIdentifier];
        v9 = [v6 bundleIdentifier];
        v10 = [v6 metadata];
        v11 = [v6 representations];
        v12 = [v6 highlightURL];
        v13 = [v6 initiatorHandle];
        v14 = [v6 initiatorNameComponents];
        v15 = [(SWShareableContent *)v7 initWithSourceSceneIdentifier:v8 sourceBundleIdentifier:v9 metadata:v10 representations:v11 highlightURL:v12 initiatorHandle:v13 initiatorNameComponents:v14];

        [(SWShareableContent *)v15 setRepresentationProvider:*(a1 + 32)];
        [v21 addObject:v15];

        ++v5;
      }

      while (v4 != v5);
      v4 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v4);
  }

  v16 = SWShareableContentLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v21;
    _os_log_impl(&dword_1BBC06000, v16, OS_LOG_TYPE_DEFAULT, "Retrieved shareable content metadata: %@", buf, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v17 = *MEMORY[0x1E69E9840];
}

- (void)retrieveAsynchronousLPMetadataMatchingBundleIdentifier:(id)a3 sceneIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __113__SWShareableContentExtractor_retrieveAsynchronousLPMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke;
  v18 = &unk_1E7FDDC60;
  v19 = self;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  v14 = _Block_copy(&v15);
  [(SWShareableContentExtractor *)self _addContentExtractionRequest:v14, v15, v16, v17, v18, v19];
}

void __113__SWShareableContentExtractor_retrieveAsynchronousLPMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = SWShareableContentLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BBC06000, v2, OS_LOG_TYPE_DEFAULT, "Retrieving asynchronous metadata for the on screen content.", buf, 2u);
  }

  v3 = [*(a1 + 32) remoteService];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __113__SWShareableContentExtractor_retrieveAsynchronousLPMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_69;
  v6[3] = &unk_1E7FDDD18;
  v7 = *(a1 + 56);
  [v3 retrieveAsynchronousLPMetadataMatchingBundleIdentifier:v4 sceneIdentifier:v5 completion:v6];
}

void __113__SWShareableContentExtractor_retrieveAsynchronousLPMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_69(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = SWShareableContentLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1BBC06000, v4, OS_LOG_TYPE_DEFAULT, "Retrieved asynchronous LP metadata: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

- (void)presentMessageComposeSheetForContent:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__SWShareableContentExtractor_presentMessageComposeSheetForContent_completion___block_invoke;
  aBlock[3] = &unk_1E7FDDD40;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v8 = v7;
  v9 = v6;
  v10 = _Block_copy(aBlock);
  [(SWShareableContentExtractor *)self _addContentExtractionRequest:v10];
}

void __79__SWShareableContentExtractor_presentMessageComposeSheetForContent_completion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = SWShareableContentLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) sourceSceneIdentifier];
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1BBC06000, v2, OS_LOG_TYPE_DEFAULT, "Presenting message compose sheet to share on screen content from source identifier: %@", &v7, 0xCu);
  }

  v4 = [*(a1 + 40) remoteService];
  v5 = [*(a1 + 32) sourceSceneIdentifier];
  [v4 presentMessageComposeSheetForSceneIdentifier:v5 completion:*(a1 + 48)];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)initiateBackgroundCollaborationForContent:(id)a3 faceTimeConversation:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [v6 remoteMembers];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v19 + 1) + 8 * i) handle];
        v14 = [v13 normalizedValue];
        if (v14)
        {
          [v7 addObject:v14];
        }

        else
        {
          v15 = [v13 value];
          [v7 addObject:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = [v6 UUID];
  [(SWShareableContentExtractor *)self initiateBackgroundCollaborationForContent:v5 shareOptions:0 recipients:v7 faceTimeConversationUUID:v16];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)initiateBackgroundCollaborationForContent:(id)a3 shareOptions:(id)a4 recipients:(id)a5 faceTimeConversationUUID:(id)a6
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v11 count])
  {
    v13 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v10 requiringSecureCoding:0 error:0];
    v14 = [v13 base64EncodedStringWithOptions:0];
    v15 = [v9 sourceSceneIdentifier];
    v16 = [SWShareableContentExtractor _buildStartCollaborationURLForContentSceneIdentifier:v15 shareOptions:v14 recipients:v11 faceTimeConversationUUID:v12];

    if (v16)
    {
      v17 = *MEMORY[0x1E699F8E8];
      v32[0] = *MEMORY[0x1E699F960];
      v32[1] = v17;
      v33[0] = v16;
      v33[1] = MEMORY[0x1E695E118];
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
      v19 = [MEMORY[0x1E699FB78] serviceWithDefaultShellEndpoint];
      v20 = [MEMORY[0x1E699FB70] optionsWithDictionary:v18];
      v29 = v13;
      v21 = v11;
      v22 = v9;
      v23 = v14;
      v24 = v12;
      v25 = v10;
      v26 = *MEMORY[0x1E697B760];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __122__SWShareableContentExtractor_initiateBackgroundCollaborationForContent_shareOptions_recipients_faceTimeConversationUUID___block_invoke;
      v30[3] = &unk_1E7FDDD68;
      v31 = v16;
      v27 = v26;
      v10 = v25;
      v12 = v24;
      v14 = v23;
      v9 = v22;
      v11 = v21;
      v13 = v29;
      [v19 openApplication:v27 withOptions:v20 completion:v30];
    }

    else
    {
      v18 = SWShareableContentLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v35 = v9;
        _os_log_impl(&dword_1BBC06000, v18, OS_LOG_TYPE_DEFAULT, "Start collaboration URL could not be constructed when trying to start collaboration for shareable content: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v13 = SWShareableContentLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v9;
      _os_log_impl(&dword_1BBC06000, v13, OS_LOG_TYPE_DEFAULT, "No recipients were specified when trying to start collaboration for shareable content: %@", buf, 0xCu);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __122__SWShareableContentExtractor_initiateBackgroundCollaborationForContent_shareOptions_recipients_faceTimeConversationUUID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = SWShareableContentLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!a2 || v5)
  {
    if (v7)
    {
      v12 = *(a1 + 32);
      v14 = 138412546;
      v15 = v12;
      v16 = 2112;
      v17 = v5;
      v9 = "Failed to background launch mobile SMS for startCollaborationURL %@ with error %@";
      v10 = v6;
      v11 = 22;
      goto LABEL_7;
    }
  }

  else if (v7)
  {
    v8 = *(a1 + 32);
    v14 = 138412290;
    v15 = v8;
    v9 = "Successfully background launched application MobileSMS for startCollaborationURL %@";
    v10 = v6;
    v11 = 12;
LABEL_7:
    _os_log_impl(&dword_1BBC06000, v10, OS_LOG_TYPE_DEFAULT, v9, &v14, v11);
  }

  v13 = *MEMORY[0x1E69E9840];
}

+ (id)_buildStartCollaborationURLForContentSceneIdentifier:(id)a3 shareOptions:(id)a4 recipients:(id)a5 faceTimeConversationUUID:(id)a6
{
  v33[6] = *MEMORY[0x1E69E9840];
  v31 = a6;
  v9 = MEMORY[0x1E696AF20];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v32 = [v9 componentsWithString:@"messages://open"];
  v30 = MEMORY[0x1E695DF70];
  v13 = [MEMORY[0x1E696AF60] queryItemWithName:@"service" value:@"iMessage"];
  v33[0] = v13;
  v14 = [MEMORY[0x1E696AF60] queryItemWithName:@"compose" value:@"false"];
  v33[1] = v14;
  v15 = [MEMORY[0x1E696AF60] queryItemWithName:@"collaboration-initiate-send" value:@"true"];
  v33[2] = v15;
  v16 = MEMORY[0x1E696AF60];
  if ([v10 count] == 1)
  {
    v17 = @"recipient";
  }

  else
  {
    v17 = @"recipients";
  }

  v18 = [v10 componentsJoinedByString:{@", "}];

  v19 = [v16 queryItemWithName:v17 value:v18];
  v33[3] = v19;
  v20 = [MEMORY[0x1E696AF60] queryItemWithName:@"collaboration-scene-identifier" value:v12];

  v33[4] = v20;
  v21 = [MEMORY[0x1E696AF60] queryItemWithName:@"collaboration-share-options" value:v11];

  v33[5] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:6];
  v23 = [v30 arrayWithArray:v22];

  if (v31)
  {
    v24 = MEMORY[0x1E696AF60];
    v25 = [v31 UUIDString];
    v26 = [v24 queryItemWithName:@"facetime-conversation" value:v25];
    [v23 addObject:v26];
  }

  [v32 setQueryItems:v23];
  v27 = [v32 URL];

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

- (void)_addContentExtractionRequest:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() contentExtractorQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__SWShareableContentExtractor__addContentExtractionRequest___block_invoke;
  v7[3] = &unk_1E7FDDC10;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __60__SWShareableContentExtractor__addContentExtractionRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceProxy];
  v3 = [v2 connectionActive];

  if (v3)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v5 = SWShareableContentLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1BBC06000, v5, OS_LOG_TYPE_DEFAULT, "Not currently connected to shareable content service. We'll wait for the connection before servicing this request.", v9, 2u);
    }

    v6 = [*(a1 + 32) pendingContentExtractionRequests];
    v7 = _Block_copy(*(a1 + 40));
    [v6 addObject:v7];

    v8 = [*(a1 + 32) serviceProxy];
    [v8 connect];
  }
}

- (void)_processPendingContentExtractionRequests
{
  v3 = [objc_opt_class() contentExtractorQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__SWShareableContentExtractor__processPendingContentExtractionRequests__block_invoke;
  block[3] = &unk_1E7FDDC38;
  block[4] = self;
  dispatch_async(v3, block);
}

void __71__SWShareableContentExtractor__processPendingContentExtractionRequests__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) pendingContentExtractionRequests];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v9 + 1) + 8 * v6++) + 16))();
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = [*(a1 + 32) pendingContentExtractionRequests];
  [v7 removeAllObjects];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)loadRepresentationForContent:(id)a3 typeIdentifier:(id)a4 itemProviderIndex:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __111__SWShareableContentExtractor_loadRepresentationForContent_typeIdentifier_itemProviderIndex_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7FDDD90;
  v18 = v11;
  v19 = v10;
  v21 = v12;
  v22 = a5;
  v20 = self;
  v13 = v12;
  v14 = v10;
  v15 = v11;
  v16 = _Block_copy(aBlock);
  [(SWShareableContentExtractor *)self _addContentExtractionRequest:v16];
}

void __111__SWShareableContentExtractor_loadRepresentationForContent_typeIdentifier_itemProviderIndex_completionHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = SWShareableContentLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) sourceSceneIdentifier];
    v9 = 138412546;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_1BBC06000, v2, OS_LOG_TYPE_DEFAULT, "Retrieving representation with type identifier: %@ from on screen content with source identifier: %@", &v9, 0x16u);
  }

  v5 = [*(a1 + 48) remoteService];
  v6 = [*(a1 + 40) sourceBundleIdentifier];
  v7 = [*(a1 + 40) sourceSceneIdentifier];
  [v5 loadRepresentationFromBundleIdentifier:v6 sceneIdentifier:v7 requestedTypeIdentifier:*(a1 + 32) requestedItemProviderIndex:*(a1 + 64) completionHandler:*(a1 + 56)];

  v8 = *MEMORY[0x1E69E9840];
}

- (SLDServiceProxy)serviceProxy
{
  serviceProxy = self->_serviceProxy;
  if (!serviceProxy)
  {
    v4 = MEMORY[0x1E69D3800];
    v5 = objc_opt_class();
    v6 = [objc_opt_class() contentExtractorQueue];
    v7 = [v4 proxyForServiceClass:v5 targetSerialQueue:v6 delegate:self];
    v8 = self->_serviceProxy;
    self->_serviceProxy = v7;

    serviceProxy = self->_serviceProxy;
  }

  return serviceProxy;
}

- (id)remoteService
{
  v2 = [(SWShareableContentExtractor *)self serviceProxy];
  v3 = [v2 remoteService];

  return v3;
}

- (void)serviceProxyDidConnect:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = SWShareableContentLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(SWShareableContentExtractor *)self pendingContentExtractionRequests];
    v7 = 138412546;
    v8 = self;
    v9 = 2048;
    v10 = [v5 count];
    _os_log_impl(&dword_1BBC06000, v4, OS_LOG_TYPE_INFO, "Service proxy connected for shareable content extractor: %@. Servicing pending extraction requests: %tu", &v7, 0x16u);
  }

  [(SWShareableContentExtractor *)self _processPendingContentExtractionRequests];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)serviceProxyDidDisconnect:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = SWShareableContentLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_impl(&dword_1BBC06000, v4, OS_LOG_TYPE_INFO, "Service proxy disconnected for shareable content extractor: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end