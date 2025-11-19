@interface NSURL(SLTwitterURLAdditions)
+ (id)SLTwitterRetweetURLForTweetID:()SLTwitterURLAdditions;
@end

@implementation NSURL(SLTwitterURLAdditions)

+ (id)SLTwitterRetweetURLForTweetID:()SLTwitterURLAdditions
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://api.twitter.com/1.1/statuses/retweet/%@.json", a3];
  v5 = [v3 URLWithString:v4];

  return v5;
}

@end