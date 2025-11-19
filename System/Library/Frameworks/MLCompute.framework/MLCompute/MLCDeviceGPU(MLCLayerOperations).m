@interface MLCDeviceGPU(MLCLayerOperations)
@end

@implementation MLCDeviceGPU(MLCLayerOperations)

- (void)weightsGradients:()MLCLayerOperations .cold.1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "[MLCDeviceGPU(MLCLayerOperations) weightsGradients:]";
  _os_log_error_impl(&dword_238C1D000, log, OS_LOG_TYPE_ERROR, "%s: failed to convert weight gradient layout for a convolution layer", buf, 0xCu);
}

@end