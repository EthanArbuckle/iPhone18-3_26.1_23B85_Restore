@interface BKSTouchAnnotation
- (BKSTouchAnnotation)initWithCoder:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKSTouchAnnotation

- (BKSTouchAnnotation)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = BKSTouchAnnotation;
  v5 = [(BKSTouchAnnotation *)&v11 init];
  if (v5)
  {
    v5->_touchIdentifier = [v4 decodeInt32ForKey:@"touchIdentifier"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  touchIdentifier = self->_touchIdentifier;
  v5 = a3;
  [v5 encodeInt32:touchIdentifier forKey:@"touchIdentifier"];
  [v5 encodeObject:self->_text forKey:@"text"];
  [v5 encodeObject:self->_uniqueIdentifier forKey:@"uniqueIdentifier"];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(BKSTouchAnnotation *)self succinctDescriptionBuilder];
  v5 = [v4 appendUnsignedInt:self->_touchIdentifier withName:@"touchIdentifier"];
  v6 = [v4 appendObject:self->_text withName:@"text"];
  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier)
  {
    v8 = [v4 appendObject:uniqueIdentifier withName:@"uniqueIdentifier"];
  }

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BKSTouchAnnotation *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(BKSTouchAnnotation *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

@end