@interface ENTHTTPClient
- (id)newRequest;
- (int)readAll:(char *)all offset:(int)offset length:(int)length;
- (void)flush;
- (void)write:(const char *)write offset:(unsigned int)offset length:(unsigned int)length;
@end

@implementation ENTHTTPClient

- (void)flush
{
  newRequest = [(ENTHTTPClient *)self newRequest];
  requestData = [(ENTHTTPClient *)self requestData];
  [newRequest setHTTPBody:requestData];

  v19 = 0;
  v20 = 0;
  v5 = [MEMORY[0x277CBAB78] sendSynchronousRequest:newRequest returningResponse:&v20 error:&v19];
  v6 = v20;
  v7 = v19;
  requestData2 = [(ENTHTTPClient *)self requestData];
  [requestData2 setLength:0];

  if (!v5)
  {
    v10 = [(ENTException *)ENTTransportException exceptionWithName:@"TTransportException" reason:@"Could not make HTTP request" error:v7];
    objc_exception_throw(v10);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 stringWithFormat:@"Unexpected NSURLResponse type: %@", v13];
    v15 = [(ENTException *)ENTTransportException exceptionWithName:@"TTransportException" reason:v14];
    v16 = v15;

    goto LABEL_8;
  }

  v9 = v6;
  if ([v9 statusCode] != 200)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bad response from HTTP server: %ld", objc_msgSend(v9, "statusCode")];
    v15 = [(ENTException *)ENTTransportException exceptionWithName:@"TTransportException" reason:v17];
    v18 = v15;

LABEL_8:
    objc_exception_throw(v15);
  }

  [(ENTHTTPClient *)self setResponseData:v5];
  [(ENTHTTPClient *)self setResponseDataOffset:0];
}

- (id)newRequest
{
  v3 = objc_alloc(MEMORY[0x277CBAB50]);
  v4 = [(ENTHTTPClient *)self url];
  v5 = [v3 initWithURL:v4];

  [v5 setHTTPMethod:@"POST"];
  [v5 setValue:@"application/x-thrift" forHTTPHeaderField:@"Content-Type"];
  [v5 setValue:@"application/x-thrift" forHTTPHeaderField:@"Accept"];
  userAgent = [(ENTHTTPClient *)self userAgent];
  if (userAgent)
  {
    v7 = userAgent;
  }

  else
  {
    v7 = @"Cocoa/THTTPClient";
  }

  [v5 setValue:v7 forHTTPHeaderField:@"User-Agent"];
  [v5 setCachePolicy:1];
  if ([(ENTHTTPClient *)self timeout])
  {
    [v5 setTimeoutInterval:{-[ENTHTTPClient timeout](self, "timeout")}];
  }

  return v5;
}

- (void)write:(const char *)write offset:(unsigned int)offset length:(unsigned int)length
{
  requestData = [(ENTHTTPClient *)self requestData];
  [requestData appendBytes:&write[offset] length:length];
}

- (int)readAll:(char *)all offset:(int)offset length:(int)length
{
  responseDataOffset = [(ENTHTTPClient *)self responseDataOffset];
  responseData = [(ENTHTTPClient *)self responseData];
  [responseData getBytes:&all[offset] range:{responseDataOffset, length}];

  [(ENTHTTPClient *)self setResponseDataOffset:[(ENTHTTPClient *)self responseDataOffset]+ length];
  return length;
}

@end