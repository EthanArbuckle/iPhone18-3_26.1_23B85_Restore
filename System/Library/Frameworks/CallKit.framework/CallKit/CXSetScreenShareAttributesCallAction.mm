@interface CXSetScreenShareAttributesCallAction
- (CXSetScreenShareAttributesCallAction)initWithCallUUID:(id)d attributes:(id)attributes;
- (CXSetScreenShareAttributesCallAction)initWithCoder:(id)coder;
- (id)customDescription;
- (void)encodeWithCoder:(id)coder;
- (void)updateCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXSetScreenShareAttributesCallAction

- (CXSetScreenShareAttributesCallAction)initWithCallUUID:(id)d attributes:(id)attributes
{
  attributesCopy = attributes;
  v11.receiver = self;
  v11.super_class = CXSetScreenShareAttributesCallAction;
  v8 = [(CXCallAction *)&v11 initWithCallUUID:d];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_attributes, attributes);
  }

  return v9;
}

- (id)customDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  attributes = [(CXSetScreenShareAttributesCallAction *)self attributes];
  [v3 appendFormat:@" attributes=%@", attributes];

  v5 = [v3 copy];

  return v5;
}

- (void)updateCopy:(id)copy withZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = CXSetScreenShareAttributesCallAction;
  copyCopy = copy;
  [(CXAction *)&v8 updateCopy:copyCopy withZone:zone];
  v7 = [(CXSetScreenShareAttributesCallAction *)self attributes:v8.receiver];
  [copyCopy setAttributes:v7];
}

- (CXSetScreenShareAttributesCallAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CXSetScreenShareAttributesCallAction;
  v5 = [(CXCallAction *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_attributes);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    attributes = v5->_attributes;
    v5->_attributes = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CXSetScreenShareAttributesCallAction;
  coderCopy = coder;
  [(CXCallAction *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CXSetScreenShareAttributesCallAction *)self attributes:v7.receiver];
  v6 = NSStringFromSelector(sel_attributes);
  [coderCopy encodeObject:v5 forKey:v6];
}

@end