@interface SFToken
- (SFToken)initWithText:(id)a3 confidence:(double)a4 startTime:(double)a5 duration:(double)a6;
@end

@implementation SFToken

- (SFToken)initWithText:(id)a3 confidence:(double)a4 startTime:(double)a5 duration:(double)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = SFToken;
  v12 = [(SFToken *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_text, a3);
    v13->_confidence = a4;
    v13->_startTime = a5;
    v13->_duration = a6;
  }

  return v13;
}

@end