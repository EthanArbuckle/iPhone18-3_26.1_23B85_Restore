@interface MPMutableArtworkColorAnalysis
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MPMutableArtworkColorAnalysis

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(MPArtworkColorAnalysis *)self _copyWithClass:v4];
}

@end