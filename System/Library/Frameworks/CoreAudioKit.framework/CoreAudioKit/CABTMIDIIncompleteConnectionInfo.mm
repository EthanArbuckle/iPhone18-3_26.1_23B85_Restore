@interface CABTMIDIIncompleteConnectionInfo
- (CABTMIDIIncompleteConnectionInfo)initWithPeripheral:(id)peripheral isConnecting:(BOOL)connecting;
- (void)dealloc;
- (void)setPeripheral:(id)peripheral;
@end

@implementation CABTMIDIIncompleteConnectionInfo

- (CABTMIDIIncompleteConnectionInfo)initWithPeripheral:(id)peripheral isConnecting:(BOOL)connecting
{
  connectingCopy = connecting;
  v9.receiver = self;
  v9.super_class = CABTMIDIIncompleteConnectionInfo;
  v6 = [(CABTMIDIIncompleteConnectionInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(CABTMIDIIncompleteConnectionInfo *)v6 setConnecting:connectingCopy];
    [(CABTMIDIIncompleteConnectionInfo *)v7 setPeripheral:peripheral];
    [(CABTMIDIIncompleteConnectionInfo *)v7 setTimeOutInterval:10];
    [peripheral setChangingState:1];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CABTMIDIIncompleteConnectionInfo;
  [(CABTMIDIIncompleteConnectionInfo *)&v3 dealloc];
}

- (void)setPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  peripheral = self->_peripheral;
  if (peripheral)
  {
  }

  self->_peripheral = peripheral;
}

@end