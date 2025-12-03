@interface CXLabeledHandle
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLabeledHandle:(id)handle;
- (CXLabeledHandle)initWithCoder:(id)coder;
- (CXLabeledHandle)initWithHandle:(id)handle label:(id)label;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CXLabeledHandle

- (CXLabeledHandle)initWithHandle:(id)handle label:(id)label
{
  handleCopy = handle;
  labelCopy = label;
  v13.receiver = self;
  v13.super_class = CXLabeledHandle;
  v9 = [(CXLabeledHandle *)&v13 init];
  if (v9)
  {
    if (handleCopy)
    {
      if (labelCopy)
      {
LABEL_4:
        objc_storeStrong(&v9->_handle, handle);
        v10 = [labelCopy copy];
        label = v9->_label;
        v9->_label = v10;

        goto LABEL_5;
      }
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXLabeledHandle initWithHandle:label:]", @"handle"}];
      if (labelCopy)
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
  handle = [(CXLabeledHandle *)self handle];
  label = [(CXLabeledHandle *)self label];
  v7 = [v3 stringWithFormat:@"<%@ %p handle=%@ label=%@>", v4, self, handle, label];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CXLabeledHandle *)self isEqualToLabeledHandle:equalCopy];

  return v5;
}

- (BOOL)isEqualToLabeledHandle:(id)handle
{
  handleCopy = handle;
  handle = [(CXLabeledHandle *)self handle];
  handle2 = [handleCopy handle];
  if ([handle isEqualToHandle:handle2])
  {
    label = [(CXLabeledHandle *)self label];
    label2 = [handleCopy label];
    v9 = (label | label2) == 0;
    if (label2)
    {
      v9 = [label isEqualToString:label2];
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
  handle = [(CXLabeledHandle *)self handle];
  v4 = [handle hash];
  label = [(CXLabeledHandle *)self label];
  v6 = [label hash];

  return v6 ^ v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  handle = [(CXLabeledHandle *)self handle];
  label = [(CXLabeledHandle *)self label];
  v7 = [v4 initWithHandle:handle label:label];

  return v7;
}

- (CXLabeledHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_handle);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_label);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = [(CXLabeledHandle *)self initWithHandle:v7 label:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  handle = [(CXLabeledHandle *)self handle];
  v6 = NSStringFromSelector(sel_handle);
  [coderCopy encodeObject:handle forKey:v6];

  label = [(CXLabeledHandle *)self label];
  v7 = NSStringFromSelector(sel_label);
  [coderCopy encodeObject:label forKey:v7];
}

@end