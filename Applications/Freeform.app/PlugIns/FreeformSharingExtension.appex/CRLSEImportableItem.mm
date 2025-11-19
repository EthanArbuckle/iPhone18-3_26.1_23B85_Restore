@interface CRLSEImportableItem
- (BOOL)isHTTP;
- (BOOL)isPDF;
- (void)setUrl:(id)a3;
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

  v4 = [(NSURL *)url scheme];
  if ([v4 caseInsensitiveCompare:@"http"])
  {
    v5 = [(NSURL *)self->_url scheme];
    v6 = [v5 caseInsensitiveCompare:@"https"] == 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)setUrl:(id)a3
{
  v5 = a3;
  if (self->_url != v5)
  {
    objc_storeStrong(&self->_url, a3);
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