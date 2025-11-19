@interface THBookCoverDescription
+ (THBookCoverDescription)descriptionWithURL:(id)a3;
+ (THBookCoverDescription)descriptionWithURL:(id)a3 assetID:(id)a4;
+ (id)displayNameFromFilePath:(id)a3;
+ (id)summaryWithURL:(id)a3;
- (CGImageSource)embeddedArtImageSource;
- (PFDContext)drmContext;
- (THBookCoverDescription)initWithURL:(id)a3 assetID:(id)a4 summary:(id)a5;
- (id)bookBundleUrl;
- (id)embeddedArtURL;
- (void)dealloc;
@end

@implementation THBookCoverDescription

- (THBookCoverDescription)initWithURL:(id)a3 assetID:(id)a4 summary:(id)a5
{
  v10.receiver = self;
  v10.super_class = THBookCoverDescription;
  v8 = [(THBookCoverDescription *)&v10 init];
  if (v8)
  {
    v8->mAsset = [[THAsset alloc] initWithURL:a3 assetID:a4];
    v8->mBookSummary = a5;
  }

  return v8;
}

+ (id)summaryWithURL:(id)a3
{
  v11 = 0;
  if (-[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", [a3 path]))
  {
    result = [a1 readEmbeddedArtPropertiesFromURL:a3 error:&v11];
    if (result)
    {
      return result;
    }

    v6 = v11;
    v7 = +[TSUAssertionHandler currentHandler];
    v8 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[THBookCoverDescription summaryWithURL:]");
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THBookCoverDescription.m"];
    if (v6)
    {
      [v7 handleFailureInFunction:v8 file:v9 lineNumber:63 description:{@"Error reading properties from iBook: %@", objc_msgSend(v11, "description")}];
    }

    else
    {
      [v7 handleFailureInFunction:v8 file:v9 lineNumber:67 description:{@"Error reading properties from iBook.", v10}];
    }
  }

  return 0;
}

- (PFDContext)drmContext
{
  v3 = +[PFDContextManager sharedInstance];
  v4 = [(NSURL *)[(THAsset *)self->mAsset url] path];

  return [(PFDContextManager *)v3 contextForArchive:v4];
}

+ (THBookCoverDescription)descriptionWithURL:(id)a3
{
  result = [a1 summaryWithURL:?];
  if (result)
  {
    v5 = result;
    v6 = [(THBookCoverDescription *)result objectForKey:kTHBookCoverInfoUUID];
    if (![(__CFString *)v6 length])
    {
      v7 = [(THBookCoverDescription *)v5 objectForKey:kTHBookCoverInfoOPF];
      v10 = 0;
      if (v7 && (v8 = v7, -[NSFileManager fileExistsAtPath:isDirectory:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:isDirectory:", [a3 path], &v10)) && v10 == 1)
      {
        v9 = +[NSString md5StringWithContentsOfFile:](NSString, "md5StringWithContentsOfFile:", [objc_msgSend(a3 URLByAppendingPathComponent:{v8), "path"}]);
      }

      else
      {
        v9 = THUniqueIdForPath([a3 path]);
      }

      v6 = v9;
    }

    return [[THBookCoverDescription alloc] initWithURL:a3 assetID:v6 summary:v5];
  }

  return result;
}

+ (THBookCoverDescription)descriptionWithURL:(id)a3 assetID:(id)a4
{
  result = [a1 summaryWithURL:?];
  if (result)
  {
    v7 = [[THBookCoverDescription alloc] initWithURL:a3 assetID:a4 summary:result];

    return v7;
  }

  return result;
}

+ (id)displayNameFromFilePath:(id)a3
{
  v3 = [objc_msgSend(a3 "lastPathComponent")];
  v4 = [NSCharacterSet characterSetWithCharactersInString:@":/"];

  return [v3 tsu_stringByRemovingCharactersInSet:v4];
}

- (void)dealloc
{
  [+[PFDContextManager sharedInstance](PFDContextManager removeContextForArchive:"removeContextForArchive:", [(NSURL *)[(THAsset *)self->mAsset url] path]];

  self->mAsset = 0;
  self->mBookSummary = 0;
  v3.receiver = self;
  v3.super_class = THBookCoverDescription;
  [(THBookCoverDescription *)&v3 dealloc];
}

- (id)bookBundleUrl
{
  v2 = [(THBookCoverDescription *)self asset];

  return [(THAsset *)v2 url];
}

- (id)embeddedArtURL
{
  result = [(THBookCoverDescription *)self embeddedArtHref];
  if (result)
  {
    v4 = result;
    v5 = [(THBookCoverDescription *)self bookBundleUrl];

    return [v5 URLByAppendingPathComponent:v4];
  }

  return result;
}

- (CGImageSource)embeddedArtImageSource
{
  v3 = [(THBookCoverDescription *)self drmContext];
  v4 = [(THBookCoverDescription *)self embeddedArtURL];
  if (v3)
  {
    v5 = [(PFDContext *)v3 newImageSourceWithContentsOfURL:v4 error:0];
  }

  else
  {
    v5 = CGImageSourceCreateWithURL(v4, 0);
  }

  return v5;
}

@end