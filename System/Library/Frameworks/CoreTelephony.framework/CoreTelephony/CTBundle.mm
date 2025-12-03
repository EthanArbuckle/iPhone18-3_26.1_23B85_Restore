@interface CTBundle
- (CTBundle)initWithBundleType:(int64_t)type;
- (CTBundle)initWithCoder:(id)coder;
- (NSString)ct_shortDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CTBundle

- (NSString)ct_shortDescription
{
  v3 = MEMORY[0x1E696AD60];
  ct_shortName = [(CTBundle *)self ct_shortName];
  v5 = [v3 stringWithFormat:@"<%@", ct_shortName];

  type = [(CTBundle *)self type];
  if ((type - 1) > 5)
  {
    v7 = "u";
  }

  else
  {
    v7 = off_1E6A48548[type - 1];
  }

  [v5 appendFormat:@" type=%s", v7];
  [v5 appendString:@">"];

  return v5;
}

- (CTBundle)initWithBundleType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = CTBundle;
  result = [(CTBundle *)&v5 init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  type = [(CTBundle *)self type];
  if ((type - 1) > 5)
  {
    v5 = "CTBundleTypeUnknown";
  }

  else
  {
    v5 = off_1E6A48518[type - 1];
  }

  [v3 appendFormat:@" Bundle Type=%s", v5];
  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  type = [(CTBundle *)self type];

  return [v4 initWithBundleType:type];
}

- (CTBundle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = -[CTBundle initWithBundleType:](self, "initWithBundleType:", [coderCopy decodeIntegerForKey:@"bundletype"]);

  return v5;
}

@end