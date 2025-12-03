@interface MFPreferencesURL
+ (NSURL)addAccountURL;
+ (NSURL)blockedSenderURL;
+ (NSURL)customizeNotificationURL;
+ (NSURL)fetchNewDataURL;
+ (NSURL)hideMyEmailURL;
+ (NSURL)rootURL;
+ (NSURL)storageManagementURL;
+ (NSURL)vipSenderListURL;
+ (id)accountInfoURLForAccount:(id)account;
+ (id)accountURLForAccount:(id)account;
+ (id)advancedAccountInfoURLForAccount:(id)account;
@end

@implementation MFPreferencesURL

+ (NSURL)addAccountURL
{
  selfCopy = self;
  swift_getObjCClassMetadata();
  v12 = sub_1BE941E5C();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v9 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](selfCopy, v2, v3, v4);
  v13 = &v7 - v9;
  swift_getObjCClassMetadata();
  sub_1BE93302C(v13);
  v14 = sub_1BE941E3C();
  (*(v10 + 8))(v13, v12);
  v5 = v14;

  return v5;
}

+ (NSURL)blockedSenderURL
{
  selfCopy = self;
  swift_getObjCClassMetadata();
  v12 = sub_1BE941E5C();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v9 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](selfCopy, v2, v3, v4);
  v13 = &v7 - v9;
  swift_getObjCClassMetadata();
  sub_1BE933160(v13);
  v14 = sub_1BE941E3C();
  (*(v10 + 8))(v13, v12);
  v5 = v14;

  return v5;
}

+ (NSURL)customizeNotificationURL
{
  selfCopy = self;
  swift_getObjCClassMetadata();
  v12 = sub_1BE941E5C();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v9 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](selfCopy, v2, v3, v4);
  v13 = &v7 - v9;
  swift_getObjCClassMetadata();
  sub_1BE933294(v13);
  v14 = sub_1BE941E3C();
  (*(v10 + 8))(v13, v12);
  v5 = v14;

  return v5;
}

+ (NSURL)vipSenderListURL
{
  selfCopy = self;
  swift_getObjCClassMetadata();
  v12 = sub_1BE941E5C();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v9 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](selfCopy, v2, v3, v4);
  v13 = &v7 - v9;
  swift_getObjCClassMetadata();
  sub_1BE933988(v13);
  v14 = sub_1BE941E3C();
  (*(v10 + 8))(v13, v12);
  v5 = v14;

  return v5;
}

+ (NSURL)fetchNewDataURL
{
  selfCopy = self;
  swift_getObjCClassMetadata();
  v12 = sub_1BE941E5C();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v9 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](selfCopy, v2, v3, v4);
  v13 = &v7 - v9;
  swift_getObjCClassMetadata();
  sub_1BE933FD8(v13);
  v14 = sub_1BE941E3C();
  (*(v10 + 8))(v13, v12);
  v5 = v14;

  return v5;
}

+ (id)accountURLForAccount:(id)account
{
  selfCopy = self;
  accountCopy = account;
  swift_getObjCClassMetadata();
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](accountCopy, v3, v4, v5);
  v15 = &v9 - v12;
  MEMORY[0x1E69E5928](v6);
  swift_getObjCClassMetadata();
  sub_1BE9357B8(accountCopy, v15);
  MEMORY[0x1E69E5920](accountCopy);
  v16 = sub_1BE941E5C();
  v17 = *(v16 - 8);
  v18 = v16 - 8;
  if ((*(v17 + 48))(v15, 1) == 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = sub_1BE941E3C();
    (*(v17 + 8))(v15, v16);
    v11 = v10;
  }

  v7 = v11;

  return v7;
}

+ (id)accountInfoURLForAccount:(id)account
{
  selfCopy = self;
  accountCopy = account;
  swift_getObjCClassMetadata();
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](accountCopy, v3, v4, v5);
  v15 = &v9 - v12;
  MEMORY[0x1E69E5928](v6);
  swift_getObjCClassMetadata();
  sub_1BE935EE8(accountCopy, v15);
  MEMORY[0x1E69E5920](accountCopy);
  v16 = sub_1BE941E5C();
  v17 = *(v16 - 8);
  v18 = v16 - 8;
  if ((*(v17 + 48))(v15, 1) == 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = sub_1BE941E3C();
    (*(v17 + 8))(v15, v16);
    v11 = v10;
  }

  v7 = v11;

  return v7;
}

+ (id)advancedAccountInfoURLForAccount:(id)account
{
  selfCopy = self;
  accountCopy = account;
  swift_getObjCClassMetadata();
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](accountCopy, v3, v4, v5);
  v15 = &v9 - v12;
  MEMORY[0x1E69E5928](v6);
  swift_getObjCClassMetadata();
  sub_1BE936618(accountCopy, v15);
  MEMORY[0x1E69E5920](accountCopy);
  v16 = sub_1BE941E5C();
  v17 = *(v16 - 8);
  v18 = v16 - 8;
  if ((*(v17 + 48))(v15, 1) == 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = sub_1BE941E3C();
    (*(v17 + 8))(v15, v16);
    v11 = v10;
  }

  v7 = v11;

  return v7;
}

+ (NSURL)rootURL
{
  selfCopy = self;
  swift_getObjCClassMetadata();
  v12 = sub_1BE941E5C();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v9 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](selfCopy, v2, v3, v4);
  v13 = &v7 - v9;
  swift_getObjCClassMetadata();
  sub_1BE9372E0(v13);
  v14 = sub_1BE941E3C();
  (*(v10 + 8))(v13, v12);
  v5 = v14;

  return v5;
}

+ (NSURL)storageManagementURL
{
  selfCopy = self;
  swift_getObjCClassMetadata();
  v12 = sub_1BE941E5C();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v9 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](selfCopy, v2, v3, v4);
  v13 = &v7 - v9;
  swift_getObjCClassMetadata();
  sub_1BE9374B0(v13);
  v14 = sub_1BE941E3C();
  (*(v10 + 8))(v13, v12);
  v5 = v14;

  return v5;
}

+ (NSURL)hideMyEmailURL
{
  selfCopy = self;
  swift_getObjCClassMetadata();
  v12 = sub_1BE941E5C();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v9 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](selfCopy, v2, v3, v4);
  v13 = &v7 - v9;
  swift_getObjCClassMetadata();
  sub_1BE937680(v13);
  v14 = sub_1BE941E3C();
  (*(v10 + 8))(v13, v12);
  v5 = v14;

  return v5;
}

@end