@interface CXCallDirectoryMutableLabeledPhoneNumberEntryData
- (BOOL)appendPhoneNumber:(int64_t)a3 label:(id)a4;
- (CXCallDirectoryMutableLabeledPhoneNumberEntryData)initWithCapacity:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CXCallDirectoryMutableLabeledPhoneNumberEntryData

- (CXCallDirectoryMutableLabeledPhoneNumberEntryData)initWithCapacity:(unint64_t)a3
{
  v12.receiver = self;
  v12.super_class = CXCallDirectoryMutableLabeledPhoneNumberEntryData;
  v4 = [(CXCallDirectoryLabeledPhoneNumberEntryData *)&v12 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:16 * a3];
    mutablePhoneNumberData = v4->_mutablePhoneNumberData;
    v4->_mutablePhoneNumberData = v5;

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

- (BOOL)appendPhoneNumber:(int64_t)a3 label:(id)a4
{
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_labelToLabelDataOffset objectForKeyedSubscript:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 unsignedIntegerValue];
  }

  else
  {
    v10 = [v6 lengthOfBytesUsingEncoding:4];
    v9 = -1;
    if (v10)
    {
      v11 = v10;
      v12 = v10 + 1;
      if (!((v10 + 1) >> 16))
      {
        v9 = [(NSMutableData *)self->_mutableLabelData length];
        LOWORD(v15[0]) = v11;
        [(NSMutableData *)self->_mutableLabelData appendBytes:v15 length:2];
        -[NSMutableData appendBytes:length:](self->_mutableLabelData, "appendBytes:length:", [v6 UTF8String], v12);
      }
    }

    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
    [(NSMutableDictionary *)self->_labelToLabelDataOffset setObject:v13 forKeyedSubscript:v6];
  }

  if (v9 != -1)
  {
    v15[0] = a3;
    v15[1] = v9;
    [(NSMutableData *)self->_mutablePhoneNumberData appendBytes:v15 length:16];
  }

  return v9 != -1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(CXCallDirectoryLabeledPhoneNumberEntryData);
  v6 = [(CXCallDirectoryMutableLabeledPhoneNumberEntryData *)self mutablePhoneNumberData];
  v7 = [v6 copyWithZone:a3];
  [(CXCallDirectoryLabeledPhoneNumberEntryData *)v5 setPhoneNumberData:v7];

  v8 = [(CXCallDirectoryMutableLabeledPhoneNumberEntryData *)self mutableLabelData];
  v9 = [v8 copyWithZone:a3];
  [(CXCallDirectoryLabeledPhoneNumberEntryData *)v5 setLabelData:v9];

  return v5;
}

@end