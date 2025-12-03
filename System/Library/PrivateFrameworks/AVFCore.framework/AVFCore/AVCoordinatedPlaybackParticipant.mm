@interface AVCoordinatedPlaybackParticipant
- (AVCoordinatedPlaybackParticipant)initWithParticipantIdentifier:(id)identifier readyToPlay:(BOOL)play suspensionReasons:(id)reasons;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation AVCoordinatedPlaybackParticipant

- (AVCoordinatedPlaybackParticipant)initWithParticipantIdentifier:(id)identifier readyToPlay:(BOOL)play suspensionReasons:(id)reasons
{
  v10.receiver = self;
  v10.super_class = AVCoordinatedPlaybackParticipant;
  v8 = [(AVCoordinatedPlaybackParticipant *)&v10 init];
  if (v8)
  {
    v8->_identifier = [identifier copy];
    v8->_suspensionReasons = [reasons copy];
    v8->_readyToPlay = play;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCoordinatedPlaybackParticipant;
  [(AVCoordinatedPlaybackParticipant *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v5) = 1;
    return v5;
  }

  if (!equal)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = -[NSUUID isEqual:](-[AVCoordinatedPlaybackParticipant identifier](self, "identifier"), "isEqual:", [equal identifier]);
  if (!v5)
  {
    return v5;
  }

  isReadyToPlay = [(AVCoordinatedPlaybackParticipant *)self isReadyToPlay];
  if (isReadyToPlay == [equal isReadyToPlay])
  {
    suspensionReasons = [(AVCoordinatedPlaybackParticipant *)self suspensionReasons];
    suspensionReasons2 = [equal suspensionReasons];

    LOBYTE(v5) = AVPlaybackCoordinatorArrayContainsSameElementsAsArray(suspensionReasons, suspensionReasons2);
  }

  else
  {
LABEL_6:
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  identifier = [(AVCoordinatedPlaybackParticipant *)self identifier];

  return [(NSUUID *)identifier hash];
}

@end