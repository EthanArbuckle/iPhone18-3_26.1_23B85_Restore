@interface CLSActivityReportItem
- (CLSActivityReportItem)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLSActivityReportItem

- (CLSActivityReportItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CLSActivityReportItem;
  v5 = [(CLSActivityReportItem *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"title");
    title = v5->_title;
    v5->_title = v8;

    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v10, @"identifier");
    identifier = v5->_identifier;
    v5->_identifier = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, title, @"title");
  objc_msgSend_encodeObject_forKey_(coderCopy, v6, self->_identifier, @"identifier");
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = CLSActivityReportItem;
  v4 = [(CLSReportItem *)&v14 copyWithZone:zone];
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
  dictionaryRepresentation = [(CLSReportItem *)&v13 dictionaryRepresentation];
  v6 = objc_msgSend_title(self, v4, v5);
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v7, v6, @"title");

  v10 = objc_msgSend_identifier(self, v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v11, v10, @"identifier");

  return dictionaryRepresentation;
}

@end