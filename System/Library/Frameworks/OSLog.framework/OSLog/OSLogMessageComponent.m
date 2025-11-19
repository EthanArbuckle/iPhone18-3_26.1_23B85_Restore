@interface OSLogMessageComponent
- (OSLogMessageComponent)initWithCoder:(id)a3;
- (OSLogMessageComponent)initWithDecomposedMessage:(id)a3 atIndex:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
- (void)fillWithData:(id)a3;
- (void)fillWithScalar:(id)a3;
- (void)fillWithString:(id)a3;
@end

@implementation OSLogMessageComponent

- (OSLogMessageComponent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"formatSubstring"];
  formatSubstring = self->_formatSubstring;
  self->_formatSubstring = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placeholder"];
  placeholder = self->_placeholder;
  self->_placeholder = v7;

  v9 = [v4 decodeIntegerForKey:@"argumentCategory"];
  self->_argumentCategory = v9;
  if (v9 <= 2)
  {
    if (v9 == 1)
    {
      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"argumentDataValue"];
      v14 = 32;
      goto LABEL_13;
    }

    if (v9 == 2)
    {
      [v4 decodeDoubleForKey:@"argumentDoubleValue"];
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
        v13 = [v4 decodeInt64ForKey:@"argumentInt64Value"];
        self->_argumentInt64Value = v13;
        v11 = [MEMORY[0x277CCABB0] numberWithLongLong:v13];
        goto LABEL_10;
      case 4:
        v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"argumentStringValue"];
        v14 = 64;
        goto LABEL_13;
      case 5:
        v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"argumentUInt64Value"];
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

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(OSLogMessageComponent *)self formatSubstring];
  [v9 encodeObject:v4 forKey:@"formatSubstring"];

  v5 = [(OSLogMessageComponent *)self placeholder];
  [v9 encodeObject:v5 forKey:@"placeholder"];

  [v9 encodeInteger:-[OSLogMessageComponent argumentCategory](self forKey:{"argumentCategory"), @"argumentCategory"}];
  v6 = [(OSLogMessageComponent *)self argumentCategory];
  if (v6 > OSLogMessageComponentArgumentCategoryDouble)
  {
    switch(v6)
    {
      case OSLogMessageComponentArgumentCategoryInt64:
        [v9 encodeInt64:-[OSLogMessageComponent argumentInt64Value](self forKey:{"argumentInt64Value"), @"argumentInt64Value"}];
        goto LABEL_13;
      case OSLogMessageComponentArgumentCategoryString:
        v7 = [(OSLogMessageComponent *)self argumentStringValue];
        v8 = @"argumentStringValue";
        break;
      case OSLogMessageComponentArgumentCategoryUInt64:
        v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[OSLogMessageComponent argumentUInt64Value](self, "argumentUInt64Value")}];
        v8 = @"argumentUInt64Value";
        break;
      default:
        goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v6 == OSLogMessageComponentArgumentCategoryData)
  {
    v7 = [(OSLogMessageComponent *)self argumentDataValue];
    v8 = @"argumentDataValue";
LABEL_12:
    [v9 encodeObject:v7 forKey:v8];

    goto LABEL_13;
  }

  if (v6 == OSLogMessageComponentArgumentCategoryDouble)
  {
    [(OSLogMessageComponent *)self argumentDoubleValue];
    [v9 encodeDouble:@"argumentDoubleValue" forKey:?];
  }

LABEL_13:
}

- (void)fillWithData:(id)a3
{
  v4 = [a3 objectRepresentation];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_argumentCategory = 4;
    [(OSLogMessageComponent *)self setArgumentStringValue:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_argumentCategory = 1;
      [(OSLogMessageComponent *)self setArgumentDataValue:v4];
    }

    else
    {
      self->_argumentCategory = 0;
    }
  }
}

- (void)fillWithString:(id)a3
{
  self->_argumentCategory = 4;
  v4 = [a3 objectRepresentation];
  [(OSLogMessageComponent *)self setArgumentStringValue:v4];
}

- (void)fillWithScalar:(id)a3
{
  v8 = a3;
  v4 = [v8 scalarCategory];
  if (v4 == 3)
  {
    self->_argumentCategory = 2;
    [v8 doubleValue];
    v5 = v8;
    self->_argumentDoubleValue = v6;
  }

  else
  {
    if (v4 == 2)
    {
      self->_argumentCategory = 3;
      self->_argumentInt64Value = [v8 int64Value];
    }

    else if (v4 == 1)
    {
      self->_argumentCategory = 5;
      self->_argumentUInt64Value = [v8 unsignedInt64Value];
    }

    else
    {
      self->_argumentCategory = 0;
    }

    v5 = v8;
  }

  v7 = [v5 objectRepresentation];
  [(OSLogMessageComponent *)self setArgumentNumberValue:v7];
}

- (OSLogMessageComponent)initWithDecomposedMessage:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v20.receiver = self;
  v20.super_class = OSLogMessageComponent;
  v7 = [(OSLogMessageComponent *)&v20 init];
  if (v7)
  {
    v8 = [v6 literalPrefixAtIndex:a4];
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

    v11 = [v6 placeholderAtIndex:a4];
    v12 = [v11 rawString];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = &stru_284D28980;
    }

    [(OSLogMessageComponent *)v7 setPlaceholder:v14];

    if (v11)
    {
      v15 = [v6 argumentAtIndex:a4];
      v16 = v15;
      if (v15 && ![v15 availability])
      {
        v19 = [v16 category];
        switch(v19)
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