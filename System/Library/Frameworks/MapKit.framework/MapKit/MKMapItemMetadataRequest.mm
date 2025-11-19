@interface MKMapItemMetadataRequest
- (NSURLRequest)urlRequest;
@end

@implementation MKMapItemMetadataRequest

- (NSURLRequest)urlRequest
{
  v3 = [(MKMapItemMetadataRequest *)self url];

  if (v3)
  {
    v4 = MEMORY[0x1E696AF68];
    v5 = [(MKMapItemMetadataRequest *)self url];
    v6 = [v4 requestWithURL:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end