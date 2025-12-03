@interface _INUIExtensionContextState
- (BOOL)isEqual:(id)equal;
- (_INUIExtensionContextState)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _INUIExtensionContextState

- (void)encodeWithCoder:(id)coder
{
  hostedViewMinimumAllowedSizes = self->_hostedViewMinimumAllowedSizes;
  coderCopy = coder;
  [coderCopy encodeObject:hostedViewMinimumAllowedSizes forKey:@"hostedViewMinimumAllowedSizes"];
  [coderCopy encodeObject:self->_hostedViewMaximumAllowedSizes forKey:@"hostedViewMaximumAllowedSizes"];
  [coderCopy encodeObject:self->_interfaceSections forKey:@"interfaceSections"];
}

- (_INUIExtensionContextState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = _INUIExtensionContextState;
  v5 = [(_INUIExtensionContextState *)&v21 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"hostedViewMinimumAllowedSizes"];
    [(_INUIExtensionContextState *)v5 setHostedViewMinimumAllowedSizes:v10];

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v11 setWithObjects:{v12, v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"hostedViewMaximumAllowedSizes"];
    [(_INUIExtensionContextState *)v5 setHostedViewMaximumAllowedSizes:v15];

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"interfaceSections"];
    [(_INUIExtensionContextState *)v5 setInterfaceSections:v19];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    hostedViewMinimumAllowedSizes = self->_hostedViewMinimumAllowedSizes;
    v9 = 0;
    if (hostedViewMinimumAllowedSizes == v5[1] || [(NSDictionary *)hostedViewMinimumAllowedSizes isEqual:?])
    {
      hostedViewMaximumAllowedSizes = self->_hostedViewMaximumAllowedSizes;
      if (hostedViewMaximumAllowedSizes == v5[2] || [(NSDictionary *)hostedViewMaximumAllowedSizes isEqual:?])
      {
        interfaceSections = self->_interfaceSections;
        if (interfaceSections == v5[3] || [(NSArray *)interfaceSections isEqual:?])
        {
          v9 = 1;
        }
      }
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
  v3 = [(NSDictionary *)self->_hostedViewMinimumAllowedSizes hash];
  v4 = [(NSDictionary *)self->_hostedViewMaximumAllowedSizes hash]^ v3;
  return v4 ^ [(NSArray *)self->_interfaceSections hash];
}

@end