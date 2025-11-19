@interface CTIPFilterContainer
- (CTIPFilterContainer)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTIPFilterContainer

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTIPFilterContainer *)self filters];

  if (v4)
  {
    v5 = [(CTIPFilterContainer *)self filters];
    [v3 appendFormat:@", filters=%@", v5];
  }

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(CTIPFilterContainer *)self filters];
  v6 = [v5 copy];
  [v4 setFilters:v6];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CTIPFilterContainer *)self filters];
  [v4 encodeObject:v5 forKey:@"filters"];
}

- (CTIPFilterContainer)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CTIPFilterContainer;
  v5 = [(CTIPFilterContainer *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"filters"];
    filters = v5->_filters;
    v5->_filters = v9;
  }

  return v5;
}

@end