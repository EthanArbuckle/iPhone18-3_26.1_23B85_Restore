@interface CXCallDirectoryLabeledPhoneNumberEntryData
- (CXCallDirectoryLabeledPhoneNumberEntryData)init;
- (CXCallDirectoryLabeledPhoneNumberEntryData)initWithCoder:(id)coder;
- (const)utf8LabelAtIndex:(unint64_t)index length:(unsigned __int16 *)length;
- (int64_t)phoneNumberAtIndex:(unint64_t)index;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CXCallDirectoryLabeledPhoneNumberEntryData

- (CXCallDirectoryLabeledPhoneNumberEntryData)init
{
  v8.receiver = self;
  v8.super_class = CXCallDirectoryLabeledPhoneNumberEntryData;
  v2 = [(CXCallDirectoryLabeledPhoneNumberEntryData *)&v8 init];
  if (v2)
  {
    data = [MEMORY[0x1E695DEF0] data];
    phoneNumberData = v2->_phoneNumberData;
    v2->_phoneNumberData = data;

    data2 = [MEMORY[0x1E695DEF0] data];
    labelData = v2->_labelData;
    v2->_labelData = data2;
  }

  return v2;
}

- (int64_t)phoneNumberAtIndex:(unint64_t)index
{
  v6[0] = 0;
  v6[1] = 0;
  v4 = 16 * index;
  if (16 * index + 16 > [(NSData *)self->_phoneNumberData length])
  {
    [CXCallDirectoryLabeledPhoneNumberEntryData phoneNumberAtIndex:];
    return 0;
  }

  else
  {
    [(NSData *)self->_phoneNumberData getBytes:v6 range:v4, 16];
    return v6[0];
  }
}

- (const)utf8LabelAtIndex:(unint64_t)index length:(unsigned __int16 *)length
{
  v14 = 0;
  v15 = 0;
  v6 = 16 * index;
  if (16 * index + 16 > [(NSData *)self->_phoneNumberData length])
  {
    [CXCallDirectoryLabeledPhoneNumberEntryData utf8LabelAtIndex:length:];
    return 0;
  }

  [(NSData *)self->_phoneNumberData getBytes:&v14 range:v6, 16];
  v13 = 0;
  v7 = v15;
  v8 = v15 + 2;
  if (v8 > [(NSData *)self->_labelData length])
  {
    [CXCallDirectoryLabeledPhoneNumberEntryData utf8LabelAtIndex:length:];
    return 0;
  }

  [(NSData *)self->_labelData getBytes:&v13 range:v7, 2];
  v9 = v13;
  *length = v13;
  v10 = v9 + v15 + 2;
  if (v10 > [(NSData *)self->_labelData length])
  {
    [CXCallDirectoryLabeledPhoneNumberEntryData utf8LabelAtIndex:length:];
    return 0;
  }

  bytes = [(NSData *)self->_labelData bytes];
  return &bytes[v15 + 2];
}

- (CXCallDirectoryLabeledPhoneNumberEntryData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CXCallDirectoryLabeledPhoneNumberEntryData;
  v5 = [(CXCallDirectoryLabeledPhoneNumberEntryData *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_phoneNumberData);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    phoneNumberData = v5->_phoneNumberData;
    v5->_phoneNumberData = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_labelData);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    labelData = v5->_labelData;
    v5->_labelData = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  phoneNumberData = [(CXCallDirectoryLabeledPhoneNumberEntryData *)self phoneNumberData];
  v6 = NSStringFromSelector(sel_phoneNumberData);
  [coderCopy encodeObject:phoneNumberData forKey:v6];

  labelData = [(CXCallDirectoryLabeledPhoneNumberEntryData *)self labelData];
  v7 = NSStringFromSelector(sel_labelData);
  [coderCopy encodeObject:labelData forKey:v7];
}

- (void)phoneNumberAtIndex:.cold.1()
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = CXDefaultLog();
  if (OUTLINED_FUNCTION_3_0(v1))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1B47F3000, v3, v4, "Assertion failure: %s in %s:%d", v5, v6, v7, v8, 2u);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)utf8LabelAtIndex:length:.cold.1()
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = CXDefaultLog();
  if (OUTLINED_FUNCTION_3_0(v1))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1B47F3000, v3, v4, "Assertion failure: %s in %s:%d", v5, v6, v7, v8, 2u);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)utf8LabelAtIndex:length:.cold.2()
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = CXDefaultLog();
  if (OUTLINED_FUNCTION_3_0(v1))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1B47F3000, v3, v4, "Assertion failure: %s in %s:%d", v5, v6, v7, v8, 2u);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)utf8LabelAtIndex:length:.cold.3()
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = CXDefaultLog();
  if (OUTLINED_FUNCTION_3_0(v1))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1B47F3000, v3, v4, "Assertion failure: %s in %s:%d", v5, v6, v7, v8, 2u);
  }

  v2 = *MEMORY[0x1E69E9840];
}

@end