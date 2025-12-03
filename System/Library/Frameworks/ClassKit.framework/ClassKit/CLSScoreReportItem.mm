@interface CLSScoreReportItem
- (CLSScoreReportItem)initWithCoder:(id)coder;
- (double)normalized;
- (id)convertToItemCompatibleWithItem:(id)item;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int64_t)compare:(id)compare;
- (void)add:(id)add;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLSScoreReportItem

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = CLSScoreReportItem;
  v4 = [(CLSActivityReportItem *)&v14 copyWithZone:zone];
  objc_msgSend_value(self, v5, v6);
  objc_msgSend_setValue_(v4, v7, v8);
  objc_msgSend_maxValue(self, v9, v10);
  objc_msgSend_setMaxValue_(v4, v11, v12);
  return v4;
}

- (id)convertToItemCompatibleWithItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_opt_new();
    v7 = v5;
    value = self->_value;
    if (value > 2.22044605e-16)
    {
      objc_msgSend_setValue_(v5, v6, 1);
    }

    else
    {
      objc_msgSend_setValue_(v5, v6, value < 0.0);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_opt_new();
      objc_msgSend_setQuantity_(v7, v9, v10, self->_value);
    }

    else
    {
      v12.receiver = self;
      v12.super_class = CLSScoreReportItem;
      v7 = [(CLSReportItem *)&v12 convertToItemCompatibleWithItem:itemCopy];
    }
  }

  return v7;
}

- (CLSScoreReportItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CLSScoreReportItem;
  v6 = [(CLSActivityReportItem *)&v11 initWithCoder:coderCopy];
  if (v6)
  {
    objc_msgSend_decodeDoubleForKey_(coderCopy, v5, @"value");
    v6->_value = v7;
    objc_msgSend_decodeDoubleForKey_(coderCopy, v8, @"maxValue");
    v6->_maxValue = v9;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CLSScoreReportItem;
  coderCopy = coder;
  [(CLSActivityReportItem *)&v7 encodeWithCoder:coderCopy];
  objc_msgSend_encodeDouble_forKey_(coderCopy, v5, @"value", self->_value, v7.receiver, v7.super_class);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v6, @"maxValue", self->_maxValue);
}

- (double)normalized
{
  maxValue = self->_maxValue;
  if (maxValue < 1.0)
  {
    maxValue = 1.0;
  }

  return self->_value / maxValue;
}

- (int64_t)compare:(id)compare
{
  v4 = objc_msgSend_convertToItemCompatibleWithItem_copyIfSameType_(compare, a2, self, 0);
  v7 = v4;
  maxValue = self->_maxValue;
  if (maxValue == 0.0)
  {
    objc_msgSend_maxValue(v4, v5, v6);
    if (v9 == 0.0)
    {
      v10 = 0;
      goto LABEL_12;
    }

    maxValue = self->_maxValue;
  }

  if (maxValue == 0.0)
  {
    v10 = -1;
  }

  else
  {
    objc_msgSend_maxValue(v7, v5, v6);
    if (v13 == 0.0)
    {
      v10 = 1;
    }

    else
    {
      objc_msgSend_normalized(self, v11, v12);
      v15 = v14;
      objc_msgSend_normalized(v7, v16, v17);
      if (v15 < v18)
      {
        v10 = -1;
      }

      else
      {
        v10 = v15 > v18;
      }
    }
  }

LABEL_12:

  return v10;
}

- (void)add:(id)add
{
  v12 = objc_msgSend_convertToItemCompatibleWithItem_(add, a2, self);
  value = self->_value;
  objc_msgSend_value(v12, v5, v6);
  self->_value = value + v7;
  maxValue = self->_maxValue;
  objc_msgSend_maxValue(v12, v9, v10);
  self->_maxValue = maxValue + v11;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v6 = objc_msgSend_initWithFormat_(v3, v5, @"<%@ %p", v4, self);
  v9 = objc_msgSend_title(self, v7, v8);
  objc_msgSend_appendFormat_(v6, v10, @" title: %@", v9);

  v13 = objc_msgSend_identifier(self, v11, v12);
  objc_msgSend_appendFormat_(v6, v14, @" identifier: %@", v13);

  objc_msgSend_value(self, v15, v16);
  objc_msgSend_appendFormat_(v6, v17, @" value: %.3f", v18);
  objc_msgSend_maxValue(self, v19, v20);
  objc_msgSend_appendFormat_(v6, v21, @" maxValue: %.3f", v22);
  objc_msgSend_appendString_(v6, v23, @">");

  return v6;
}

- (id)dictionaryRepresentation
{
  v19.receiver = self;
  v19.super_class = CLSScoreReportItem;
  dictionaryRepresentation = [(CLSActivityReportItem *)&v19 dictionaryRepresentation];
  v4 = MEMORY[0x277CCABB0];
  objc_msgSend_value(self, v5, v6);
  v9 = objc_msgSend_numberWithDouble_(v4, v7, v8);
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v10, v9, @"value");

  v11 = MEMORY[0x277CCABB0];
  objc_msgSend_maxValue(self, v12, v13);
  v16 = objc_msgSend_numberWithDouble_(v11, v14, v15);
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v17, v16, @"maxValue");

  return dictionaryRepresentation;
}

@end