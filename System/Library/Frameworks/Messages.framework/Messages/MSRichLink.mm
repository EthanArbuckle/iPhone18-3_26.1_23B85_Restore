@interface MSRichLink
- (MSRichLink)init;
- (MSRichLink)initWithCoder:(id)coder;
- (MSRichLink)initWithURL:(id)l;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSRichLink

- (MSRichLink)init
{
  v3.receiver = self;
  v3.super_class = MSRichLink;
  return [(MSRichLink *)&v3 init];
}

- (MSRichLink)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = MSRichLink;
  v6 = [(MSRichLink *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_URL, l);
  }

  return v7;
}

- (MSRichLink)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MSRichLink;
  v5 = [(MSRichLink *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"linkMetadata"];
    linkMetadata = v5->_linkMetadata;
    v5->_linkMetadata = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  linkMetadata = self->_linkMetadata;
  coderCopy = coder;
  [coderCopy encodeObject:linkMetadata forKey:@"linkMetadata"];
  [coderCopy encodeObject:self->_URL forKey:@"URL"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[MSRichLink allocWithZone:?]];
  v5 = [(NSURL *)self->_URL copy];
  [(MSRichLink *)v4 setURL:v5];

  v6 = [(LPLinkMetadata *)self->_linkMetadata copy];
  [(MSRichLink *)v4 set_linkMetadata:v6];

  return v4;
}

@end