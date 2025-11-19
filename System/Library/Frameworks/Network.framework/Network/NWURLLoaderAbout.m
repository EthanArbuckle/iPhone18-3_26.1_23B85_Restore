@interface NWURLLoaderAbout
- (OS_nw_connection)underlyingConnection;
- (void)readResponse:(id)a3;
- (void)writeData:(id)a3 complete:(BOOL)a4 completionHandler:(id)a5;
@end

@implementation NWURLLoaderAbout

- (OS_nw_connection)underlyingConnection
{
  result = _os_crash();
  __break(1u);
  return result;
}

- (void)writeData:(id)a3 complete:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a3;
  v7 = a5;
  _os_crash();
  __break(1u);
}

- (void)readResponse:(id)a3
{
  v4 = MEMORY[0x1E695AC70];
  v5 = a3;
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
  v5[2](v5, v8, 0);
}

@end