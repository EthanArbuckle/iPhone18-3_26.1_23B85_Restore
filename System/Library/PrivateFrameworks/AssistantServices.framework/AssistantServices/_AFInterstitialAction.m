@interface _AFInterstitialAction
- (_AFInterstitialAction)initWithDuration:(double)a3;
- (_AFInterstitialAction)initWithPhase:(int64_t)a3 displayKey:(id)a4 speakableKey:(id)a5;
@end

@implementation _AFInterstitialAction

- (_AFInterstitialAction)initWithDuration:(double)a3
{
  v5.receiver = self;
  v5.super_class = _AFInterstitialAction;
  result = [(_AFInterstitialAction *)&v5 init];
  if (result)
  {
    result->_duration = a3;
  }

  return result;
}

- (_AFInterstitialAction)initWithPhase:(int64_t)a3 displayKey:(id)a4 speakableKey:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = _AFInterstitialAction;
  v10 = [(_AFInterstitialAction *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_phase = a3;
    v12 = [v8 copy];
    displayKey = v11->_displayKey;
    v11->_displayKey = v12;

    v14 = [v9 copy];
    speakableKey = v11->_speakableKey;
    v11->_speakableKey = v14;
  }

  return v11;
}

@end