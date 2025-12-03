@interface PurchaseHistoryUpdateDAAPRequestEncoder
- (id)dataForRequestWithError:(id *)error;
@end

@implementation PurchaseHistoryUpdateDAAPRequestEncoder

- (id)dataForRequestWithError:(id *)error
{
  revision = self->_revision;
  if (revision)
  {
    intValue = [(NSNumber *)revision intValue];
  }

  else
  {
    intValue = 0;
  }

  v5 = sub_100403578();
  v6 = [NSString stringWithFormat:@"(%@)", v5];

  v7 = [NSString stringWithFormat:@"revision-number=%u&query=%@", intValue, v6];
  v8 = [v7 dataUsingEncoding:4];

  return v8;
}

@end