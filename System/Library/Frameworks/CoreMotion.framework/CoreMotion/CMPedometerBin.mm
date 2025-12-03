@interface CMPedometerBin
- (BOOL)isEqual:(id)equal;
- (CMPedometerBin)initWithCoder:(id)coder;
- (CMPedometerBin)initWithValueOut:(double)out begin:(double)begin end:(double)end state:(int64_t)state;
- (double)center;
- (double)lowerQuartile;
- (double)upperQuartile;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMPedometerBin

- (CMPedometerBin)initWithValueOut:(double)out begin:(double)begin end:(double)end state:(int64_t)state
{
  v11.receiver = self;
  v11.super_class = CMPedometerBin;
  result = [(CMPedometerBin *)&v11 init];
  if (result)
  {
    result->_valueOut = out;
    result->_begin = begin;
    result->_end = end;
    result->_state = state;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CMPedometerBin;
  [(CMPedometerBin *)&v2 dealloc];
}

- (CMPedometerBin)initWithCoder:(id)coder
{
  v13.receiver = self;
  v13.super_class = CMPedometerBin;
  v5 = [(CMPedometerBin *)&v13 init];
  if (v5)
  {
    objc_msgSend_decodeDoubleForKey_(coder, v4, @"kCMPedometerBinCodingKeyValueOut");
    v5->_valueOut = v6;
    objc_msgSend_decodeDoubleForKey_(coder, v7, @"kCMPedometerBinCodingKeyBegin");
    v5->_begin = v8;
    objc_msgSend_decodeDoubleForKey_(coder, v9, @"kCMPedometerBinCodingKeyEnd");
    v5->_end = v10;
    v5->_state = objc_msgSend_decodeIntegerForKey_(coder, v11, @"kCMPedometerBinCodingKeyState");
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeDouble_forKey_(coder, a2, @"kCMPedometerBinCodingKeyValueOut", self->_valueOut);
  objc_msgSend_encodeDouble_forKey_(coder, v5, @"kCMPedometerBinCodingKeyBegin", self->_begin);
  objc_msgSend_encodeDouble_forKey_(coder, v6, @"kCMPedometerBinCodingKeyEnd", self->_end);
  state = self->_state;

  objc_msgSend_encodeInteger_forKey_(coder, v7, state, @"kCMPedometerBinCodingKeyState");
}

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  objc_msgSend_begin(self, a2, v2);
  v6 = v5;
  objc_msgSend_end(self, v7, v8);
  v10 = v9;
  v13 = objc_msgSend_state(self, v11, v12);
  objc_msgSend_valueOut(self, v14, v15);
  return objc_msgSend_stringWithFormat_(v4, v16, @"Begin,%.4f,End,%.4f,State,%ld,ValueOut,%.4f", v6, v10, v13, v17);
}

- (double)lowerQuartile
{
  objc_msgSend_begin(self, a2, v2);
  v5 = v4;
  objc_msgSend_end(self, v6, v7);
  v9 = v8;
  objc_msgSend_begin(self, v10, v11);
  return v5 + (v9 - v12) * 0.25;
}

- (double)center
{
  objc_msgSend_begin(self, a2, v2);
  v5 = v4;
  objc_msgSend_end(self, v6, v7);
  v9 = v8;
  objc_msgSend_begin(self, v10, v11);
  return v5 + (v9 - v12) * 0.5;
}

- (double)upperQuartile
{
  objc_msgSend_end(self, a2, v2);
  v5 = v4;
  objc_msgSend_end(self, v6, v7);
  v9 = v8;
  objc_msgSend_begin(self, v10, v11);
  return v5 + (v9 - v12) * -0.25;
}

- (BOOL)isEqual:(id)equal
{
  state = self->_state;
  if (state != objc_msgSend_state(equal, a2, equal))
  {
    return 0;
  }

  valueOut = self->_valueOut;
  objc_msgSend_valueOut(equal, v6, v7);
  if (valueOut != v11)
  {
    return 0;
  }

  begin = self->_begin;
  objc_msgSend_begin(equal, v9, v10);
  if (begin != v15)
  {
    return 0;
  }

  end = self->_end;
  objc_msgSend_end(equal, v13, v14);
  return end == v17;
}

@end