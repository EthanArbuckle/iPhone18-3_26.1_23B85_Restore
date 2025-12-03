@interface AVAudioPropertyNotification
- (AVAudioPropertyNotification)initWithInternal:(id)internal;
@end

@implementation AVAudioPropertyNotification

- (AVAudioPropertyNotification)initWithInternal:(id)internal
{
  internalCopy = internal;
  v15.receiver = self;
  v15.super_class = AVAudioPropertyNotification;
  v5 = [(AVAudioPropertyNotification *)&v15 init];
  if (v5)
  {
    propertyName = [internalCopy propertyName];
    propertyName = v5->_propertyName;
    v5->_propertyName = propertyName;

    sourceSessionID = [internalCopy sourceSessionID];
    sourceSessionID = v5->_sourceSessionID;
    v5->_sourceSessionID = sourceSessionID;

    nodeSessionID = [internalCopy nodeSessionID];
    nodeSessionID = v5->_nodeSessionID;
    v5->_nodeSessionID = nodeSessionID;

    propertyData = [internalCopy propertyData];
    propertyData = v5->_propertyData;
    v5->_propertyData = propertyData;
  }

  return v5;
}

@end