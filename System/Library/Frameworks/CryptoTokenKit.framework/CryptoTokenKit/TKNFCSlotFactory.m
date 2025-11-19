@interface TKNFCSlotFactory
- (id)makeNFCSlotParameters;
@end

@implementation TKNFCSlotFactory

- (id)makeNFCSlotParameters
{
  v2 = [[TKSlotParameters alloc] initWithMaxBlockSize:0xFFFFLL];
  [v2 setSecurePINChangeSupported:0];
  [v2 setSecurePINVerificationSupported:0];

  return v2;
}

@end