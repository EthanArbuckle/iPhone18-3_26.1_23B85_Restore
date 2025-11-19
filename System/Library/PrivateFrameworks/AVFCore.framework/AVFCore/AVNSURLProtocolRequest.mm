@interface AVNSURLProtocolRequest
- (void)dealloc;
- (void)setConnection:(_CFURLConnection *)a3;
@end

@implementation AVNSURLProtocolRequest

- (void)dealloc
{
  connection = self->_connection;
  if (connection)
  {
    CFRelease(connection);
  }

  error = self->_error;
  if (error)
  {
    CFRelease(error);
  }

  v5.receiver = self;
  v5.super_class = AVNSURLProtocolRequest;
  [(AVAssetCustomURLRequest *)&v5 dealloc];
}

- (void)setConnection:(_CFURLConnection *)a3
{
  connection = self->_connection;
  self->_connection = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (connection)
  {

    CFRelease(connection);
  }
}

@end