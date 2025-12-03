@interface GCDeviceElementDescription
- (BOOL)isEqual:(id)equal;
- (GCDeviceElementDescription)initWithCoder:(id)coder;
- (unint64_t)hash;
@end

@implementation GCDeviceElementDescription

- (GCDeviceElementDescription)initWithCoder:(id)coder
{
  [(GCDeviceElementDescription *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (unint64_t)hash
{
  name = [(GCDeviceElementDescription *)self name];
  v3 = [name hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    name = [(GCDeviceElementDescription *)self name];
    name2 = [equalCopy name];
    v7 = [name isEqual:name2];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = 0;
      goto LABEL_7;
    }

    name = [(GCDeviceElementDescription *)self name];
    v7 = [name isEqual:equalCopy];
  }

LABEL_7:
  return v7;
}

@end