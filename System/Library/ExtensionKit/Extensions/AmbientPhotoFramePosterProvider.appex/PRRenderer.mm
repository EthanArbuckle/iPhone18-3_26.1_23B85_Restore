@interface PRRenderer
- (PXPosterPreferences)px_preferences;
- (PXPosterRenderingEnvironment)px_environment;
- (id)px_extendRenderSessionForReason:(id)a3;
- (void)px_noteContentSignificantlyChanged;
- (void)px_updatePreferences:(id)a3;
@end

@implementation PRRenderer

- (void)px_updatePreferences:(id)a3
{
  v4 = _Block_copy(a3);
  v6[2] = v4;
  v5 = self;
  PRRenderer.px_updatePreferences(_:)(sub_10000C270, v6);
  _Block_release(v4);
}

- (void)px_noteContentSignificantlyChanged
{
  v2 = self;
  PRRenderer.px_noteContentSignificantlyChanged()();
}

- (id)px_extendRenderSessionForReason:(id)a3
{
  sub_100010854();
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