@interface MTROptionalQRCodeInfo
- (BOOL)isEqual:(id)equal;
- (MTROptionalQRCodeInfo)initWithTag:(id)tag int32Value:(int)value;
- (MTROptionalQRCodeInfo)initWithTag:(id)tag stringValue:(id)value;
- (MTROptionalQRCodeInfoType)type;
- (NSNumber)infoType;
- (NSNumber)integerValue;
- (NSString)stringValue;
- (id).cxx_construct;
- (id)description;
@end

@implementation MTROptionalQRCodeInfo

- (MTROptionalQRCodeInfo)initWithTag:(id)tag int32Value:(int)value
{
  tagCopy = tag;
  v9.receiver = self;
  v9.super_class = MTROptionalQRCodeInfo;
  v7 = [(MTROptionalQRCodeInfo *)&v9 init];
  v7->_info.type = 2;
  v7->_info.tag = sub_2392DFAF8(tagCopy);
  v7->_info.var0 = value;

  return v7;
}

- (MTROptionalQRCodeInfo)initWithTag:(id)tag stringValue:(id)value
{
  tagCopy = tag;
  valueCopy = value;
  v10.receiver = self;
  v10.super_class = MTROptionalQRCodeInfo;
  v8 = [(MTROptionalQRCodeInfo *)&v10 init];
  v8->_info.type = 1;
  v8->_info.tag = sub_2392DFAF8(tagCopy);
  if (!valueCopy)
  {
    sub_23921D8FC(@"value");
  }

  MEMORY[0x23EE77A00](&v8->_info.data, [valueCopy UTF8String]);

  return v8;
}

- (MTROptionalQRCodeInfoType)type
{
  type = self->_info.type;
  if (type == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (type == 2);
  }
}

- (NSNumber)integerValue
{
  if (self->_info.type == 2)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:{self->_info.var0, v2}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)stringValue
{
  if (self->_info.type == 1)
  {
    p_data = &self->_info.data;
    if (*(&self->_info.data.__rep_.__l + 23) < 0)
    {
      p_data = p_data->__rep_.__l.__data_;
    }

    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{p_data, v2}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
    v8 = v7;
    if (self->_info.tag == *(v7 + 8))
    {
      type = self->_info.type;
      if (type == *(v7 + 3))
      {
        if (type == 2)
        {
          v19 = self->_info.var0 == *(v7 + 10);
LABEL_24:
          v6 = v19;
          goto LABEL_21;
        }

        if (type == 1)
        {
          v10 = *(&self->_info.data.__rep_.__l + 23);
          if (v10 >= 0)
          {
            size = *(&self->_info.data.__rep_.__l + 23);
          }

          else
          {
            size = self->_info.data.__rep_.__l.__size_;
          }

          v12 = *(v7 + 39);
          v13 = v12;
          if ((v12 & 0x80u) != 0)
          {
            v12 = v7[3];
          }

          if (size == v12)
          {
            data = self->_info.data.__rep_.__l.__data_;
            p_data = &self->_info.data;
            v14 = data;
            if (v10 >= 0)
            {
              v17 = p_data;
            }

            else
            {
              v17 = v14;
            }

            if (v13 >= 0)
            {
              v18 = v8 + 2;
            }

            else
            {
              v18 = v8[2];
            }

            v19 = memcmp(v17, v18, size) == 0;
            goto LABEL_24;
          }
        }
      }
    }

    v6 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v6 = 0;
LABEL_22:

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MTROptionalQRCodeInfo *)self tag];
  unsignedCharValue = [v4 unsignedCharValue];
  integerValue = [(MTROptionalQRCodeInfo *)self integerValue];
  stringValue = integerValue;
  if (!integerValue)
  {
    stringValue = [(MTROptionalQRCodeInfo *)self stringValue];
  }

  v8 = [v3 stringWithFormat:@"0x%02x=%@", unsignedCharValue, stringValue];
  if (!integerValue)
  {
  }

  return v8;
}

- (id).cxx_construct
{
  *(self + 1) = 0uLL;
  *(self + 10) = 0;
  *(self + 4) = 0;
  return self;
}

- (NSNumber)infoType
{
  v2 = MEMORY[0x277CCABB0];
  type = [(MTROptionalQRCodeInfo *)self type];

  return [v2 numberWithUnsignedInteger:type];
}

@end