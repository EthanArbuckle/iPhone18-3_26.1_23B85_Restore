@interface NTKUpNextElement
+ (id)elementWithREElement:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NTKUpNextElement)initWithREElement:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)setElement:(id)a3;
@end

@implementation NTKUpNextElement

+ (id)elementWithREElement:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithREElement:v4];

  return v5;
}

- (NTKUpNextElement)initWithREElement:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = NTKUpNextElement;
  v6 = [(NTKUpNextElement *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_element, a3);
    v8 = [v5 identifier];
    v9 = [v8 copy];
    elementIdentifier = v7->_elementIdentifier;
    v7->_elementIdentifier = v9;
  }

  return v7;
}

- (void)setElement:(id)a3
{
  v5 = a3;
  p_element = &self->_element;
  if (self->_element != v5)
  {
    v7 = [(NTKUpNextElement *)self elementIdentifier];
    v8 = [(REElement *)v5 identifier];
    v9 = [v7 isEqual:v8];

    if ((v9 & 1) == 0)
    {
      v10 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_BEE4(p_element, v5, v10);
      }
    }

    objc_storeStrong(p_element, a3);
  }
}

- (unint64_t)hash
{
  v2 = [(NTKUpNextElement *)self elementIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 elementIdentifier];
    v6 = [(NTKUpNextElement *)self elementIdentifier];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = [(NTKUpNextElement *)self elementIdentifier];
  v4 = [NSString stringWithFormat:@"<Wrapped %p: %@>", self, v3];

  return v4;
}

@end