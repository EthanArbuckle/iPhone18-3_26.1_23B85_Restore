@interface CXCallDirectoryPhoneNumberEntryData
- (CXCallDirectoryPhoneNumberEntryData)init;
- (CXCallDirectoryPhoneNumberEntryData)initWithCoder:(id)a3;
- (int64_t)phoneNumberAtIndex:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CXCallDirectoryPhoneNumberEntryData

- (CXCallDirectoryPhoneNumberEntryData)init
{
  v6.receiver = self;
  v6.super_class = CXCallDirectoryPhoneNumberEntryData;
  v2 = [(CXCallDirectoryPhoneNumberEntryData *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DEF0] data];
    phoneNumberData = v2->_phoneNumberData;
    v2->_phoneNumberData = v3;
  }

  return v2;
}

- (int64_t)phoneNumberAtIndex:(unint64_t)a3
{
  v4 = 0;
  [(NSData *)self->_phoneNumberData getBytes:&v4 range:8 * a3, 8];
  return v4;
}

- (CXCallDirectoryPhoneNumberEntryData)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CXCallDirectoryPhoneNumberEntryData;
  v5 = [(CXCallDirectoryPhoneNumberEntryData *)&v11 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_phoneNumberData);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    phoneNumberData = v5->_phoneNumberData;
    v5->_phoneNumberData = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(CXCallDirectoryPhoneNumberEntryData *)self phoneNumberData];
  v5 = NSStringFromSelector(sel_phoneNumberData);
  [v4 encodeObject:v6 forKey:v5];
}

@end