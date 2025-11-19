@interface MPMutableArtworkColorAnalysis
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MPMutableArtworkColorAnalysis

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();

  return [(MPArtworkColorAnalysis *)self _copyWithClass:v4];
}

@end