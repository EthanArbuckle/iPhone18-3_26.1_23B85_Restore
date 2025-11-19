@interface BYODContactsManager
+ (BYODContactsManager)sharedInstance;
+ (id)log;
- (BYODContactsManager)init;
- (id)_avatarImageForContacts:(id)a3;
- (id)_avatarImageRenderer;
- (id)_defaultKeyDescriptors;
- (id)_fetchContactForUser:(id)a3;
- (id)avatarImageForMeContact;
- (id)avatarImageForUser:(id)a3;
- (id)fetchNameFromContacts:(id)a3;
- (id)fullNameWithFirstName:(id)a3 lastName:(id)a4;
- (id)monogramWithFirstName:(id)a3 andLastName:(id)a4;
- (void)fetchAvatarImageForUser:(id)a3 withCompletion:(id)a4;
@end

@implementation BYODContactsManager

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2E0C8;
  block[3] = &unk_B8D78;
  block[4] = a1;
  if (qword_D64D0 != -1)
  {
    dispatch_once(&qword_D64D0, block);
  }

  v2 = qword_D64C8;

  return v2;
}

+ (BYODContactsManager)sharedInstance
{
  if (qword_D64E0 != -1)
  {
    sub_7973C();
  }

  v3 = qword_D64D8;

  return v3;
}

- (BYODContactsManager)init
{
  v10.receiver = self;
  v10.super_class = BYODContactsManager;
  v2 = [(BYODContactsManager *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(CNContactStore);
    localContactStore = v2->_localContactStore;
    v2->_localContactStore = v3;

    v5 = [CNAvatarViewControllerSettings settingsWithContactStore:v2->_localContactStore threeDTouchEnabled:0];
    avatarSettings = v2->_avatarSettings;
    v2->_avatarSettings = v5;

    [(CNAvatarViewControllerSettings *)v2->_avatarSettings setStyle:0];
    v7 = objc_alloc_init(CNAvatarViewController);
    avatar = v2->_avatar;
    v2->_avatar = v7;
  }

  return v2;
}

- (id)_defaultKeyDescriptors
{
  v2 = [(CNAvatarViewController *)self->_avatar descriptorForRequiredKeys];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (id)avatarImageForMeContact
{
  localContactStore = self->_localContactStore;
  v4 = [(BYODContactsManager *)self _defaultKeyDescriptors];
  v10 = 0;
  v5 = [(CNContactStore *)localContactStore _ios_meContactWithKeysToFetch:v4 error:&v10];
  v6 = v10;

  if (v5)
  {
    v11 = v5;
    v7 = [NSArray arrayWithObjects:&v11 count:1];
    v8 = [(BYODContactsManager *)self _avatarImageForContacts:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)avatarImageForUser:(id)a3
{
  v4 = a3;
  v5 = [(BYODContactsManager *)self _fetchContactForUser:v4];
  v6 = v5;
  if (v5 && [v5 count])
  {
    v7 = [(BYODContactsManager *)self _avatarImageForContacts:v6];
  }

  else
  {
    v8 = [v4 firstName];
    v9 = [v8 length];

    if (v9)
    {
      v10 = [v4 firstName];
      v11 = [v4 lastName];
      v7 = [(BYODContactsManager *)self monogramWithFirstName:v10 andLastName:v11];
    }

    else
    {
      v10 = [v4 invitationHandle];
      v7 = [(BYODContactsManager *)self monogramWithFirstName:v10 andLastName:&stru_B9FC8];
    }
  }

  return v7;
}

- (void)fetchAvatarImageForUser:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 dsid];
  if ([v6 isFamilyMember])
  {
    v9 = objc_alloc_init(NSNumberFormatter);
    [v9 setNumberStyle:1];
    v10 = [v9 numberFromString:v8];
    v11 = [[FAFetchFamilyPhotoRequest alloc] initWithFamilyMemberDSID:v10 size:1 localFallback:1];
    [v11 setUseMonogramAsLastResort:1];
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3032000000;
    v15[3] = sub_2E804;
    v15[4] = sub_2E814;
    v16 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_2E81C;
    v12[3] = &unk_B92D0;
    v14 = v15;
    v13 = v7;
    [v11 startRequestWithCompletionHandler:v12];

    _Block_object_dispose(v15, 8);
  }

  else
  {
    v9 = [(BYODContactsManager *)self avatarImageForUser:v6];
    (*(v7 + 2))(v7, v9);
  }
}

- (id)monogramWithFirstName:(id)a3 andLastName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(CNMutableContact);
  [v8 setGivenName:v6];
  [v8 setFamilyName:v7];
  v12 = v8;
  v9 = [NSArray arrayWithObjects:&v12 count:1];
  v10 = [(BYODContactsManager *)self _avatarImageForContacts:v9];

  return v10;
}

- (id)fetchNameFromContacts:(id)a3
{
  v4 = [(BYODContactsManager *)self _fetchContactForUser:a3];
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [v5 firstObject];
    v7 = [v6 givenName];
    v8 = [v6 familyName];
    v9 = [(BYODContactsManager *)self fullNameWithFirstName:v7 lastName:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)fullNameWithFirstName:(id)a3 lastName:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSPersonNameComponents);
  [v7 setGivenName:v5];
  [v7 setFamilyName:v6];
  v8 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:v7 style:2 options:0];
  if ([v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = [NSString stringWithFormat:@"%@ %@", v5, v6];
  }

  v10 = v9;

  return v10;
}

- (id)_avatarImageRenderer
{
  contactsAvatarImageRenderer = self->_contactsAvatarImageRenderer;
  if (!contactsAvatarImageRenderer)
  {
    v4 = [CNAvatarImageRenderer alloc];
    v5 = +[CNAvatarImageRendererSettings defaultSettings];
    v6 = [v4 initWithSettings:v5];
    v7 = self->_contactsAvatarImageRenderer;
    self->_contactsAvatarImageRenderer = v6;

    contactsAvatarImageRenderer = self->_contactsAvatarImageRenderer;
  }

  return contactsAvatarImageRenderer;
}

- (id)_avatarImageForContacts:(id)a3
{
  v4 = a3;
  v5 = +[UIScreen mainScreen];
  [v5 scale];
  v7 = [CNAvatarImageRenderingScope scopeWithPointSize:0 scale:0 rightToLeft:38.0 style:38.0, v6];

  if ([v4 count] >= 2)
  {
    v8 = [v4 firstObject];
    v9 = [NSArray arrayWithObject:v8];

    v4 = v9;
  }

  v10 = [(BYODContactsManager *)self _avatarImageRenderer];
  v11 = [v10 avatarImageForContacts:v4 scope:v7];

  return v11;
}

- (id)_fetchContactForUser:(id)a3
{
  v4 = a3;
  v5 = [v4 emailAddress];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [v4 emailAddress];
    v8 = [CNContact predicateForContactsMatchingEmailAddress:v7];
  }

  else
  {
    v9 = [v4 phoneNumber];
    v10 = [v9 length];

    if (!v10)
    {
LABEL_10:
      v14 = 0;
      goto LABEL_13;
    }

    v7 = [v4 phoneNumber];
    v11 = [CNPhoneNumber phoneNumberWithStringValue:v7];
    v8 = [CNContact predicateForContactsMatchingPhoneNumber:v11];
  }

  if (!v8)
  {
    goto LABEL_10;
  }

  v12 = [(BYODContactsManager *)self _defaultKeyDescriptors];
  localContactStore = self->_localContactStore;
  v18 = 0;
  v14 = [(CNContactStore *)localContactStore unifiedContactsMatchingPredicate:v8 keysToFetch:v12 error:&v18];
  v15 = v18;
  if (v15 || ![v14 count])
  {
    v16 = +[BYODContactsManager log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v15;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Unable to query a unified contact with error: %@", buf, 0xCu);
    }

    v14 = 0;
  }

LABEL_13:

  return v14;
}

@end