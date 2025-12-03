@interface AVVCDuckOverride
- (AVVCDuckOverride)init;
- (AVVCDuckOverride)initWithDuckOthers:(id)others duckToLevel:(id)level mixWithOthers:(id)withOthers;
@end

@implementation AVVCDuckOverride

- (AVVCDuckOverride)init
{
  v8.receiver = self;
  v8.super_class = AVVCDuckOverride;
  v2 = [(AVVCDuckOverride *)&v8 init];
  v3 = v2;
  if (v2)
  {
    duckOthers = v2->_duckOthers;
    v2->_duckOthers = 0;

    mixWithOthers = v3->_mixWithOthers;
    v3->_mixWithOthers = 0;

    duckToLevel = v3->_duckToLevel;
    v3->_duckToLevel = 0;

    v3->_isBlur = 0;
  }

  return v3;
}

- (AVVCDuckOverride)initWithDuckOthers:(id)others duckToLevel:(id)level mixWithOthers:(id)withOthers
{
  othersCopy = others;
  levelCopy = level;
  withOthersCopy = withOthers;
  v15.receiver = self;
  v15.super_class = AVVCDuckOverride;
  v12 = [(AVVCDuckOverride *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_duckOthers, others);
    objc_storeStrong(&v13->_duckToLevel, level);
    v13->_isBlur = 0;
    objc_storeStrong(&v13->_mixWithOthers, withOthers);
  }

  return v13;
}

@end