@interface SBSRemoteContentHostInterfaceShim
+ (void)getContentBoundsWithBlock:(id)block interface:(id)interface;
@end

@implementation SBSRemoteContentHostInterfaceShim

+ (void)getContentBoundsWithBlock:(id)block interface:(id)interface
{
  blockCopy = block;
  interfaceCopy = interface;
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[LockScreenViewController] calling getContentBoundsWithReplyBlock from ObjC shim...", buf, 2u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000FFA4;
  v9[3] = &unk_1000190D0;
  v10 = blockCopy;
  v8 = blockCopy;
  [interfaceCopy getContentBoundsWithReplyBlock:v9];
}

@end