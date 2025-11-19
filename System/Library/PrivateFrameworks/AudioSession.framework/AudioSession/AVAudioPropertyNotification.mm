@interface AVAudioPropertyNotification
- (AVAudioPropertyNotification)initWithInternal:(id)a3;
@end

@implementation AVAudioPropertyNotification

- (AVAudioPropertyNotification)initWithInternal:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AVAudioPropertyNotification;
  v5 = [(AVAudioPropertyNotification *)&v15 init];
  if (v5)
  {
    v6 = [v4 propertyName];
    propertyName = v5->_propertyName;
    v5->_propertyName = v6;

    v8 = [v4 sourceSessionID];
    sourceSessionID = v5->_sourceSessionID;
    v5->_sourceSessionID = v8;

    v10 = [v4 nodeSessionID];
    nodeSessionID = v5->_nodeSessionID;
    v5->_nodeSessionID = v10;

    v12 = [v4 propertyData];
    propertyData = v5->_propertyData;
    v5->_propertyData = v12;
  }

  return v5;
}

@end