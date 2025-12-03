@interface _SWCollaborationServiceSource
- (void)collaborationMetadataWithCompletionHandler:(id)handler;
@end

@implementation _SWCollaborationServiceSource

- (void)collaborationMetadataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  extension = [(_SWBaseCollaborationSource *)self extension];
  itemIdentifier = [(_SWBaseCollaborationSource *)self itemIdentifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76___SWCollaborationServiceSource_collaborationMetadataWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E84124B0;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [extension collaborationMetadataForItemWithIdentifier:itemIdentifier completionHandler:v8];
}

@end