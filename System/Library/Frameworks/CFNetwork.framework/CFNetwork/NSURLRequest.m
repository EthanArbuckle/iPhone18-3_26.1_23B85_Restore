@interface NSURLRequest
- (NSData)HTTPBody;
- (NSDictionary)allHTTPHeaderFields;
- (NSInputStream)HTTPBodyStream;
- (id)_startTimeoutDate;
- (void)dealloc;
@end

@implementation NSURLRequest

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSURLRequest;
  [(NSURLRequest *)&v3 dealloc];
}

- (id)_startTimeoutDate
{
  if (*([(NSURLRequest *)self _inner]+ 152) <= 0.0)
  {
    return 0;
  }

  v2 = MEMORY[0x1E695DF00];

  return [v2 dateWithTimeIntervalSinceReferenceDate:?];
}

- (NSDictionary)allHTTPHeaderFields
{
  v2 = *([(NSURLRequest *)self _inner]+ 56);
  if (v2)
  {
    v2 = HTTPMessage::copyAllHeaderFields(v2);
  }

  return v2;
}

- (NSData)HTTPBody
{
  v2 = *([(NSURLRequest *)self _inner]+ 56);
  if (v2)
  {
    v2 = HTTPMessage::copyBody(v2);
  }

  return v2;
}

- (NSInputStream)HTTPBodyStream
{
  v2 = CFURLRequestCopyHTTPRequestBodyStream(self);

  return v2;
}

@end