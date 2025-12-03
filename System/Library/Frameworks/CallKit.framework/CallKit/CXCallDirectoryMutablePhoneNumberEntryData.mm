@interface CXCallDirectoryMutablePhoneNumberEntryData
- (CXCallDirectoryMutablePhoneNumberEntryData)initWithCapacity:(unint64_t)capacity;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CXCallDirectoryMutablePhoneNumberEntryData

- (CXCallDirectoryMutablePhoneNumberEntryData)initWithCapacity:(unint64_t)capacity
{
  v8.receiver = self;
  v8.super_class = CXCallDirectoryMutablePhoneNumberEntryData;
  v4 = [(CXCallDirectoryPhoneNumberEntryData *)&v8 init];
  if (v4)
  {
    capacity = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:8 * capacity];
    mutablePhoneNumberData = v4->_mutablePhoneNumberData;
    v4->_mutablePhoneNumberData = capacity;

    [(CXCallDirectoryPhoneNumberEntryData *)v4 setPhoneNumberData:v4->_mutablePhoneNumberData];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(CXCallDirectoryPhoneNumberEntryData);
  mutablePhoneNumberData = [(CXCallDirectoryMutablePhoneNumberEntryData *)self mutablePhoneNumberData];
  v7 = [mutablePhoneNumberData copyWithZone:zone];
  [(CXCallDirectoryPhoneNumberEntryData *)v5 setPhoneNumberData:v7];

  return v5;
}

@end