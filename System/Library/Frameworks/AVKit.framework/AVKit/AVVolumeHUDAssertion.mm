@interface AVVolumeHUDAssertion
- (AVVolumeHUDAssertion)initWithSceneIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier;
- (AVVolumeHUDAssertionDelegate)delegate;
- (BOOL)isEqual:(id)equal;
- (NSString)volumeAudioCategory;
- (UIWindowScene)windowSceneForVolumeDisplay;
- (id)_systemController;
- (unint64_t)hash;
@end

@implementation AVVolumeHUDAssertion

- (AVVolumeHUDAssertionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_systemController
{
  delegate = [(AVVolumeHUDAssertion *)self delegate];
  currentSystemController = [delegate currentSystemController];

  return currentSystemController;
}

- (NSString)volumeAudioCategory
{
  _systemController = [(AVVolumeHUDAssertion *)self _systemController];
  v3 = [_systemController volumeCategoryForAudioCategory:@"MediaPlayback"];

  return v3;
}

- (UIWindowScene)windowSceneForVolumeDisplay
{
  v2 = *MEMORY[0x1E69DDA98];
  sceneIdentifier = [(AVVolumeHUDAssertion *)self sceneIdentifier];
  v4 = [v2 avkit_windowSceneWithSessionIdentifier:sceneIdentifier];

  return v4;
}

- (unint64_t)hash
{
  sceneIdentifier = [(AVVolumeHUDAssertion *)self sceneIdentifier];
  clientIdentifier = [(AVVolumeHUDAssertion *)self clientIdentifier];
  v5 = clientIdentifier;
  if (clientIdentifier)
  {
    v6 = clientIdentifier;
  }

  else
  {
    v6 = &stru_1EFED57D8;
  }

  v7 = [sceneIdentifier stringByAppendingString:v6];
  v8 = [v7 hash];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[AVVolumeHUDAssertion prefersSystemVolumeHUDHidden](self, "prefersSystemVolumeHUDHidden")}];
  v10 = [v9 hash];

  return v10 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    clientIdentifier = [equalCopy clientIdentifier];
    clientIdentifier2 = [(AVVolumeHUDAssertion *)self clientIdentifier];
    if ([clientIdentifier isEqualToString:clientIdentifier2])
    {
      sceneIdentifier = [equalCopy sceneIdentifier];
      sceneIdentifier2 = [(AVVolumeHUDAssertion *)self sceneIdentifier];
      if ([sceneIdentifier isEqualToString:sceneIdentifier2])
      {
        prefersSystemVolumeHUDHidden = [equalCopy prefersSystemVolumeHUDHidden];
        v10 = prefersSystemVolumeHUDHidden ^ [(AVVolumeHUDAssertion *)self prefersSystemVolumeHUDHidden]^ 1;
      }

      else
      {
        LOBYTE(v10) = 0;
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (AVVolumeHUDAssertion)initWithSceneIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier
{
  identifierCopy = identifier;
  clientIdentifierCopy = clientIdentifier;
  v12.receiver = self;
  v12.super_class = AVVolumeHUDAssertion;
  v9 = [(AVVolumeHUDAssertion *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sceneIdentifier, identifier);
    objc_storeStrong(&v10->_clientIdentifier, clientIdentifier);
    v10->_prefersSystemVolumeHUDHidden = 0;
  }

  return v10;
}

@end