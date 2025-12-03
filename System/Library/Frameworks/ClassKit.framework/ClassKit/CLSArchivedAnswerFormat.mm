@interface CLSArchivedAnswerFormat
- (CLSArchivedAnswerFormat)initWithCoder:(id)coder;
- (id)_init;
- (int64_t)answerFormatType;
- (void)encodeWithCoder:(id)coder;
- (void)setAnswerFormatType:(int64_t)type;
@end

@implementation CLSArchivedAnswerFormat

- (id)_init
{
  v3.receiver = self;
  v3.super_class = CLSArchivedAnswerFormat;
  return [(CLSObject *)&v3 _init];
}

- (CLSArchivedAnswerFormat)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CLSArchivedAnswerFormat;
  v6 = [(CLSObject *)&v8 initWithCoder:coderCopy];
  if (v6)
  {
    v6->_answerFormatType = objc_msgSend_decodeIntegerForKey_(coderCopy, v5, @"answerFormatType");
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CLSArchivedAnswerFormat;
  coderCopy = coder;
  [(CLSObject *)&v6 encodeWithCoder:coderCopy];
  objc_msgSend_encodeInteger_forKey_(coderCopy, v5, self->_answerFormatType, @"answerFormatType", v6.receiver, v6.super_class);
}

- (int64_t)answerFormatType
{
  objc_msgSend_lock(self, a2, v2);
  answerFormatType = self->_answerFormatType;
  objc_msgSend_unlock(self, v5, v6);
  return answerFormatType;
}

- (void)setAnswerFormatType:(int64_t)type
{
  objc_msgSend_lock(self, a2, type);
  if (self->_answerFormatType != type)
  {
    self->_answerFormatType = type;
    objc_msgSend_setModified_(self, v5, 1);
  }

  objc_msgSend_unlock(self, v5, v6);
}

@end