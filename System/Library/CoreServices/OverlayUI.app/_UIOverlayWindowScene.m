@interface _UIOverlayWindowScene
- (_UIOverlayWindowScene)initWithSession:(id)a3 connectionOptions:(id)a4;
@end

@implementation _UIOverlayWindowScene

- (_UIOverlayWindowScene)initWithSession:(id)a3 connectionOptions:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = UIOLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v13 = "[_UIOverlayWindowScene initWithSession:connectionOptions:]";
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v11.receiver = self;
  v11.super_class = _UIOverlayWindowScene;
  v9 = [(_UIOverlayWindowScene *)&v11 initWithSession:v7 connectionOptions:v6];

  if (v9)
  {
    [(_UIOverlayWindowScene *)v9 _setKeepContextAssociationInBackground:1];
  }

  return v9;
}

@end