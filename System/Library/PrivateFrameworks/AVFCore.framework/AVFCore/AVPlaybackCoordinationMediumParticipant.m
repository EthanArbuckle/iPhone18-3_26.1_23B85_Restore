@interface AVPlaybackCoordinationMediumParticipant
- (AVPlaybackCoordinationMediumParticipant)initWithPlaybackCoordinator:(id)a3 participantIdentifier:(id)a4;
- (void)dealloc;
@end

@implementation AVPlaybackCoordinationMediumParticipant

- (AVPlaybackCoordinationMediumParticipant)initWithPlaybackCoordinator:(id)a3 participantIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = AVPlaybackCoordinationMediumParticipant;
  v6 = [(AVPlaybackCoordinationMediumParticipant *)&v8 init];
  if (v6)
  {
    v6->_weakReferenceToPlaybackCoordinator = [[AVWeakReference alloc] initWithReferencedObject:a3];
    v6->_participantIdentifier = [a4 copy];
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