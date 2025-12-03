@interface AAPCommandQuit
- (void)_closeApp:(id)app;
- (void)performWithCompletion:(id)completion;
@end

@implementation AAPCommandQuit

- (void)performWithCompletion:(id)completion
{
  sceneId = [(AAPCommandQuit *)self sceneId];
  v6 = AFSiriLogContextPlugin;
  v7 = os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO);
  if (sceneId)
  {
    if (v7)
    {
      v9 = 136315138;
      v10 = "[AAPCommandQuit performWithCompletion:]";
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "%s Shell not available, unable to close scene", &v9, 0xCu);
    }

    v8 = objc_alloc_init(SACommandFailed);
    (*(completion + 2))(completion, [v8 dictionary]);
  }

  else
  {
    if (v7)
    {
      v9 = 136315138;
      v10 = "[AAPCommandQuit performWithCompletion:]";
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "%s Null sceneId, closing app instead", &v9, 0xCu);
    }

    [(AAPCommandQuit *)self _closeApp:completion];
  }
}

- (void)_closeApp:(id)app
{
  v4 = AFSiriLogContextPlugin;
  if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[AAPCommandQuit _closeApp:]";
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%s Shell not available, unable to close app", &v6, 0xCu);
  }

  v5 = objc_alloc_init(SACommandFailed);
  (*(app + 2))(app, [v5 dictionary]);
}

@end