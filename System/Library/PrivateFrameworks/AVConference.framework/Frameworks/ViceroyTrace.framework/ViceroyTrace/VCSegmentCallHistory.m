@interface VCSegmentCallHistory
- (VCSegmentCallHistory)init;
- (int)deserialize:(int *)a3;
- (int)serialize:(int *)a3;
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

- (int)serialize:(int *)a3
{
  if (a3)
  {
    *a3 = self->_longTermAdjustmentTBR;
    a3[1] = self->_shortTermAdjustmentTBR;
    a3[2] = self->_historyLength;
    a3[3] = self->_previousISBR;
    a3[4] = self->_longTermISBR;
    a3[5] = self->_shortTermISBR;
    a3[6] = self->_longTermSATXBR;
    a3[7] = self->_shortTermSATXBR;
    a3[8] = self->_longTermSARBR;
    a3[9] = self->_shortTermSARBR;
    a3[10] = self->_longTermBWE;
    a3[11] = self->_shortTermBWE;
  }

  return 12;
}

- (int)deserialize:(int *)a3
{
  if (a3)
  {
    self->_longTermAdjustmentTBR = *a3;
    self->_shortTermAdjustmentTBR = a3[1];
    self->_historyLength = a3[2];
    self->_previousISBR = a3[3];
    self->_longTermISBR = a3[4];
    self->_shortTermISBR = a3[5];
    self->_longTermSATXBR = a3[6];
    self->_shortTermSATXBR = a3[7];
    self->_longTermSARBR = a3[8];
    self->_shortTermSARBR = a3[9];
    self->_longTermBWE = a3[10];
    self->_shortTermBWE = a3[11];
  }

  return 12;
}

@end