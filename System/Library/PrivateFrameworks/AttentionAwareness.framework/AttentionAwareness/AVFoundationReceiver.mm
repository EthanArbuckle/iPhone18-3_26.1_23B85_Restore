@interface AVFoundationReceiver
- (id)initForReceiver:(id)a3 activateAttentionDetection:(BOOL)a4 activateEyeRelief:(BOOL)a5 activatePersonDetection:(BOOL)a6;
@end

@implementation AVFoundationReceiver

- (id)initForReceiver:(id)a3 activateAttentionDetection:(BOOL)a4 activateEyeRelief:(BOOL)a5 activatePersonDetection:(BOOL)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = AVFoundationReceiver;
  v12 = [(AVFoundationReceiver *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_receiver, a3);
    v13->_activateAttentionDetection = a4;
    v13->_activateEyeRelief = a5;
    v13->_activatePersonDetection = a6;
    v13->_running = 0;
  }

  return v13;
}

@end