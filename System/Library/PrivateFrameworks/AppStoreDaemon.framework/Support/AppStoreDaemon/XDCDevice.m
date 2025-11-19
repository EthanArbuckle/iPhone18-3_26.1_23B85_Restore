@interface XDCDevice
- (id)description;
@end

@implementation XDCDevice

- (id)description
{
  v3 = [(NRDevice *)self->_device pairingID];
  v4 = [NSString stringWithFormat:@"<XDCDevice: %p pairingID = %@>", self, v3];

  return v4;
}

@end