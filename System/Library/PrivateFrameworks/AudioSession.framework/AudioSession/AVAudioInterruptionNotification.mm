@interface AVAudioInterruptionNotification
- (AVAudioInterruptionNotification)initWithInternal:(id)internal;
@end

@implementation AVAudioInterruptionNotification

- (AVAudioInterruptionNotification)initWithInternal:(id)internal
{
  internalCopy = internal;
  v11.receiver = self;
  v11.super_class = AVAudioInterruptionNotification;
  v5 = [(AVAudioInterruptionNotification *)&v11 init];
  if (v5)
  {
    v5->_interruptionState = [internalCopy interruptionState];
    v5->_sessionOwnerPID = [internalCopy sessionOwnerPID];
    v5->_sourceSessionID = [internalCopy sourceSessionID];
    nodeSessionID = [internalCopy nodeSessionID];
    nodeSessionID = v5->_nodeSessionID;
    v5->_nodeSessionID = nodeSessionID;

    interruptionInfo = [internalCopy interruptionInfo];
    interruptionInfo = v5->_interruptionInfo;
    v5->_interruptionInfo = interruptionInfo;
  }

  return v5;
}

@end