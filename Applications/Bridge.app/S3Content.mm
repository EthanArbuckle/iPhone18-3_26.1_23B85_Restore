@interface S3Content
- (NSData)gzipContent;
- (NSString)mimeType;
- (S3Content)initWithContent:(id)content filename:(id)filename bucket:(id)bucket gzip:(BOOL)gzip;
- (id)_gzipCompressData:(id)data;
- (void)setContent:(id)content;
@end

@implementation S3Content

- (S3Content)initWithContent:(id)content filename:(id)filename bucket:(id)bucket gzip:(BOOL)gzip
{
  contentCopy = content;
  filenameCopy = filename;
  bucketCopy = bucket;
  v17.receiver = self;
  v17.super_class = S3Content;
  v14 = [(S3Content *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_content, content);
    objc_storeStrong(&v15->_filename, filename);
    objc_storeStrong(&v15->_bucket, bucket);
    v15->_gzip = gzip;
  }

  return v15;
}

- (NSString)mimeType
{
  if (self->_gzip)
  {
    return @"application/zlib";
  }

  else
  {
    return @"text/plain";
  }
}

- (void)setContent:(id)content
{
  objc_storeStrong(&self->_content, content);
  contentCopy = content;
  gzipContentCache = self->_gzipContentCache;
  self->_gzipContentCache = 0;
}

- (NSData)gzipContent
{
  if (self->_gzip && !self->_gzipContentCache)
  {
    v3 = [(S3Content *)self _gzipCompressData:self->_content];
    gzipContentCache = self->_gzipContentCache;
    self->_gzipContentCache = v3;
  }

  v5 = self->_gzipContentCache;

  return v5;
}

- (id)_gzipCompressData:(id)data
{
  dataCopy = data;
  v4 = objc_alloc_init(NSMutableData);
  memset(&v7, 0, sizeof(v7));
  if (deflateInit2_(&v7, -1, 8, 31, 8, 0, "1.2.12", 112))
  {
    v5 = 0;
  }

  else
  {
    v7.avail_in = [dataCopy length];
    v7.next_in = [dataCopy bytes];
    do
    {
      v7.avail_out = 0x4000;
      v7.next_out = v8;
      deflate(&v7, 4);
      [v4 appendBytes:v8 length:{0x4000 - v7.avail_out, v7.next_in}];
    }

    while (!v7.avail_out);
    deflateEnd(&v7);
    v5 = v4;
  }

  return v5;
}

@end