@interface VCSegmentCallHistory
- (VCSegmentCallHistory)init;
- (int)deserialize:(int *)deserialize;
- (int)serialize:(int *)serialize;
@end

@implementation VCSegmentCallHistory

- (VCSegmentCallHistory)init
{
  v3.receiver = self;
  v3.super_class = VCSegmentCallHistory;
  result = [(VCSegmentCallHistory *)&v3 init];
  if (result)
  {
    *&result->_shortTermSARBR = 0u;
    *&result->_shortTermISBR = 0u;
    *&result->_longTermAdjustmentTBR = 0u;
  }

  return result;
}

- (int)serialize:(int *)serialize
{
  if (serialize)
  {
    *serialize = self->_longTermAdjustmentTBR;
    serialize[1] = self->_shortTermAdjustmentTBR;
    serialize[2] = self->_historyLength;
    serialize[3] = self->_previousISBR;
    serialize[4] = self->_longTermISBR;
    serialize[5] = self->_shortTermISBR;
    serialize[6] = self->_longTermSATXBR;
    serialize[7] = self->_shortTermSATXBR;
    serialize[8] = self->_longTermSARBR;
    serialize[9] = self->_shortTermSARBR;
    serialize[10] = self->_longTermBWE;
    serialize[11] = self->_shortTermBWE;
  }

  return 12;
}

- (int)deserialize:(int *)deserialize
{
  if (deserialize)
  {
    self->_longTermAdjustmentTBR = *deserialize;
    self->_shortTermAdjustmentTBR = deserialize[1];
    self->_historyLength = deserialize[2];
    self->_previousISBR = deserialize[3];
    self->_longTermISBR = deserialize[4];
    self->_shortTermISBR = deserialize[5];
    self->_longTermSATXBR = deserialize[6];
    self->_shortTermSATXBR = deserialize[7];
    self->_longTermSARBR = deserialize[8];
    self->_shortTermSARBR = deserialize[9];
    self->_longTermBWE = deserialize[10];
    self->_shortTermBWE = deserialize[11];
  }

  return 12;
}

@end