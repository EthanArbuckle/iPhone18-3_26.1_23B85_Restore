@interface _LTAlignment
- (BOOL)isEqual:(id)equal;
- (_LTAlignment)initWithCoder:(id)coder;
- (_NSRange)sourceRange;
- (_NSRange)targetRange;
- (id)jsonRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTAlignment

- (id)jsonRepresentation
{
  v20[3] = *MEMORY[0x277D85DE8];
  v19[0] = @"identifier";
  identifier = [(_LTAlignment *)self identifier];
  v4 = identifier;
  v5 = @"<no value>";
  if (identifier)
  {
    v5 = identifier;
  }

  v20[0] = v5;
  v19[1] = @"text";
  text = [(_LTAlignment *)self text];
  v7 = text;
  v8 = &stru_284DBB9B8;
  if (text)
  {
    v8 = text;
  }

  v20[1] = v8;
  v19[2] = @"targetRange";
  v17[0] = @"start";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[_LTAlignment targetRange](self, "targetRange")}];
  v17[1] = @"length";
  v18[0] = v9;
  v10 = MEMORY[0x277CCABB0];
  [(_LTAlignment *)self targetRange];
  v12 = [v10 numberWithUnsignedInteger:v11];
  v18[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v20[2] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  v7 = [MEMORY[0x277CCAE60] valueWithRange:{self->_sourceRange.location, self->_sourceRange.length}];
  [coderCopy encodeObject:v7 forKey:@"sourceRange"];
  v6 = [MEMORY[0x277CCAE60] valueWithRange:{self->_targetRange.location, self->_targetRange.length}];
  [coderCopy encodeObject:v6 forKey:@"targetRange"];
  [coderCopy encodeObject:self->_text forKey:@"text"];
  [coderCopy encodeBool:self->_shouldTranslate forKey:@"shouldTranslate"];
}

- (_LTAlignment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = _LTAlignment;
  v5 = [(_LTAlignment *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceRange"];
    v5->_sourceRange.location = [v8 rangeValue];
    v5->_sourceRange.length = v9;
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetRange"];
    v5->_targetRange.location = [v10 rangeValue];
    v5->_targetRange.length = v11;
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v12;

    v5->_shouldTranslate = [coderCopy decodeBoolForKey:@"shouldTranslate"];
    v14 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = self->_identifier;
      identifier = [(_LTAlignment *)v5 identifier];
      if ([(NSString *)identifier isEqualToString:identifier])
      {
        text = self->_text;
        text = [(_LTAlignment *)v5 text];
        if ([(NSString *)text isEqualToString:text])
        {
          v11 = 0;
          if (self->_sourceRange.location == [(_LTAlignment *)v5 sourceRange]&& self->_sourceRange.length == v10)
          {
            v11 = 0;
            if (self->_targetRange.location == [(_LTAlignment *)v5 targetRange]&& self->_targetRange.length == v12)
            {
              shouldTranslate = self->_shouldTranslate;
              v11 = shouldTranslate == [(_LTAlignment *)v5 shouldTranslate];
            }
          }
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (_NSRange)sourceRange
{
  length = self->_sourceRange.length;
  location = self->_sourceRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)targetRange
{
  length = self->_targetRange.length;
  location = self->_targetRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end