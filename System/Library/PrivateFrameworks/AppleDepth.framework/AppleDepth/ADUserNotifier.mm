@interface ADUserNotifier
+ (id)defaultUserNotifier;
- (ADUserNotifier)init;
- (BOOL)createNotificationWithTitle:(id)title message:(id)message defaultButton:(id)button alternateButton:(id)alternateButton responseBlock:(id)block;
- (id)buildTapToRadarURLWithRadarTitle:(id)title radarComponent:(unint64_t)component;
- (void)dealloc;
- (void)dismissNotification;
- (void)setComponentID:(id)d componentName:(id)name forQuery:(id)query;
- (void)showUserNotificationWithTitle:(id)title message:(id)message;
- (void)triggerApplicationWithNotificationTitle:(id)title notificationMessage:(id)message acceptButtonText:(id)text rejectButtonText:(id)buttonText applicationURL:(id)l;
- (void)triggerTapToRadarWithNotificationTitle:(id)title notificationMessage:(id)message radarTitle:(id)radarTitle radarComponent:(unint64_t)component;
@end

@implementation ADUserNotifier

- (id)buildTapToRadarURLWithRadarTitle:(id)title radarComponent:(unint64_t)component
{
  v31[3] = *MEMORY[0x277D85DE8];
  titleCopy = title;
  v7 = MEMORY[0x277CBEB38];
  v30[0] = @"Title";
  v30[1] = @"Classification";
  v22 = titleCopy;
  v31[0] = titleCopy;
  v31[1] = @"Other Bug";
  v30[2] = @"Reproducibility";
  v31[2] = @"I Didn't Try";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
  v9 = [v7 dictionaryWithDictionary:v8];

  if (component >= 4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      componentCopy = component;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ADUserNotifier: Unknown radar component: %lu", buf, 0xCu);
    }
  }

  else
  {
    [(ADUserNotifier *)self setComponentID:off_278CA1620[component] componentName:off_278CA1640[component] forQuery:v9];
  }

  array = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = MEMORY[0x277CCAD18];
        v17 = [v11 objectForKeyedSubscript:v15];
        v18 = [v16 queryItemWithName:v15 value:v17];
        [array addObject:v18];
      }

      v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  v19 = [MEMORY[0x277CCACE0] componentsWithString:@"tap-to-radar://new"];
  [v19 setQueryItems:array];
  v20 = [v19 URL];

  return v20;
}

- (void)setComponentID:(id)d componentName:(id)name forQuery:(id)query
{
  dCopy = d;
  nameCopy = name;
  queryCopy = query;
  [queryCopy setObject:dCopy forKey:@"ComponentID"];
  [queryCopy setObject:nameCopy forKey:@"ComponentName"];
}

- (void)dealloc
{
  [(ADUserNotifier *)self dismissNotification];
  v3.receiver = self;
  v3.super_class = ADUserNotifier;
  [(ADUserNotifier *)&v3 dealloc];
}

- (void)dismissNotification
{
  source = self->_source;
  if (source)
  {
    CFRunLoopSourceInvalidate(source);
    CFRelease(self->_source);
    self->_source = 0;
  }

  if (self->_notification)
  {
    v5 = [MEMORY[0x277CCAE60] valueWithPointer:?];
    if (ADUserNotificationAlertResultBlockMap(void)::onceToken != -1)
    {
      dispatch_once(&ADUserNotificationAlertResultBlockMap(void)::onceToken, &__block_literal_global_6915);
    }

    v4 = ADUserNotificationAlertResultBlockMap(void)::s_map;
    [v4 removeObjectForKey:v5];
    CFUserNotificationCancel(self->_notification);
    CFRelease(self->_notification);
    self->_notification = 0;
  }
}

- (BOOL)createNotificationWithTitle:(id)title message:(id)message defaultButton:(id)button alternateButton:(id)alternateButton responseBlock:(id)block
{
  v32 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  messageCopy = message;
  buttonCopy = button;
  alternateButtonCopy = alternateButton;
  blockCopy = block;
  if (!+[ADDeviceConfiguration isInternalBuild])
  {
    if (ADDebugUtilsADVerboseLogsEnabled != 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v31 = titleCopy;
        _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Customer build, canceling notification with title: %@", buf, 0xCu);
      }

      goto LABEL_24;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = titleCopy;
      v17 = MEMORY[0x277D86220];
      v18 = "Customer build, canceling notification with title: %@";
      goto LABEL_8;
    }

LABEL_24:
    v27 = 0;
    goto LABEL_25;
  }

  if (self->_notification)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = titleCopy;
      v17 = MEMORY[0x277D86220];
      v18 = "Another notification is currently active, canceling notification with title: %@";
LABEL_8:
      _os_log_impl(&dword_2402F6000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  v19 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CBF188], titleCopy);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CBF198], messageCopy);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CBF1E8], buttonCopy);
  if (alternateButtonCopy)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277CBF1C0], alternateButtonCopy);
  }

  error = 0;
  v21 = CFUserNotificationCreate(v19, 0.0, 0, &error, Mutable);
  self->_notification = v21;
  if (!v21)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v31) = error;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to create a user notification with error %i", buf, 8u);
    }

    goto LABEL_24;
  }

  RunLoopSource = CFUserNotificationCreateRunLoopSource(v19, v21, userNotificationCallback, 0);
  self->_source = RunLoopSource;
  if (!RunLoopSource)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to create user notifier run loop source", buf, 2u);
    }

    goto LABEL_24;
  }

  v23 = [MEMORY[0x277CCAE60] valueWithPointer:self->_notification];
  if (ADUserNotificationAlertResultBlockMap(void)::onceToken != -1)
  {
    dispatch_once(&ADUserNotificationAlertResultBlockMap(void)::onceToken, &__block_literal_global_6915);
  }

  v24 = ADUserNotificationAlertResultBlockMap(void)::s_map;
  v25 = MEMORY[0x245CC0270](blockCopy);
  [v24 setObject:v25 forKey:v23];

  Main = CFRunLoopGetMain();
  CFRunLoopAddSource(Main, self->_source, *MEMORY[0x277CBF048]);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = titleCopy;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Notification has been triggered with title: %@", buf, 0xCu);
  }

  CFRelease(Mutable);

  v27 = 1;
LABEL_25:

  return v27;
}

- (void)triggerTapToRadarWithNotificationTitle:(id)title notificationMessage:(id)message radarTitle:(id)radarTitle radarComponent:(unint64_t)component
{
  titleCopy = title;
  messageCopy = message;
  v11 = [(ADUserNotifier *)self buildTapToRadarURLWithRadarTitle:radarTitle radarComponent:component];
  [(ADUserNotifier *)self triggerApplicationWithNotificationTitle:titleCopy notificationMessage:messageCopy acceptButtonText:@"File a radar" rejectButtonText:@"Cancel" applicationURL:v11];
}

- (void)triggerApplicationWithNotificationTitle:(id)title notificationMessage:(id)message acceptButtonText:(id)text rejectButtonText:(id)buttonText applicationURL:(id)l
{
  v33 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  messageCopy = message;
  textCopy = text;
  buttonTextCopy = buttonText;
  lCopy = l;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v30 = titleCopy;
    v31 = 2112;
    v32 = lCopy;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Triggering notification with title: %@; Application URL: %@", buf, 0x16u);
  }

  notificationQueue = self->_notificationQueue;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __127__ADUserNotifier_triggerApplicationWithNotificationTitle_notificationMessage_acceptButtonText_rejectButtonText_applicationURL___block_invoke;
  v23[3] = &unk_278CA1600;
  v23[4] = self;
  v24 = titleCopy;
  v25 = messageCopy;
  v26 = buttonTextCopy;
  v27 = textCopy;
  v28 = lCopy;
  v18 = lCopy;
  v19 = textCopy;
  v20 = buttonTextCopy;
  v21 = messageCopy;
  v22 = titleCopy;
  dispatch_async(notificationQueue, v23);
}

void __127__ADUserNotifier_triggerApplicationWithNotificationTitle_notificationMessage_acceptButtonText_rejectButtonText_applicationURL___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __127__ADUserNotifier_triggerApplicationWithNotificationTitle_notificationMessage_acceptButtonText_rejectButtonText_applicationURL___block_invoke_2;
  v7[3] = &unk_278CA15D8;
  objc_copyWeak(&v9, &location);
  v8 = *(a1 + 72);
  [v2 createNotificationWithTitle:v3 message:v4 defaultButton:v5 alternateButton:v6 responseBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __127__ADUserNotifier_triggerApplicationWithNotificationTitle_notificationMessage_acceptButtonText_rejectButtonText_applicationURL___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained dismissNotification];

  if (a2 == 1)
  {
    v5 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v5 openURL:*(a1 + 32) configuration:0 completionHandler:0];
  }
}

- (void)showUserNotificationWithTitle:(id)title message:(id)message
{
  titleCopy = title;
  messageCopy = message;
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ADUserNotifier_showUserNotificationWithTitle_message___block_invoke;
  block[3] = &unk_278CA15B0;
  block[4] = self;
  v12 = titleCopy;
  v13 = messageCopy;
  v9 = messageCopy;
  v10 = titleCopy;
  dispatch_async(notificationQueue, block);
}

void __56__ADUserNotifier_showUserNotificationWithTitle_message___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__ADUserNotifier_showUserNotificationWithTitle_message___block_invoke_2;
  v5[3] = &unk_278CA1588;
  objc_copyWeak(&v6, &location);
  [v2 createNotificationWithTitle:v3 message:v4 defaultButton:@"OK" alternateButton:0 responseBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __56__ADUserNotifier_showUserNotificationWithTitle_message___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissNotification];
}

- (ADUserNotifier)init
{
  v7.receiver = self;
  v7.super_class = ADUserNotifier;
  v2 = [(ADUserNotifier *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.AppleDepth.userNotificationQueue", v3);
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v4;
  }

  return v2;
}

+ (id)defaultUserNotifier
{
  v3 = +[ADUserNotifier defaultUserNotifier]::defaultUserNotifier;
  if (!+[ADUserNotifier defaultUserNotifier]::defaultUserNotifier)
  {
    v4 = objc_alloc_init(self);
    v5 = +[ADUserNotifier defaultUserNotifier]::defaultUserNotifier;
    +[ADUserNotifier defaultUserNotifier]::defaultUserNotifier = v4;

    v3 = +[ADUserNotifier defaultUserNotifier]::defaultUserNotifier;
  }

  return v3;
}

@end