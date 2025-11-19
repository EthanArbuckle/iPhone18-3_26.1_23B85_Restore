@interface NTAWorldClockPreferencesListenerObserver
- (BOOL)isEqual:(id)a3;
- (NTAWorldClockPreferencesListenerObserver)initWithQueue:(id)a3 block:(id)a4;
- (unint64_t)hash;
@end

@implementation NTAWorldClockPreferencesListenerObserver

- (NTAWorldClockPreferencesListenerObserver)initWithQueue:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = NTAWorldClockPreferencesListenerObserver;
  v8 = [(NTAWorldClockPreferencesListenerObserver *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(NTAWorldClockPreferencesListenerObserver *)v8 setQueue:v6];
    [(NTAWorldClockPreferencesListenerObserver *)v9 setBlock:v7];
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(NTAWorldClockPreferencesListenerObserver *)v5 queue];
      v7 = [(NTAWorldClockPreferencesListenerObserver *)self queue];
      if ([v6 isEqual:v7])
      {
        v8 = [(NTAWorldClockPreferencesListenerObserver *)v5 block];
        v9 = [(NTAWorldClockPreferencesListenerObserver *)self block];
        v10 = v8 == v9;
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
  v2 = [(NTAWorldClockPreferencesListenerObserver *)self queue];
  v3 = [v2 hash];

  return v3;
}

@end