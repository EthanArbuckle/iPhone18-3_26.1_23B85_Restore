@interface MWFeedInfo
- (MWFeedInfo)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MWFeedInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  title = self->title;
  v9 = v4;
  if (title)
  {
    [v4 encodeObject:title forKey:@"title"];
    v4 = v9;
  }

  link = self->link;
  if (link)
  {
    [v9 encodeObject:link forKey:@"link"];
    v4 = v9;
  }

  summary = self->summary;
  if (summary)
  {
    [v9 encodeObject:summary forKey:@"summary"];
    v4 = v9;
  }

  url = self->url;
  if (url)
  {
    [v9 encodeObject:url forKey:@"url"];
    v4 = v9;
  }
}

- (MWFeedInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MWFeedInfo;
  v5 = [(MWFeedInfo *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"title"];
    title = v5->title;
    v5->title = v6;

    v8 = [v4 decodeObjectForKey:@"link"];
    link = v5->link;
    v5->link = v8;

    v10 = [v4 decodeObjectForKey:@"summary"];
    summary = v5->summary;
    v5->summary = v10;

    v12 = [v4 decodeObjectForKey:@"url"];
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