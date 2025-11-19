@interface CLSActivityReportItem
- (CLSActivityReportItem)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLSActivityReportItem

- (CLSActivityReportItem)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CLSActivityReportItem;
  v5 = [(CLSActivityReportItem *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"title");
    title = v5->_title;
    v5->_title = v8;

    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v10, @"identifier");
    identifier = v5->_identifier;
    v5->_identifier = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v7 = a3;
  objc_msgSend_encodeObject_forKey_(v7, v5, title, @"title");
  objc_msgSend_encodeObject_forKey_(v7, v6, self->_identifier, @"identifier");
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = CLSActivityReportItem;
  v4 = [(CLSReportItem *)&v14 copyWithZone:a3];
  v7 = objc_msgSend_title(self, v5, v6);
  objc_msgSend_setTitle_(v4, v8, v7);

  v11 = objc_msgSend_identifier(self, v9, v10);
  objc_msgSend_setIdentifier_(v4, v12, v11);

  return v4;
}

- (id)dictionaryRepresentation
{
  v13.receiver = self;
  v13.super_class = CLSActivityReportItem;
  v3 = [(CLSReportItem *)&v13 dictionaryRepresentation];
  v6 = objc_msgSend_title(self, v4, v5);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v7, v6, @"title");

  v10 = objc_msgSend_identifier(self, v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v11, v10, @"identifier");

  return v3;
}

@end