@interface AXRequest
- (AXRequest)initWithCoder:(id)coder;
- (AXRequest)initWithTechnology:(id)technology;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXRequest

- (AXRequest)initWithTechnology:(id)technology
{
  v6.receiver = self;
  v6.super_class = AXRequest;
  technologyCopy = technology;
  v4 = [(AXRequest *)&v6 init];
  [(AXRequest *)v4 setTechnology:technologyCopy, v6.receiver, v6.super_class];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v7.receiver = selfCopy;
  v7.super_class = AXRequest;
  v4 = [(AXRequest *)&v7 init];
  technology = [(AXRequest *)selfCopy technology];
  [(AXRequest *)v4 setTechnology:technology];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  technology = [(AXRequest *)self technology];
  [coderCopy encodeObject:technology forKey:@"technology"];
}

- (AXRequest)initWithCoder:(id)coder
{
  v12[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [(AXRequest *)self init];
  v6 = MEMORY[0x1E695DFD8];
  v12[0] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"technology"];

  [(AXRequest *)v5 setTechnology:v9];
  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    technology = [equalCopy technology];

    technology2 = [(AXRequest *)self technology];
    v7 = [technology isEqualToString:technology2];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = AXRequest;
    v7 = [(AXRequest *)&v9 isEqual:equalCopy];
  }

  return v7;
}

@end