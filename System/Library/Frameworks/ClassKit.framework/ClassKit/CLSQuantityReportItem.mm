@interface CLSQuantityReportItem
- (CLSQuantityReportItem)initWithCoder:(id)coder;
- (id)convertToItemCompatibleWithItem:(id)item;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int64_t)compare:(id)compare;
- (void)add:(id)add;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLSQuantityReportItem

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = CLSQuantityReportItem;
  v4 = [(CLSActivityReportItem *)&v8 copyWithZone:zone];
  objc_msgSend_setQuantity_(v4, v5, v6, self->_quantity);
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
    quantity = self->_quantity;
    if (quantity > 2.22044605e-16)
    {
      objc_msgSend_setValue_(v5, v6, 1);
    }

    else
    {
      objc_msgSend_setValue_(v5, v6, quantity < 0.0);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_opt_new();
      objc_msgSend_setValue_(v7, v9, v10, self->_quantity);
      objc_msgSend_setMaxValue_(v7, v11, v12, self->_quantity);
    }

    else
    {
      v14.receiver = self;
      v14.super_class = CLSQuantityReportItem;
      v7 = [(CLSReportItem *)&v14 convertToItemCompatibleWithItem:itemCopy];
    }
  }

  return v7;
}

- (CLSQuantityReportItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CLSQuantityReportItem;
  v6 = [(CLSActivityReportItem *)&v9 initWithCoder:coderCopy];
  if (v6)
  {
    objc_msgSend_decodeDoubleForKey_(coderCopy, v5, @"quantity");
    v6->_quantity = v7;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CLSQuantityReportItem;
  coderCopy = coder;
  [(CLSActivityReportItem *)&v6 encodeWithCoder:coderCopy];
  objc_msgSend_encodeDouble_forKey_(coderCopy, v5, @"quantity", self->_quantity, v6.receiver, v6.super_class);
}

- (int64_t)compare:(id)compare
{
  v4 = objc_msgSend_convertToItemCompatibleWithItem_copyIfSameType_(compare, a2, self, 0);
  quantity = self->_quantity;
  objc_msgSend_quantity(v4, v6, v7);
  if (quantity >= v10)
  {
    v12 = self->_quantity;
    objc_msgSend_quantity(v4, v8, v9);
    v11 = v12 > v13;
  }

  else
  {
    v11 = -1;
  }

  return v11;
}

- (void)add:(id)add
{
  v7 = objc_msgSend_convertToItemCompatibleWithItem_(add, a2, self);
  objc_msgSend_quantity(v7, v4, v5);
  self->_quantity = v6 + self->_quantity;
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

  objc_msgSend_quantity(self, v15, v16);
  objc_msgSend_appendFormat_(v6, v17, @" quantity: %.3f", v18);
  objc_msgSend_appendString_(v6, v19, @">");

  return v6;
}

- (id)dictionaryRepresentation
{
  v12.receiver = self;
  v12.super_class = CLSQuantityReportItem;
  dictionaryRepresentation = [(CLSActivityReportItem *)&v12 dictionaryRepresentation];
  v4 = MEMORY[0x277CCABB0];
  objc_msgSend_quantity(self, v5, v6);
  v9 = objc_msgSend_numberWithDouble_(v4, v7, v8);
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v10, v9, @"quantity");

  return dictionaryRepresentation;
}

@end