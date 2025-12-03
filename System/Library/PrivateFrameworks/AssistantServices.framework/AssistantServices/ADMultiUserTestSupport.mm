@interface ADMultiUserTestSupport
+ (id)sharedService;
- (BOOL)hasTestUserSelectionScores;
- (id)_init;
- (id)getClassifiedUser;
- (id)getDebugVoiceIdScores;
- (id)getUserIdentityClassification;
- (void)updateVoiceIdScoreToUser:(id)user score:(id)score reset:(BOOL)reset completion:(id)completion;
@end

@implementation ADMultiUserTestSupport

- (BOOL)hasTestUserSelectionScores
{
  v3 = AFIsInternalInstall();
  if (v3)
  {
    LOBYTE(v3) = self->_scoresBySharedID != 0;
  }

  return v3;
}

- (id)getUserIdentityClassification
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1002BD384;
  v13 = sub_1002BD394;
  v14 = SAUserIdentityClassificationUnknownValue;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002BD39C;
  v8[3] = &unk_10051D4A0;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(queue, v8);
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v7 = v10[5];
    *buf = 136315394;
    v16 = "[ADMultiUserTestSupport getUserIdentityClassification]";
    v17 = 2112;
    v18 = v7;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s userIdentityClassification = %@", buf, 0x16u);
  }

  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

- (id)getClassifiedUser
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1002BD384;
  v12 = sub_1002BD394;
  v13 = 0;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002BD8F4;
  v7[3] = &unk_10051D4A0;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(queue, v7);
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = v9[5];
    *buf = 136315394;
    v15 = "[ADMultiUserTestSupport getClassifiedUser]";
    v16 = 2112;
    v17 = v6;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s classifiedUser = %@", buf, 0x16u);
  }

  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

- (id)getDebugVoiceIdScores
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1002BD384;
  v10 = sub_1002BD394;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002BDAE8;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)updateVoiceIdScoreToUser:(id)user score:(id)score reset:(BOOL)reset completion:(id)completion
{
  userCopy = user;
  scoreCopy = score;
  completionCopy = completion;
  if (AFIsInternalInstall())
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002BDC4C;
    block[3] = &unk_100519D50;
    resetCopy = reset;
    block[4] = self;
    v15 = scoreCopy;
    v16 = userCopy;
    v17 = completionCopy;
    dispatch_async(queue, block);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (id)_init
{
  v7.receiver = self;
  v7.super_class = ADMultiUserTestSupport;
  v2 = [(ADMultiUserTestSupport *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("ADMultiUserTestSupport", v3);

    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

+ (id)sharedService
{
  if (AFSupportsMultiUser())
  {
    if (qword_1005907E8 != -1)
    {
      dispatch_once(&qword_1005907E8, &stru_100519D28);
    }

    v2 = qword_1005907E0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end