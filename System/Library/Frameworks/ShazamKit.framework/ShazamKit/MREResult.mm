@interface MREResult
- (MREResult)initWithTrackId:(unint64_t)id offset:(double)offset timeSkew:(id)skew freqSkew:(id)freqSkew score:(id)score;
@end

@implementation MREResult

- (MREResult)initWithTrackId:(unint64_t)id offset:(double)offset timeSkew:(id)skew freqSkew:(id)freqSkew score:(id)score
{
  skewCopy = skew;
  freqSkewCopy = freqSkew;
  scoreCopy = score;
  v19.receiver = self;
  v19.super_class = MREResult;
  v16 = [(MREResult *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_offset = offset;
    objc_storeStrong(&v16->_timeSkew, skew);
    objc_storeStrong(&v17->_freqSkew, freqSkew);
    v17->_trackID = id;
    objc_storeStrong(&v17->_score, score);
  }

  return v17;
}

@end