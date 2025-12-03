@interface CTServiceDescriptorContainer
- (BOOL)isEqual:(id)equal;
- (CTServiceDescriptorContainer)initWithCoder:(id)coder;
- (CTServiceDescriptorContainer)initWithDescriptors:(id)descriptors;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CTServiceDescriptorContainer

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  descriptors = [(CTServiceDescriptorContainer *)self descriptors];
  [v3 appendFormat:@" descriptors=%@", descriptors];

  [v3 appendString:@">"];

  return v3;
}

- (CTServiceDescriptorContainer)initWithDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  v9.receiver = self;
  v9.super_class = CTServiceDescriptorContainer;
  v6 = [(CTServiceDescriptorContainer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_descriptors, descriptors);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    descriptors = [(CTServiceDescriptorContainer *)self descriptors];
    if (descriptors)
    {

LABEL_7:
      descriptors2 = [(CTServiceDescriptorContainer *)self descriptors];
      descriptors3 = [(CTServiceDescriptorContainer *)equalCopy descriptors];
      v6 = [descriptors2 isEqualToArray:descriptors3];

      goto LABEL_9;
    }

    descriptors4 = [(CTServiceDescriptorContainer *)equalCopy descriptors];

    if (descriptors4)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSArray *)self->_descriptors copy];
  [v4 setDescriptors:v5];

  return v4;
}

- (CTServiceDescriptorContainer)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
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

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"descriptors"];
    descriptors = v5->_descriptors;
    v5->_descriptors = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

@end