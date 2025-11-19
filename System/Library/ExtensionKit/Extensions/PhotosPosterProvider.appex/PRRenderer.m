@interface PRRenderer
- (PXPosterPreferences)px_preferences;
- (PXPosterRenderingEnvironment)px_environment;
- (id)px_extendRenderSessionForReason:(id)a3;
- (void)px_noteContentSignificantlyChanged;
@end

@implementation PRRenderer

- (void)px_noteContentSignificantlyChanged
{
  v2 = self;
  PRRenderer.px_noteContentSignificantlyChanged()();
}

- (id)px_extendRenderSessionForReason:(id)a3
{
  sub_10002F404();
  v4 = self;
  v5 = PRRenderer.px_extendRenderSession(forReason:)();

  return v5;
}

- (PXPosterRenderingEnvironment)px_environment
{
  v2 = self;
  v3 = PRRenderer.px_environment.getter();

  return v3;
}

- (PXPosterPreferences)px_preferences
{
  v2 = self;
  v3 = PRRenderer.px_preferences.getter();

  return v3;
}

@end