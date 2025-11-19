@interface CLSQuantityReportItem
- (CLSQuantityReportItem)initWithCoder:(id)a3;
- (id)convertToItemCompatibleWithItem:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int64_t)compare:(id)a3;
- (void)add:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLSQuantityReportItem

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = CLSQuantityReportItem;
  v4 = [(CLSActivityReportItem *)&v8 copyWithZone:a3];
  objc_msgSend_setQuantity_(v4, v5, v6, self->_quantity);
  return v4;
}

- (id)convertToItemCompatibleWithItem:(id)a3
{
  v4 = a3;
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
      v7 = [(CLSReportItem *)&v14 convertToItemCompatibleWithItem:v4];
    }
  }

  return v7;
}

- (CLSQuantityReportItem)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CLSQuantityReportItem;
  v6 = [(CLSActivityReportItem *)&v9 initWithCoder:v4];
  if (v6)
  {
    objc_msgSend_decodeDoubleForKey_(v4, v5, @"quantity");
    v6->_quantity = v7;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CLSQuantityReportItem;
  v4 = a3;
  [(CLSActivityReportItem *)&v6 encodeWithCoder:v4];
  objc_msgSend_encodeDouble_forKey_(v4, v5, @"quantity", self->_quantity, v6.receiver, v6.super_class);
}

- (int64_t)compare:(id)a3
{
  v4 = objc_msgSend_convertToItemCompatibleWithItem_copyIfSameType_(a3, a2, self, 0);
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

- (void)add:(id)a3
{
  v7 = objc_msgSend_convertToItemCompatibleWithItem_(a3, a2, self);
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
  v3 = [(CLSActivityReportItem *)&v12 dictionaryRepresentation];
  v4 = MEMORY[0x277CCABB0];
  objc_msgSend_quantity(self, v5, v6);
  v9 = objc_msgSend_numberWithDouble_(v4, v7, v8);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v10, v9, @"quantity");

  return v3;
}

@end