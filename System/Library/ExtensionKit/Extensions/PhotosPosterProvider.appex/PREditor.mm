@interface PREditor
- (BOOL)pu_isDepthEffectDisallowed;
- (PUPosterEditingEnvironment)pu_environment;
- (PUPosterEditingLook)pu_currentLook;
- (PUPosterEditorPreferences)pu_preferences;
- (UIAction)pu_placeholderAction;
- (UIEdgeInsets)pu_editingChromeDodgingInsets;
- (id)pu_disableIdleTimer;
- (id)pu_viewForMenuElementIdentifier:(id)identifier;
- (void)pu_requestDismissalWithAction:(int64_t)action;
- (void)pu_updateLookProperties;
- (void)pu_updateLooks;
- (void)pu_updateLuminanceValuesForLooks;
@end

@implementation PREditor

- (PUPosterEditingEnvironment)pu_environment
{
  selfCopy = self;
  v3 = PREditor.pu_environment.getter();

  return v3;
}

- (PUPosterEditorPreferences)pu_preferences
{
  selfCopy = self;
  v3 = PREditor.pu_preferences.getter();

  return v3;
}

- (void)pu_requestDismissalWithAction:(int64_t)action
{
  selfCopy = self;
  PREditor.pu_requestDismissal(with:)(action);
}

- (void)pu_updateLooks
{
  selfCopy = self;
  PREditor.pu_updateLooks()();
}

- (void)pu_updateLookProperties
{
  selfCopy = self;
  PREditor.pu_updateLookProperties()();
}

- (void)pu_updateLuminanceValuesForLooks
{
  selfCopy = self;
  PREditor.pu_updateLuminanceValuesForLooks()();
}

- (BOOL)pu_isDepthEffectDisallowed
{
  selfCopy = self;
  v3 = PREditor.pu_isDepthEffectDisallowed.getter();

  return v3 & 1;
}

- (UIAction)pu_placeholderAction
{
  selfCopy = self;
  v3 = PREditor.pu_placeholderAction.getter();

  return v3;
}

- (PUPosterEditingLook)pu_currentLook
{
  selfCopy = self;
  v3 = PREditor.pu_currentLook.getter();

  return v3;
}

- (UIEdgeInsets)pu_editingChromeDodgingInsets
{
  selfCopy = self;
  v3 = PREditor.pu_editingChromeDodgingInsets.getter();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.right = v13;
  result.bottom = v12;
  result.left = v11;
  result.top = v10;
  return result;
}

- (id)pu_disableIdleTimer
{
  selfCopy = self;
  v3 = PREditor.pu_disableIdleTimer()();

  return v3;
}

- (id)pu_viewForMenuElementIdentifier:(id)identifier
{
  v4 = sub_10002F404();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  v9 = PREditor.pu_view(forMenuElementIdentifier:)(v8);

  return v9;
}

@end