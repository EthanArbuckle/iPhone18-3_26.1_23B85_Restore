@interface CKNotification
+ (CKNotification)notificationFromRemoteNotificationDictionary:(NSDictionary *)notificationDictionary;
+ (id)_realNotificationFromRemoteNotificationDictionary:(id)dictionary;
+ (void)initialize;
- (CKNotification)init;
- (CKNotification)initWithCoder:(id)coder;
- (CKNotification)initWithRemoteNotificationDictionary:(id)dictionary;
- (NSString)containerIdentifier;
- (id)CKPropertiesDescription;
- (id)initInternal;
- (void)encodeWithCoder:(id)coder;
- (void)setContainerIdentifier:(id)identifier;
@end

@implementation CKNotification

+ (void)initialize
{
  v7[3] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v7[2] = objc_opt_class();
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v4, v7, 3);
  sub_1886CEE50(self, v3, v5, 0, 0);

  v6 = *MEMORY[0x1E69E9840];
}

- (CKNotification)init
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [CKException alloc];
  v6 = objc_msgSend_initWithName_format_(v4, v5, *MEMORY[0x1E695D940], @"%@ is not meant for direct instantiation", v3);
  objc_exception_throw(v6);
}

- (id)initInternal
{
  v3.receiver = self;
  v3.super_class = CKNotification;
  return [(CKNotification *)&v3 init];
}

+ (CKNotification)notificationFromRemoteNotificationDictionary:(NSDictionary *)notificationDictionary
{
  v4 = objc_msgSend_copy(notificationDictionary, a2, notificationDictionary);
  v6 = objc_msgSend__realNotificationFromRemoteNotificationDictionary_(self, v5, v4);

  return v6;
}

- (id)CKPropertiesDescription
{
  v59 = MEMORY[0x1E696AEC0];
  v58 = objc_msgSend_notificationType(self, a2, v2);
  v62 = objc_msgSend_notificationID(self, v4, v5);
  v65 = objc_msgSend_notificationUUID(v62, v6, v7);
  v61 = objc_msgSend_containerID(self, v8, v9);
  v64 = objc_msgSend_ckShortDescription(v61, v10, v11);
  objc_msgSend_subscriptionOwnerUserRecordID(self, v12, v13);
  v60 = v14 = &stru_1EFA32970;
  if (v60)
  {
    v17 = MEMORY[0x1E696AEC0];
    v56 = objc_msgSend_subscriptionOwnerUserRecordID(self, v15, v16);
    v55 = objc_msgSend_ckShortDescription(v56, v18, v19);
    v63 = objc_msgSend_stringWithFormat_(v17, v20, @", subscriptionOwnerUserRecordID=%@", v55);
  }

  else
  {
    v63 = &stru_1EFA32970;
  }

  isPruned = objc_msgSend_isPruned(self, v15, v16);
  v24 = @", isPruned";
  if (!isPruned)
  {
    v24 = &stru_1EFA32970;
  }

  v57 = v24;
  v27 = objc_msgSend_subscriptionID(self, v22, v23);
  if (v27)
  {
    v28 = MEMORY[0x1E696AEC0];
    v54 = objc_msgSend_subscriptionID(self, v25, v26);
    v14 = objc_msgSend_stringWithFormat_(v28, v29, @", subscriptionID=%@", v54);
  }

  v32 = objc_msgSend_testServerName(self, v25, v26);
  if (v32)
  {
    v33 = MEMORY[0x1E696AEC0];
    v53 = objc_msgSend_testServerName(self, v30, v31);
    v35 = objc_msgSend_stringWithFormat_(v33, v34, @", testServerName=%@", v53);
  }

  else
  {
    v35 = &stru_1EFA32970;
  }

  v38 = objc_msgSend_testServerURL(self, v30, v31);
  if (v38)
  {
    v39 = MEMORY[0x1E696AEC0];
    v52 = objc_msgSend_testServerURL(self, v36, v37);
    v41 = objc_msgSend_stringWithFormat_(v39, v40, @", testServerURL=%@", v52);
  }

  else
  {
    v41 = &stru_1EFA32970;
  }

  v44 = objc_msgSend_testDeviceID(self, v36, v37);
  if (v44)
  {
    v45 = MEMORY[0x1E696AEC0];
    v46 = objc_msgSend_testDeviceID(self, v42, v43);
    v48 = objc_msgSend_stringWithFormat_(v45, v47, @", testDeviceID=%@", v46);
    v50 = objc_msgSend_stringWithFormat_(v59, v49, @"notificationType=%ld, notificationID=%@, containerID=%@%@%@%@%@%@%@", v58, v65, v64, v63, v57, v14, v35, v41, v48);
  }

  else
  {
    v50 = objc_msgSend_stringWithFormat_(v59, v42, @"notificationType=%ld, notificationID=%@, containerID=%@%@%@%@%@%@%@", v58, v65, v64, v63, v57, v14, v35, v41, &stru_1EFA32970);
  }

  if (v38)
  {
  }

  if (v32)
  {
  }

  if (v27)
  {
  }

  if (v60)
  {
  }

  return v50;
}

- (NSString)containerIdentifier
{
  v3 = objc_msgSend_containerID(self, a2, v2);
  v6 = objc_msgSend_containerIdentifier(v3, v4, v5);

  return v6;
}

- (void)setContainerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [CKContainerID alloc];
  v14 = objc_msgSend_containerID(self, v6, v7);
  v10 = objc_msgSend_environment(v14, v8, v9);
  v12 = objc_msgSend_initWithContainerIdentifier_environment_(v5, v11, identifierCopy, v10);

  objc_msgSend_setContainerID_(self, v13, v12);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_notificationType(self, v5, v6);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v8, v7, @"Type");
  v11 = objc_msgSend_notificationID(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v11, @"ID");

  v15 = objc_msgSend_containerID(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(coderCopy, v16, v15, @"containerID");

  v19 = objc_msgSend_subscriptionOwnerUserRecordID(self, v17, v18);
  objc_msgSend_encodeObject_forKey_(coderCopy, v20, v19, @"subscriptionOwnerUserRecordID");

  isPruned = objc_msgSend_isPruned(self, v21, v22);
  objc_msgSend_encodeBool_forKey_(coderCopy, v24, isPruned, @"IsPruned");
  v27 = objc_msgSend_subscriptionID(self, v25, v26);
  objc_msgSend_encodeObject_forKey_(coderCopy, v28, v27, @"SubscriptionID");

  v31 = objc_msgSend_testServerName(self, v29, v30);
  v32 = NSStringFromSelector(sel_testServerName);
  objc_msgSend_encodeObject_forKey_(coderCopy, v33, v31, v32);

  v36 = objc_msgSend_testServerURL(self, v34, v35);
  v37 = NSStringFromSelector(sel_testServerURL);
  objc_msgSend_encodeObject_forKey_(coderCopy, v38, v36, v37);

  v41 = objc_msgSend_testDeviceID(self, v39, v40);
  v42 = NSStringFromSelector(sel_testDeviceID);
  objc_msgSend_encodeObject_forKey_(coderCopy, v43, v41, v42);

  v46 = objc_msgSend_alertBody(self, v44, v45);
  objc_msgSend_encodeObject_forKey_(coderCopy, v47, v46, @"AlertBody");

  v50 = objc_msgSend_alertLocalizationKey(self, v48, v49);
  objc_msgSend_encodeObject_forKey_(coderCopy, v51, v50, @"AlertLocalizationKey");

  v54 = objc_msgSend_alertLocalizationArgs(self, v52, v53);
  objc_msgSend_encodeObject_forKey_(coderCopy, v55, v54, @"AlertLocalizationArgs");

  v58 = objc_msgSend_title(self, v56, v57);
  objc_msgSend_encodeObject_forKey_(coderCopy, v59, v58, @"Title");

  v62 = objc_msgSend_titleLocalizationKey(self, v60, v61);
  objc_msgSend_encodeObject_forKey_(coderCopy, v63, v62, @"TitleLocalizationKey");

  v66 = objc_msgSend_titleLocalizationArgs(self, v64, v65);
  objc_msgSend_encodeObject_forKey_(coderCopy, v67, v66, @"TitleLocalizationArgs");

  v70 = objc_msgSend_subtitle(self, v68, v69);
  objc_msgSend_encodeObject_forKey_(coderCopy, v71, v70, @"Subtitle");

  v74 = objc_msgSend_subtitleLocalizationKey(self, v72, v73);
  objc_msgSend_encodeObject_forKey_(coderCopy, v75, v74, @"SubtitleLocalizationKey");

  v78 = objc_msgSend_subtitleLocalizationArgs(self, v76, v77);
  objc_msgSend_encodeObject_forKey_(coderCopy, v79, v78, @"SubtitleLocalizationArgs");

  v82 = objc_msgSend_alertActionLocalizationKey(self, v80, v81);
  objc_msgSend_encodeObject_forKey_(coderCopy, v83, v82, @"AlertActionLocalizationKey");

  v86 = objc_msgSend_alertLaunchImage(self, v84, v85);
  objc_msgSend_encodeObject_forKey_(coderCopy, v87, v86, @"LaunchImage");

  v90 = objc_msgSend_badge(self, v88, v89);
  objc_msgSend_encodeObject_forKey_(coderCopy, v91, v90, @"Badge");

  v94 = objc_msgSend_soundName(self, v92, v93);
  objc_msgSend_encodeObject_forKey_(coderCopy, v95, v94, @"SoundName");

  v98 = objc_msgSend_category(self, v96, v97);
  objc_msgSend_encodeObject_forKey_(coderCopy, v99, v98, @"Category");

  objc_autoreleasePoolPop(v4);
}

- (CKNotification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v97.receiver = self;
  v97.super_class = CKNotification;
  v5 = [(CKNotification *)&v97 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v5->_notificationType = objc_msgSend_decodeInt64ForKey_(coderCopy, v7, @"Type");
    v8 = objc_opt_class();
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v9, v8, @"ID");
    notificationID = v5->_notificationID;
    v5->_notificationID = v10;

    v12 = objc_opt_class();
    v14 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v13, v12, @"containerID");
    containerID = v5->_containerID;
    v5->_containerID = v14;

    v16 = objc_opt_class();
    v18 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v17, v16, @"subscriptionOwnerUserRecordID");
    subscriptionOwnerUserRecordID = v5->_subscriptionOwnerUserRecordID;
    v5->_subscriptionOwnerUserRecordID = v18;

    v5->_isPruned = objc_msgSend_decodeBoolForKey_(coderCopy, v20, @"IsPruned");
    v21 = objc_opt_class();
    v23 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v22, v21, @"SubscriptionID");
    subscriptionID = v5->_subscriptionID;
    v5->_subscriptionID = v23;

    v25 = objc_opt_class();
    v26 = NSStringFromSelector(sel_testServerName);
    v28 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v27, v25, v26);
    testServerName = v5->_testServerName;
    v5->_testServerName = v28;

    v30 = objc_opt_class();
    v31 = NSStringFromSelector(sel_testServerURL);
    v33 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v32, v30, v31);
    testServerURL = v5->_testServerURL;
    v5->_testServerURL = v33;

    v35 = objc_opt_class();
    v36 = NSStringFromSelector(sel_testDeviceID);
    v38 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v37, v35, v36);
    testDeviceID = v5->_testDeviceID;
    v5->_testDeviceID = v38;

    v40 = objc_opt_class();
    v42 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v41, v40, @"AlertBody");
    alertBody = v5->_alertBody;
    v5->_alertBody = v42;

    v44 = objc_opt_class();
    v46 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v45, v44, @"AlertLocalizationKey");
    alertLocalizationKey = v5->_alertLocalizationKey;
    v5->_alertLocalizationKey = v46;

    v48 = CKAcceptableValueClasses();
    v50 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v49, v48, @"AlertLocalizationArgs");
    alertLocalizationArgs = v5->_alertLocalizationArgs;
    v5->_alertLocalizationArgs = v50;

    v52 = objc_opt_class();
    v54 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v53, v52, @"Title");
    title = v5->_title;
    v5->_title = v54;

    v56 = objc_opt_class();
    v58 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v57, v56, @"TitleLocalizationKey");
    titleLocalizationKey = v5->_titleLocalizationKey;
    v5->_titleLocalizationKey = v58;

    v60 = CKAcceptableValueClasses();
    v62 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v61, v60, @"TitleLocalizationArgs");
    titleLocalizationArgs = v5->_titleLocalizationArgs;
    v5->_titleLocalizationArgs = v62;

    v64 = objc_opt_class();
    v66 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v65, v64, @"Subtitle");
    subtitle = v5->_subtitle;
    v5->_subtitle = v66;

    v68 = objc_opt_class();
    v70 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v69, v68, @"SubtitleLocalizationKey");
    subtitleLocalizationKey = v5->_subtitleLocalizationKey;
    v5->_subtitleLocalizationKey = v70;

    v72 = CKAcceptableValueClasses();
    v74 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v73, v72, @"SubtitleLocalizationArgs");
    subtitleLocalizationArgs = v5->_subtitleLocalizationArgs;
    v5->_subtitleLocalizationArgs = v74;

    v76 = objc_opt_class();
    v78 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v77, v76, @"AlertActionLocalizationKey");
    alertActionLocalizationKey = v5->_alertActionLocalizationKey;
    v5->_alertActionLocalizationKey = v78;

    v80 = objc_opt_class();
    v82 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v81, v80, @"LaunchImage");
    alertLaunchImage = v5->_alertLaunchImage;
    v5->_alertLaunchImage = v82;

    v84 = objc_opt_class();
    v86 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v85, v84, @"Badge");
    badge = v5->_badge;
    v5->_badge = v86;

    v88 = objc_opt_class();
    v90 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v89, v88, @"SoundName");
    soundName = v5->_soundName;
    v5->_soundName = v90;

    v92 = objc_opt_class();
    v94 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v93, v92, @"Category");
    category = v5->_category;
    v5->_category = v94;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

+ (id)_realNotificationFromRemoteNotificationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_opt_class();
  v6 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v5, @"ck");
  if (!v6)
  {
    v11 = 0;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_msgSend_objectForKeyedSubscript_(v6, v7, @"qry");

    if (v8)
    {
      v10 = off_1E70BA5D8;
LABEL_10:
      v15 = *v10;
      v4 = objc_opt_class();
      goto LABEL_11;
    }

    v12 = objc_msgSend_objectForKeyedSubscript_(v6, v9, @"fet");

    if (v12)
    {
      v10 = off_1E70BA658;
      goto LABEL_10;
    }

    v14 = objc_msgSend_objectForKeyedSubscript_(v6, v13, @"met");

    if (v14)
    {
      v10 = off_1E70BA140;
      goto LABEL_10;
    }
  }

LABEL_11:
  v16 = [v4 alloc];
  v11 = objc_msgSend_initWithRemoteNotificationDictionary_(v16, v17, dictionaryCopy);
LABEL_12:

  return v11;
}

- (CKNotification)initWithRemoteNotificationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v95.receiver = self;
  v95.super_class = CKNotification;
  v5 = [(CKNotification *)&v95 init];
  v7 = v5;
  if (v5)
  {
    objc_msgSend_setNotificationType_(v5, v6, 0);
    v9 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v8, @"ck");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"nid");
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [CKNotificationID alloc];
        v15 = objc_msgSend_initWithNotificationUUID_(v13, v14, v11);
        objc_msgSend_setNotificationID_(v7, v16, v15);
      }

      v17 = objc_msgSend_objectForKeyedSubscript_(v9, v12, @"p");

      if (v17)
      {
        objc_msgSend_setIsPruned_(v7, v18, 1);
      }

      v19 = objc_msgSend_objectForKeyedSubscript_(v9, v18, @"cid");
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v19;
      }

      else
      {
        v21 = @"Unknown Container";
      }

      v22 = objc_msgSend_objectForKeyedSubscript_(v9, v20, @"ce");
      if (objc_opt_respondsToSelector())
      {
        v25 = objc_msgSend_integerValue(v22, v23, v24);
      }

      else
      {
        v25 = 1;
      }

      v26 = [CKContainerID alloc];
      v28 = objc_msgSend_initWithContainerIdentifier_environment_(v26, v27, v21, v25);
      objc_msgSend_setContainerID_(v7, v29, v28);

      v31 = objc_msgSend_objectForKeyedSubscript_(v9, v30, @"ckuserid");
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = [CKRecordID alloc];
        v34 = objc_msgSend_initWithRecordName_(v32, v33, v31);
        objc_msgSend_setSubscriptionOwnerUserRecordID_(v7, v35, v34);
      }
    }

    v36 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v10, @"aps");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = objc_msgSend_objectForKeyedSubscript_(v36, v37, @"alert");
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_setAlertBody_(v7, v39, v38);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v41 = objc_msgSend_objectForKeyedSubscript_(v38, v40, @"body");
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend_setAlertBody_(v7, v42, v41);
          }

          v92 = v41;
          v43 = objc_msgSend_objectForKeyedSubscript_(v38, v42, @"loc-key");
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend_setAlertLocalizationKey_(v7, v44, v43);
          }

          v91 = v43;
          v45 = objc_msgSend_objectForKeyedSubscript_(v38, v44, @"loc-args");
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend_setAlertLocalizationArgs_(v7, v46, v45);
          }

          v47 = objc_msgSend_objectForKeyedSubscript_(v38, v46, @"title");
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend_setTitle_(v7, v48, v47);
          }

          v90 = v45;
          v49 = objc_msgSend_objectForKeyedSubscript_(v38, v48, @"title-loc-key");
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend_setTitleLocalizationKey_(v7, v50, v49);
          }

          v51 = objc_msgSend_objectForKeyedSubscript_(v38, v50, @"title-loc-args");
          objc_opt_class();
          v94 = v51;
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend_setTitleLocalizationArgs_(v7, v52, v51);
          }

          v53 = objc_msgSend_objectForKeyedSubscript_(v38, v52, @"subtitle");
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend_setSubtitle_(v7, v54, v53);
          }

          v55 = objc_msgSend_objectForKeyedSubscript_(v38, v54, @"subtitle-loc-key");
          objc_opt_class();
          v93 = v55;
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend_setSubtitleLocalizationKey_(v7, v56, v55);
          }

          v88 = v49;
          v57 = objc_msgSend_objectForKeyedSubscript_(v38, v56, @"subtitle-loc-args");
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend_setSubtitleLocalizationArgs_(v7, v58, v57);
          }

          v87 = v53;
          v59 = objc_msgSend_objectForKeyedSubscript_(v38, v58, @"action-loc-key");
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend_setAlertActionLocalizationKey_(v7, v60, v59);
          }

          v86 = v57;
          v89 = v47;
          v61 = objc_msgSend_objectForKeyedSubscript_(v38, v60, @"launch-image");
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend_setAlertLaunchImage_(v7, v62, v61);
          }

          v63 = objc_msgSend_objectForKeyedSubscript_(v38, v62, @"badge");
          if (objc_opt_respondsToSelector())
          {
            v66 = objc_msgSend_intValue(v63, v64, v65);
            v68 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v67, v66);
            objc_msgSend_setBadge_(v7, v69, v68);
          }

          v70 = objc_msgSend_objectForKeyedSubscript_(v38, v64, @"sound");
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend_setSoundName_(v7, v71, v70);
          }
        }
      }

      v72 = objc_msgSend_objectForKeyedSubscript_(v36, v40, @"category");
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_setCategory_(v7, v73, v72);
      }
    }

    v74 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v37, @"ckt");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v76 = objc_msgSend_objectForKeyedSubscript_(v74, v75, @"sn");
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_setTestServerName_(v7, v77, v76);
      }

      v78 = objc_msgSend_objectForKeyedSubscript_(v74, v77, @"surl");
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_setTestServerURL_(v7, v79, v78);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v81 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v80, v78);
          objc_msgSend_setTestServerURL_(v7, v82, v81);
        }
      }

      v83 = objc_msgSend_objectForKeyedSubscript_(v74, v80, @"did");
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_setTestDeviceID_(v7, v84, v83);
      }
    }
  }

  return v7;
}

@end