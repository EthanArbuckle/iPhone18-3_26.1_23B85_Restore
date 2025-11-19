@interface AUUIAlertDelegateClass
- (BOOL)auUIAlertCancelAction:(id)a3;
- (BOOL)auUIAlertOKAction:(id)a3;
- (void)dealloc;
@end

@implementation AUUIAlertDelegateClass

- (void)dealloc
{
  objc_msgSend_setUiAlert_(self, a2, 0);
  v3.receiver = self;
  v3.super_class = AUUIAlertDelegateClass;
  [(AUUIAlertDelegateClass *)&v3 dealloc];
}

- (BOOL)auUIAlertOKAction:(id)a3
{
  objc_msgSend_setDelegate_(a3, a2, 0);
  v4 = self;
  qword_27E3833B0 = 0;
  sub_23EC18918(v4, v5, v6);
  return 1;
}

- (BOOL)auUIAlertCancelAction:(id)a3
{
  objc_msgSend_setDelegate_(a3, a2, 0);
  v4 = self;
  qword_27E3833B0 = 0;
  return 1;
}

@end