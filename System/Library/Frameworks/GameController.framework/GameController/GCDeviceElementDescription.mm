@interface GCDeviceElementDescription
- (BOOL)isEqual:(id)a3;
- (GCDeviceElementDescription)initWithCoder:(id)a3;
- (unint64_t)hash;
@end

@implementation GCDeviceElementDescription

- (GCDeviceElementDescription)initWithCoder:(id)a3
{
  [(GCDeviceElementDescription *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (unint64_t)hash
{
  v2 = [(GCDeviceElementDescription *)self name];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(GCDeviceElementDescription *)self name];
    v6 = [v4 name];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v5 = [(GCDeviceElementDescription *)self name];
    v7 = [v5 isEqual:v4];
  }

LABEL_7:
  return v7;
}

@end