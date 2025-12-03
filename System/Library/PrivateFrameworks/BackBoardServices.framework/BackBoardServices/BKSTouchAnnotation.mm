@interface BKSTouchAnnotation
- (BKSTouchAnnotation)initWithCoder:(id)coder;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSTouchAnnotation

- (BKSTouchAnnotation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = BKSTouchAnnotation;
  v5 = [(BKSTouchAnnotation *)&v11 init];
  if (v5)
  {
    v5->_touchIdentifier = [coderCopy decodeInt32ForKey:@"touchIdentifier"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  touchIdentifier = self->_touchIdentifier;
  coderCopy = coder;
  [coderCopy encodeInt32:touchIdentifier forKey:@"touchIdentifier"];
  [coderCopy encodeObject:self->_text forKey:@"text"];
  [coderCopy encodeObject:self->_uniqueIdentifier forKey:@"uniqueIdentifier"];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(BKSTouchAnnotation *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendUnsignedInt:self->_touchIdentifier withName:@"touchIdentifier"];
  v6 = [succinctDescriptionBuilder appendObject:self->_text withName:@"text"];
  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier)
  {
    v8 = [succinctDescriptionBuilder appendObject:uniqueIdentifier withName:@"uniqueIdentifier"];
  }

  return succinctDescriptionBuilder;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BKSTouchAnnotation *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BKSTouchAnnotation *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

@end