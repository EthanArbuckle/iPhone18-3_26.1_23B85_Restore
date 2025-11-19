@interface SWCollaborationMetadata
@end

@implementation SWCollaborationMetadata

void __62__SWCollaborationMetadata_NSItemProvider__processSigningQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.SharedWithYouCore.SWPendingCollaborationProcessSigning", v2);
  v1 = processSigningQueue_internalQueue;
  processSigningQueue_internalQueue = v0;
}

void __103__SWCollaborationMetadata_NSItemProvider__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setSourceProcessData:a2];
  if ([*(a1 + 40) isEqualToString:@"com.apple.SharedWithYou.SWCollaborationMetadata"])
  {
    v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:*(a1 + 32) requiringSecureCoding:1 error:0];
    v4 = *(a1 + 48);
    v7 = v3;
    v5 = [v3 copy];
    (*(v4 + 16))(v4, v5, 0);
  }

  else
  {
    if (![*(a1 + 40) isEqualToString:*MEMORY[0x1E697B770]])
    {
      return;
    }

    v7 = [objc_alloc(MEMORY[0x1E697B728]) initWithMetadata:*(a1 + 32)];
    v6 = [v7 loadDataWithTypeIdentifier:*(a1 + 40) forItemProviderCompletionHandler:*(a1 + 48)];
  }
}

@end