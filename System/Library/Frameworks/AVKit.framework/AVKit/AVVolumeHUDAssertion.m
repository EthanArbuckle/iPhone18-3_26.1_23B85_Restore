@interface AVVolumeHUDAssertion
- (AVVolumeHUDAssertion)initWithSceneIdentifier:(id)a3 clientIdentifier:(id)a4;
- (AVVolumeHUDAssertionDelegate)delegate;
- (BOOL)isEqual:(id)a3;
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
  v2 = [(AVVolumeHUDAssertion *)self delegate];
  v3 = [v2 currentSystemController];

  return v3;
}

- (NSString)volumeAudioCategory
{
  v2 = [(AVVolumeHUDAssertion *)self _systemController];
  v3 = [v2 volumeCategoryForAudioCategory:@"MediaPlayback"];

  return v3;
}

- (UIWindowScene)windowSceneForVolumeDisplay
{
  v2 = *MEMORY[0x1E69DDA98];
  v3 = [(AVVolumeHUDAssertion *)self sceneIdentifier];
  v4 = [v2 avkit_windowSceneWithSessionIdentifier:v3];

  return v4;
}

- (unint64_t)hash
{
  v3 = [(AVVolumeHUDAssertion *)self sceneIdentifier];
  v4 = [(AVVolumeHUDAssertion *)self clientIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1EFED57D8;
  }

  v7 = [v3 stringByAppendingString:v6];
  v8 = [v7 hash];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[AVVolumeHUDAssertion prefersSystemVolumeHUDHidden](self, "prefersSystemVolumeHUDHidden")}];
  v10 = [v9 hash];

  return v10 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 clientIdentifier];
    v6 = [(AVVolumeHUDAssertion *)self clientIdentifier];
    if ([v5 isEqualToString:v6])
    {
      v7 = [v4 sceneIdentifier];
      v8 = [(AVVolumeHUDAssertion *)self sceneIdentifier];
      if ([v7 isEqualToString:v8])
      {
        v9 = [v4 prefersSystemVolumeHUDHidden];
        v10 = v9 ^ [(AVVolumeHUDAssertion *)self prefersSystemVolumeHUDHidden]^ 1;
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

- (AVVolumeHUDAssertion)initWithSceneIdentifier:(id)a3 clientIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AVVolumeHUDAssertion;
  v9 = [(AVVolumeHUDAssertion *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sceneIdentifier, a3);
    objc_storeStrong(&v10->_clientIdentifier, a4);
    v10->_prefersSystemVolumeHUDHidden = 0;
  }

  return v10;
}

@end