@interface NSURL
- (id)httpURL;
@end

@implementation NSURL

- (id)httpURL
{
  v3 = [(NSURL *)self scheme];
  if (![v3 caseInsensitiveCompare:@"http"])
  {

    goto LABEL_7;
  }

  v4 = [(NSURL *)self scheme];
  v5 = [v4 caseInsensitiveCompare:@"https"];

  if (!v5)
  {
LABEL_7:
    v10 = self;
    goto LABEL_11;
  }

  v6 = [(NSURL *)self scheme];
  v7 = [v6 caseInsensitiveCompare:@"itms-books"];

  if (v7)
  {
    v8 = [(NSURL *)self scheme];
    v9 = [v8 caseInsensitiveCompare:@"itms-bookss"];

    if (v9)
    {
      v10 = 0;
      goto LABEL_11;
    }

    v11 = objc_alloc_init(NSURLComponents);
    v12 = v11;
    v13 = @"https";
  }

  else
  {
    v11 = objc_alloc_init(NSURLComponents);
    v12 = v11;
    v13 = @"http";
  }

  [v11 setScheme:v13];
  v14 = [(NSURL *)self host];
  [v12 setHost:v14];

  v15 = [(NSURL *)self path];
  [v12 setPath:v15];

  v10 = [v12 URL];

LABEL_11:

  return v10;
}

@end