@interface AVPlayer(AirPlayKit)
- (APKKeyValueObserver)beginObserveringExternalPlaybackChangeWithChangeHandler:()AirPlayKit;
- (APKKeyValueObserver)beginObserveringTimeControlStatusWithChangeHandler:()AirPlayKit;
- (id)outputDevices;
@end

@implementation AVPlayer(AirPlayKit)

- (id)outputDevices
{
  v1 = [a1 outputContext];
  v2 = [v1 outputDevices];

  return v2;
}

- (APKKeyValueObserver)beginObserveringExternalPlaybackChangeWithChangeHandler:()AirPlayKit
{
  v4 = a3;
  v5 = [[APKKeyValueObserver alloc] initWithObservedObject:a1 keyPath:@"externalPlaybackActive" options:1 changeHandler:v4];

  return v5;
}

- (APKKeyValueObserver)beginObserveringTimeControlStatusWithChangeHandler:()AirPlayKit
{
  v4 = a3;
  v5 = [[APKKeyValueObserver alloc] initWithObservedObject:a1 keyPath:@"timeControlStatus" options:1 changeHandler:v4];

  return v5;
}

@end