@interface AXMAVUtilities
+ ($2825F4736939C4A6D3AD43837233062D)videoDimensionsForDeviceFormat:(id)a3;
+ (id)videoDeviceFromConnection:(id)a3;
@end

@implementation AXMAVUtilities

+ (id)videoDeviceFromConnection:(id)a3
{
  v3 = [a3 inputPorts];
  v4 = [v3 firstObject];
  v5 = [v4 input];

  v6 = [v5 device];

  return v6;
}

+ ($2825F4736939C4A6D3AD43837233062D)videoDimensionsForDeviceFormat:(id)a3
{
  v3 = [a3 formatDescription];

  return *&CMVideoFormatDescriptionGetDimensions(v3);
}

@end