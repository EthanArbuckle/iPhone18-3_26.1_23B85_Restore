@interface MSRichLink
- (MSRichLink)init;
- (MSRichLink)initWithCoder:(id)a3;
- (MSRichLink)initWithURL:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSRichLink

- (MSRichLink)init
{
  v3.receiver = self;
  v3.super_class = MSRichLink;
  return [(MSRichLink *)&v3 init];
}

- (MSRichLink)initWithURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MSRichLink;
  v6 = [(MSRichLink *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_URL, a3);
  }

  return v7;
}

- (MSRichLink)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MSRichLink;
  v5 = [(MSRichLink *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"linkMetadata"];
    linkMetadata = v5->_linkMetadata;
    v5->_linkMetadata = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  linkMetadata = self->_linkMetadata;
  v5 = a3;
  [v5 encodeObject:linkMetadata forKey:@"linkMetadata"];
  [v5 encodeObject:self->_URL forKey:@"URL"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[MSRichLink allocWithZone:?]];
  v5 = [(NSURL *)self->_URL copy];
  [(MSRichLink *)v4 setURL:v5];

  v6 = [(LPLinkMetadata *)self->_linkMetadata copy];
  [(MSRichLink *)v4 set_linkMetadata:v6];

  return v4;
}

@end