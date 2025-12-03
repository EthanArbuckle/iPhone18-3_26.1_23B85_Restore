@interface MTAddPodcastParams
- (MTAddPodcastParams)init;
- (void)setUrl:(id)url;
@end

@implementation MTAddPodcastParams

- (MTAddPodcastParams)init
{
  v5.receiver = self;
  v5.super_class = MTAddPodcastParams;
  v2 = [(MTAddPodcastParams *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MTAddPodcastParams *)v2 setUserInitiated:1];
  }

  return v3;
}

- (void)setUrl:(id)url
{
  v17 = [NSURL URLWithString:url];
  scheme = [v17 scheme];
  lowercaseString = [scheme lowercaseString];
  if ([lowercaseString isEqualToString:@"pcast"])
  {
    v6 = @"http:%@";
LABEL_3:

LABEL_6:
    resourceSpecifier = [v17 resourceSpecifier];
    v10 = [NSString stringWithFormat:v6, resourceSpecifier];
    v11 = [NSURL URLWithString:v10];

    v12 = v11;
    goto LABEL_7;
  }

  lowercaseString2 = [scheme lowercaseString];
  v8 = [lowercaseString2 isEqualToString:@"feed"];

  if (v8)
  {
    v6 = @"http:%@";
    goto LABEL_6;
  }

  lowercaseString = [scheme lowercaseString];
  if ([lowercaseString isEqualToString:@"pcasts"])
  {
    v6 = @"https:%@";
    goto LABEL_3;
  }

  lowercaseString3 = [scheme lowercaseString];
  v16 = [lowercaseString3 isEqualToString:@"feeds"];

  if (v16)
  {
    v6 = @"https:%@";
    goto LABEL_6;
  }

  v12 = v17;
LABEL_7:
  v18 = v12;
  absoluteString = [v12 absoluteString];
  url = self->_url;
  self->_url = absoluteString;
}

@end