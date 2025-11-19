@interface AXRequest
- (AXRequest)initWithCoder:(id)a3;
- (AXRequest)initWithTechnology:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXRequest

- (AXRequest)initWithTechnology:(id)a3
{
  v6.receiver = self;
  v6.super_class = AXRequest;
  v3 = a3;
  v4 = [(AXRequest *)&v6 init];
  [(AXRequest *)v4 setTechnology:v3, v6.receiver, v6.super_class];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = self;
  v7.receiver = v3;
  v7.super_class = AXRequest;
  v4 = [(AXRequest *)&v7 init];
  v5 = [(AXRequest *)v3 technology];
  [(AXRequest *)v4 setTechnology:v5];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AXRequest *)self technology];
  [v4 encodeObject:v5 forKey:@"technology"];
}

- (AXRequest)initWithCoder:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AXRequest *)self init];
  v6 = MEMORY[0x1E695DFD8];
  v12[0] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v8 = [v6 setWithArray:v7];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"technology"];

  [(AXRequest *)v5 setTechnology:v9];
  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 technology];

    v6 = [(AXRequest *)self technology];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = AXRequest;
    v7 = [(AXRequest *)&v9 isEqual:v4];
  }

  return v7;
}

@end