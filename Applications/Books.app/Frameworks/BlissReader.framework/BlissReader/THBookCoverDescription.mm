@interface THBookCoverDescription
+ (THBookCoverDescription)descriptionWithURL:(id)l;
+ (THBookCoverDescription)descriptionWithURL:(id)l assetID:(id)d;
+ (id)displayNameFromFilePath:(id)path;
+ (id)summaryWithURL:(id)l;
- (CGImageSource)embeddedArtImageSource;
- (PFDContext)drmContext;
- (THBookCoverDescription)initWithURL:(id)l assetID:(id)d summary:(id)summary;
- (id)bookBundleUrl;
- (id)embeddedArtURL;
- (void)dealloc;
@end

@implementation THBookCoverDescription

- (THBookCoverDescription)initWithURL:(id)l assetID:(id)d summary:(id)summary
{
  v10.receiver = self;
  v10.super_class = THBookCoverDescription;
  v8 = [(THBookCoverDescription *)&v10 init];
  if (v8)
  {
    v8->mAsset = [[THAsset alloc] initWithURL:l assetID:d];
    v8->mBookSummary = summary;
  }

  return v8;
}

+ (id)summaryWithURL:(id)l
{
  v11 = 0;
  if (-[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", [l path]))
  {
    result = [self readEmbeddedArtPropertiesFromURL:l error:&v11];
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
  path = [(NSURL *)[(THAsset *)self->mAsset url] path];

  return [(PFDContextManager *)v3 contextForArchive:path];
}

+ (THBookCoverDescription)descriptionWithURL:(id)l
{
  result = [self summaryWithURL:?];
  if (result)
  {
    v5 = result;
    v6 = [(THBookCoverDescription *)result objectForKey:kTHBookCoverInfoUUID];
    if (![(__CFString *)v6 length])
    {
      v7 = [(THBookCoverDescription *)v5 objectForKey:kTHBookCoverInfoOPF];
      v10 = 0;
      if (v7 && (v8 = v7, -[NSFileManager fileExistsAtPath:isDirectory:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:isDirectory:", [l path], &v10)) && v10 == 1)
      {
        v9 = +[NSString md5StringWithContentsOfFile:](NSString, "md5StringWithContentsOfFile:", [objc_msgSend(l URLByAppendingPathComponent:{v8), "path"}]);
      }

      else
      {
        v9 = THUniqueIdForPath([l path]);
      }

      v6 = v9;
    }

    return [[THBookCoverDescription alloc] initWithURL:l assetID:v6 summary:v5];
  }

  return result;
}

+ (THBookCoverDescription)descriptionWithURL:(id)l assetID:(id)d
{
  result = [self summaryWithURL:?];
  if (result)
  {
    v7 = [[THBookCoverDescription alloc] initWithURL:l assetID:d summary:result];

    return v7;
  }

  return result;
}

+ (id)displayNameFromFilePath:(id)path
{
  v3 = [objc_msgSend(path "lastPathComponent")];
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
  asset = [(THBookCoverDescription *)self asset];

  return [(THAsset *)asset url];
}

- (id)embeddedArtURL
{
  result = [(THBookCoverDescription *)self embeddedArtHref];
  if (result)
  {
    v4 = result;
    bookBundleUrl = [(THBookCoverDescription *)self bookBundleUrl];

    return [bookBundleUrl URLByAppendingPathComponent:v4];
  }

  return result;
}

- (CGImageSource)embeddedArtImageSource
{
  drmContext = [(THBookCoverDescription *)self drmContext];
  embeddedArtURL = [(THBookCoverDescription *)self embeddedArtURL];
  if (drmContext)
  {
    v5 = [(PFDContext *)drmContext newImageSourceWithContentsOfURL:embeddedArtURL error:0];
  }

  else
  {
    v5 = CGImageSourceCreateWithURL(embeddedArtURL, 0);
  }

  return v5;
}

@end