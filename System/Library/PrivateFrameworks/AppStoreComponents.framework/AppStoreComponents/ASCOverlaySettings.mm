@interface ASCOverlaySettings
+ (ASCOverlaySettings)sharedSettings;
- (NSNumber)overlaysLoadTimeout;
- (NSNumber)rateLimitRequestsPerSecond;
- (NSNumber)rateLimitTimeWindow;
- (id)_init;
- (void)setOverlaysLoadTimeout:(id)timeout;
- (void)setRateLimitRequestsPerSecond:(id)second;
- (void)setRateLimitTimeWindow:(id)window;
@end

@implementation ASCOverlaySettings

+ (ASCOverlaySettings)sharedSettings
{
  if (sharedSettings_onceToken != -1)
  {
    +[ASCOverlaySettings sharedSettings];
  }

  v3 = sharedSettings_sharedSettings;

  return v3;
}

uint64_t __36__ASCOverlaySettings_sharedSettings__block_invoke()
{
  sharedSettings_sharedSettings = [[ASCOverlaySettings alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  +[ASCEligibility assertCurrentProcessEligibility];
  v4.receiver = self;
  v4.super_class = ASCOverlaySettings;
  return [(ASCOverlaySettings *)&v4 init];
}

- (NSNumber)rateLimitRequestsPerSecond
{
  v2 = +[ASCDefaults daemonDefaults];
  overlaysRateLimitRequestsPerSecond = [v2 overlaysRateLimitRequestsPerSecond];

  return overlaysRateLimitRequestsPerSecond;
}

- (void)setRateLimitRequestsPerSecond:(id)second
{
  secondCopy = second;
  v4 = +[ASCDefaults daemonDefaults];
  [v4 setOverlaysRateLimitRequestsPerSecond:secondCopy];
}

- (NSNumber)rateLimitTimeWindow
{
  v2 = +[ASCDefaults daemonDefaults];
  overlaysRateLimitTimeWindow = [v2 overlaysRateLimitTimeWindow];

  return overlaysRateLimitTimeWindow;
}

- (void)setRateLimitTimeWindow:(id)window
{
  windowCopy = window;
  v4 = +[ASCDefaults daemonDefaults];
  [v4 setOverlaysRateLimitTimeWindow:windowCopy];
}

- (NSNumber)overlaysLoadTimeout
{
  v2 = +[ASCDefaults daemonDefaults];
  overlaysLoadTimeout = [v2 overlaysLoadTimeout];

  return overlaysLoadTimeout;
}

- (void)setOverlaysLoadTimeout:(id)timeout
{
  timeoutCopy = timeout;
  v4 = +[ASCDefaults daemonDefaults];
  [v4 setOverlaysLoadTimeout:timeoutCopy];
}

@end