@interface AKRatchetStateData
- (AKRatchetStateData)initWithDuration:(double)duration;
@end

@implementation AKRatchetStateData

- (AKRatchetStateData)initWithDuration:(double)duration
{
  v8 = a2;
  durationCopy = duration;
  v9 = 0;
  v6.receiver = self;
  v6.super_class = AKRatchetStateData;
  v5 = [(AKRatchetStateData *)&v6 init];
  v9 = v5;
  objc_storeStrong(&v9, v5);
  if (v5)
  {
    v9->_duration = durationCopy;
  }

  v4 = MEMORY[0x1E69E5928](v9);
  objc_storeStrong(&v9, 0);
  return v4;
}

@end