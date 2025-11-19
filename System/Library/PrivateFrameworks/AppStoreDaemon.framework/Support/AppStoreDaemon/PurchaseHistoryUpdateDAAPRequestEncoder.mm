@interface PurchaseHistoryUpdateDAAPRequestEncoder
- (id)dataForRequestWithError:(id *)a3;
@end

@implementation PurchaseHistoryUpdateDAAPRequestEncoder

- (id)dataForRequestWithError:(id *)a3
{
  revision = self->_revision;
  if (revision)
  {
    v4 = [(NSNumber *)revision intValue];
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_100403578();
  v6 = [NSString stringWithFormat:@"(%@)", v5];

  v7 = [NSString stringWithFormat:@"revision-number=%u&query=%@", v4, v6];
  v8 = [v7 dataUsingEncoding:4];

  return v8;
}

@end