@interface SbsyncTaskRequestEncoder
- (SbsyncTaskRequestEncoder)initWithBag:(id)a3;
- (id)requestByEncodingRequest:(id)a3 parameters:(id)a4;
@end

@implementation SbsyncTaskRequestEncoder

- (SbsyncTaskRequestEncoder)initWithBag:(id)a3
{
  v6.receiver = self;
  v6.super_class = SbsyncTaskRequestEncoder;
  v3 = [(SbsyncTaskRequestEncoder *)&v6 initWithBag:a3];
  v4 = v3;
  if (v3)
  {
    [(SbsyncTaskRequestEncoder *)v3 setUrlKnownToBeTrusted:1];
  }

  return v4;
}

- (id)requestByEncodingRequest:(id)a3 parameters:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 setCachePolicy:1];
  [v7 setHTTPContentType:@"text/xml"];
  v10.receiver = self;
  v10.super_class = SbsyncTaskRequestEncoder;
  v8 = [(SbsyncTaskRequestEncoder *)&v10 requestByEncodingRequest:v7 parameters:v6];

  return v8;
}

@end