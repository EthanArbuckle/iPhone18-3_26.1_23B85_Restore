@interface NTAWorldClockPreferencesListenerObserver
- (BOOL)isEqual:(id)equal;
- (NTAWorldClockPreferencesListenerObserver)initWithQueue:(id)queue block:(id)block;
- (unint64_t)hash;
@end

@implementation NTAWorldClockPreferencesListenerObserver

- (NTAWorldClockPreferencesListenerObserver)initWithQueue:(id)queue block:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v11.receiver = self;
  v11.super_class = NTAWorldClockPreferencesListenerObserver;
  v8 = [(NTAWorldClockPreferencesListenerObserver *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(NTAWorldClockPreferencesListenerObserver *)v8 setQueue:queueCopy];
    [(NTAWorldClockPreferencesListenerObserver *)v9 setBlock:blockCopy];
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      queue = [(NTAWorldClockPreferencesListenerObserver *)v5 queue];
      queue2 = [(NTAWorldClockPreferencesListenerObserver *)self queue];
      if ([queue isEqual:queue2])
      {
        block = [(NTAWorldClockPreferencesListenerObserver *)v5 block];
        block2 = [(NTAWorldClockPreferencesListenerObserver *)self block];
        v10 = block == block2;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  queue = [(NTAWorldClockPreferencesListenerObserver *)self queue];
  v3 = [queue hash];

  return v3;
}

@end