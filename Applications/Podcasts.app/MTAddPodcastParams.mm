@interface MTAddPodcastParams
- (MTAddPodcastParams)init;
- (void)setUrl:(id)a3;
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

- (void)setUrl:(id)a3
{
  v17 = [NSURL URLWithString:a3];
  v4 = [v17 scheme];
  v5 = [v4 lowercaseString];
  if ([v5 isEqualToString:@"pcast"])
  {
    v6 = @"http:%@";
LABEL_3:

LABEL_6:
    v9 = [v17 resourceSpecifier];
    v10 = [NSString stringWithFormat:v6, v9];
    v11 = [NSURL URLWithString:v10];

    v12 = v11;
    goto LABEL_7;
  }

  v7 = [v4 lowercaseString];
  v8 = [v7 isEqualToString:@"feed"];

  if (v8)
  {
    v6 = @"http:%@";
    goto LABEL_6;
  }

  v5 = [v4 lowercaseString];
  if ([v5 isEqualToString:@"pcasts"])
  {
    v6 = @"https:%@";
    goto LABEL_3;
  }

  v15 = [v4 lowercaseString];
  v16 = [v15 isEqualToString:@"feeds"];

  if (v16)
  {
    v6 = @"https:%@";
    goto LABEL_6;
  }

  v12 = v17;
LABEL_7:
  v18 = v12;
  v13 = [v12 absoluteString];
  url = self->_url;
  self->_url = v13;
}

@end