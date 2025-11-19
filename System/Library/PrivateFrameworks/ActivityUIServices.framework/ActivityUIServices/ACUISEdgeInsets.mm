@interface ACUISEdgeInsets
- (ACUISEdgeInsets)init;
- (ACUISEdgeInsets)initWithCoder:(id)a3;
- (ACUISEdgeInsets)initWithTop:(double)a3 leading:(double)a4 bottom:(double)a5 trailing:(double)a6;
- (BOOL)isEqual:(id)a3;
- (id)_initWithEdgeInsets:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation ACUISEdgeInsets

- (id)_initWithEdgeInsets:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ACUISEdgeInsets;
  v6 = [(ACUISEdgeInsets *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_edgeInsets, a3);
  }

  return v7;
}

- (ACUISEdgeInsets)init
{
  v3 = objc_alloc_init(_TtC18ActivityUIServices18ActivityEdgeInsets);
  v4 = [(ACUISEdgeInsets *)self _initWithEdgeInsets:v3];

  return v4;
}

- (ACUISEdgeInsets)initWithTop:(double)a3 leading:(double)a4 bottom:(double)a5 trailing:(double)a6
{
  v10 = [(ACUISEdgeInsets *)self init];
  v11 = v10;
  if (v10)
  {
    [(ActivityEdgeInsets *)v10->_edgeInsets setTop:a3];
    [(ActivityEdgeInsets *)v11->_edgeInsets setLeading:a4];
    [(ActivityEdgeInsets *)v11->_edgeInsets setBottom:a5];
    [(ActivityEdgeInsets *)v11->_edgeInsets setTrailing:a6];
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ActivityEdgeInsets *)self->_edgeInsets isEqual:v4->_edgeInsets];
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_edgeInsets withName:@"insets"];
  v5 = [v3 build];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ACUISEdgeInsets alloc];
  v5 = [(ActivityEdgeInsets *)self->_edgeInsets copy];
  v6 = [(ACUISEdgeInsets *)v4 _initWithEdgeInsets:v5];

  return v6;
}

- (ACUISEdgeInsets)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"insets"];

  v6 = [(ACUISEdgeInsets *)self _initWithEdgeInsets:v5];
  return v6;
}

@end