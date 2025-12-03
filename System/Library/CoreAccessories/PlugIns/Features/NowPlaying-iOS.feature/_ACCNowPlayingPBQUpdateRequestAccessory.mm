@interface _ACCNowPlayingPBQUpdateRequestAccessory
- (_ACCNowPlayingPBQUpdateRequestAccessory)initWithAccessoryUID:(id)d;
- (void)dealloc;
@end

@implementation _ACCNowPlayingPBQUpdateRequestAccessory

- (_ACCNowPlayingPBQUpdateRequestAccessory)initWithAccessoryUID:(id)d
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = _ACCNowPlayingPBQUpdateRequestAccessory;
  v6 = [(_ACCNowPlayingPBQUpdateRequestAccessory *)&v12 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.accessory.nowplaying.pbqupdate", 0);
    queue = v6->_queue;
    v6->_queue = v7;

    objc_storeStrong(&v6->_accessoryUID, d);
    currentRequestID = v6->_currentRequestID;
    v6->_currentRequestID = 0;

    currentRequest = v6->_currentRequest;
    v6->_currentRequest = 0;
  }

  return v6;
}

- (void)dealloc
{
  accessoryUID = self->_accessoryUID;
  self->_accessoryUID = 0;

  queue = self->_queue;
  self->_queue = 0;

  currentRequestID = self->_currentRequestID;
  self->_currentRequestID = 0;

  currentRequest = self->_currentRequest;
  self->_currentRequest = 0;

  v7.receiver = self;
  v7.super_class = _ACCNowPlayingPBQUpdateRequestAccessory;
  [(_ACCNowPlayingPBQUpdateRequestAccessory *)&v7 dealloc];
}

@end