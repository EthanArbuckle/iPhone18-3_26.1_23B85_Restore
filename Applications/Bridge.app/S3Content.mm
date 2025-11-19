@interface S3Content
- (NSData)gzipContent;
- (NSString)mimeType;
- (S3Content)initWithContent:(id)a3 filename:(id)a4 bucket:(id)a5 gzip:(BOOL)a6;
- (id)_gzipCompressData:(id)a3;
- (void)setContent:(id)a3;
@end

@implementation S3Content

- (S3Content)initWithContent:(id)a3 filename:(id)a4 bucket:(id)a5 gzip:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = S3Content;
  v14 = [(S3Content *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_content, a3);
    objc_storeStrong(&v15->_filename, a4);
    objc_storeStrong(&v15->_bucket, a5);
    v15->_gzip = a6;
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

- (void)setContent:(id)a3
{
  objc_storeStrong(&self->_content, a3);
  v6 = a3;
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

- (id)_gzipCompressData:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableData);
  memset(&v7, 0, sizeof(v7));
  if (deflateInit2_(&v7, -1, 8, 31, 8, 0, "1.2.12", 112))
  {
    v5 = 0;
  }

  else
  {
    v7.avail_in = [v3 length];
    v7.next_in = [v3 bytes];
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