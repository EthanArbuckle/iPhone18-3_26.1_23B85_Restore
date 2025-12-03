@interface CLSBinaryReportItem
- (CLSBinaryReportItem)initWithCoder:(id)coder;
- (id)convertToItemCompatibleWithItem:(id)item;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int64_t)compare:(id)compare;
- (void)add:(id)add;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLSBinaryReportItem

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = CLSBinaryReportItem;
  v4 = [(CLSActivityReportItem *)&v14 copyWithZone:zone];
  v7 = objc_msgSend_value(self, v5, v6);
  objc_msgSend_setValue_(v4, v8, v7);
  v11 = objc_msgSend_valueType(self, v9, v10);
  objc_msgSend_setValueType_(v4, v12, v11);
  return v4;
}

- (id)convertToItemCompatibleWithItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_opt_new();
    LOBYTE(v6) = self->_value;
    objc_msgSend_setQuantity_(v5, v7, v8, v6);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = objc_opt_new();
      objc_msgSend_maxValue(itemCopy, v9, v10);
      objc_msgSend_setMaxValue_(v5, v11, v12);
      LOBYTE(v13) = self->_value;
      v14 = v13;
      objc_msgSend_maxValue(v5, v15, v16);
      objc_msgSend_setValue_(v5, v18, v19, v17 * v14);
    }

    else
    {
      v21.receiver = self;
      v21.super_class = CLSBinaryReportItem;
      v5 = [(CLSReportItem *)&v21 convertToItemCompatibleWithItem:itemCopy];
    }
  }

  return v5;
}

- (CLSBinaryReportItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CLSBinaryReportItem;
  v6 = [(CLSActivityReportItem *)&v9 initWithCoder:coderCopy];
  if (v6)
  {
    v6->_value = objc_msgSend_decodeBoolForKey_(coderCopy, v5, @"value");
    v6->_valueType = objc_msgSend_decodeIntForKey_(coderCopy, v7, @"valueType");
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CLSBinaryReportItem;
  coderCopy = coder;
  [(CLSActivityReportItem *)&v7 encodeWithCoder:coderCopy];
  objc_msgSend_encodeBool_forKey_(coderCopy, v5, self->_value, @"value", v7.receiver, v7.super_class);
  objc_msgSend_encodeInt_forKey_(coderCopy, v6, LODWORD(self->_valueType), @"valueType");
}

- (int64_t)compare:(id)compare
{
  v4 = objc_msgSend_convertToItemCompatibleWithItem_copyIfSameType_(compare, a2, self, 0);
  value = self->_value;
  if (value == objc_msgSend_value(v4, v6, v7))
  {
    v10 = 0;
  }

  else if (self->_value || (objc_msgSend_value(v4, v8, v9) & 1) == 0)
  {
    v10 = 1;
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (void)add:(id)add
{
  v4 = objc_msgSend_convertToItemCompatibleWithItem_(add, a2, self);
  v7 = v4;
  if (self->_value)
  {
    self->_value = objc_msgSend_value(v4, v5, v6);
    v4 = v7;
  }

  self->_valueType = objc_msgSend_valueType(v4, v5, v6);
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

  v15 = MEMORY[0x277CCABB0];
  v18 = objc_msgSend_value(self, v16, v17);
  v20 = objc_msgSend_numberWithBool_(v15, v19, v18);
  objc_msgSend_appendFormat_(v6, v21, @" value: %@", v20);

  v24 = objc_msgSend_valueType(self, v22, v23);
  v25 = NSStringFromBinaryValueType(v24);
  objc_msgSend_appendFormat_(v6, v26, @" valueType: %@", v25);

  objc_msgSend_appendString_(v6, v27, @">");

  return v6;
}

- (id)dictionaryRepresentation
{
  v17.receiver = self;
  v17.super_class = CLSBinaryReportItem;
  dictionaryRepresentation = [(CLSActivityReportItem *)&v17 dictionaryRepresentation];
  v4 = MEMORY[0x277CCABB0];
  v7 = objc_msgSend_value(self, v5, v6);
  v9 = objc_msgSend_numberWithBool_(v4, v8, v7);
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v10, v9, @"value");

  v13 = objc_msgSend_valueType(self, v11, v12);
  v14 = NSStringFromBinaryValueType(v13);
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v15, v14, @"valueType");

  return dictionaryRepresentation;
}

@end