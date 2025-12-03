@interface AVCaptureDeviceFakeBiasControlRequest
- (void)setFakeBiasCompletionTime:(id *)time;
@end

@implementation AVCaptureDeviceFakeBiasControlRequest

- (void)setFakeBiasCompletionTime:(id *)time
{
  var3 = time->var3;
  *(&self->_fakeBias + 1) = *&time->var0;
  *&self->_fakeBiasCompletionTime.flags = var3;
}

@end