@interface ContentRestoreURLRequestEncoder
- (ContentRestoreURLRequestEncoder)initWithBag:(id)a3;
- (id)requestByEncodingRequest:(id)a3 parameters:(id)a4;
@end

@implementation ContentRestoreURLRequestEncoder

- (ContentRestoreURLRequestEncoder)initWithBag:(id)a3
{
  v6.receiver = self;
  v6.super_class = ContentRestoreURLRequestEncoder;
  v3 = [(ContentRestoreURLRequestEncoder *)&v6 initWithBag:a3];
  v4 = v3;
  if (v3)
  {
    [(ContentRestoreURLRequestEncoder *)v3 setUrlKnownToBeTrusted:1];
  }

  return v4;
}

- (id)requestByEncodingRequest:(id)a3 parameters:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 setCachePolicy:1];
  [v7 setHTTPContentType:@"text/xml"];
  v8 = sub_1003BBF50();
  sub_1003BC30C(v7, 1, v8);

  v11.receiver = self;
  v11.super_class = ContentRestoreURLRequestEncoder;
  v9 = [(ContentRestoreURLRequestEncoder *)&v11 requestByEncodingRequest:v7 parameters:v6];

  return v9;
}

@end