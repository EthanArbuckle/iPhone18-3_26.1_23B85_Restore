@interface ACUISEdgeInsets
- (ACUISEdgeInsets)init;
- (ACUISEdgeInsets)initWithCoder:(id)coder;
- (ACUISEdgeInsets)initWithTop:(double)top leading:(double)leading bottom:(double)bottom trailing:(double)trailing;
- (BOOL)isEqual:(id)equal;
- (id)_initWithEdgeInsets:(id)insets;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation ACUISEdgeInsets

- (id)_initWithEdgeInsets:(id)insets
{
  insetsCopy = insets;
  v9.receiver = self;
  v9.super_class = ACUISEdgeInsets;
  v6 = [(ACUISEdgeInsets *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_edgeInsets, insets);
  }

  return v7;
}

- (ACUISEdgeInsets)init
{
  v3 = objc_alloc_init(_TtC18ActivityUIServices18ActivityEdgeInsets);
  v4 = [(ACUISEdgeInsets *)self _initWithEdgeInsets:v3];

  return v4;
}

- (ACUISEdgeInsets)initWithTop:(double)top leading:(double)leading bottom:(double)bottom trailing:(double)trailing
{
  v10 = [(ACUISEdgeInsets *)self init];
  v11 = v10;
  if (v10)
  {
    [(ActivityEdgeInsets *)v10->_edgeInsets setTop:top];
    [(ActivityEdgeInsets *)v11->_edgeInsets setLeading:leading];
    [(ActivityEdgeInsets *)v11->_edgeInsets setBottom:bottom];
    [(ActivityEdgeInsets *)v11->_edgeInsets setTrailing:trailing];
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ActivityEdgeInsets *)self->_edgeInsets isEqual:equalCopy->_edgeInsets];
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_edgeInsets withName:@"insets"];
  build = [v3 build];

  return build;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ACUISEdgeInsets alloc];
  v5 = [(ActivityEdgeInsets *)self->_edgeInsets copy];
  v6 = [(ACUISEdgeInsets *)v4 _initWithEdgeInsets:v5];

  return v6;
}

- (ACUISEdgeInsets)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"insets"];

  v6 = [(ACUISEdgeInsets *)self _initWithEdgeInsets:v5];
  return v6;
}

@end