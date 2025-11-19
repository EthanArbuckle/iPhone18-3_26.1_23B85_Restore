@interface CNCoreRecentsChangeNotifier
+ (id)acceptedIntroductionsNotifierWithBlock:(id)a3;
- (CNCoreRecentsChangeNotifier)initWithNotification:(__CFString *)a3 block:(id)a4;
- (void)_notifyObserver;
- (void)dealloc;
- (void)startObserving;
- (void)stopObserving;
@end

@implementation CNCoreRecentsChangeNotifier

- (void)startObserving
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = [(CNCoreRecentsChangeNotifier *)self notification];

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, __notificationHandler, v4, 0, 1026);
}

+ (id)acceptedIntroductionsNotifierWithBlock:(id)a3
{
  v3 = a3;
  v4 = [CNCoreRecentsChangeNotifier alloc];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v5 = getCRAcceptedIntroductionsDidChangeNotificationSymbolLoc_ptr;
  v13 = getCRAcceptedIntroductionsDidChangeNotificationSymbolLoc_ptr;
  if (!getCRAcceptedIntroductionsDidChangeNotificationSymbolLoc_ptr)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getCRAcceptedIntroductionsDidChangeNotificationSymbolLoc_block_invoke;
    v9[3] = &unk_1E7412110;
    v9[4] = &v10;
    __getCRAcceptedIntroductionsDidChangeNotificationSymbolLoc_block_invoke(v9);
    v5 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v5)
  {
    MDItemUniqueIdentifier_cold_1 = getMDItemUniqueIdentifier_cold_1();
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(MDItemUniqueIdentifier_cold_1);
  }

  v6 = [(CNCoreRecentsChangeNotifier *)v4 initWithNotification:*v5 block:v3];

  return v6;
}

- (CNCoreRecentsChangeNotifier)initWithNotification:(__CFString *)a3 block:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = CNCoreRecentsChangeNotifier;
  v7 = [(CNCoreRecentsChangeNotifier *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_notification = a3;
    v9 = [v6 copy];
    notifyBlock = v8->_notifyBlock;
    v8->_notifyBlock = v9;
  }

  return v8;
}

- (void)stopObserving
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = [(CNCoreRecentsChangeNotifier *)self notification];

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v4, 0);
}

- (void)_notifyObserver
{
  v2 = [(CNCoreRecentsChangeNotifier *)self notifyBlock];
  v2[2]();
}

- (void)dealloc
{
  [(CNCoreRecentsChangeNotifier *)self stopObserving];
  v3.receiver = self;
  v3.super_class = CNCoreRecentsChangeNotifier;
  [(CNCoreRecentsChangeNotifier *)&v3 dealloc];
}

@end