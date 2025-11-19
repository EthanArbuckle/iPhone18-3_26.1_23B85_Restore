@interface PREditor
- (BOOL)pu_isDepthEffectDisallowed;
- (PUPosterEditingEnvironment)pu_environment;
- (PUPosterEditingLook)pu_currentLook;
- (PUPosterEditorPreferences)pu_preferences;
- (UIAction)pu_placeholderAction;
- (UIEdgeInsets)pu_editingChromeDodgingInsets;
- (id)pu_disableIdleTimer;
- (id)pu_viewForMenuElementIdentifier:(id)a3;
- (void)pu_requestDismissalWithAction:(int64_t)a3;
- (void)pu_updateLookProperties;
- (void)pu_updateLooks;
- (void)pu_updateLuminanceValuesForLooks;
@end

@implementation PREditor

- (PUPosterEditingEnvironment)pu_environment
{
  v2 = self;
  v3 = PREditor.pu_environment.getter();

  return v3;
}

- (PUPosterEditorPreferences)pu_preferences
{
  v2 = self;
  v3 = PREditor.pu_preferences.getter();

  return v3;
}

- (void)pu_requestDismissalWithAction:(int64_t)a3
{
  v4 = self;
  PREditor.pu_requestDismissal(with:)(a3);
}

- (void)pu_updateLooks
{
  v2 = self;
  PREditor.pu_updateLooks()();
}

- (void)pu_updateLookProperties
{
  v2 = self;
  PREditor.pu_updateLookProperties()();
}

- (void)pu_updateLuminanceValuesForLooks
{
  v2 = self;
  PREditor.pu_updateLuminanceValuesForLooks()();
}

- (BOOL)pu_isDepthEffectDisallowed
{
  v2 = self;
  v3 = PREditor.pu_isDepthEffectDisallowed.getter();

  return v3 & 1;
}

- (UIAction)pu_placeholderAction
{
  v2 = self;
  v3 = PREditor.pu_placeholderAction.getter();

  return v3;
}

- (PUPosterEditingLook)pu_currentLook
{
  v2 = self;
  v3 = PREditor.pu_currentLook.getter();

  return v3;
}

- (UIEdgeInsets)pu_editingChromeDodgingInsets
{
  v2 = self;
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
  v2 = self;
  v3 = PREditor.pu_disableIdleTimer()();

  return v3;
}

- (id)pu_viewForMenuElementIdentifier:(id)a3
{
  v4 = sub_10002F404();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  v9 = PREditor.pu_view(forMenuElementIdentifier:)(v8);

  return v9;
}

@end