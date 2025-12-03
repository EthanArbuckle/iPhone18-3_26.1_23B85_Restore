@interface NWURLLoaderAbout
- (OS_nw_connection)underlyingConnection;
- (void)readResponse:(id)response;
- (void)writeData:(id)data complete:(BOOL)complete completionHandler:(id)handler;
@end

@implementation NWURLLoaderAbout

- (OS_nw_connection)underlyingConnection
{
  result = _os_crash();
  __break(1u);
  return result;
}

- (void)writeData:(id)data complete:(BOOL)complete completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  _os_crash();
  __break(1u);
}

- (void)readResponse:(id)response
{
  v4 = MEMORY[0x1E695AC70];
  responseCopy = response;
  v6 = [v4 alloc];
  if (self)
  {
    URL = self->_URL;
  }

  else
  {
    URL = 0;
  }

  v8 = [v6 initWithURL:URL MIMEType:@"text/html" expectedContentLength:0 textEncodingName:0];
  responseCopy[2](responseCopy, v8, 0);
}

@end