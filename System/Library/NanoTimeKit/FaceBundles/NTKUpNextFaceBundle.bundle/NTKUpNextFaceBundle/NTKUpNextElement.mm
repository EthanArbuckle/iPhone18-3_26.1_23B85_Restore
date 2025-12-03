@interface NTKUpNextElement
+ (id)elementWithREElement:(id)element;
- (BOOL)isEqual:(id)equal;
- (NTKUpNextElement)initWithREElement:(id)element;
- (id)description;
- (unint64_t)hash;
- (void)setElement:(id)element;
@end

@implementation NTKUpNextElement

+ (id)elementWithREElement:(id)element
{
  elementCopy = element;
  v5 = [[self alloc] initWithREElement:elementCopy];

  return v5;
}

- (NTKUpNextElement)initWithREElement:(id)element
{
  elementCopy = element;
  v12.receiver = self;
  v12.super_class = NTKUpNextElement;
  v6 = [(NTKUpNextElement *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_element, element);
    identifier = [elementCopy identifier];
    v9 = [identifier copy];
    elementIdentifier = v7->_elementIdentifier;
    v7->_elementIdentifier = v9;
  }

  return v7;
}

- (void)setElement:(id)element
{
  elementCopy = element;
  p_element = &self->_element;
  if (self->_element != elementCopy)
  {
    elementIdentifier = [(NTKUpNextElement *)self elementIdentifier];
    identifier = [(REElement *)elementCopy identifier];
    v9 = [elementIdentifier isEqual:identifier];

    if ((v9 & 1) == 0)
    {
      v10 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_BEE4(p_element, elementCopy, v10);
      }
    }

    objc_storeStrong(p_element, element);
  }
}

- (unint64_t)hash
{
  elementIdentifier = [(NTKUpNextElement *)self elementIdentifier];
  v3 = [elementIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    elementIdentifier = [equalCopy elementIdentifier];
    elementIdentifier2 = [(NTKUpNextElement *)self elementIdentifier];
    v7 = [elementIdentifier isEqual:elementIdentifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  elementIdentifier = [(NTKUpNextElement *)self elementIdentifier];
  v4 = [NSString stringWithFormat:@"<Wrapped %p: %@>", self, elementIdentifier];

  return v4;
}

@end