@interface TKSmartCardPINFormat
+ (void)_writeNumber:(unint64_t)number into:(id)into bitOffset:(int64_t)offset bitLength:(int64_t)length;
- (BOOL)fillPIN:(id)n intoAPDUTemplate:(id)template PINByteOffset:(int64_t)offset error:(id *)error;
- (TKSmartCardPINFormat)init;
- (TKSmartCardPINFormat)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unsigned)PINFormatStringWithError:(id *)error;
- (unsigned)PINLengthFormatWithError:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TKSmartCardPINFormat

- (TKSmartCardPINFormat)init
{
  v3.receiver = self;
  v3.super_class = TKSmartCardPINFormat;
  result = [(TKSmartCardPINFormat *)&v3 init];
  if (result)
  {
    *&result->_charset = xmmword_1DF461580;
    *&result->_minPINLength = xmmword_1DF461590;
    result->_PINBlockByteLength = 8;
    *&result->_PINJustification = 0u;
    *&result->_PINLengthBitOffset = 0u;
  }

  return result;
}

- (TKSmartCardPINFormat)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = TKSmartCardPINFormat;
  v5 = [(TKSmartCardPINFormat *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"charset"];
    v5->_charset = [v6 integerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encoding"];
    v5->_encoding = [v7 integerValue];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minPINLength"];
    v5->_minPINLength = [v8 integerValue];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maxPINLength"];
    v5->_maxPINLength = [v9 integerValue];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PINBlockByteLength"];
    v5->_PINBlockByteLength = [v10 integerValue];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PINJustification"];
    v5->_PINJustification = [v11 integerValue];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PINBitOffset"];
    v5->_PINBitOffset = [v12 integerValue];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PINLengthBitOffset"];
    v5->_PINLengthBitOffset = [v13 integerValue];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PINLengthBitSize"];
    v5->_PINLengthBitSize = [v14 integerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  charset = self->_charset;
  coderCopy = coder;
  v7 = [v4 numberWithInteger:charset];
  [coderCopy encodeObject:v7 forKey:@"charset"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_encoding];
  [coderCopy encodeObject:v8 forKey:@"encoding"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_minPINLength];
  [coderCopy encodeObject:v9 forKey:@"minPINLength"];

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_maxPINLength];
  [coderCopy encodeObject:v10 forKey:@"maxPINLength"];

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:self->_PINBlockByteLength];
  [coderCopy encodeObject:v11 forKey:@"PINBlockByteLength"];

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:self->_PINJustification];
  [coderCopy encodeObject:v12 forKey:@"PINJustification"];

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:self->_PINBitOffset];
  [coderCopy encodeObject:v13 forKey:@"PINBitOffset"];

  v14 = [MEMORY[0x1E696AD98] numberWithInteger:self->_PINLengthBitOffset];
  [coderCopy encodeObject:v14 forKey:@"PINLengthBitOffset"];

  v15 = [MEMORY[0x1E696AD98] numberWithInteger:self->_PINLengthBitSize];
  [coderCopy encodeObject:v15 forKey:@"PINLengthBitSize"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TKSmartCardPINFormat);
  [(TKSmartCardPINFormat *)v4 setCharset:[(TKSmartCardPINFormat *)self charset]];
  [(TKSmartCardPINFormat *)v4 setEncoding:[(TKSmartCardPINFormat *)self encoding]];
  [(TKSmartCardPINFormat *)v4 setMinPINLength:[(TKSmartCardPINFormat *)self minPINLength]];
  [(TKSmartCardPINFormat *)v4 setMaxPINLength:[(TKSmartCardPINFormat *)self maxPINLength]];
  [(TKSmartCardPINFormat *)v4 setPINBlockByteLength:[(TKSmartCardPINFormat *)self PINBlockByteLength]];
  [(TKSmartCardPINFormat *)v4 setPINJustification:[(TKSmartCardPINFormat *)self PINJustification]];
  [(TKSmartCardPINFormat *)v4 setPINBitOffset:[(TKSmartCardPINFormat *)self PINBitOffset]];
  [(TKSmartCardPINFormat *)v4 setPINLengthBitOffset:[(TKSmartCardPINFormat *)self PINLengthBitOffset]];
  [(TKSmartCardPINFormat *)v4 setPINLengthBitSize:[(TKSmartCardPINFormat *)self PINLengthBitSize]];
  return v4;
}

+ (void)_writeNumber:(unint64_t)number into:(id)into bitOffset:(int64_t)offset bitLength:(int64_t)length
{
  if (length >= 1)
  {
    v8 = length + offset;
    v9 = length + 1;
    do
    {
      mutableBytes = [into mutableBytes];
      v11 = v8 + 6;
      if (v8 - 1 >= 0)
      {
        v11 = v8 - 1;
      }

      v12 = v11 >> 3;
      v13 = v8 - 1 - 8 * v12;
      v14 = *(mutableBytes + v12);
      v15 = v14 & (-129 >> v13);
      v16 = v14 | (0x80u >> v13);
      if ((number & 1) == 0)
      {
        LOBYTE(v16) = v15;
      }

      *(mutableBytes + v12) = v16;
      number >>= 1;
      --v9;
      --v8;
    }

    while (v9 > 1);
  }
}

- (BOOL)fillPIN:(id)n intoAPDUTemplate:(id)template PINByteOffset:(int64_t)offset error:(id *)error
{
  v38[1] = *MEMORY[0x1E69E9840];
  nCopy = n;
  templateCopy = template;
  if (*([templateCopy bytes] + 4))
  {
    v12 = 40;
  }

  else if ([templateCopy length] <= 6)
  {
    v12 = 40;
  }

  else
  {
    v12 = 56;
  }

  uTF8String = [nCopy UTF8String];
  v14 = strlen(uTF8String);
  if (v14 < [(TKSmartCardPINFormat *)self minPINLength]|| v14 > [(TKSmartCardPINFormat *)self maxPINLength])
  {
    if (error)
    {
      v15 = MEMORY[0x1E696ABC0];
      v37 = *MEMORY[0x1E696A578];
      v16 = [TKSmartCard _localizedString:@"INVALID_PIN"];
      v38[0] = v16;
      v17 = MEMORY[0x1E695DF20];
      v18 = v38;
      v19 = &v37;
      goto LABEL_10;
    }

    goto LABEL_37;
  }

  v21 = v12 + 8 * offset;
  [objc_opt_class() _writeNumber:v14 into:templateCopy bitOffset:-[TKSmartCardPINFormat PINLengthBitOffset](self bitLength:{"PINLengthBitOffset") + v21, -[TKSmartCardPINFormat PINLengthBitSize](self, "PINLengthBitSize")}];
  v22 = [(TKSmartCardPINFormat *)self PINBitOffset]+ v21;
  encoding = [(TKSmartCardPINFormat *)self encoding];
  if (encoding == TKSmartCardPINEncodingBCD)
  {
    v24 = 4;
  }

  else
  {
    v24 = 8;
  }

  if ([(TKSmartCardPINFormat *)self PINJustification]== TKSmartCardPINJustificationRight)
  {
    v25 = 2;
    if (encoding != TKSmartCardPINEncodingBCD)
    {
      v25 = 3;
    }

    v22 = v22 - (v14 << v25) + 8 * [(TKSmartCardPINFormat *)self PINBlockByteLength];
  }

  if (v14 < 1)
  {
LABEL_36:
    LOBYTE(error) = 1;
    goto LABEL_37;
  }

  while (1)
  {
    v27 = *uTF8String++;
    v26 = v27;
    charset = [(TKSmartCardPINFormat *)self charset];
    if (charset == TKSmartCardPINCharsetUpperAlphanumeric)
    {
      v29 = v26 - 48;
      v30 = (v26 - 48) >= 0xA;
      v31 = (v26 - 65);
      goto LABEL_29;
    }

    if (charset == TKSmartCardPINCharsetAlphanumeric)
    {
      break;
    }

    if (charset)
    {
      goto LABEL_38;
    }

    v29 = v26 - 48;
    if ((v26 - 48) >= 0xA)
    {
      goto LABEL_38;
    }

LABEL_33:
    if ([(TKSmartCardPINFormat *)self encoding]!= TKSmartCardPINEncodingASCII)
    {
      LOBYTE(v26) = v29;
    }

    [objc_opt_class() _writeNumber:v26 into:templateCopy bitOffset:v22 bitLength:v24];
    v22 += v24;
    if (!--v14)
    {
      goto LABEL_36;
    }
  }

  v29 = v26 - 48;
  v30 = (v26 - 48) >= 0xA && (v26 - 65) >= 0x1Au;
  v31 = (v26 - 97);
LABEL_29:
  if (!v30 || v31 < 0x1A)
  {
    goto LABEL_33;
  }

LABEL_38:
  if (error)
  {
    v15 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A578];
    v16 = [TKSmartCard _localizedString:@"INVALID_PIN"];
    v36 = v16;
    v17 = MEMORY[0x1E695DF20];
    v18 = &v36;
    v19 = &v35;
LABEL_10:
    v20 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:1];
    *error = [v15 errorWithDomain:@"CryptoTokenKit" code:-5 userInfo:v20];

    LOBYTE(error) = 0;
  }

LABEL_37:

  v33 = *MEMORY[0x1E69E9840];
  return error;
}

- (unsigned)PINFormatStringWithError:(id *)error
{
  encoding = [(TKSmartCardPINFormat *)self encoding];
  encoding2 = [(TKSmartCardPINFormat *)self encoding];
  pINJustification = [(TKSmartCardPINFormat *)self PINJustification];
  pINBitOffset = [(TKSmartCardPINFormat *)self PINBitOffset];
  pINBitOffset2 = [(TKSmartCardPINFormat *)self PINBitOffset];
  v10 = 8;
  if ((pINBitOffset & 7) != 0)
  {
    v10 = 1;
  }

  v11 = pINBitOffset2 / v10;
  if (v11 < 0x10)
  {
    return (encoding == TKSmartCardPINEncodingBCD) | (2 * (encoding2 == TKSmartCardPINEncodingASCII)) | (4 * (pINJustification == TKSmartCardPINJustificationRight)) | (8 * v11) | (((pINBitOffset & 7) == 0) << 7);
  }

  v12 = TK_LOG_smartcard();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [TKSmartCardPINFormat PINFormatStringWithError:];
  }

  if (!error)
  {
    return 0;
  }

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-8 userInfo:0];
  v14 = 0;
  *error = v13;
  return v14;
}

- (unsigned)PINLengthFormatWithError:(id *)error
{
  pINLengthBitOffset = [(TKSmartCardPINFormat *)self PINLengthBitOffset];
  pINLengthBitOffset2 = [(TKSmartCardPINFormat *)self PINLengthBitOffset];
  v7 = 8;
  if ((pINLengthBitOffset & 7) != 0)
  {
    v7 = 1;
  }

  v8 = pINLengthBitOffset2 / v7;
  if (v8 < 0x10)
  {
    return v8 | (16 * ((pINLengthBitOffset & 7) == 0));
  }

  v9 = TK_LOG_smartcard();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [TKSmartCardPINFormat PINLengthFormatWithError:];
  }

  if (!error)
  {
    return 0;
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-8 userInfo:0];
  v11 = 0;
  *error = v10;
  return v11;
}

@end