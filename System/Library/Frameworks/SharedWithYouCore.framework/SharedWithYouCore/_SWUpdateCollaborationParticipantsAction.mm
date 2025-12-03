@interface _SWUpdateCollaborationParticipantsAction
- (_SWCollaborationMetadata)collaborationMetadata;
@end

@implementation _SWUpdateCollaborationParticipantsAction

- (_SWCollaborationMetadata)collaborationMetadata
{
  v4.receiver = self;
  v4.super_class = _SWUpdateCollaborationParticipantsAction;
  collaborationMetadata = [(SWUpdateCollaborationParticipantsAction *)&v4 collaborationMetadata];

  return collaborationMetadata;
}

@end