@interface AVNSURLProtocolRequest
- (void)dealloc;
- (void)setConnection:(_CFURLConnection *)connection;
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

- (void)setConnection:(_CFURLConnection *)connection
{
  connection = self->_connection;
  self->_connection = connection;
  if (connection)
  {
    CFRetain(connection);
  }

  if (connection)
  {

    CFRelease(connection);
  }
}

@end