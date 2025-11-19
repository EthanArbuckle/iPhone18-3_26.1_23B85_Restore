@interface WLKContinuationMetadataBase
- (id)tvun_contextString;
- (id)tvun_identifier;
@end

@implementation WLKContinuationMetadataBase

- (id)tvun_contextString
{
  if (qword_1001283C0 != -1)
  {
    sub_1000D129C();
  }

  v3 = [(WLKContinuationMetadataBase *)self localizedContext];
  v4 = qword_1001283B8;
  v5 = [(WLKContinuationMetadataBase *)self context];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  return v7;
}

- (id)tvun_identifier
{
  v2 = [(WLKContinuationMetadataBase *)self movieOrShowContent];
  v3 = [v2 canonicalID];

  return v3;
}

@end