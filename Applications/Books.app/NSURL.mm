@interface NSURL
- (id)httpURL;
@end

@implementation NSURL

- (id)httpURL
{
  scheme = [(NSURL *)self scheme];
  if (![scheme caseInsensitiveCompare:@"http"])
  {

    goto LABEL_7;
  }

  scheme2 = [(NSURL *)self scheme];
  v5 = [scheme2 caseInsensitiveCompare:@"https"];

  if (!v5)
  {
LABEL_7:
    selfCopy = self;
    goto LABEL_11;
  }

  scheme3 = [(NSURL *)self scheme];
  v7 = [scheme3 caseInsensitiveCompare:@"itms-books"];

  if (v7)
  {
    scheme4 = [(NSURL *)self scheme];
    v9 = [scheme4 caseInsensitiveCompare:@"itms-bookss"];

    if (v9)
    {
      selfCopy = 0;
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
  host = [(NSURL *)self host];
  [v12 setHost:host];

  path = [(NSURL *)self path];
  [v12 setPath:path];

  selfCopy = [v12 URL];

LABEL_11:

  return selfCopy;
}

@end