@interface CTIPFilterContainer
- (CTIPFilterContainer)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTIPFilterContainer

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  filters = [(CTIPFilterContainer *)self filters];

  if (filters)
  {
    filters2 = [(CTIPFilterContainer *)self filters];
    [v3 appendFormat:@", filters=%@", filters2];
  }

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  filters = [(CTIPFilterContainer *)self filters];
  v6 = [filters copy];
  [v4 setFilters:v6];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  filters = [(CTIPFilterContainer *)self filters];
  [coderCopy encodeObject:filters forKey:@"filters"];
}

- (CTIPFilterContainer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CTIPFilterContainer;
  v5 = [(CTIPFilterContainer *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"filters"];
    filters = v5->_filters;
    v5->_filters = v9;
  }

  return v5;
}

@end