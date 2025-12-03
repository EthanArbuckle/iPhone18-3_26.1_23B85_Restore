@interface AVPlaybackCoordinationMediumParticipant
- (AVPlaybackCoordinationMediumParticipant)initWithPlaybackCoordinator:(id)coordinator participantIdentifier:(id)identifier;
- (void)dealloc;
@end

@implementation AVPlaybackCoordinationMediumParticipant

- (AVPlaybackCoordinationMediumParticipant)initWithPlaybackCoordinator:(id)coordinator participantIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = AVPlaybackCoordinationMediumParticipant;
  v6 = [(AVPlaybackCoordinationMediumParticipant *)&v8 init];
  if (v6)
  {
    v6->_weakReferenceToPlaybackCoordinator = [[AVWeakReference alloc] initWithReferencedObject:coordinator];
    v6->_participantIdentifier = [identifier copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVPlaybackCoordinationMediumParticipant;
  [(AVPlaybackCoordinationMediumParticipant *)&v3 dealloc];
}

@end