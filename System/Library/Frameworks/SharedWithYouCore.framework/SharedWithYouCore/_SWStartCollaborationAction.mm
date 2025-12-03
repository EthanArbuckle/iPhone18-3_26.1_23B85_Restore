@interface _SWStartCollaborationAction
- (_SWCollaborationMetadata)collaborationMetadata;
- (void)fulfillWithURL:(id)l updatedMetadata:(id)metadata;
@end

@implementation _SWStartCollaborationAction

- (void)fulfillWithURL:(id)l updatedMetadata:(id)metadata
{
  v4.receiver = self;
  v4.super_class = _SWStartCollaborationAction;
  [(SWStartCollaborationAction *)&v4 fulfillUsingURL:l updatedMetadata:metadata];
}

- (_SWCollaborationMetadata)collaborationMetadata
{
  v4.receiver = self;
  v4.super_class = _SWStartCollaborationAction;
  collaborationMetadata = [(SWStartCollaborationAction *)&v4 collaborationMetadata];

  return collaborationMetadata;
}

@end