@interface CKNotificationInfo
+ (id)notificationInfo;
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (CKNotificationInfo)initWithCoder:(id)a3;
- (NSArray)alertLocalizationArgs;
- (NSArray)desiredKeys;
- (NSArray)subtitleLocalizationArgs;
- (NSArray)titleLocalizationArgs;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAlertLocalizationArgs:(NSArray *)alertLocalizationArgs;
- (void)setDesiredKeys:(NSArray *)desiredKeys;
- (void)setSubtitleLocalizationArgs:(NSArray *)subtitleLocalizationArgs;
- (void)setTitleLocalizationArgs:(NSArray *)titleLocalizationArgs;
@end

@implementation CKNotificationInfo

+ (void)initialize
{
  v2 = objc_opt_class();
  v3 = objc_opt_self();

  sub_1886CEE50(v3, v2, 0, 0, 0);
}

+ (id)notificationInfo
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (NSArray)alertLocalizationArgs
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_alertLocalizationArgs;
  objc_sync_exit(v2);

  return v3;
}

- (void)setAlertLocalizationArgs:(NSArray *)alertLocalizationArgs
{
  v9 = alertLocalizationArgs;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_CKDeepCopy(v9, v5, v6);
  v8 = v4->_alertLocalizationArgs;
  v4->_alertLocalizationArgs = v7;

  objc_sync_exit(v4);
}

- (NSArray)titleLocalizationArgs
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_titleLocalizationArgs;
  objc_sync_exit(v2);

  return v3;
}

- (void)setTitleLocalizationArgs:(NSArray *)titleLocalizationArgs
{
  v9 = titleLocalizationArgs;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_CKDeepCopy(v9, v5, v6);
  v8 = v4->_titleLocalizationArgs;
  v4->_titleLocalizationArgs = v7;

  objc_sync_exit(v4);
}

- (NSArray)subtitleLocalizationArgs
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_subtitleLocalizationArgs;
  objc_sync_exit(v2);

  return v3;
}

- (void)setSubtitleLocalizationArgs:(NSArray *)subtitleLocalizationArgs
{
  v9 = subtitleLocalizationArgs;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_CKDeepCopy(v9, v5, v6);
  v8 = v4->_subtitleLocalizationArgs;
  v4->_subtitleLocalizationArgs = v7;

  objc_sync_exit(v4);
}

- (NSArray)desiredKeys
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_desiredKeys;
  objc_sync_exit(v2);

  return v3;
}

- (void)setDesiredKeys:(NSArray *)desiredKeys
{
  v9 = desiredKeys;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_CKDeepCopy(v9, v5, v6);
  v8 = v4->_desiredKeys;
  v4->_desiredKeys = v7;

  objc_sync_exit(v4);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v125 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v8 = objc_msgSend_alertBody(self, v6, v7);
      v11 = objc_msgSend_alertBody(v5, v9, v10);
      v12 = CKObjectsAreBothNilOrEqual(v8, v11);

      if (!v12)
      {
        goto LABEL_23;
      }

      v15 = objc_msgSend_alertLocalizationKey(self, v13, v14);
      v18 = objc_msgSend_alertLocalizationKey(v5, v16, v17);
      v19 = CKObjectsAreBothNilOrEqual(v15, v18);

      if (!v19)
      {
        goto LABEL_23;
      }

      v22 = objc_msgSend_alertLocalizationArgs(self, v20, v21);
      v25 = objc_msgSend_alertLocalizationArgs(v5, v23, v24);
      v26 = CKObjectsAreBothNilOrEqual(v22, v25);

      if (!v26)
      {
        goto LABEL_23;
      }

      v29 = objc_msgSend_title(self, v27, v28);
      v32 = objc_msgSend_title(v5, v30, v31);
      v33 = CKObjectsAreBothNilOrEqual(v29, v32);

      if (!v33)
      {
        goto LABEL_23;
      }

      v36 = objc_msgSend_titleLocalizationKey(self, v34, v35);
      v39 = objc_msgSend_titleLocalizationKey(v5, v37, v38);
      v40 = CKObjectsAreBothNilOrEqual(v36, v39);

      if (!v40)
      {
        goto LABEL_23;
      }

      v43 = objc_msgSend_titleLocalizationArgs(self, v41, v42);
      v46 = objc_msgSend_titleLocalizationArgs(v5, v44, v45);
      v47 = CKObjectsAreBothNilOrEqual(v43, v46);

      if (!v47)
      {
        goto LABEL_23;
      }

      v50 = objc_msgSend_subtitle(self, v48, v49);
      v53 = objc_msgSend_subtitle(v5, v51, v52);
      v54 = CKObjectsAreBothNilOrEqual(v50, v53);

      if (!v54)
      {
        goto LABEL_23;
      }

      v57 = objc_msgSend_subtitleLocalizationKey(self, v55, v56);
      v60 = objc_msgSend_subtitleLocalizationKey(v5, v58, v59);
      v61 = CKObjectsAreBothNilOrEqual(v57, v60);

      if (!v61)
      {
        goto LABEL_23;
      }

      v64 = objc_msgSend_subtitleLocalizationArgs(self, v62, v63);
      v67 = objc_msgSend_subtitleLocalizationArgs(v5, v65, v66);
      v68 = CKObjectsAreBothNilOrEqual(v64, v67);

      if (!v68)
      {
        goto LABEL_23;
      }

      v71 = objc_msgSend_alertActionLocalizationKey(self, v69, v70);
      v74 = objc_msgSend_alertActionLocalizationKey(v5, v72, v73);
      v75 = CKObjectsAreBothNilOrEqual(v71, v74);

      if (!v75)
      {
        goto LABEL_23;
      }

      v78 = objc_msgSend_alertLaunchImage(self, v76, v77);
      v81 = objc_msgSend_alertLaunchImage(v5, v79, v80);
      v82 = CKObjectsAreBothNilOrEqual(v78, v81);

      if (!v82)
      {
        goto LABEL_23;
      }

      v85 = objc_msgSend_soundName(self, v83, v84);
      v88 = objc_msgSend_soundName(v5, v86, v87);
      v89 = CKObjectsAreBothNilOrEqual(v85, v88);

      if (!v89)
      {
        goto LABEL_23;
      }

      v92 = objc_msgSend_desiredKeys(self, v90, v91);
      v95 = objc_msgSend_desiredKeys(v5, v93, v94);
      v96 = CKObjectsAreBothNilOrEqual(v92, v95);

      if (!v96)
      {
        goto LABEL_23;
      }

      shouldBadge = objc_msgSend_shouldBadge(self, v97, v98);
      if (shouldBadge != objc_msgSend_shouldBadge(v5, v100, v101))
      {
        goto LABEL_23;
      }

      shouldSendContentAvailable = objc_msgSend_shouldSendContentAvailable(self, v102, v103);
      if (shouldSendContentAvailable != objc_msgSend_shouldSendContentAvailable(v5, v105, v106))
      {
        goto LABEL_23;
      }

      shouldSendMutableContent = objc_msgSend_shouldSendMutableContent(self, v107, v108);
      if (shouldSendMutableContent != objc_msgSend_shouldSendMutableContent(v5, v110, v111))
      {
        goto LABEL_23;
      }

      v114 = objc_msgSend_category(self, v112, v113);
      v117 = objc_msgSend_category(v5, v115, v116);
      v118 = CKObjectsAreBothNilOrEqual(v114, v117);

      if (v118)
      {
        v121 = objc_msgSend_collapseIDKey(self, v119, v120);
        v124 = objc_msgSend_collapseIDKey(v5, v122, v123);
        v125 = CKObjectsAreBothNilOrEqual(v121, v124);
      }

      else
      {
LABEL_23:
        v125 = 0;
      }
    }

    else
    {
      v125 = 0;
    }
  }

  return v125;
}

- (unint64_t)hash
{
  v3 = objc_msgSend_alertBody(self, a2, v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CKNotificationInfo);
  v7 = objc_msgSend_alertBody(self, v5, v6);
  v10 = objc_msgSend_copy(v7, v8, v9);
  alertBody = v4->_alertBody;
  v4->_alertBody = v10;

  v14 = objc_msgSend_alertLocalizationKey(self, v12, v13);
  v17 = objc_msgSend_copy(v14, v15, v16);
  alertLocalizationKey = v4->_alertLocalizationKey;
  v4->_alertLocalizationKey = v17;

  v21 = objc_msgSend_alertLocalizationArgs(self, v19, v20);
  v24 = objc_msgSend_CKDeepCopy(v21, v22, v23);
  alertLocalizationArgs = v4->_alertLocalizationArgs;
  v4->_alertLocalizationArgs = v24;

  v28 = objc_msgSend_title(self, v26, v27);
  v31 = objc_msgSend_copy(v28, v29, v30);
  title = v4->_title;
  v4->_title = v31;

  v35 = objc_msgSend_titleLocalizationKey(self, v33, v34);
  v38 = objc_msgSend_copy(v35, v36, v37);
  titleLocalizationKey = v4->_titleLocalizationKey;
  v4->_titleLocalizationKey = v38;

  v42 = objc_msgSend_titleLocalizationArgs(self, v40, v41);
  v45 = objc_msgSend_CKDeepCopy(v42, v43, v44);
  titleLocalizationArgs = v4->_titleLocalizationArgs;
  v4->_titleLocalizationArgs = v45;

  v49 = objc_msgSend_subtitle(self, v47, v48);
  v52 = objc_msgSend_copy(v49, v50, v51);
  subtitle = v4->_subtitle;
  v4->_subtitle = v52;

  v56 = objc_msgSend_subtitleLocalizationKey(self, v54, v55);
  v59 = objc_msgSend_copy(v56, v57, v58);
  subtitleLocalizationKey = v4->_subtitleLocalizationKey;
  v4->_subtitleLocalizationKey = v59;

  v63 = objc_msgSend_subtitleLocalizationArgs(self, v61, v62);
  v66 = objc_msgSend_CKDeepCopy(v63, v64, v65);
  subtitleLocalizationArgs = v4->_subtitleLocalizationArgs;
  v4->_subtitleLocalizationArgs = v66;

  v70 = objc_msgSend_alertActionLocalizationKey(self, v68, v69);
  v73 = objc_msgSend_copy(v70, v71, v72);
  alertActionLocalizationKey = v4->_alertActionLocalizationKey;
  v4->_alertActionLocalizationKey = v73;

  v77 = objc_msgSend_alertLaunchImage(self, v75, v76);
  v80 = objc_msgSend_copy(v77, v78, v79);
  alertLaunchImage = v4->_alertLaunchImage;
  v4->_alertLaunchImage = v80;

  v84 = objc_msgSend_soundName(self, v82, v83);
  v87 = objc_msgSend_copy(v84, v85, v86);
  soundName = v4->_soundName;
  v4->_soundName = v87;

  v4->_shouldBadge = objc_msgSend_shouldBadge(self, v89, v90);
  v4->_shouldSendContentAvailable = objc_msgSend_shouldSendContentAvailable(self, v91, v92);
  v4->_shouldSendMutableContent = objc_msgSend_shouldSendMutableContent(self, v93, v94);
  v97 = objc_msgSend_category(self, v95, v96);
  v100 = objc_msgSend_copy(v97, v98, v99);
  category = v4->_category;
  v4->_category = v100;

  v104 = objc_msgSend_desiredKeys(self, v102, v103);
  v107 = objc_msgSend_CKDeepCopy(v104, v105, v106);
  desiredKeys = v4->_desiredKeys;
  v4->_desiredKeys = v107;

  v111 = objc_msgSend_collapseIDKey(self, v109, v110);
  v114 = objc_msgSend_copy(v111, v112, v113);
  collapseIDKey = v4->_collapseIDKey;
  v4->_collapseIDKey = v114;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v77 = a3;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_alertBody(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(v77, v8, v7, @"alertString");

  v11 = objc_msgSend_alertLocalizationKey(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(v77, v12, v11, @"localizedAlert");

  v15 = objc_msgSend_alertLocalizationArgs(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(v77, v16, v15, @"localizedAlertArguments");

  v19 = objc_msgSend_title(self, v17, v18);
  objc_msgSend_encodeObject_forKey_(v77, v20, v19, @"title");

  v23 = objc_msgSend_titleLocalizationKey(self, v21, v22);
  objc_msgSend_encodeObject_forKey_(v77, v24, v23, @"localizedTitle");

  v27 = objc_msgSend_titleLocalizationArgs(self, v25, v26);
  objc_msgSend_encodeObject_forKey_(v77, v28, v27, @"localizedTitleArguments");

  v31 = objc_msgSend_subtitle(self, v29, v30);
  objc_msgSend_encodeObject_forKey_(v77, v32, v31, @"subtitle");

  v35 = objc_msgSend_subtitleLocalizationKey(self, v33, v34);
  objc_msgSend_encodeObject_forKey_(v77, v36, v35, @"localizedSubtitle");

  v39 = objc_msgSend_subtitleLocalizationArgs(self, v37, v38);
  objc_msgSend_encodeObject_forKey_(v77, v40, v39, @"localizedSubtitleArguments");

  v43 = objc_msgSend_alertActionLocalizationKey(self, v41, v42);
  objc_msgSend_encodeObject_forKey_(v77, v44, v43, @"localizedAlertAction");

  v47 = objc_msgSend_alertLaunchImage(self, v45, v46);
  objc_msgSend_encodeObject_forKey_(v77, v48, v47, @"launchImage");

  v51 = objc_msgSend_soundName(self, v49, v50);
  objc_msgSend_encodeObject_forKey_(v77, v52, v51, @"soundName");

  v55 = objc_msgSend_desiredKeys(self, v53, v54);
  objc_msgSend_encodeObject_forKey_(v77, v56, v55, @"desiredKeys");

  shouldBadge = objc_msgSend_shouldBadge(self, v57, v58);
  objc_msgSend_encodeBool_forKey_(v77, v60, shouldBadge, @"shouldBadge");
  shouldSendContentAvailable = objc_msgSend_shouldSendContentAvailable(self, v61, v62);
  objc_msgSend_encodeBool_forKey_(v77, v64, shouldSendContentAvailable, @"shouldSendContentAvailable");
  shouldSendMutableContent = objc_msgSend_shouldSendMutableContent(self, v65, v66);
  objc_msgSend_encodeBool_forKey_(v77, v68, shouldSendMutableContent, @"shouldSendMutableContent");
  v71 = objc_msgSend_category(self, v69, v70);
  objc_msgSend_encodeObject_forKey_(v77, v72, v71, @"category");

  v75 = objc_msgSend_collapseIDKey(self, v73, v74);
  objc_msgSend_encodeObject_forKey_(v77, v76, v75, @"collapseID");

  objc_autoreleasePoolPop(v4);
}

- (CKNotificationInfo)initWithCoder:(id)a3
{
  v92[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v88.receiver = self;
  v88.super_class = CKNotificationInfo;
  v5 = [(CKNotificationInfo *)&v88 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v7, @"alertString");
    alertBody = v5->_alertBody;
    v5->_alertBody = v9;

    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v12, v11, @"localizedAlert");
    alertLocalizationKey = v5->_alertLocalizationKey;
    v5->_alertLocalizationKey = v13;

    v15 = MEMORY[0x1E695DFD8];
    v92[0] = objc_opt_class();
    v92[1] = objc_opt_class();
    v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v16, v92, 2);
    v19 = objc_msgSend_setWithArray_(v15, v18, v17);
    v21 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v20, v19, @"localizedAlertArguments");
    alertLocalizationArgs = v5->_alertLocalizationArgs;
    v5->_alertLocalizationArgs = v21;

    v23 = objc_opt_class();
    v25 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v24, v23, @"title");
    title = v5->_title;
    v5->_title = v25;

    v27 = objc_opt_class();
    v29 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v28, v27, @"localizedTitle");
    titleLocalizationKey = v5->_titleLocalizationKey;
    v5->_titleLocalizationKey = v29;

    v31 = MEMORY[0x1E695DFD8];
    v91[0] = objc_opt_class();
    v91[1] = objc_opt_class();
    v33 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v32, v91, 2);
    v35 = objc_msgSend_setWithArray_(v31, v34, v33);
    v37 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v36, v35, @"localizedTitleArguments");
    titleLocalizationArgs = v5->_titleLocalizationArgs;
    v5->_titleLocalizationArgs = v37;

    v39 = objc_opt_class();
    v41 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v40, v39, @"subtitle");
    subtitle = v5->_subtitle;
    v5->_subtitle = v41;

    v43 = objc_opt_class();
    v45 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v44, v43, @"localizedSubtitle");
    subtitleLocalizationKey = v5->_subtitleLocalizationKey;
    v5->_subtitleLocalizationKey = v45;

    v47 = MEMORY[0x1E695DFD8];
    v90[0] = objc_opt_class();
    v90[1] = objc_opt_class();
    v49 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v48, v90, 2);
    v51 = objc_msgSend_setWithArray_(v47, v50, v49);
    v53 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v52, v51, @"localizedSubtitleArguments");
    subtitleLocalizationArgs = v5->_subtitleLocalizationArgs;
    v5->_subtitleLocalizationArgs = v53;

    v55 = objc_opt_class();
    v57 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v56, v55, @"localizedAlertAction");
    alertActionLocalizationKey = v5->_alertActionLocalizationKey;
    v5->_alertActionLocalizationKey = v57;

    v59 = objc_opt_class();
    v61 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v60, v59, @"launchImage");
    alertLaunchImage = v5->_alertLaunchImage;
    v5->_alertLaunchImage = v61;

    v63 = objc_opt_class();
    v65 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v64, v63, @"soundName");
    soundName = v5->_soundName;
    v5->_soundName = v65;

    v67 = MEMORY[0x1E695DFD8];
    v89[0] = objc_opt_class();
    v89[1] = objc_opt_class();
    v69 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v68, v89, 2);
    v71 = objc_msgSend_setWithArray_(v67, v70, v69);
    v73 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v72, v71, @"desiredKeys");
    desiredKeys = v5->_desiredKeys;
    v5->_desiredKeys = v73;

    v5->_shouldBadge = objc_msgSend_decodeBoolForKey_(v4, v75, @"shouldBadge");
    v5->_shouldSendContentAvailable = objc_msgSend_decodeBoolForKey_(v4, v76, @"shouldSendContentAvailable");
    v5->_shouldSendMutableContent = objc_msgSend_decodeBoolForKey_(v4, v77, @"shouldSendMutableContent");
    v78 = objc_opt_class();
    v80 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v79, v78, @"category");
    category = v5->_category;
    v5->_category = v80;

    v82 = objc_opt_class();
    v84 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v83, v82, @"collapseID");
    collapseIDKey = v5->_collapseIDKey;
    v5->_collapseIDKey = v84;

    objc_autoreleasePoolPop(v6);
  }

  v86 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)debugDescription
{
  v57 = MEMORY[0x1E696AEC0];
  v63 = objc_msgSend_alertBody(self, a2, v2);
  v62 = objc_msgSend_alertLocalizationKey(self, v4, v5);
  v60 = objc_msgSend_alertLocalizationArgs(self, v6, v7);
  v55 = CKStringWithArray(v60);
  v54 = objc_msgSend_title(self, v8, v9);
  v53 = objc_msgSend_titleLocalizationKey(self, v10, v11);
  v59 = objc_msgSend_titleLocalizationArgs(self, v12, v13);
  v61 = CKStringWithArray(v59);
  v52 = objc_msgSend_subtitle(self, v14, v15);
  v18 = objc_msgSend_subtitleLocalizationKey(self, v16, v17);
  v56 = objc_msgSend_subtitleLocalizationArgs(self, v19, v20);
  v50 = CKStringWithArray(v56);
  v23 = objc_msgSend_alertActionLocalizationKey(self, v21, v22);
  v49 = objc_msgSend_alertLaunchImage(self, v24, v25);
  v28 = objc_msgSend_soundName(self, v26, v27);
  v51 = objc_msgSend_desiredKeys(self, v29, v30);
  v31 = CKStringWithArray(v51);
  if (objc_msgSend_shouldBadge(self, v32, v33))
  {
    v36 = @"true";
  }

  else
  {
    v36 = @"false";
  }

  if (objc_msgSend_shouldSendContentAvailable(self, v34, v35))
  {
    v39 = @"true";
  }

  else
  {
    v39 = @"false";
  }

  if (objc_msgSend_shouldSendMutableContent(self, v37, v38))
  {
    v42 = @"true";
  }

  else
  {
    v42 = @"false";
  }

  v43 = objc_msgSend_category(self, v40, v41);
  v46 = objc_msgSend_collapseIDKey(self, v44, v45);
  v58 = objc_msgSend_stringWithFormat_(v57, v47, @"\talertBody -> %@\n\talertLocalizationKey -> %@\n\talertLocalizationArgs -> %@\n\ttitle -> %@\n\ttitleLocalizationKey -> %@\n\ttitleLocalizationArgs -> %@\n\tsubtitle -> %@\n\tsubtitleLocalizationKey -> %@\n\tsubtitleLocalizationArgs -> %@\n\talertActionLocalizationKey -> %@\n\talertLaunchImage -> %@\n\tsoundName -> %@\n\tdesiredKeys -> %@\n\tshouldBadge -> %@\n\tshouldSendContentAvailable -> %@\n\tshouldSendMutableContent -> %@\n\tcategory -> %@\n\tcollapseIDKey -> %@\n", v63, v62, v55, v54, v53, v61, v52, v18, v50, v23, v49, v28, v31, v36, v39, v42, v43, v46);

  return v58;
}

@end