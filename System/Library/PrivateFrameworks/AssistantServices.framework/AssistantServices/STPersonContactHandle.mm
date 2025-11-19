@interface STPersonContactHandle
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPersonContactHandle:(id)a3;
- (STPersonContactHandle)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STPersonContactHandle

- (STPersonContactHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = STPersonContactHandle;
  v5 = [(STPersonContactHandle *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_handle"];
    handle = v5->_handle;
    v5->_handle = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_label"];
    label = v5->_label;
    v5->_label = v8;

    v5->_type = [v4 decodeIntegerForKey:@"_type"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  handle = self->_handle;
  v5 = a3;
  [v5 encodeObject:handle forKey:@"_handle"];
  [v5 encodeObject:self->_label forKey:@"_label"];
  [v5 encodeInteger:self->_type forKey:@"_type"];
}

- (unint64_t)hash
{
  v3 = [(STPersonContactHandle *)self type];
  v4 = [(STPersonContactHandle *)self label];
  v5 = [v4 hash] ^ v3;
  v6 = [(STPersonContactHandle *)self handle];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(STPersonContactHandle *)self isEqualToPersonContactHandle:v4];

  return v5;
}

- (BOOL)isEqualToPersonContactHandle:(id)a3
{
  v4 = a3;
  v5 = [(STPersonContactHandle *)self type];
  if (v5 != [v4 type])
  {
    goto LABEL_11;
  }

  v6 = [(STPersonContactHandle *)self label];
  if (v6)
  {
  }

  else
  {
    v14 = [v4 label];

    if (v14)
    {
      goto LABEL_11;
    }
  }

  v7 = [(STPersonContactHandle *)self label];
  v8 = [v4 label];
  v9 = [v7 isEqualToString:v8];

  if (!v9)
  {
LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v10 = [(STPersonContactHandle *)self handle];
  if (!v10)
  {
    v15 = [v4 handle];

    if (!v15)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

LABEL_7:
  v11 = [(STPersonContactHandle *)self handle];
  v12 = [v4 handle];
  v13 = [v11 isEqualToString:v12];

LABEL_12:
  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(STPersonContactHandle *)self handle];
  v6 = [(STPersonContactHandle *)self label];
  v7 = [v3 stringWithFormat:@"<%@: %p handle=%@ (%@)>", v4, self, v5, v6];;

  return v7;
}

@end