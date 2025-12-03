@interface _UIOverlayWindowScene
- (_UIOverlayWindowScene)initWithSession:(id)session connectionOptions:(id)options;
@end

@implementation _UIOverlayWindowScene

- (_UIOverlayWindowScene)initWithSession:(id)session connectionOptions:(id)options
{
  optionsCopy = options;
  sessionCopy = session;
  v8 = UIOLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v13 = "[_UIOverlayWindowScene initWithSession:connectionOptions:]";
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v11.receiver = self;
  v11.super_class = _UIOverlayWindowScene;
  v9 = [(_UIOverlayWindowScene *)&v11 initWithSession:sessionCopy connectionOptions:optionsCopy];

  if (v9)
  {
    [(_UIOverlayWindowScene *)v9 _setKeepContextAssociationInBackground:1];
  }

  return v9;
}

@end