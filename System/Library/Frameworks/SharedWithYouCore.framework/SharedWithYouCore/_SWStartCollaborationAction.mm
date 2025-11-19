@interface _SWStartCollaborationAction
- (_SWCollaborationMetadata)collaborationMetadata;
- (void)fulfillWithURL:(id)a3 updatedMetadata:(id)a4;
@end

@implementation _SWStartCollaborationAction

- (void)fulfillWithURL:(id)a3 updatedMetadata:(id)a4
{
  v4.receiver = self;
  v4.super_class = _SWStartCollaborationAction;
  [(SWStartCollaborationAction *)&v4 fulfillUsingURL:a3 updatedMetadata:a4];
}

- (_SWCollaborationMetadata)collaborationMetadata
{
  v4.receiver = self;
  v4.super_class = _SWStartCollaborationAction;
  v2 = [(SWStartCollaborationAction *)&v4 collaborationMetadata];

  return v2;
}

@end