@interface HMAccessory(CUPeerIdentifier)
- (void)setPeerIdentifier:()CUPeerIdentifier;
@end

@implementation HMAccessory(CUPeerIdentifier)

- (void)setPeerIdentifier:()CUPeerIdentifier
{
  v4 = [a3 copy];
  peerIdentifier = self->_peerIdentifier;
  self->_peerIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, peerIdentifier);
}

@end