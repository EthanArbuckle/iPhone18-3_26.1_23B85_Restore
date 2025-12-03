@interface ATXHeroAndClipSessionLogSampledEvent
- (id)initFromLaunch:(id)launch;
- (id)location;
@end

@implementation ATXHeroAndClipSessionLogSampledEvent

- (id)initFromLaunch:(id)launch
{
  launchCopy = launch;
  v9.receiver = self;
  v9.super_class = ATXHeroAndClipSessionLogSampledEvent;
  v6 = [(ATXHeroAndClipSessionLogSampledEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_launch, launch);
  }

  return v7;
}

- (id)location
{
  v3 = objc_alloc(MEMORY[0x277CE41F8]);
  [(ATXAppOrClipLaunch *)self->_launch latitude];
  v5 = v4;
  [(ATXAppOrClipLaunch *)self->_launch longitude];
  v7 = [v3 initWithLatitude:v5 longitude:v6];

  return v7;
}

@end