@interface CLSAggregatedValue
- (CLSAggregatedValue)initWithCoder:(id)coder;
- (double)normalized;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int64_t)compare:(id)compare;
- (void)add:(id)add;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLSAggregatedValue

- (CLSAggregatedValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CLSAggregatedValue;
  v6 = [(CLSAggregatedValue *)&v11 init];
  if (v6)
  {
    objc_msgSend_decodeDoubleForKey_(coderCopy, v5, @"value");
    v6->_value = v7;
    v6->_totalSampleCount = objc_msgSend_decodeIntegerForKey_(coderCopy, v8, @"totalSampleCount");
    v6->_aggregateType = objc_msgSend_decodeIntForKey_(coderCopy, v9, @"aggregateType");
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  value = self->_value;
  coderCopy = coder;
  objc_msgSend_encodeDouble_forKey_(coderCopy, v5, @"value", value);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v6, self->_totalSampleCount, @"totalSampleCount");
  objc_msgSend_encodeInt_forKey_(coderCopy, v7, self->_aggregateType, @"aggregateType");
}

- (double)normalized
{
  totalSampleCount = self->_totalSampleCount;
  if (totalSampleCount <= 1)
  {
    totalSampleCount = 1;
  }

  return self->_value / totalSampleCount;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18.receiver = self;
  v18.super_class = CLSAggregatedValue;
  v4 = [(CLSReportItem *)&v18 copyWithZone:zone];
  objc_msgSend_value(self, v5, v6);
  objc_msgSend_setValue_(v4, v7, v8);
  v11 = objc_msgSend_totalSampleCount(self, v9, v10);
  objc_msgSend_setTotalSampleCount_(v4, v12, v11);
  v15 = objc_msgSend_aggregateType(self, v13, v14);
  objc_msgSend_setAggregateType_(v4, v16, v15);
  return v4;
}

- (int64_t)compare:(id)compare
{
  v4 = objc_msgSend_convertToItemCompatibleWithItem_copyIfSameType_(compare, a2, self, 0);
  v7 = v4;
  if (self->_totalSampleCount || objc_msgSend_totalSampleCount(v4, v5, v6) && self->_totalSampleCount)
  {
    if (objc_msgSend_totalSampleCount(v7, v5, v6))
    {
      objc_msgSend_normalized(self, v8, v9);
      v11 = v10;
      objc_msgSend_normalized(v7, v12, v13);
      if (v11 < v14)
      {
        v15 = -1;
      }

      else
      {
        v15 = v11 > v14;
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = -1;
  }

  return v15;
}

- (void)add:(id)add
{
  addCopy = add;
  objc_msgSend_value(addCopy, v5, v6);
  self->_value = v7 + self->_value;
  v10 = objc_msgSend_totalSampleCount(addCopy, v8, v9);

  self->_totalSampleCount += v10;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v6 = objc_msgSend_initWithFormat_(v3, v5, @"<%@ %p", v4, self);
  objc_msgSend_value(self, v7, v8);
  objc_msgSend_appendFormat_(v6, v9, @" value: %.3f", v10);
  v13 = objc_msgSend_totalSampleCount(self, v11, v12);
  objc_msgSend_appendFormat_(v6, v14, @" samples: %ld", v13);
  objc_msgSend_appendString_(v6, v15, @">");

  return v6;
}

- (id)dictionaryRepresentation
{
  v19.receiver = self;
  v19.super_class = CLSAggregatedValue;
  dictionaryRepresentation = [(CLSReportItem *)&v19 dictionaryRepresentation];
  v4 = MEMORY[0x277CCABB0];
  objc_msgSend_value(self, v5, v6);
  v9 = objc_msgSend_numberWithDouble_(v4, v7, v8);
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v10, v9, @"value");

  v11 = MEMORY[0x277CCABB0];
  v14 = objc_msgSend_totalSampleCount(self, v12, v13);
  v16 = objc_msgSend_numberWithInteger_(v11, v15, v14);
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v17, v16, @"samples");

  return dictionaryRepresentation;
}

@end