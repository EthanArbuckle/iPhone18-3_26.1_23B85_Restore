@interface CXLabeledHandle
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLabeledHandle:(id)a3;
- (CXLabeledHandle)initWithCoder:(id)a3;
- (CXLabeledHandle)initWithHandle:(id)a3 label:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CXLabeledHandle

- (CXLabeledHandle)initWithHandle:(id)a3 label:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CXLabeledHandle;
  v9 = [(CXLabeledHandle *)&v13 init];
  if (v9)
  {
    if (v7)
    {
      if (v8)
      {
LABEL_4:
        objc_storeStrong(&v9->_handle, a3);
        v10 = [v8 copy];
        label = v9->_label;
        v9->_label = v10;

        goto LABEL_5;
      }
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXLabeledHandle initWithHandle:label:]", @"handle"}];
      if (v8)
      {
        goto LABEL_4;
      }
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXLabeledHandle initWithHandle:label:]", @"label"}];
    goto LABEL_4;
  }

LABEL_5:

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CXLabeledHandle *)self handle];
  v6 = [(CXLabeledHandle *)self label];
  v7 = [v3 stringWithFormat:@"<%@ %p handle=%@ label=%@>", v4, self, v5, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CXLabeledHandle *)self isEqualToLabeledHandle:v4];

  return v5;
}

- (BOOL)isEqualToLabeledHandle:(id)a3
{
  v4 = a3;
  v5 = [(CXLabeledHandle *)self handle];
  v6 = [v4 handle];
  if ([v5 isEqualToHandle:v6])
  {
    v7 = [(CXLabeledHandle *)self label];
    v8 = [v4 label];
    v9 = (v7 | v8) == 0;
    if (v8)
    {
      v9 = [v7 isEqualToString:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(CXLabeledHandle *)self handle];
  v4 = [v3 hash];
  v5 = [(CXLabeledHandle *)self label];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(CXLabeledHandle *)self handle];
  v6 = [(CXLabeledHandle *)self label];
  v7 = [v4 initWithHandle:v5 label:v6];

  return v7;
}

- (CXLabeledHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_handle);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_label);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = [(CXLabeledHandle *)self initWithHandle:v7 label:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXLabeledHandle *)self handle];
  v6 = NSStringFromSelector(sel_handle);
  [v4 encodeObject:v5 forKey:v6];

  v8 = [(CXLabeledHandle *)self label];
  v7 = NSStringFromSelector(sel_label);
  [v4 encodeObject:v8 forKey:v7];
}

@end