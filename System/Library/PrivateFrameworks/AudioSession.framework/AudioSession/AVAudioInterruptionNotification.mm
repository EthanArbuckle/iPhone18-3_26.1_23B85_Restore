@interface AVAudioInterruptionNotification
- (AVAudioInterruptionNotification)initWithInternal:(id)a3;
@end

@implementation AVAudioInterruptionNotification

- (AVAudioInterruptionNotification)initWithInternal:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = AVAudioInterruptionNotification;
  v5 = [(AVAudioInterruptionNotification *)&v11 init];
  if (v5)
  {
    v5->_interruptionState = [v4 interruptionState];
    v5->_sessionOwnerPID = [v4 sessionOwnerPID];
    v5->_sourceSessionID = [v4 sourceSessionID];
    v6 = [v4 nodeSessionID];
    nodeSessionID = v5->_nodeSessionID;
    v5->_nodeSessionID = v6;

    v8 = [v4 interruptionInfo];
    interruptionInfo = v5->_interruptionInfo;
    v5->_interruptionInfo = v8;
  }

  return v5;
}

@end