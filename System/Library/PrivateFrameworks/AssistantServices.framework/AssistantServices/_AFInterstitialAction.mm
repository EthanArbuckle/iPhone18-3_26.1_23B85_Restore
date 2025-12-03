@interface _AFInterstitialAction
- (_AFInterstitialAction)initWithDuration:(double)duration;
- (_AFInterstitialAction)initWithPhase:(int64_t)phase displayKey:(id)key speakableKey:(id)speakableKey;
@end

@implementation _AFInterstitialAction

- (_AFInterstitialAction)initWithDuration:(double)duration
{
  v5.receiver = self;
  v5.super_class = _AFInterstitialAction;
  result = [(_AFInterstitialAction *)&v5 init];
  if (result)
  {
    result->_duration = duration;
  }

  return result;
}

- (_AFInterstitialAction)initWithPhase:(int64_t)phase displayKey:(id)key speakableKey:(id)speakableKey
{
  keyCopy = key;
  speakableKeyCopy = speakableKey;
  v17.receiver = self;
  v17.super_class = _AFInterstitialAction;
  v10 = [(_AFInterstitialAction *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_phase = phase;
    v12 = [keyCopy copy];
    displayKey = v11->_displayKey;
    v11->_displayKey = v12;

    v14 = [speakableKeyCopy copy];
    speakableKey = v11->_speakableKey;
    v11->_speakableKey = v14;
  }

  return v11;
}

@end