@interface WFShortcutsRemovalService
- (void)removeAppWithReply:(id)a3;
@end

@implementation WFShortcutsRemovalService

- (void)removeAppWithReply:(id)a3
{
  v3 = a3;
  v4 = sub_100001240();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[WFShortcutsRemovalService removeAppWithReply:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Starting removal", buf, 0xCu);
  }

  v5 = +[VCVoiceShortcutClient standardClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001294;
  v7[3] = &unk_100004180;
  v8 = v3;
  v6 = v3;
  [v5 obliterateShortcuts:v7];
}

@end