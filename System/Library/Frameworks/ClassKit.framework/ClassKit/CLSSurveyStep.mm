@interface CLSSurveyStep
- (BOOL)validateObject:(id *)object;
- (CLSSurveyStep)initWithCoder:(id)coder;
- (int64_t)type;
- (int64_t)version;
- (void)encodeWithCoder:(id)coder;
- (void)setType:(int64_t)type;
- (void)setVersion:(int64_t)version;
@end

@implementation CLSSurveyStep

- (CLSSurveyStep)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CLSSurveyStep;
  v6 = [(CLSObject *)&v9 initWithCoder:coderCopy];
  if (v6)
  {
    v6->_version = objc_msgSend_decodeIntegerForKey_(coderCopy, v5, @"version");
    v6->_type = objc_msgSend_decodeIntegerForKey_(coderCopy, v7, @"type");
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CLSSurveyStep;
  coderCopy = coder;
  [(CLSObject *)&v7 encodeWithCoder:coderCopy];
  objc_msgSend_encodeInteger_forKey_(coderCopy, v5, self->_version, @"version", v7.receiver, v7.super_class);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v6, self->_type, @"type");
}

- (int64_t)version
{
  objc_msgSend_lock(self, a2, v2);
  version = self->_version;
  objc_msgSend_unlock(self, v5, v6);
  return version;
}

- (void)setVersion:(int64_t)version
{
  objc_msgSend_lock(self, a2, version);
  if (self->_version != version)
  {
    self->_version = version;
    objc_msgSend_setModified_(self, v5, 1);
  }

  objc_msgSend_unlock(self, v5, v6);
}

- (int64_t)type
{
  objc_msgSend_lock(self, a2, v2);
  type = self->_type;
  objc_msgSend_unlock(self, v5, v6);
  return type;
}

- (void)setType:(int64_t)type
{
  objc_msgSend_lock(self, a2, type);
  if (self->_type != type)
  {
    self->_type = type;
    objc_msgSend_setModified_(self, v5, 1);
  }

  objc_msgSend_unlock(self, v5, v6);
}

- (BOOL)validateObject:(id *)object
{
  v4.receiver = self;
  v4.super_class = CLSSurveyStep;
  return [(CLSObject *)&v4 validateObject:object];
}

@end