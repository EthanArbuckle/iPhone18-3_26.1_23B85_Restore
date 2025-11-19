@interface FPNSURLBitVectorForBounce
- (BOOL)foundAllAvailableBounceNumbers;
- (FPNSURLBitVectorForBounce)init;
- (id)findNextAvailableBounceNumberFromIndex:(int)a3;
- (void)markBounceNumberAsFound:(id)a3;
@end

@implementation FPNSURLBitVectorForBounce

- (FPNSURLBitVectorForBounce)init
{
  v6.receiver = self;
  v6.super_class = FPNSURLBitVectorForBounce;
  v2 = [(FPNSURLBitVectorForBounce *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AEC0] fp_maximumBounceLevel];
    v2->_bitCount = v3;
    Mutable = CFBitVectorCreateMutable(0, v3);
    v2->_vector = Mutable;
    CFBitVectorSetCount(Mutable, v2->_bitCount);
  }

  return v2;
}

- (void)markBounceNumberAsFound:(id)a3
{
  v5 = a3;
  v4 = [v5 unsignedIntValue];
  if ([MEMORY[0x1E696AEC0] fp_maximumBounceLevel] >= v4)
  {
    CFBitVectorSetBitAtIndex(self->_vector, ([v5 intValue] - 1), 1u);
  }
}

- (id)findNextAvailableBounceNumberFromIndex:(int)a3
{
  v3 = MEMORY[0x1E696AD98];
  v7.location = a3;
  v7.length = self->_bitCount - 1;
  FirstIndexOfBit = CFBitVectorGetFirstIndexOfBit(self->_vector, v7, 0);

  return [v3 numberWithInt:FirstIndexOfBit];
}

- (BOOL)foundAllAvailableBounceNumbers
{
  v3.length = self->_bitCount - 1;
  v3.location = 1;
  return CFBitVectorGetCountOfBit(self->_vector, v3, 1u) == self->_bitCount - 2;
}

@end