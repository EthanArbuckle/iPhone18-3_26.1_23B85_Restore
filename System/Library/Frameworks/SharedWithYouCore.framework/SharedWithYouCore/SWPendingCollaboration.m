@interface SWPendingCollaboration
@end

@implementation SWPendingCollaboration

void __62___SWPendingCollaboration_NSItemProvider__processSigningQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.SharedWithYouCore.SWPendingCollaborationProcessSigning", v2);
  v1 = processSigningQueue_internalQueue;
  processSigningQueue_internalQueue = v0;
}

void __103___SWPendingCollaboration_NSItemProvider__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 collaborationMetadata];
  [v5 setSourceProcessData:v4];

  if ([*(a1 + 40) isEqualToString:@"com.apple.SharedWithYou.SWPendingCollaboration"])
  {
    v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:*(a1 + 32) requiringSecureCoding:1 error:0];
    v6 = *(a1 + 48);
    v7 = [v9 copy];
    (*(v6 + 16))(v6, v7, 0);
  }

  else
  {
    v8 = *(*(a1 + 48) + 16);

    v8();
  }
}

@end