@interface AFMyriadGoodnessScoreContext
- (AFMyriadGoodnessScoreContext)init;
@end

@implementation AFMyriadGoodnessScoreContext

- (AFMyriadGoodnessScoreContext)init
{
  v6.receiver = self;
  v6.super_class = AFMyriadGoodnessScoreContext;
  v2 = [(AFMyriadGoodnessScoreContext *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFD8] setWithObject:&unk_1F056E478];
    reasons = v2->_reasons;
    v2->_reasons = v3;

    v2->_mediaPlaybackInterruptedTime = 0.0;
    [(AFMyriadGoodnessScoreContext *)v2 setOverridingContext:0];
    v2->_recentlyWonBySmallAmount = 0;
  }

  return v2;
}

@end