@interface CMPedometerBin
- (BOOL)isEqual:(id)a3;
- (CMPedometerBin)initWithCoder:(id)a3;
- (CMPedometerBin)initWithValueOut:(double)a3 begin:(double)a4 end:(double)a5 state:(int64_t)a6;
- (double)center;
- (double)lowerQuartile;
- (double)upperQuartile;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMPedometerBin

- (CMPedometerBin)initWithValueOut:(double)a3 begin:(double)a4 end:(double)a5 state:(int64_t)a6
{
  v11.receiver = self;
  v11.super_class = CMPedometerBin;
  result = [(CMPedometerBin *)&v11 init];
  if (result)
  {
    result->_valueOut = a3;
    result->_begin = a4;
    result->_end = a5;
    result->_state = a6;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CMPedometerBin;
  [(CMPedometerBin *)&v2 dealloc];
}

- (CMPedometerBin)initWithCoder:(id)a3
{
  v13.receiver = self;
  v13.super_class = CMPedometerBin;
  v5 = [(CMPedometerBin *)&v13 init];
  if (v5)
  {
    objc_msgSend_decodeDoubleForKey_(a3, v4, @"kCMPedometerBinCodingKeyValueOut");
    v5->_valueOut = v6;
    objc_msgSend_decodeDoubleForKey_(a3, v7, @"kCMPedometerBinCodingKeyBegin");
    v5->_begin = v8;
    objc_msgSend_decodeDoubleForKey_(a3, v9, @"kCMPedometerBinCodingKeyEnd");
    v5->_end = v10;
    v5->_state = objc_msgSend_decodeIntegerForKey_(a3, v11, @"kCMPedometerBinCodingKeyState");
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeDouble_forKey_(a3, a2, @"kCMPedometerBinCodingKeyValueOut", self->_valueOut);
  objc_msgSend_encodeDouble_forKey_(a3, v5, @"kCMPedometerBinCodingKeyBegin", self->_begin);
  objc_msgSend_encodeDouble_forKey_(a3, v6, @"kCMPedometerBinCodingKeyEnd", self->_end);
  state = self->_state;

  objc_msgSend_encodeInteger_forKey_(a3, v7, state, @"kCMPedometerBinCodingKeyState");
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

- (BOOL)isEqual:(id)a3
{
  state = self->_state;
  if (state != objc_msgSend_state(a3, a2, a3))
  {
    return 0;
  }

  valueOut = self->_valueOut;
  objc_msgSend_valueOut(a3, v6, v7);
  if (valueOut != v11)
  {
    return 0;
  }

  begin = self->_begin;
  objc_msgSend_begin(a3, v9, v10);
  if (begin != v15)
  {
    return 0;
  }

  end = self->_end;
  objc_msgSend_end(a3, v13, v14);
  return end == v17;
}

@end