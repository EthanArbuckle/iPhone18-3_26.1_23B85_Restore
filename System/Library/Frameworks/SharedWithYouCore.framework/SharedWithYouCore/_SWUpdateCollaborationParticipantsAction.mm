@interface _SWUpdateCollaborationParticipantsAction
- (_SWCollaborationMetadata)collaborationMetadata;
@end

@implementation _SWUpdateCollaborationParticipantsAction

- (_SWCollaborationMetadata)collaborationMetadata
{
  v4.receiver = self;
  v4.super_class = _SWUpdateCollaborationParticipantsAction;
  v2 = [(SWUpdateCollaborationParticipantsAction *)&v4 collaborationMetadata];

  return v2;
}

@end