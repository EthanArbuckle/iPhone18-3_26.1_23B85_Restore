@interface STPersonContactHandle
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPersonContactHandle:(id)handle;
- (STPersonContactHandle)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STPersonContactHandle

- (STPersonContactHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = STPersonContactHandle;
  v5 = [(STPersonContactHandle *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_handle"];
    handle = v5->_handle;
    v5->_handle = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_label"];
    label = v5->_label;
    v5->_label = v8;

    v5->_type = [coderCopy decodeIntegerForKey:@"_type"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  handle = self->_handle;
  coderCopy = coder;
  [coderCopy encodeObject:handle forKey:@"_handle"];
  [coderCopy encodeObject:self->_label forKey:@"_label"];
  [coderCopy encodeInteger:self->_type forKey:@"_type"];
}

- (unint64_t)hash
{
  type = [(STPersonContactHandle *)self type];
  label = [(STPersonContactHandle *)self label];
  v5 = [label hash] ^ type;
  handle = [(STPersonContactHandle *)self handle];
  v7 = [handle hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(STPersonContactHandle *)self isEqualToPersonContactHandle:equalCopy];

  return v5;
}

- (BOOL)isEqualToPersonContactHandle:(id)handle
{
  handleCopy = handle;
  type = [(STPersonContactHandle *)self type];
  if (type != [handleCopy type])
  {
    goto LABEL_11;
  }

  label = [(STPersonContactHandle *)self label];
  if (label)
  {
  }

  else
  {
    label2 = [handleCopy label];

    if (label2)
    {
      goto LABEL_11;
    }
  }

  label3 = [(STPersonContactHandle *)self label];
  label4 = [handleCopy label];
  v9 = [label3 isEqualToString:label4];

  if (!v9)
  {
LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  handle = [(STPersonContactHandle *)self handle];
  if (!handle)
  {
    handle2 = [handleCopy handle];

    if (!handle2)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

LABEL_7:
  handle3 = [(STPersonContactHandle *)self handle];
  handle4 = [handleCopy handle];
  v13 = [handle3 isEqualToString:handle4];

LABEL_12:
  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  handle = [(STPersonContactHandle *)self handle];
  label = [(STPersonContactHandle *)self label];
  v7 = [v3 stringWithFormat:@"<%@: %p handle=%@ (%@)>", v4, self, handle, label];;

  return v7;
}

@end