@interface CXCallDirectoryMutableLabeledPhoneNumberEntryData
- (BOOL)appendPhoneNumber:(int64_t)number label:(id)label;
- (CXCallDirectoryMutableLabeledPhoneNumberEntryData)initWithCapacity:(unint64_t)capacity;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CXCallDirectoryMutableLabeledPhoneNumberEntryData

- (CXCallDirectoryMutableLabeledPhoneNumberEntryData)initWithCapacity:(unint64_t)capacity
{
  v12.receiver = self;
  v12.super_class = CXCallDirectoryMutableLabeledPhoneNumberEntryData;
  v4 = [(CXCallDirectoryLabeledPhoneNumberEntryData *)&v12 init];
  if (v4)
  {
    capacity = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:16 * capacity];
    mutablePhoneNumberData = v4->_mutablePhoneNumberData;
    v4->_mutablePhoneNumberData = capacity;

    [(CXCallDirectoryLabeledPhoneNumberEntryData *)v4 setPhoneNumberData:v4->_mutablePhoneNumberData];
    v7 = objc_alloc_init(MEMORY[0x1E695DF88]);
    mutableLabelData = v4->_mutableLabelData;
    v4->_mutableLabelData = v7;

    [(CXCallDirectoryLabeledPhoneNumberEntryData *)v4 setLabelData:v4->_mutableLabelData];
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    labelToLabelDataOffset = v4->_labelToLabelDataOffset;
    v4->_labelToLabelDataOffset = v9;
  }

  return v4;
}

- (BOOL)appendPhoneNumber:(int64_t)number label:(id)label
{
  labelCopy = label;
  v7 = [(NSMutableDictionary *)self->_labelToLabelDataOffset objectForKeyedSubscript:labelCopy];
  v8 = v7;
  if (v7)
  {
    unsignedIntegerValue = [v7 unsignedIntegerValue];
  }

  else
  {
    v10 = [labelCopy lengthOfBytesUsingEncoding:4];
    unsignedIntegerValue = -1;
    if (v10)
    {
      v11 = v10;
      v12 = v10 + 1;
      if (!((v10 + 1) >> 16))
      {
        unsignedIntegerValue = [(NSMutableData *)self->_mutableLabelData length];
        LOWORD(v15[0]) = v11;
        [(NSMutableData *)self->_mutableLabelData appendBytes:v15 length:2];
        -[NSMutableData appendBytes:length:](self->_mutableLabelData, "appendBytes:length:", [labelCopy UTF8String], v12);
      }
    }

    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue];
    [(NSMutableDictionary *)self->_labelToLabelDataOffset setObject:v13 forKeyedSubscript:labelCopy];
  }

  if (unsignedIntegerValue != -1)
  {
    v15[0] = number;
    v15[1] = unsignedIntegerValue;
    [(NSMutableData *)self->_mutablePhoneNumberData appendBytes:v15 length:16];
  }

  return unsignedIntegerValue != -1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(CXCallDirectoryLabeledPhoneNumberEntryData);
  mutablePhoneNumberData = [(CXCallDirectoryMutableLabeledPhoneNumberEntryData *)self mutablePhoneNumberData];
  v7 = [mutablePhoneNumberData copyWithZone:zone];
  [(CXCallDirectoryLabeledPhoneNumberEntryData *)v5 setPhoneNumberData:v7];

  mutableLabelData = [(CXCallDirectoryMutableLabeledPhoneNumberEntryData *)self mutableLabelData];
  v9 = [mutableLabelData copyWithZone:zone];
  [(CXCallDirectoryLabeledPhoneNumberEntryData *)v5 setLabelData:v9];

  return v5;
}

@end