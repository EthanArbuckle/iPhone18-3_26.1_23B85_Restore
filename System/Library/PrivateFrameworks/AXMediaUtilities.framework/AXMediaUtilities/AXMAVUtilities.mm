@interface AXMAVUtilities
+ ($2825F4736939C4A6D3AD43837233062D)videoDimensionsForDeviceFormat:(id)format;
+ (id)videoDeviceFromConnection:(id)connection;
@end

@implementation AXMAVUtilities

+ (id)videoDeviceFromConnection:(id)connection
{
  inputPorts = [connection inputPorts];
  firstObject = [inputPorts firstObject];
  input = [firstObject input];

  device = [input device];

  return device;
}

+ ($2825F4736939C4A6D3AD43837233062D)videoDimensionsForDeviceFormat:(id)format
{
  formatDescription = [format formatDescription];

  return *&CMVideoFormatDescriptionGetDimensions(formatDescription);
}

@end