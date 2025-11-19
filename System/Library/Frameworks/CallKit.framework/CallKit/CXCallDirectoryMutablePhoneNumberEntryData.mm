@interface CXCallDirectoryMutablePhoneNumberEntryData
- (CXCallDirectoryMutablePhoneNumberEntryData)initWithCapacity:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CXCallDirectoryMutablePhoneNumberEntryData

- (CXCallDirectoryMutablePhoneNumberEntryData)initWithCapacity:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = CXCallDirectoryMutablePhoneNumberEntryData;
  v4 = [(CXCallDirectoryPhoneNumberEntryData *)&v8 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:8 * a3];
    mutablePhoneNumberData = v4->_mutablePhoneNumberData;
    v4->_mutablePhoneNumberData = v5;

    [(CXCallDirectoryPhoneNumberEntryData *)v4 setPhoneNumberData:v4->_mutablePhoneNumberData];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(CXCallDirectoryPhoneNumberEntryData);
  v6 = [(CXCallDirectoryMutablePhoneNumberEntryData *)self mutablePhoneNumberData];
  v7 = [v6 copyWithZone:a3];
  [(CXCallDirectoryPhoneNumberEntryData *)v5 setPhoneNumberData:v7];

  return v5;
}

@end