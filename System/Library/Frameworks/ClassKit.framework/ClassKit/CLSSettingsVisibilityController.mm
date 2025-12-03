@interface CLSSettingsVisibilityController
+ (id)shared;
- (BOOL)settingsUIVisible;
- (CLSSettingsVisibilityController)init;
- (id)cachedCurrentUserAppleID;
- (id)currentUser;
- (void)currentUserDidChange:(id)change;
- (void)dealloc;
@end

@implementation CLSSettingsVisibilityController

+ (id)shared
{
  if (qword_280B2A5C0 != -1)
  {
    dispatch_once(&qword_280B2A5C0, &unk_284A07A88);
  }

  v3 = qword_280B2A5B8;

  return v3;
}

- (CLSSettingsVisibilityController)init
{
  v11.receiver = self;
  v11.super_class = CLSSettingsVisibilityController;
  v4 = [(CLSSettingsVisibilityController *)&v11 init];
  if (v4)
  {
    if (!objc_msgSend_isInternalProcess(CLSEntitlements, v2, v3))
    {
      v9 = 0;
      goto LABEL_6;
    }

    v7 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v5, v6);
    objc_msgSend_addObserver_selector_name_object_(v7, v8, v4, sel_currentUserDidChange_, @"CLSCurrentUserDidChangeNotificationName", 0);

    v4->_lock._os_unfair_lock_opaque = 0;
  }

  v9 = v4;
LABEL_6:

  return v9;
}

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2);
  objc_msgSend_removeObserver_(v4, v5, self);

  v6.receiver = self;
  v6.super_class = CLSSettingsVisibilityController;
  [(CLSSettingsVisibilityController *)&v6 dealloc];
}

- (void)currentUserDidChange:(id)change
{
  changeCopy = change;
  objc_msgSend_lock(self, v5, v6);
  v9 = objc_msgSend_userInfo(changeCopy, v7, v8);

  v11 = objc_msgSend_objectForKey_(v9, v10, @"CLSCurrentUserInfoKey");
  currentUser = self->_currentUser;
  self->_currentUser = v11;

  objc_msgSend_unlock(self, v13, v14);
  v15 = MEMORY[0x277D85CD0];

  dispatch_async(v15, &unk_284A082C8);
}

- (id)cachedCurrentUserAppleID
{
  v3 = objc_msgSend_person(self->_currentUser, a2, v2);
  v6 = objc_msgSend_appleID(v3, v4, v5);

  return v6;
}

- (id)currentUser
{
  objc_msgSend_lock(self, a2, v2);
  v4 = self->_currentUser;
  objc_msgSend_unlock(self, v5, v6);
  if (qword_280B2A020 != -1)
  {
    dispatch_once(&qword_280B2A020, &unk_284A082E8);
  }

  return v4;
}

- (BOOL)settingsUIVisible
{
  v3 = objc_msgSend_currentUser(self, a2, v2);
  if (objc_msgSend_isInstructor(v3, v4, v5))
  {
    isStudent = 1;
  }

  else
  {
    isStudent = objc_msgSend_isStudent(v3, v6, v7);
  }

  return isStudent;
}

@end