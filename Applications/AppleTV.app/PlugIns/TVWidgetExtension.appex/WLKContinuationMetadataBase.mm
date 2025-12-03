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

  localizedContext = [(WLKContinuationMetadataBase *)self localizedContext];
  v4 = qword_1001283B8;
  context = [(WLKContinuationMetadataBase *)self context];
  v6 = [v4 objectForKey:context];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = localizedContext;
  }

  v8 = v7;

  return v7;
}

- (id)tvun_identifier
{
  movieOrShowContent = [(WLKContinuationMetadataBase *)self movieOrShowContent];
  canonicalID = [movieOrShowContent canonicalID];

  return canonicalID;
}

@end