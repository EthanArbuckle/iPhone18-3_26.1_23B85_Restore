@interface OSLogMessageComponent
- (OSLogMessageComponent)initWithCoder:(id)coder;
- (OSLogMessageComponent)initWithDecomposedMessage:(id)message atIndex:(unint64_t)index;
- (void)encodeWithCoder:(id)coder;
- (void)fillWithData:(id)data;
- (void)fillWithScalar:(id)scalar;
- (void)fillWithString:(id)string;
@end

@implementation OSLogMessageComponent

- (OSLogMessageComponent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"formatSubstring"];
  formatSubstring = self->_formatSubstring;
  self->_formatSubstring = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placeholder"];
  placeholder = self->_placeholder;
  self->_placeholder = v7;

  v9 = [coderCopy decodeIntegerForKey:@"argumentCategory"];
  self->_argumentCategory = v9;
  if (v9 <= 2)
  {
    if (v9 == 1)
    {
      v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"argumentDataValue"];
      v14 = 32;
      goto LABEL_13;
    }

    if (v9 == 2)
    {
      [coderCopy decodeDoubleForKey:@"argumentDoubleValue"];
      self->_argumentDoubleValue = v12;
      v11 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      goto LABEL_10;
    }
  }

  else
  {
    switch(v9)
    {
      case 3:
        v13 = [coderCopy decodeInt64ForKey:@"argumentInt64Value"];
        self->_argumentInt64Value = v13;
        v11 = [MEMORY[0x277CCABB0] numberWithLongLong:v13];
        goto LABEL_10;
      case 4:
        v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"argumentStringValue"];
        v14 = 64;
        goto LABEL_13;
      case 5:
        v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"argumentUInt64Value"];
        self->_argumentUInt64Value = [v10 unsignedLongLongValue];

        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_argumentUInt64Value];
LABEL_10:
        v14 = 56;
LABEL_13:
        v15 = *(&self->super.isa + v14);
        *(&self->super.isa + v14) = v11;

        break;
    }
  }

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  formatSubstring = [(OSLogMessageComponent *)self formatSubstring];
  [coderCopy encodeObject:formatSubstring forKey:@"formatSubstring"];

  placeholder = [(OSLogMessageComponent *)self placeholder];
  [coderCopy encodeObject:placeholder forKey:@"placeholder"];

  [coderCopy encodeInteger:-[OSLogMessageComponent argumentCategory](self forKey:{"argumentCategory"), @"argumentCategory"}];
  argumentCategory = [(OSLogMessageComponent *)self argumentCategory];
  if (argumentCategory > OSLogMessageComponentArgumentCategoryDouble)
  {
    switch(argumentCategory)
    {
      case OSLogMessageComponentArgumentCategoryInt64:
        [coderCopy encodeInt64:-[OSLogMessageComponent argumentInt64Value](self forKey:{"argumentInt64Value"), @"argumentInt64Value"}];
        goto LABEL_13;
      case OSLogMessageComponentArgumentCategoryString:
        argumentStringValue = [(OSLogMessageComponent *)self argumentStringValue];
        v8 = @"argumentStringValue";
        break;
      case OSLogMessageComponentArgumentCategoryUInt64:
        argumentStringValue = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[OSLogMessageComponent argumentUInt64Value](self, "argumentUInt64Value")}];
        v8 = @"argumentUInt64Value";
        break;
      default:
        goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (argumentCategory == OSLogMessageComponentArgumentCategoryData)
  {
    argumentStringValue = [(OSLogMessageComponent *)self argumentDataValue];
    v8 = @"argumentDataValue";
LABEL_12:
    [coderCopy encodeObject:argumentStringValue forKey:v8];

    goto LABEL_13;
  }

  if (argumentCategory == OSLogMessageComponentArgumentCategoryDouble)
  {
    [(OSLogMessageComponent *)self argumentDoubleValue];
    [coderCopy encodeDouble:@"argumentDoubleValue" forKey:?];
  }

LABEL_13:
}

- (void)fillWithData:(id)data
{
  objectRepresentation = [data objectRepresentation];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_argumentCategory = 4;
    [(OSLogMessageComponent *)self setArgumentStringValue:objectRepresentation];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_argumentCategory = 1;
      [(OSLogMessageComponent *)self setArgumentDataValue:objectRepresentation];
    }

    else
    {
      self->_argumentCategory = 0;
    }
  }
}

- (void)fillWithString:(id)string
{
  self->_argumentCategory = 4;
  objectRepresentation = [string objectRepresentation];
  [(OSLogMessageComponent *)self setArgumentStringValue:objectRepresentation];
}

- (void)fillWithScalar:(id)scalar
{
  scalarCopy = scalar;
  scalarCategory = [scalarCopy scalarCategory];
  if (scalarCategory == 3)
  {
    self->_argumentCategory = 2;
    [scalarCopy doubleValue];
    v5 = scalarCopy;
    self->_argumentDoubleValue = v6;
  }

  else
  {
    if (scalarCategory == 2)
    {
      self->_argumentCategory = 3;
      self->_argumentInt64Value = [scalarCopy int64Value];
    }

    else if (scalarCategory == 1)
    {
      self->_argumentCategory = 5;
      self->_argumentUInt64Value = [scalarCopy unsignedInt64Value];
    }

    else
    {
      self->_argumentCategory = 0;
    }

    v5 = scalarCopy;
  }

  objectRepresentation = [v5 objectRepresentation];
  [(OSLogMessageComponent *)self setArgumentNumberValue:objectRepresentation];
}

- (OSLogMessageComponent)initWithDecomposedMessage:(id)message atIndex:(unint64_t)index
{
  messageCopy = message;
  v20.receiver = self;
  v20.super_class = OSLogMessageComponent;
  v7 = [(OSLogMessageComponent *)&v20 init];
  if (v7)
  {
    v8 = [messageCopy literalPrefixAtIndex:index];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = &stru_284D28980;
    }

    [(OSLogMessageComponent *)v7 setFormatSubstring:v10];

    v11 = [messageCopy placeholderAtIndex:index];
    rawString = [v11 rawString];
    v13 = rawString;
    if (rawString)
    {
      v14 = rawString;
    }

    else
    {
      v14 = &stru_284D28980;
    }

    [(OSLogMessageComponent *)v7 setPlaceholder:v14];

    if (v11)
    {
      v15 = [messageCopy argumentAtIndex:index];
      v16 = v15;
      if (v15 && ![v15 availability])
      {
        category = [v16 category];
        switch(category)
        {
          case 3:
            [(OSLogMessageComponent *)v7 fillWithData:v16];
            break;
          case 2:
            [(OSLogMessageComponent *)v7 fillWithString:v16];
            break;
          case 1:
            [(OSLogMessageComponent *)v7 fillWithScalar:v16];
            break;
        }
      }
    }

    v17 = v7;
  }

  return v7;
}

@end