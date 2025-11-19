@interface _WKWebPushAction
+ (id)_webPushActionWithNotificationResponse:(id)a3;
+ (id)webPushActionWithDictionary:(id)a3;
- (id).cxx_construct;
- (id)_nameForBackgroundTaskAndLogging;
- (optional<WebCore::NotificationData>)coreNotificationData;
- (unint64_t)beginBackgroundTaskForHandling;
- (void)dealloc;
- (void)setCoreNotificationData:(optional<WebCore::NotificationData> *)a3;
@end

@implementation _WKWebPushAction

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _WKWebPushAction;
  [(_WKWebPushAction *)&v3 dealloc];
}

+ (id)webPushActionWithDictionary:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"WebPushActionVersion"];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v6 = [a3 objectForKeyedSubscript:@"WebPushActionPartition"];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  uuidFromPushPartition(&v13, v7);
  v8 = v13;
  if (!v13)
  {
    return 0;
  }

  v9 = [a3 objectForKeyedSubscript:@"WebPushActionType"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = objc_alloc_init(_WKWebPushAction);
    [(_WKWebPushAction *)v10 setVersion:v5];
    [(_WKWebPushAction *)v10 setWebClipIdentifier:v8];
    [(_WKWebPushAction *)v10 setType:v9];
    if (v10)
    {
      v11 = v10;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_webPushActionWithNotificationResponse:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (![objc_msgSend(objc_msgSend(a3 "notification")])
  {
    return 0;
  }

  uuidFromPushPartition(&v15, [objc_msgSend(objc_msgSend(a3 "notification")]);
  v4 = v15;
  if (!v15)
  {
    return 0;
  }

  v5 = [objc_msgSend(objc_msgSend(objc_msgSend(a3 "notification")];
  WebCore::NotificationData::fromDictionary(v20, v5, v6);
  if (v21)
  {
    v8 = objc_alloc_init(_WKWebPushAction);
    [(_WKWebPushAction *)v8 setWebClipIdentifier:v4];
    v9 = [a3 actionIdentifier];
    if ([v9 isEqualToString:*MEMORY[0x1E69833E0]])
    {
      v10 = @"_WKWebPushActionTypeNotificationClick";
LABEL_9:
      [(_WKWebPushAction *)v8 setType:v10];
      v16[0] = 0;
      v17 = 0;
      if (v21 == 1)
      {
        WebCore::NotificationData::NotificationData(v16, v20);
        v17 = 1;
      }

      [(_WKWebPushAction *)v8 setCoreNotificationData:v16];
      if (v17 == 1)
      {
        WebCore::NotificationData::~NotificationData(v16, v7);
      }

      goto LABEL_16;
    }

    v11 = [a3 actionIdentifier];
    if ([v11 isEqualToString:*MEMORY[0x1E69833F8]])
    {
      v10 = @"_WKWebPushActionTypeNotificationClose";
      goto LABEL_9;
    }

    v12 = qword_1ED6410A8;
    if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
    {
      v14 = [a3 actionIdentifier];
      *buf = 138412290;
      v19 = v14;
      _os_log_error_impl(&dword_19D52D000, v12, OS_LOG_TYPE_ERROR, "Unknown notification response action identifier encountered: %@", buf, 0xCu);
    }
  }

  v8 = 0;
LABEL_16:
  if (v21 == 1)
  {
    WebCore::NotificationData::~NotificationData(v20, v7);
  }

  return v8;
}

- (id)_nameForBackgroundTaskAndLogging
{
  if ([(NSString *)self->_type isEqualToString:@"_WKWebPushActionTypePushEvent"])
  {
    return @"Web Push Event";
  }

  if ([(NSString *)self->_type isEqualToString:@"_WKWebPushActionTypeNotificationClick"])
  {
    return @"Web Notification Click";
  }

  if ([(NSString *)self->_type isEqualToString:@"_WKWebPushActionTypeNotificationClose"])
  {
    return @"Web Notification Close";
  }

  return @"Unknown Web Push event";
}

- (unint64_t)beginBackgroundTaskForHandling
{
  webClipIdentifier = self->_webClipIdentifier;
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = [(_WKWebPushAction *)self _nameForBackgroundTaskAndLogging];
  if (webClipIdentifier)
  {
    v6 = [v4 initWithFormat:@"%@ for %@", v5, self->_webClipIdentifier];
  }

  else
  {
    v6 = [v4 initWithFormat:@"%@", v5, v13];
  }

  v7 = v6;
  v8 = [MEMORY[0x1E69DC668] sharedApplication];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = __50___WKWebPushAction_beginBackgroundTaskForHandling__block_invoke;
  v14[3] = &__block_descriptor_40_e8_32c31_ZTSN3WTF9RetainPtrI8NSStringEE_e5_v8__0l;
  v15 = v7;
  if (v7)
  {
    v9 = v7;
  }

  v10 = [v8 beginBackgroundTaskWithName:v7 expirationHandler:v14];
  v11 = v15;
  v15 = 0;
  if (v11)
  {
  }

  if (v7)
  {
  }

  return v10;
}

- (optional<WebCore::NotificationData>)coreNotificationData
{
  retstr->var0.__null_state_ = 0;
  *(&retstr[1].var0.__engaged_ + 64) = 0;
  if (*(&result[1].var0.__engaged_ + 96))
  {
    result = WebCore::NotificationData::NotificationData(retstr, (&result->var0.__engaged_ + 32));
    *(&retstr[1].var0.__engaged_ + 64) = 1;
  }

  return result;
}

- (void)setCoreNotificationData:(optional<WebCore::NotificationData> *)a3
{
  v5 = *(&self[1]._coreNotificationData.var0.__engaged_ + 32);
  if (v5 == *(&a3[1].var0.__engaged_ + 64))
  {
    if (*(&self[1]._coreNotificationData.var0.__engaged_ + 32))
    {
      WTF::String::operator=(&self->_coreNotificationData.var0.__val_, a3);
      v6 = *(&a3->var0.__engaged_ + 24);
      *(&self->_coreNotificationData.var0.__engaged_ + 8) = *(&a3->var0.__engaged_ + 8);
      *(&self->_coreNotificationData.var0.__engaged_ + 24) = v6;
      WTF::String::operator=(&self->_coreNotificationData.var0.__val_.title, &a3->var0.__val_.title);
      WTF::String::operator=(&self->_coreNotificationData.var0.__val_.body, &a3->var0.__val_.body);
      WTF::String::operator=(&self->_coreNotificationData.var0.__val_.iconURL, &a3->var0.__val_.iconURL);
      WTF::String::operator=(&self->_coreNotificationData.var0.__val_.tag, &a3->var0.__val_.tag);
      WTF::String::operator=(&self->_coreNotificationData.var0.__val_.language, &a3->var0.__val_.language);
      self->_coreNotificationData.var0.__val_.direction = a3->var0.__val_.direction;
      WTF::String::operator=(&self->_coreNotificationData.var0.__val_.originString, &a3->var0.__val_.originString);
      WTF::String::operator=(&self->_coreNotificationData.var0.__val_.serviceWorkerRegistrationURL, &a3->var0.__val_.serviceWorkerRegistrationURL);
      v7 = *(&a3->var0.__engaged_ + 104);
      *(&self->_coreNotificationData.var0.__engaged_ + 120) = *(&a3->var0.__engaged_ + 120);
      *(&self->_coreNotificationData.var0.__engaged_ + 104) = v7;
      *(&self->_coreNotificationData.var0.__engaged_ + 9) = *(&a3->var0.__engaged_ + 9);
      v8 = *(&a3[1].var0.__engaged_ + 1);
      v10 = *&a3->creationTime.m_value;
      v9 = *&a3->data.m_capacity;
      *&self[1].super.isa = *&a3[1].var0.__null_state_;
      *&self[1]._webClipIdentifier = v8;
      *&self->_coreNotificationData.creationTime.m_value = v10;
      *&self->_coreNotificationData.data.m_capacity = v9;
      WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(&self[1]._coreNotificationData, (&a3[1].var0.__engaged_ + 32));
      *(&self[1]._coreNotificationData.var0.__engaged_ + 8) = *(&a3[1].var0.__engaged_ + 24);
    }
  }

  else
  {
    p_coreNotificationData = &self->_coreNotificationData;
    if (v5)
    {
      WebCore::NotificationData::~NotificationData(p_coreNotificationData, a2);
      *(&self[1]._coreNotificationData.var0.__engaged_ + 32) = 0;
    }

    else
    {
      WebCore::NotificationData::NotificationData(p_coreNotificationData, a3);
      *(&self[1]._coreNotificationData.var0.__engaged_ + 32) = 1;
    }
  }
}

- (id).cxx_construct
{
  *(self + 32) = 0;
  *(self + 288) = 0;
  return self;
}

@end