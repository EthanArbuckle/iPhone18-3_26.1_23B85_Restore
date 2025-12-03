@interface MWFeedInfo
- (MWFeedInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MWFeedInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = self->title;
  v9 = coderCopy;
  if (title)
  {
    [coderCopy encodeObject:title forKey:@"title"];
    coderCopy = v9;
  }

  link = self->link;
  if (link)
  {
    [v9 encodeObject:link forKey:@"link"];
    coderCopy = v9;
  }

  summary = self->summary;
  if (summary)
  {
    [v9 encodeObject:summary forKey:@"summary"];
    coderCopy = v9;
  }

  url = self->url;
  if (url)
  {
    [v9 encodeObject:url forKey:@"url"];
    coderCopy = v9;
  }
}

- (MWFeedInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MWFeedInfo;
  v5 = [(MWFeedInfo *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"title"];
    title = v5->title;
    v5->title = v6;

    v8 = [coderCopy decodeObjectForKey:@"link"];
    link = v5->link;
    v5->link = v8;

    v10 = [coderCopy decodeObjectForKey:@"summary"];
    summary = v5->summary;
    v5->summary = v10;

    v12 = [coderCopy decodeObjectForKey:@"url"];
    url = v5->url;
    v5->url = v12;
  }

  return v5;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"MWFeedInfo: "];
  title = self->title;
  if (title)
  {
    if ([(NSString *)title length]<= 0x32)
    {
      [v3 appendFormat:@"“%@”", self->title];
    }

    else
    {
      v5 = [(NSString *)self->title substringToIndex:49];
      v6 = [v5 stringByAppendingString:@"…"];
      [v3 appendFormat:@"“%@”", v6];
    }
  }

  return v3;
}

@end