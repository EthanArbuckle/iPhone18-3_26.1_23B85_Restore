@interface NTKUltraCubeUserState
+ (id)userState;
- (id)_init;
- (void)_userDidAddFaceToLibrary:(id)library;
@end

@implementation NTKUltraCubeUserState

+ (id)userState
{
  if (qword_581C0 != -1)
  {
    sub_29CE0();
  }

  v3 = qword_581B8;

  return v3;
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = NTKUltraCubeUserState;
  v2 = [(NTKUltraCubeUserState *)&v8 init];
  if (v2)
  {
    keyExistsAndHasValidFormat = 0;
    if (CFPreferencesGetAppBooleanValue(@"UltraFaceWasAddedToLibrary", NTKFacePreferencesDomain, &keyExistsAndHasValidFormat))
    {
      v3 = keyExistsAndHasValidFormat == 0;
    }

    else
    {
      v3 = 1;
    }

    v4 = !v3;
    v2->_hasUserEverAddedFaceToLibrary = v4;
    if (v3)
    {
      v5 = +[NSNotificationCenter defaultCenter];
      [v5 addObserver:v2 selector:"_userDidAddFaceToLibrary:" name:NTKCFaceDetailViewControllerDidAddFace object:0];
    }
  }

  return v2;
}

- (void)_userDidAddFaceToLibrary:(id)library
{
  object = [library object];
  if (!self->_hasUserEverAddedFaceToLibrary)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_hasUserEverAddedFaceToLibrary = 1;
      v5 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315138;
        v8 = "[NTKUltraCubeUserState _userDidAddFaceToLibrary:]";
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%s: a face was added to the library", &v7, 0xCu);
      }

      CFPreferencesSetAppValue(@"UltraFaceWasAddedToLibrary", kCFBooleanTrue, NTKFacePreferencesDomain);
      v6 = +[NSNotificationCenter defaultCenter];
      [v6 removeObserver:self];
    }
  }
}

@end