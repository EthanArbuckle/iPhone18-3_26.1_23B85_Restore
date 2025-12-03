@interface SFToken
- (SFToken)initWithText:(id)text confidence:(double)confidence startTime:(double)time duration:(double)duration;
@end

@implementation SFToken

- (SFToken)initWithText:(id)text confidence:(double)confidence startTime:(double)time duration:(double)duration
{
  textCopy = text;
  v15.receiver = self;
  v15.super_class = SFToken;
  v12 = [(SFToken *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_text, text);
    v13->_confidence = confidence;
    v13->_startTime = time;
    v13->_duration = duration;
  }

  return v13;
}

@end