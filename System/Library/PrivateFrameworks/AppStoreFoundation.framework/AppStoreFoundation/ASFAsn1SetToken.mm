@interface ASFAsn1SetToken
- (id)nextToken;
@end

@implementation ASFAsn1SetToken

- (id)nextToken
{
  if (a1 && [*(a1 + 32) length])
  {
    v9 = 0;
    v2 = [ASFAsn1Token readTokenFromBuffer:&v9 length:?];
    v3 = *(a1 + 32);
    v4 = v9;
    v5 = [v3 length];
    v6 = [v3 subdataWithRange:{v4, v5 - v9}];
    v7 = *(a1 + 32);
    *(a1 + 32) = v6;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end