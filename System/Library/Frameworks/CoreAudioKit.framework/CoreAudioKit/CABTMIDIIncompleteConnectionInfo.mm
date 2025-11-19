@interface CABTMIDIIncompleteConnectionInfo
- (CABTMIDIIncompleteConnectionInfo)initWithPeripheral:(id)a3 isConnecting:(BOOL)a4;
- (void)dealloc;
- (void)setPeripheral:(id)a3;
@end

@implementation CABTMIDIIncompleteConnectionInfo

- (CABTMIDIIncompleteConnectionInfo)initWithPeripheral:(id)a3 isConnecting:(BOOL)a4
{
  v4 = a4;
  v9.receiver = self;
  v9.super_class = CABTMIDIIncompleteConnectionInfo;
  v6 = [(CABTMIDIIncompleteConnectionInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(CABTMIDIIncompleteConnectionInfo *)v6 setConnecting:v4];
    [(CABTMIDIIncompleteConnectionInfo *)v7 setPeripheral:a3];
    [(CABTMIDIIncompleteConnectionInfo *)v7 setTimeOutInterval:10];
    [a3 setChangingState:1];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CABTMIDIIncompleteConnectionInfo;
  [(CABTMIDIIncompleteConnectionInfo *)&v3 dealloc];
}

- (void)setPeripheral:(id)a3
{
  v5 = a3;
  peripheral = self->_peripheral;
  if (peripheral)
  {
  }

  self->_peripheral = a3;
}

@end