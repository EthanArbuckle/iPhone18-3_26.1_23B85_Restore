@interface CRLSEImportableItem
- (BOOL)isHTTP;
- (BOOL)isPDF;
- (void)setUrl:(id)url;
@end

@implementation CRLSEImportableItem

- (BOOL)isPDF
{
  if (self->_url)
  {
    return [(UTType *)self->_mediaUTI conformsToType:UTTypePDF];
  }

  else
  {
    return 0;
  }
}

- (BOOL)isHTTP
{
  url = self->_url;
  if (!url)
  {
    return 0;
  }

  scheme = [(NSURL *)url scheme];
  if ([scheme caseInsensitiveCompare:@"http"])
  {
    scheme2 = [(NSURL *)self->_url scheme];
    v6 = [scheme2 caseInsensitiveCompare:@"https"] == 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)setUrl:(id)url
{
  urlCopy = url;
  if (self->_url != urlCopy)
  {
    objc_storeStrong(&self->_url, url);
    v11 = NSURLContentTypeKey;
    v6 = [NSArray arrayWithObjects:&v11 count:1];
    v7 = [(NSURL *)self->_url resourceValuesForKeys:v6 error:0];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 objectForKeyedSubscript:NSURLContentTypeKey];
      mediaUTI = self->_mediaUTI;
      self->_mediaUTI = v9;
    }
  }
}

@end