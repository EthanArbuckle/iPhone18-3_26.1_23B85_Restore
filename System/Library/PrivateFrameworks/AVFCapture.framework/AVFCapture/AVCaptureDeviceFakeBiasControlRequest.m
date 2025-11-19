@interface AVCaptureDeviceFakeBiasControlRequest
- (void)setFakeBiasCompletionTime:(id *)a3;
@end

@implementation AVCaptureDeviceFakeBiasControlRequest

- (void)setFakeBiasCompletionTime:(id *)a3
{
  var3 = a3->var3;
  *(&self->_fakeBias + 1) = *&a3->var0;
  *&self->_fakeBiasCompletionTime.flags = var3;
}

@end