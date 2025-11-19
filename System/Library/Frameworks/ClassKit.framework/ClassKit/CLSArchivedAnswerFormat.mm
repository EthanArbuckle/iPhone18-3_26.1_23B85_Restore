@interface CLSArchivedAnswerFormat
- (CLSArchivedAnswerFormat)initWithCoder:(id)a3;
- (id)_init;
- (int64_t)answerFormatType;
- (void)encodeWithCoder:(id)a3;
- (void)setAnswerFormatType:(int64_t)a3;
@end

@implementation CLSArchivedAnswerFormat

- (id)_init
{
  v3.receiver = self;
  v3.super_class = CLSArchivedAnswerFormat;
  return [(CLSObject *)&v3 _init];
}

- (CLSArchivedAnswerFormat)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CLSArchivedAnswerFormat;
  v6 = [(CLSObject *)&v8 initWithCoder:v4];
  if (v6)
  {
    v6->_answerFormatType = objc_msgSend_decodeIntegerForKey_(v4, v5, @"answerFormatType");
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CLSArchivedAnswerFormat;
  v4 = a3;
  [(CLSObject *)&v6 encodeWithCoder:v4];
  objc_msgSend_encodeInteger_forKey_(v4, v5, self->_answerFormatType, @"answerFormatType", v6.receiver, v6.super_class);
}

- (int64_t)answerFormatType
{
  objc_msgSend_lock(self, a2, v2);
  answerFormatType = self->_answerFormatType;
  objc_msgSend_unlock(self, v5, v6);
  return answerFormatType;
}

- (void)setAnswerFormatType:(int64_t)a3
{
  objc_msgSend_lock(self, a2, a3);
  if (self->_answerFormatType != a3)
  {
    self->_answerFormatType = a3;
    objc_msgSend_setModified_(self, v5, 1);
  }

  objc_msgSend_unlock(self, v5, v6);
}

@end