@interface CXCallDirectoryPhoneNumberEntryData
- (CXCallDirectoryPhoneNumberEntryData)init;
- (CXCallDirectoryPhoneNumberEntryData)initWithCoder:(id)coder;
- (int64_t)phoneNumberAtIndex:(unint64_t)index;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CXCallDirectoryPhoneNumberEntryData

- (CXCallDirectoryPhoneNumberEntryData)init
{
  v6.receiver = self;
  v6.super_class = CXCallDirectoryPhoneNumberEntryData;
  v2 = [(CXCallDirectoryPhoneNumberEntryData *)&v6 init];
  if (v2)
  {
    data = [MEMORY[0x1E695DEF0] data];
    phoneNumberData = v2->_phoneNumberData;
    v2->_phoneNumberData = data;
  }

  return v2;
}

- (int64_t)phoneNumberAtIndex:(unint64_t)index
{
  v4 = 0;
  [(NSData *)self->_phoneNumberData getBytes:&v4 range:8 * index, 8];
  return v4;
}

- (CXCallDirectoryPhoneNumberEntryData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CXCallDirectoryPhoneNumberEntryData;
  v5 = [(CXCallDirectoryPhoneNumberEntryData *)&v11 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_phoneNumberData);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    phoneNumberData = v5->_phoneNumberData;
    v5->_phoneNumberData = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  phoneNumberData = [(CXCallDirectoryPhoneNumberEntryData *)self phoneNumberData];
  v5 = NSStringFromSelector(sel_phoneNumberData);
  [coderCopy encodeObject:phoneNumberData forKey:v5];
}

@end