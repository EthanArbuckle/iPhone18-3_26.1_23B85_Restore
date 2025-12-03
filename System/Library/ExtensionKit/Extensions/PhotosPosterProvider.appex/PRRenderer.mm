@interface PRRenderer
- (PXPosterPreferences)px_preferences;
- (PXPosterRenderingEnvironment)px_environment;
- (id)px_extendRenderSessionForReason:(id)reason;
- (void)px_noteContentSignificantlyChanged;
@end

@implementation PRRenderer

- (void)px_noteContentSignificantlyChanged
{
  selfCopy = self;
  PRRenderer.px_noteContentSignificantlyChanged()();
}

- (id)px_extendRenderSessionForReason:(id)reason
{
  sub_10002F404();
  selfCopy = self;
  v5 = PRRenderer.px_extendRenderSession(forReason:)();

  return v5;
}

- (PXPosterRenderingEnvironment)px_environment
{
  selfCopy = self;
  v3 = PRRenderer.px_environment.getter();

  return v3;
}

- (PXPosterPreferences)px_preferences
{
  selfCopy = self;
  v3 = PRRenderer.px_preferences.getter();

  return v3;
}

@end