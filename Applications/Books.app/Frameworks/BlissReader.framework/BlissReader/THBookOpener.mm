@interface THBookOpener
+ (id)loadingQueue;
- (BOOL)isSuccessful;
- (THBookOpener)initWithDocumentRoot:(id)root;
- (void)dealloc;
- (void)main;
@end

@implementation THBookOpener

+ (id)loadingQueue
{
  result = qword_567780;
  if (!qword_567780)
  {
    objc_sync_enter(self);
    if (!qword_567780)
    {
      v4 = objc_alloc_init(NSOperationQueue);
      __dmb(0xBu);
      qword_567780 = v4;
      if (!v4)
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
        v4 = qword_567780;
      }

      [v4 setMaxConcurrentOperationCount:1];
    }

    objc_sync_exit(self);
    return qword_567780;
  }

  return result;
}

- (THBookOpener)initWithDocumentRoot:(id)root
{
  v7.receiver = self;
  v7.super_class = THBookOpener;
  v4 = [(THBookOpener *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(THBookOpener *)v4 setDocumentRoot:root];
  }

  return v5;
}

- (BOOL)isSuccessful
{
  if ([(THBookOpener *)self wasError])
  {
    return 0;
  }

  else
  {
    return [(THBookOpener *)self isCancelled]^ 1;
  }
}

- (void)main
{
  v3 = objc_alloc_init(NSAutoreleasePool);
  tspObjectContextPath = [(THBookDescription *)[(THDocumentRoot *)[(THBookOpener *)self documentRoot] bookDescription] tspObjectContextPath];
  if (tspObjectContextPath)
  {
    v11 = 0;
    if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:isDirectory:"]
    {
      if ((v11 & 1) == 0)
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
        if ((v11 & 1) == 0)
        {
          [(THBookOpener *)self setError:[NSError errorWithDomain:@"com.apple.iWork.Thunderfish" code:101 userInfo:[NSDictionary dictionaryWithObjectsAndKeys:tspObjectContextPath, NSFilePathErrorKey, 0]]];
        }
      }
    }

    if ([(THBookOpener *)self isSuccessful])
    {
      bookBundleUrl = [(THBookDescription *)[(THDocumentRoot *)[(THBookOpener *)self documentRoot] bookDescription] bookBundleUrl];
      v6 = bookBundleUrl;
      v10 = 0;
      if (bookBundleUrl && [(NSURL *)bookBundleUrl path]&& [(NSString *)[(NSURL *)v6 path] length])
      {
        if ([THApplePubController readAppPubFileToDocumentRoot:[(THBookOpener *)self documentRoot] url:v6 error:&v10])
        {
          if ([(THBookOpener *)self isSuccessful])
          {
            [(THDocumentRoot *)[(THBookOpener *)self documentRoot] setLibraryDatabaseKey:[(THBookDescription *)[(THDocumentRoot *)[(THBookOpener *)self documentRoot] bookDescription] databaseKey]];
            if (![(THDocumentRoot *)[(THBookOpener *)self documentRoot] loadEquationFontsIfNeeded])
            {
              [(THBookOpener *)self setError:[NSError errorWithDomain:@"com.apple.iWork.Thunderfish" code:102 userInfo:0]];
            }
          }
        }

        if (!v10)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v10 = [[NSError alloc] initWithDomain:@"com.apple.iWork.Thunderfish" code:101 userInfo:0];
        if (!v10)
        {
          goto LABEL_18;
        }
      }

      [(THBookOpener *)self setError:?];
    }
  }

LABEL_18:
  [v3 drain];
  if (![(THBookOpener *)self error])
  {
    if (qword_567790 != -1)
    {
      sub_29CBF4();
    }

    if (byte_567788 == 1)
    {
      v7 = [+[NSUserDefaults standardUserDefaults](NSUserDefaults stringForKey:"stringForKey:", @"THBookOpenSimulatedError"];
      if ([(NSString *)v7 isEqualToString:@"open-failed"])
      {
        v8 = &kTHErrorDomain;
        v9 = 101;
LABEL_30:
        [(THBookOpener *)self setError:[NSError errorWithDomain:*v8 code:v9 userInfo:0]];
        return;
      }

      if ([(NSString *)v7 isEqualToString:@"drm-user-removed"])
      {
        v9 = -42595;
LABEL_29:
        v8 = &mbkFCZS0leKzYP1BBPFY;
        goto LABEL_30;
      }

      if ([(NSString *)v7 isEqualToString:@"drm-family-content-unplayable"]|| [(NSString *)v7 isEqualToString:@"drm-user-departed-family"])
      {
        v9 = -42597;
        goto LABEL_29;
      }
    }
  }
}

- (void)dealloc
{
  self->mDocumentRoot = 0;

  self->mError = 0;
  self->mException = 0;
  v3.receiver = self;
  v3.super_class = THBookOpener;
  [(THBookOpener *)&v3 dealloc];
}

@end