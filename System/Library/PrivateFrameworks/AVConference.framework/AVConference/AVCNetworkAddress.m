@interface AVCNetworkAddress
- (AVCNetworkAddress)init;
- (void)dealloc;
@end

@implementation AVCNetworkAddress

- (AVCNetworkAddress)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = AVCNetworkAddress;
  v2 = [(AVCNetworkAddress *)&v4 init];
  if (v2)
  {
    v2->ip = objc_opt_new();
    v2->interfaceName = objc_opt_new();
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = AVCNetworkAddress;
  [(AVCNetworkAddress *)&v3 dealloc];
}

@end