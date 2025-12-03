@interface _ANEStorageMaintainer
+ (void)initialize;
- (void)purgeDanglingModelsAt:(id)at withReply:(id)reply;
@end

@implementation _ANEStorageMaintainer

+ (void)initialize
{
  qword_10000C8C8 = +[_ANELog maintenance];

  _objc_release_x1();
}

- (void)purgeDanglingModelsAt:(id)at withReply:(id)reply
{
  atCopy = at;
  replyCopy = reply;
  v8 = qword_10000C8C8;
  if (os_log_type_enabled(qword_10000C8C8, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = NSStringFromSelector(a2);
    v16 = 138412546;
    v17 = v10;
    v18 = 2112;
    v19 = atCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@: START: pathURL=%@", &v16, 0x16u);
  }

  v11 = [_ANEStorageHelper garbageCollectDanglingModelsAtPath:atCopy];
  if (!v11)
  {
    v12 = qword_10000C8C8;
    if (os_log_type_enabled(qword_10000C8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10000561C(v12, a2);
    }
  }

  replyCopy[2](replyCopy, v11);
  v13 = qword_10000C8C8;
  if (os_log_type_enabled(qword_10000C8C8, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    v15 = NSStringFromSelector(a2);
    v16 = 138412546;
    v17 = v15;
    v18 = 2112;
    v19 = atCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%@: END: pathURL=%@", &v16, 0x16u);
  }
}

@end