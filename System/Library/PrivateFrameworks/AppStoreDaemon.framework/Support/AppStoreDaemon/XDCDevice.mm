@interface XDCDevice
- (id)description;
@end

@implementation XDCDevice

- (id)description
{
  pairingID = [(NRDevice *)self->_device pairingID];
  v4 = [NSString stringWithFormat:@"<XDCDevice: %p pairingID = %@>", self, pairingID];

  return v4;
}

@end