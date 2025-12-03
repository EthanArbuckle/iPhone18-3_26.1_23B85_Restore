@interface AVPlayer(AirPlayKit)
- (APKKeyValueObserver)beginObserveringExternalPlaybackChangeWithChangeHandler:()AirPlayKit;
- (APKKeyValueObserver)beginObserveringTimeControlStatusWithChangeHandler:()AirPlayKit;
- (id)outputDevices;
@end

@implementation AVPlayer(AirPlayKit)

- (id)outputDevices
{
  outputContext = [self outputContext];
  outputDevices = [outputContext outputDevices];

  return outputDevices;
}

- (APKKeyValueObserver)beginObserveringExternalPlaybackChangeWithChangeHandler:()AirPlayKit
{
  v4 = a3;
  v5 = [[APKKeyValueObserver alloc] initWithObservedObject:self keyPath:@"externalPlaybackActive" options:1 changeHandler:v4];

  return v5;
}

- (APKKeyValueObserver)beginObserveringTimeControlStatusWithChangeHandler:()AirPlayKit
{
  v4 = a3;
  v5 = [[APKKeyValueObserver alloc] initWithObservedObject:self keyPath:@"timeControlStatus" options:1 changeHandler:v4];

  return v5;
}

@end