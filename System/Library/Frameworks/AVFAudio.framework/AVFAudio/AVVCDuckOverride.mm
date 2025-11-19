@interface AVVCDuckOverride
- (AVVCDuckOverride)init;
- (AVVCDuckOverride)initWithDuckOthers:(id)a3 duckToLevel:(id)a4 mixWithOthers:(id)a5;
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

- (AVVCDuckOverride)initWithDuckOthers:(id)a3 duckToLevel:(id)a4 mixWithOthers:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = AVVCDuckOverride;
  v12 = [(AVVCDuckOverride *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_duckOthers, a3);
    objc_storeStrong(&v13->_duckToLevel, a4);
    v13->_isBlur = 0;
    objc_storeStrong(&v13->_mixWithOthers, a5);
  }

  return v13;
}

@end