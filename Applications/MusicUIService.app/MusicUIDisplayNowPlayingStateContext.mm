@interface MusicUIDisplayNowPlayingStateContext
+ (id)stateContextForNowPlaying;
- (MusicUIDisplayNowPlayingStateContext)initWithStateContext:(id)context;
- (id)description;
@end

@implementation MusicUIDisplayNowPlayingStateContext

- (MusicUIDisplayNowPlayingStateContext)initWithStateContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = MusicUIDisplayNowPlayingStateContext;
  v5 = [(MusicUIDisplayNowPlayingStateContext *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MusicUIDisplayNowPlayingStateContext *)v5 setStateName:contextCopy];
  }

  return v6;
}

+ (id)stateContextForNowPlaying
{
  v2 = [[self alloc] initWithStateContext:@"nowplaying"];

  return v2;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@:%p - state: %@, associatedBundleID: %@>", v4, self, self->_stateName, self->_associatedBundleID];

  return v5;
}

@end