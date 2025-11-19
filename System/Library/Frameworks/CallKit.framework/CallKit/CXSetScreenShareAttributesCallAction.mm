@interface CXSetScreenShareAttributesCallAction
- (CXSetScreenShareAttributesCallAction)initWithCallUUID:(id)a3 attributes:(id)a4;
- (CXSetScreenShareAttributesCallAction)initWithCoder:(id)a3;
- (id)customDescription;
- (void)encodeWithCoder:(id)a3;
- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4;
@end

@implementation CXSetScreenShareAttributesCallAction

- (CXSetScreenShareAttributesCallAction)initWithCallUUID:(id)a3 attributes:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CXSetScreenShareAttributesCallAction;
  v8 = [(CXCallAction *)&v11 initWithCallUUID:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_attributes, a4);
  }

  return v9;
}

- (id)customDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = [(CXSetScreenShareAttributesCallAction *)self attributes];
  [v3 appendFormat:@" attributes=%@", v4];

  v5 = [v3 copy];

  return v5;
}

- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4
{
  v8.receiver = self;
  v8.super_class = CXSetScreenShareAttributesCallAction;
  v6 = a3;
  [(CXAction *)&v8 updateCopy:v6 withZone:a4];
  v7 = [(CXSetScreenShareAttributesCallAction *)self attributes:v8.receiver];
  [v6 setAttributes:v7];
}

- (CXSetScreenShareAttributesCallAction)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CXSetScreenShareAttributesCallAction;
  v5 = [(CXCallAction *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_attributes);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    attributes = v5->_attributes;
    v5->_attributes = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CXSetScreenShareAttributesCallAction;
  v4 = a3;
  [(CXCallAction *)&v7 encodeWithCoder:v4];
  v5 = [(CXSetScreenShareAttributesCallAction *)self attributes:v7.receiver];
  v6 = NSStringFromSelector(sel_attributes);
  [v4 encodeObject:v5 forKey:v6];
}

@end