@interface WKNSNumber
- (char)charValue;
- (const)objCType;
- (double)doubleValue;
- (int64_t)longLongValue;
- (unint64_t)unsignedLongLongValue;
- (void)dealloc;
- (void)getValue:(void *)value;
@end

@implementation WKNSNumber

- (void)dealloc
{
  if ((self->_type - 31) <= 3)
  {
    (**&self->_number._int64.m_storage.data[4])();
  }

  v3.receiver = self;
  v3.super_class = WKNSNumber;
  [(WKNSNumber *)&v3 dealloc];
}

- (const)objCType
{
  v2 = self->_type - 31;
  if (v2 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E7630E78[v2];
  }
}

- (void)getValue:(void *)value
{
  type = self->_type;
  if (type > 32)
  {
    if (type == 33 || type == 34)
    {
      *value = *&self->_number._int64.m_storage.data[20];
    }
  }

  else if (type == 31)
  {
    *value = self->_number._BOOLean.m_storage.data[20];
  }

  else if (type == 32)
  {
    *value = *&self->_number._int64.m_storage.data[20];
  }
}

- (char)charValue
{
  if (self->_type == 31)
  {
    return self->_number._BOOLean.m_storage.data[20];
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = WKNSNumber;
  return [(WKNSNumber *)&v5 charValue];
}

- (double)doubleValue
{
  if (self->_type == 32)
  {
    return *&self->_number._int64.m_storage.data[20];
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = WKNSNumber;
  [(WKNSNumber *)&v5 doubleValue];
  return result;
}

- (unint64_t)unsignedLongLongValue
{
  if (self->_type == 33)
  {
    return *&self->_number._int64.m_storage.data[20];
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = WKNSNumber;
  return [(WKNSNumber *)&v5 unsignedLongLongValue];
}

- (int64_t)longLongValue
{
  if (self->_type == 34)
  {
    return *&self->_number._int64.m_storage.data[20];
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = WKNSNumber;
  return [(WKNSNumber *)&v5 longLongValue];
}

@end