@interface MREResult
- (MREResult)initWithTrackId:(unint64_t)a3 offset:(double)a4 timeSkew:(id)a5 freqSkew:(id)a6 score:(id)a7;
@end

@implementation MREResult

- (MREResult)initWithTrackId:(unint64_t)a3 offset:(double)a4 timeSkew:(id)a5 freqSkew:(id)a6 score:(id)a7
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = MREResult;
  v16 = [(MREResult *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_offset = a4;
    objc_storeStrong(&v16->_timeSkew, a5);
    objc_storeStrong(&v17->_freqSkew, a6);
    v17->_trackID = a3;
    objc_storeStrong(&v17->_score, a7);
  }

  return v17;
}

@end