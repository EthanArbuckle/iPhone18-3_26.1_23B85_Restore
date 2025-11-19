@interface _SWCollaborationServiceSource
- (void)collaborationMetadataWithCompletionHandler:(id)a3;
@end

@implementation _SWCollaborationServiceSource

- (void)collaborationMetadataWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(_SWBaseCollaborationSource *)self extension];
  v6 = [(_SWBaseCollaborationSource *)self itemIdentifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76___SWCollaborationServiceSource_collaborationMetadataWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E84124B0;
  v9 = v4;
  v7 = v4;
  [v5 collaborationMetadataForItemWithIdentifier:v6 completionHandler:v8];
}

@end