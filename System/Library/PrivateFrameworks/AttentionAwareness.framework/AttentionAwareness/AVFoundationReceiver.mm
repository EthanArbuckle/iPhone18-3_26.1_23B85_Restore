@interface AVFoundationReceiver
- (id)initForReceiver:(id)receiver activateAttentionDetection:(BOOL)detection activateEyeRelief:(BOOL)relief activatePersonDetection:(BOOL)personDetection;
@end

@implementation AVFoundationReceiver

- (id)initForReceiver:(id)receiver activateAttentionDetection:(BOOL)detection activateEyeRelief:(BOOL)relief activatePersonDetection:(BOOL)personDetection
{
  receiverCopy = receiver;
  v15.receiver = self;
  v15.super_class = AVFoundationReceiver;
  v12 = [(AVFoundationReceiver *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_receiver, receiver);
    v13->_activateAttentionDetection = detection;
    v13->_activateEyeRelief = relief;
    v13->_activatePersonDetection = personDetection;
    v13->_running = 0;
  }

  return v13;
}

@end