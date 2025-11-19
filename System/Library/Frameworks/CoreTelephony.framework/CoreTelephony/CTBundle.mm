@interface CTBundle
- (CTBundle)initWithBundleType:(int64_t)a3;
- (CTBundle)initWithCoder:(id)a3;
- (NSString)ct_shortDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CTBundle

- (NSString)ct_shortDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = [(CTBundle *)self ct_shortName];
  v5 = [v3 stringWithFormat:@"<%@", v4];

  v6 = [(CTBundle *)self type];
  if ((v6 - 1) > 5)
  {
    v7 = "u";
  }

  else
  {
    v7 = off_1E6A48548[v6 - 1];
  }

  [v5 appendFormat:@" type=%s", v7];
  [v5 appendString:@">"];

  return v5;
}

- (CTBundle)initWithBundleType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = CTBundle;
  result = [(CTBundle *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTBundle *)self type];
  if ((v4 - 1) > 5)
  {
    v5 = "CTBundleTypeUnknown";
  }

  else
  {
    v5 = off_1E6A48518[v4 - 1];
  }

  [v3 appendFormat:@" Bundle Type=%s", v5];
  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(CTBundle *)self type];

  return [v4 initWithBundleType:v5];
}

- (CTBundle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = -[CTBundle initWithBundleType:](self, "initWithBundleType:", [v4 decodeIntegerForKey:@"bundletype"]);

  return v5;
}

@end