@interface CTServiceDescriptorContainer
- (BOOL)isEqual:(id)a3;
- (CTServiceDescriptorContainer)initWithCoder:(id)a3;
- (CTServiceDescriptorContainer)initWithDescriptors:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CTServiceDescriptorContainer

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTServiceDescriptorContainer *)self descriptors];
  [v3 appendFormat:@" descriptors=%@", v4];

  [v3 appendString:@">"];

  return v3;
}

- (CTServiceDescriptorContainer)initWithDescriptors:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CTServiceDescriptorContainer;
  v6 = [(CTServiceDescriptorContainer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_descriptors, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CTServiceDescriptorContainer *)self descriptors];
    if (v5)
    {

LABEL_7:
      v8 = [(CTServiceDescriptorContainer *)self descriptors];
      v9 = [(CTServiceDescriptorContainer *)v4 descriptors];
      v6 = [v8 isEqualToArray:v9];

      goto LABEL_9;
    }

    v7 = [(CTServiceDescriptorContainer *)v4 descriptors];

    if (v7)
    {
      goto LABEL_7;
    }

LABEL_8:
    v6 = 1;
    goto LABEL_9;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSArray *)self->_descriptors copy];
  [v4 setDescriptors:v5];

  return v4;
}

- (CTServiceDescriptorContainer)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CTServiceDescriptorContainer;
  v5 = [(CTServiceDescriptorContainer *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"descriptors"];
    descriptors = v5->_descriptors;
    v5->_descriptors = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

@end