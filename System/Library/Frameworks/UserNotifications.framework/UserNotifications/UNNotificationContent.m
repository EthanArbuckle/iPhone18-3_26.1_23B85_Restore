@interface UNNotificationContent
- (BOOL)isEqual:(id)a3;
- (NSArray)peopleIdentifiers;
- (NSDate)date;
- (NSSet)topicIdentifiers;
- (NSString)accessoryImageName;
- (NSString)contentType;
- (NSString)defaultActionBundleIdentifier;
- (NSString)defaultActionTitle;
- (NSString)footer;
- (NSString)header;
- (NSString)launchImageName;
- (NSString)subtitle;
- (NSURL)defaultActionURL;
- (UNNotificationContent)contentByUpdatingWithProvider:(id)provider error:(NSError *)outError;
- (UNNotificationContent)init;
- (UNNotificationContent)initWithCoder:(id)a3;
- (UNNotificationIcon)icon;
- (_UNNotificationCommunicationContext)communicationContext;
- (id)_initWithContentType:(id)a3 communicationContext:(id)a4 accessoryImageName:(id)a5 attachments:(id)a6 badge:(id)a7 body:(id)a8 attributedBody:(id)a9 categoryIdentifier:(id)a10 date:(id)a11 icon:(id)a12 defaultActionTitle:(id)a13 defaultActionURL:(id)a14 defaultActionBundleIdentifier:(id)a15 expirationDate:(id)a16 header:(id)a17 footer:(id)a18 launchImageName:(id)a19 peopleIdentifiers:(id)a20 shouldHideDate:(BOOL)a21 shouldHideTime:(BOOL)a22 shouldIgnoreDoNotDisturb:(BOOL)a23 shouldIgnoreDowntime:(BOOL)a24 shouldSuppressScreenLightUp:(BOOL)a25 shouldAuthenticateDefaultAction:(BOOL)a26 shouldBackgroundDefaultAction:(BOOL)a27 shouldPreventNotificationDismissalAfterDefaultAction:(BOOL)a28 shouldShowSubordinateIcon:(BOOL)a29 shouldSuppressDefaultAction:(BOOL)a30 shouldSuppressSyncDismissalWhenRemoved:(BOOL)a31 shouldUseRequestIdentifierForDismissalSync:(BOOL)a32 shouldPreemptPresentedNotification:(BOOL)a33 shouldDisplayActionsInline:(BOOL)a34 sound:(id)a35 subtitle:(id)a36 threadIdentifier:(id)a37 title:(id)a38 topicIdentifiers:(id)a39 realertCount:(unint64_t)a40 summaryArgument:(id)a41 summaryArgumentCount:(unint64_t)a42 targetContentIdentifier:(id)a43 interruptionLevel:(unint64_t)a44 relevanceScore:(double)a45 filterCriteria:(id)a46 screenCaptureProhibited:(BOOL)a47 speechLanguage:(id)a48 userInfo:(id)a49;
- (id)_safeAttributedStringForAttributedString:(id)a3 debug:(BOOL)a4;
- (id)_safeStringForString:(id)a3 debug:(BOOL)a4;
- (id)contentByUpdatingWithAttributedMessageContext:(id)a3 error:(id *)a4;
- (id)contentByUpdatingWithReadAnnouncementIntent:(id)a3 error:(id *)a4;
- (id)contentByUpdatingWithSendMessageIntent:(id)a3 error:(id *)a4;
- (id)contentByUpdatingWithStartCallIntent:(id)a3 error:(id *)a4;
- (id)markedMutableCopyWithMessage:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)addSecurityScope:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enterSecurityScope;
- (void)leaveSecurityScope;
- (void)removeSecurityScope;
@end

@implementation UNNotificationContent

- (UNNotificationContent)init
{
  v3 = [MEMORY[0x1E695DFD8] set];
  LOBYTE(v7) = 0;
  WORD2(v6) = 0;
  LODWORD(v6) = 0;
  v4 = [UNNotificationContent _initWithContentType:"_initWithContentType:communicationContext:accessoryImageName:attachments:badge:body:attributedBody:categoryIdentifier:date:icon:defaultActionTitle:defaultActionURL:defaultActionBundleIdentifier:expirationDate:header:footer:launchImageName:peopleIdentifiers:shouldHideDate:shouldHideTime:shouldIgnoreDoNotDisturb:shouldIgnoreDowntime:shouldSuppressScreenLightUp:shouldAuthenticateDefaultAction:shouldBackgroundDefaultAction:shouldPreventNotificationDismissalAfterDefaultAction:shouldShowSubordinateIcon:shouldSuppressDefaultAction:shouldSuppressSyncDismissalWhenRemoved:shouldUseRequestIdentifierForDismissalSync:shouldPreemptPresentedNotification:shouldDisplayActionsInline:sound:subtitle:threadIdentifier:title:topicIdentifiers:realertCount:summaryArgument:summaryArgumentCount:targetContentIdentifier:interruptionLevel:relevanceScore:filterCriteria:screenCaptureProhibited:speechLanguage:userInfo:" communicationContext:@"UNNotificationContentTypeDefault" accessoryImageName:0 attachments:0 badge:0.0 body:0 attributedBody:&stru_1F308F460 categoryIdentifier:0 date:0 icon:0 defaultActionTitle:0 defaultActionURL:0 defaultActionBundleIdentifier:0 expirationDate:&stru_1F308F460 header:&stru_1F308F460 footer:&stru_1F308F460 launchImageName:MEMORY[0x1E695E0F0] peopleIdentifiers:0 shouldHideDate:v6 shouldHideTime:0 shouldIgnoreDoNotDisturb:0 shouldIgnoreDowntime:&stru_1F308F460 shouldSuppressScreenLightUp:0 shouldAuthenticateDefaultAction:v3 shouldBackgroundDefaultAction:0 shouldPreventNotificationDismissalAfterDefaultAction:&stru_1F308F460 shouldShowSubordinateIcon:0 shouldSuppressDefaultAction:0 shouldSuppressSyncDismissalWhenRemoved:1 shouldUseRequestIdentifierForDismissalSync:0 shouldPreemptPresentedNotification:v7 shouldDisplayActionsInline:0 sound:0 subtitle:? threadIdentifier:? title:? topicIdentifiers:? realertCount:? summaryArgument:? summaryArgumentCount:? targetContentIdentifier:? interruptionLevel:? relevanceScore:? filterCriteria:? screenCaptureProhibited:? speechLanguage:? userInfo:?];

  return v4;
}

- (NSString)contentType
{
  v2 = [(NSString *)self->_contentType copy];

  return v2;
}

- (NSString)accessoryImageName
{
  v2 = [(NSString *)self->_accessoryImageName copy];

  return v2;
}

- (_UNNotificationCommunicationContext)communicationContext
{
  v2 = [(_UNNotificationCommunicationContext *)self->_communicationContext copy];

  return v2;
}

- (NSDate)date
{
  v2 = [(NSDate *)self->_date copy];

  return v2;
}

- (NSString)defaultActionTitle
{
  v2 = [(NSString *)self->_defaultActionTitle copy];

  return v2;
}

- (UNNotificationIcon)icon
{
  v2 = [(UNNotificationIcon *)self->_icon copy];

  return v2;
}

- (NSURL)defaultActionURL
{
  v2 = [(NSURL *)self->_defaultActionURL copy];

  return v2;
}

- (NSString)defaultActionBundleIdentifier
{
  v2 = [(NSString *)self->_defaultActionBundleIdentifier copy];

  return v2;
}

- (NSString)footer
{
  v2 = [(NSString *)self->_footer copy];

  return v2;
}

- (NSString)header
{
  v2 = [(NSString *)self->_header copy];

  return v2;
}

- (NSString)launchImageName
{
  v2 = [(NSString *)self->_launchImageName copy];

  return v2;
}

- (NSArray)peopleIdentifiers
{
  v2 = [(NSArray *)self->_peopleIdentifiers copy];

  return v2;
}

- (NSString)subtitle
{
  v2 = [(NSString *)self->_subtitle copy];

  return v2;
}

- (NSSet)topicIdentifiers
{
  v2 = [(NSSet *)self->_topicIdentifiers copy];

  return v2;
}

- (id)contentByUpdatingWithSendMessageIntent:(id)a3 error:(id *)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [_UNMutableNotificationCommunicationContext mutableContextFromINIntent:v5];
  v7 = [v5 sender];
  if (v7)
  {
    v8 = [v5 serviceName];
    v9 = [_UNNotificationContact contactFromINPerson:v7 serviceName:v8];

    if (v9)
    {
      [v6 setSender:v9];
    }

    else
    {
      v10 = [v5 sender];
      v11 = [v10 isMe];

      if (v11)
      {
        v12 = @"Warning: [INSendMessageIntent sender] isMe is YES. isMe should be NO for incoming notifications. Some notification features associated with INSendMessageIntent will not work.";
      }

      else
      {
        v12 = @"Warning: [INSendMessageIntent sender] is invalid. Some notification features associated with INSendMessageIntent will not work.";
      }

      UNLogToDeveloper(@"[UNNotificationContent contentByUpdatingWithProvider:(id<UNNotificationContentProviding>)]", v12);
    }
  }

  else
  {
    UNLogToDeveloper(@"[UNNotificationContent contentByUpdatingWithProvider:(id<UNNotificationContentProviding>)]", @"Warning: [INSendMessageIntent sender] is nil. Some notification features associated with INSendMessageIntent will not work.");
  }

  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v13 = [v5 recipients];
  v14 = [v13 count];

  if (v14)
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = [v5 recipients];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __109__UNNotificationContent_UserNotifications_INSendMessageIntent__contentByUpdatingWithSendMessageIntent_error___block_invoke;
    v36[3] = &unk_1E7CFF750;
    v37 = v5;
    v17 = v15;
    v38 = v17;
    v39 = &v40;
    [v16 enumerateObjectsUsingBlock:v36];

    [v6 setRecipients:v17];
  }

  v18 = [v5 speakableGroupName];
  v19 = [v18 spokenPhrase];
  [v6 setDisplayName:v19];

  v20 = [v5 conversationIdentifier];
  [v6 setIdentifier:v20];

  v21 = [v5 donationMetadata];
  v22 = UNLogCommunicationNotifications;
  v23 = os_log_type_enabled(UNLogCommunicationNotifications, OS_LOG_TYPE_DEFAULT);
  if (v21)
  {
    if (v23)
    {
      *buf = 136446210;
      v45 = "[UNNotificationContent(UserNotifications_INSendMessageIntent) contentByUpdatingWithSendMessageIntent:error:]";
      _os_log_impl(&dword_1B85E3000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s: Intent has INSendMessageIntentDonationMetadata", buf, 0xCu);
    }

    [v6 setMentionsCurrentUser:{objc_msgSend(v21, "mentionsCurrentUser")}];
    [v6 setNotifyRecipientAnyway:{objc_msgSend(v21, "notifyRecipientAnyway")}];
    [v6 setReplyToCurrentUser:{objc_msgSend(v21, "isReplyToCurrentUser")}];
    [v6 setBusinessCorrespondence:{objc_msgSend(v21, "isBusinessChat")}];
    v24 = [v21 recipientCount];
    if (v24)
    {
      v25 = v24 - *(v41 + 24);
      goto LABEL_20;
    }
  }

  else if (v23)
  {
    *buf = 136446210;
    v45 = "[UNNotificationContent(UserNotifications_INSendMessageIntent) contentByUpdatingWithSendMessageIntent:error:]";
    _os_log_impl(&dword_1B85E3000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s: Intent does not have INSendMessageIntentDonationMetadata", buf, 0xCu);
  }

  v25 = 0;
LABEL_20:
  v26 = [v6 recipients];
  v27 = [v26 count];

  if (v27 <= v25)
  {
    v28 = v25;
  }

  else
  {
    v28 = v27;
  }

  [v6 setRecipientCount:v28];
  v29 = [(UNNotificationContent *)self mutableCopy];
  [v29 setCommunicationContext:v6];
  v30 = [v6 isGroup];
  v31 = _UNNotificationContentTypeMessagingGroup;
  if (!v30)
  {
    v31 = _UNNotificationContentTypeMessagingDirect;
  }

  [v29 setContentType:*v31];
  v32 = UNLogCommunicationNotifications;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [v29 contentType];
    *buf = 136446466;
    v45 = "[UNNotificationContent(UserNotifications_INSendMessageIntent) contentByUpdatingWithSendMessageIntent:error:]";
    v46 = 2114;
    v47 = v33;
    _os_log_impl(&dword_1B85E3000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s: Created communication context for INSendMessageIntent. Set [UNNotificationContent contentType] to '%{public}@'", buf, 0x16u);
  }

  _Block_object_dispose(&v40, 8);
  v34 = *MEMORY[0x1E69E9840];

  return v29;
}

void __109__UNNotificationContent_UserNotifications_INSendMessageIntent__contentByUpdatingWithSendMessageIntent_error___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) serviceName];
  v4 = [_UNNotificationContact contactFromINPerson:v5 serviceName:v3];

  if (v4)
  {
    [*(a1 + 40) addObject:v4];
  }

  else if ([v5 isMe])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (id)contentByUpdatingWithAttributedMessageContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 sendMessageIntent];
    if (v8)
    {
      v9 = [(UNNotificationContent *)self contentByUpdatingWithSendMessageIntent:v8 error:a4];
      v10 = [v9 mutableCopy];

      v11 = [v7 attributedContent];
      [v10 setAttributedBody:v11];

      v12 = [v10 copy];
    }

    else
    {
      UNLogToDeveloper(@"[UNNotificationContent contentByUpdatingWithProvider:(id<UNNotificationContentProviding>)]", @"Warning: [UNNotificationAttributedMessageContext sendMessageIntent] is nil. Some notification features associated with INSendMessageIntent will not work.");
      v12 = [(UNNotificationContent *)self copy];
    }
  }

  else
  {
    UNLogToDeveloper(@"[UNNotificationContent contentByUpdatingWithProvider:(id<UNNotificationContentProviding>)]", @"Warning: attributedMessageContext is nil. Some notification features associated with UNNotificationAttributedMessageContext will not work.");
    v12 = [(UNNotificationContent *)self copy];
  }

  return v12;
}

- (id)contentByUpdatingWithStartCallIntent:(id)a3 error:(id *)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [_UNMutableNotificationCommunicationContext mutableContextFromINIntent:v5];
  v7 = [v5 contacts];
  v8 = [v7 count];

  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = [v5 contacts];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __111__UNNotificationContent_UserNotifications_INStartCallIntentIntent__contentByUpdatingWithStartCallIntent_error___block_invoke;
    v24[3] = &unk_1E7CFF800;
    v25 = v5;
    v11 = v6;
    v26 = v11;
    v27 = v9;
    v12 = v9;
    [v10 enumerateObjectsUsingBlock:v24];

    [v11 setRecipients:v12];
    [v11 setRecipientCount:{objc_msgSend(v12, "count")}];
  }

  else
  {
    UNLogToDeveloper(@"[UNNotificationContent contentByUpdatingWithProvider:(id<UNNotificationContentProviding>)]", @"Warning: [INStartCallIntent contacts] is empty. Some notification features associated with INStartCallIntent will not work.");
  }

  if ([v5 callCapability] == 2)
  {
    [v6 setCapabilities:1];
  }

  v13 = [(UNNotificationContent *)self mutableCopy];
  [v13 setCommunicationContext:v6];
  if ([v5 destinationType] == 3)
  {
    v14 = _UNNotificationContentTypeVoicemail;
  }

  else if ([v5 destinationType] == 5 && (objc_msgSend(v5, "callRecordToCallBack"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "callRecordType"), v15, v16 == 2))
  {
    v14 = _UNNotificationContentTypeMissedCall;
  }

  else
  {
    v17 = [v5 destinationType];
    v14 = _UNNotificationContentTypeCallOther;
    if (v17 == 1)
    {
      v14 = _UNNotificationContentTypeIncomingCall;
    }
  }

  v18 = *v14;
  [v13 setContentType:v18];
  v19 = UNLogCommunicationNotifications;
  if (os_log_type_enabled(UNLogCommunicationNotifications, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    v21 = [v13 contentType];
    *buf = 136446466;
    v29 = "[UNNotificationContent(UserNotifications_INStartCallIntentIntent) contentByUpdatingWithStartCallIntent:error:]";
    v30 = 2114;
    v31 = v21;
    _os_log_impl(&dword_1B85E3000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s: Created communication context for INStartCallIntent. Set [UNNotificationContent contentType] to '%{public}@'", buf, 0x16u);
  }

  v22 = *MEMORY[0x1E69E9840];

  return v13;
}

void __111__UNNotificationContent_UserNotifications_INStartCallIntentIntent__contentByUpdatingWithStartCallIntent_error___block_invoke(id *a1, uint64_t a2)
{
  v3 = [_UNNotificationContact contactFromINPerson:a2 serviceName:0];
  if (v3)
  {
    v6 = v3;
    v4 = [a1[4] contacts];
    v5 = [v4 count];

    if (v5 == 1)
    {
      [a1[5] setSender:v6];
    }

    else
    {
      [a1[6] addObject:v6];
    }

    v3 = v6;
  }
}

- (id)contentByUpdatingWithReadAnnouncementIntent:(id)a3 error:(id *)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [(UNNotificationContent *)self mutableCopy:a3];
  v5 = UNLogCommunicationNotifications;
  if (os_log_type_enabled(UNLogCommunicationNotifications, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446466;
    v9 = "[UNNotificationContent(UserNotifications_INStartCallIntentIntent) contentByUpdatingWithReadAnnouncementIntent:error:]";
    v10 = 2114;
    v11 = @"UNNotificationContentTypeIntercom";
    _os_log_impl(&dword_1B85E3000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Setting content type to '%{public}@'", &v8, 0x16u);
  }

  [v4 setContentType:@"UNNotificationContentTypeIntercom"];
  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

- (UNNotificationContent)contentByUpdatingWithProvider:(id)provider error:(NSError *)outError
{
  v29[3] = *MEMORY[0x1E69E9840];
  v6 = provider;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v7 = getINSendMessageIntentClass_softClass_0;
  v26 = getINSendMessageIntentClass_softClass_0;
  if (!getINSendMessageIntentClass_softClass_0)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getINSendMessageIntentClass_block_invoke_0;
    v28 = &unk_1E7CFF990;
    v29[0] = &v23;
    __getINSendMessageIntentClass_block_invoke_0(buf);
    v7 = v24[3];
  }

  v8 = v7;
  _Block_object_dispose(&v23, 8);
  if (objc_opt_isKindOfClass())
  {
    v9 = [(UNNotificationContent *)self contentByUpdatingWithSendMessageIntent:v6 error:outError];
LABEL_15:
    v14 = v9;
    goto LABEL_16;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v10 = getINStartCallIntentClass_softClass_0;
  v26 = getINStartCallIntentClass_softClass_0;
  if (!getINStartCallIntentClass_softClass_0)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getINStartCallIntentClass_block_invoke_0;
    v28 = &unk_1E7CFF990;
    v29[0] = &v23;
    __getINStartCallIntentClass_block_invoke_0(buf);
    v10 = v24[3];
  }

  v11 = v10;
  _Block_object_dispose(&v23, 8);
  if (objc_opt_isKindOfClass())
  {
    v9 = [(UNNotificationContent *)self contentByUpdatingWithStartCallIntent:v6 error:outError];
    goto LABEL_15;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v12 = getINReadAnnouncementIntentClass_softClass;
  v26 = getINReadAnnouncementIntentClass_softClass;
  if (!getINReadAnnouncementIntentClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getINReadAnnouncementIntentClass_block_invoke;
    v28 = &unk_1E7CFF990;
    v29[0] = &v23;
    __getINReadAnnouncementIntentClass_block_invoke(buf);
    v12 = v24[3];
  }

  v13 = v12;
  _Block_object_dispose(&v23, 8);
  if (objc_opt_isKindOfClass())
  {
    v9 = [(UNNotificationContent *)self contentByUpdatingWithReadAnnouncementIntent:v6 error:outError];
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(UNNotificationContent *)self contentByUpdatingWithAttributedMessageContext:v6 error:outError];
    goto LABEL_15;
  }

  if (outError)
  {
    *outError = [MEMORY[0x1E696ABC0] un_errorWithUNErrorCode:1500 userInfo:0];
  }

  objc_opt_class();
  UNLogToDeveloper(@"[UNNotificationContent contentByUpdatingWithProvider:(id<UNNotificationContentProviding>)]", @"%{public}s: Error: You provided an invalid object of type %{public}@. Only system framework objects conforming to UNNotificationContentProviding are allowed.");
  v14 = 0;
LABEL_16:
  v15 = UNLogCommunicationNotifications;
  if (os_log_type_enabled(UNLogCommunicationNotifications, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v14 contentType];
    v20 = [v14 communicationContext];
    *buf = 136446978;
    *&buf[4] = "[UNNotificationContent contentByUpdatingWithProvider:error:]";
    *&buf[12] = 2114;
    *&buf[14] = v18;
    *&buf[22] = 2114;
    v28 = v19;
    LOWORD(v29[0]) = 2114;
    *(v29 + 2) = v20;
    _os_log_impl(&dword_1B85E3000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: Provided object of type '%{public}@'. Assigned content type: '%{public}@' Created communication context: '%{public}@'", buf, 0x2Au);
  }

  v21 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_initWithContentType:(id)a3 communicationContext:(id)a4 accessoryImageName:(id)a5 attachments:(id)a6 badge:(id)a7 body:(id)a8 attributedBody:(id)a9 categoryIdentifier:(id)a10 date:(id)a11 icon:(id)a12 defaultActionTitle:(id)a13 defaultActionURL:(id)a14 defaultActionBundleIdentifier:(id)a15 expirationDate:(id)a16 header:(id)a17 footer:(id)a18 launchImageName:(id)a19 peopleIdentifiers:(id)a20 shouldHideDate:(BOOL)a21 shouldHideTime:(BOOL)a22 shouldIgnoreDoNotDisturb:(BOOL)a23 shouldIgnoreDowntime:(BOOL)a24 shouldSuppressScreenLightUp:(BOOL)a25 shouldAuthenticateDefaultAction:(BOOL)a26 shouldBackgroundDefaultAction:(BOOL)a27 shouldPreventNotificationDismissalAfterDefaultAction:(BOOL)a28 shouldShowSubordinateIcon:(BOOL)a29 shouldSuppressDefaultAction:(BOOL)a30 shouldSuppressSyncDismissalWhenRemoved:(BOOL)a31 shouldUseRequestIdentifierForDismissalSync:(BOOL)a32 shouldPreemptPresentedNotification:(BOOL)a33 shouldDisplayActionsInline:(BOOL)a34 sound:(id)a35 subtitle:(id)a36 threadIdentifier:(id)a37 title:(id)a38 topicIdentifiers:(id)a39 realertCount:(unint64_t)a40 summaryArgument:(id)a41 summaryArgumentCount:(unint64_t)a42 targetContentIdentifier:(id)a43 interruptionLevel:(unint64_t)a44 relevanceScore:(double)a45 filterCriteria:(id)a46 screenCaptureProhibited:(BOOL)a47 speechLanguage:(id)a48 userInfo:(id)a49
{
  v129 = a3;
  v128 = a4;
  obj = a5;
  v115 = a5;
  v127 = a6;
  v126 = a7;
  v124 = a8;
  v122 = a9;
  v121 = a10;
  v120 = a11;
  v114 = a12;
  v113 = a13;
  v112 = a14;
  v111 = a15;
  v119 = a16;
  v110 = a17;
  v109 = a18;
  v118 = a19;
  v117 = a20;
  v53 = a35;
  v54 = a36;
  v55 = a37;
  v56 = a38;
  v57 = a39;
  v58 = a41;
  v59 = a43;
  v60 = a46;
  v61 = a48;
  v62 = a49;
  if (!v62)
  {
    v62 = [MEMORY[0x1E695DF20] dictionary];
  }

  v116 = v62;
  v130.receiver = self;
  v130.super_class = UNNotificationContent;
  v63 = [(UNNotificationContent *)&v130 init];
  if (v63)
  {
    v64 = [v129 copy];
    contentType = v63->_contentType;
    v63->_contentType = v64;

    v66 = [v128 copy];
    communicationContext = v63->_communicationContext;
    v63->_communicationContext = v66;

    objc_storeStrong(&v63->_accessoryImageName, obj);
    v68 = [v127 copy];
    attachments = v63->_attachments;
    v63->_attachments = v68;

    v70 = [v126 copy];
    badge = v63->_badge;
    v63->_badge = v70;

    v72 = [v124 copy];
    body = v63->_body;
    v63->_body = v72;

    v74 = [v122 copy];
    attributedBody = v63->_attributedBody;
    v63->_attributedBody = v74;

    v76 = [v121 copy];
    categoryIdentifier = v63->_categoryIdentifier;
    v63->_categoryIdentifier = v76;

    v78 = [v120 copy];
    date = v63->_date;
    v63->_date = v78;

    v80 = [v119 copy];
    expirationDate = v63->_expirationDate;
    v63->_expirationDate = v80;

    objc_storeStrong(&v63->_icon, a12);
    objc_storeStrong(&v63->_defaultActionTitle, a13);
    objc_storeStrong(&v63->_defaultActionURL, a14);
    objc_storeStrong(&v63->_defaultActionBundleIdentifier, a15);
    objc_storeStrong(&v63->_header, a17);
    objc_storeStrong(&v63->_footer, a18);
    v82 = [v118 copy];
    launchImageName = v63->_launchImageName;
    v63->_launchImageName = v82;

    v84 = [v117 copy];
    peopleIdentifiers = v63->_peopleIdentifiers;
    v63->_peopleIdentifiers = v84;

    v63->_shouldHideDate = a21;
    v63->_shouldHideTime = a22;
    v63->_shouldIgnoreDoNotDisturb = a23;
    v63->_shouldIgnoreDowntime = a24;
    v63->_shouldAuthenticateDefaultAction = a26;
    v63->_shouldBackgroundDefaultAction = a27;
    v63->_shouldPreventNotificationDismissalAfterDefaultAction = a28;
    v63->_shouldShowSubordinateIcon = a29;
    v63->_shouldSuppressDefaultAction = a30;
    v63->_shouldSuppressScreenLightUp = a25;
    v63->_shouldSuppressSyncDismissalWhenRemoved = a31;
    v63->_shouldUseRequestIdentifierForDismissalSync = a32;
    v63->_shouldPreemptPresentedNotification = a33;
    v63->_shouldDisplayActionsInline = a34;
    v86 = [v53 copy];
    sound = v63->_sound;
    v63->_sound = v86;

    v88 = [v54 copy];
    subtitle = v63->_subtitle;
    v63->_subtitle = v88;

    v90 = [v55 copy];
    threadIdentifier = v63->_threadIdentifier;
    v63->_threadIdentifier = v90;

    v92 = [v56 copy];
    title = v63->_title;
    v63->_title = v92;

    v94 = [v57 copy];
    topicIdentifiers = v63->_topicIdentifiers;
    v63->_topicIdentifiers = v94;

    v63->_realertCount = a40;
    v96 = [v58 copy];
    summaryArgument = v63->_summaryArgument;
    v63->_summaryArgument = v96;

    v63->_summaryArgumentCount = a42;
    v98 = [v59 copy];
    targetContentIdentifier = v63->_targetContentIdentifier;
    v63->_targetContentIdentifier = v98;

    v63->_interruptionLevel = a44;
    v63->_relevanceScore = a45;
    v100 = [v60 copy];
    filterCriteria = v63->_filterCriteria;
    v63->_filterCriteria = v100;

    v63->_screenCaptureProhibited = a47;
    v102 = [v61 copy];
    speechLanguage = v63->_speechLanguage;
    v63->_speechLanguage = v102;

    v104 = [v116 copy];
    userInfo = v63->_userInfo;
    v63->_userInfo = v104;
  }

  return v63;
}

- (unint64_t)hash
{
  v80 = [(UNNotificationContent *)self contentType];
  v3 = [v80 hash];
  v79 = [(UNNotificationContent *)self communicationContext];
  v4 = [v79 hash] ^ v3;
  v78 = [(UNNotificationContent *)self accessoryImageName];
  v5 = [v78 hash];
  v77 = [(UNNotificationContent *)self attachments];
  v6 = v4 ^ v5 ^ [v77 hash];
  v76 = [(UNNotificationContent *)self badge];
  v7 = [v76 hash];
  v75 = [(UNNotificationContent *)self body];
  v8 = v7 ^ [v75 hash];
  v74 = [(UNNotificationContent *)self attributedBody];
  v9 = v6 ^ v8 ^ [v74 hash];
  v73 = [(UNNotificationContent *)self categoryIdentifier];
  v10 = [v73 hash];
  v72 = [(UNNotificationContent *)self date];
  v11 = v10 ^ [v72 hash];
  v71 = [(UNNotificationContent *)self expirationDate];
  v12 = v11 ^ [v71 hash];
  v70 = [(UNNotificationContent *)self defaultActionTitle];
  v13 = v9 ^ v12 ^ [v70 hash];
  v69 = [(UNNotificationContent *)self defaultActionURL];
  v14 = [v69 hash];
  v68 = [(UNNotificationContent *)self defaultActionBundleIdentifier];
  v15 = v14 ^ [v68 hash];
  v67 = [(UNNotificationContent *)self icon];
  v16 = v15 ^ [v67 hash];
  v66 = [(UNNotificationContent *)self header];
  v17 = v16 ^ [v66 hash];
  v65 = [(UNNotificationContent *)self footer];
  v18 = v13 ^ v17 ^ [v65 hash];
  v64 = [(UNNotificationContent *)self launchImageName];
  v19 = [v64 hash];
  v63 = [(UNNotificationContent *)self peopleIdentifiers];
  v20 = v19 ^ [v63 hash];
  v21 = v20 ^ [(UNNotificationContent *)self shouldHideDate];
  v22 = v21 ^ [(UNNotificationContent *)self shouldHideTime];
  v23 = v22 ^ [(UNNotificationContent *)self shouldIgnoreDoNotDisturb];
  v24 = v18 ^ v23 ^ [(UNNotificationContent *)self shouldIgnoreDowntime];
  v25 = [(UNNotificationContent *)self shouldSuppressScreenLightUp];
  v26 = v25 ^ [(UNNotificationContent *)self shouldAuthenticateDefaultAction];
  v27 = v26 ^ [(UNNotificationContent *)self shouldBackgroundDefaultAction];
  v28 = v27 ^ [(UNNotificationContent *)self shouldShowSubordinateIcon];
  v29 = v28 ^ [(UNNotificationContent *)self shouldPreventNotificationDismissalAfterDefaultAction];
  v30 = v24 ^ v29 ^ [(UNNotificationContent *)self shouldSuppressDefaultAction];
  v31 = [(UNNotificationContent *)self shouldSuppressSyncDismissalWhenRemoved];
  v32 = v31 ^ [(UNNotificationContent *)self shouldUseRequestIdentifierForDismissalSync];
  v33 = v32 ^ [(UNNotificationContent *)self shouldPreemptPresentedNotification];
  v34 = v33 ^ [(UNNotificationContent *)self shouldDisplayActionsInline];
  v62 = [(UNNotificationContent *)self sound];
  v35 = v34 ^ [v62 hash];
  v61 = [(UNNotificationContent *)self subtitle];
  v36 = v35 ^ [v61 hash];
  v37 = [(UNNotificationContent *)self threadIdentifier];
  v38 = v30 ^ v36 ^ [v37 hash];
  v39 = [(UNNotificationContent *)self title];
  v40 = [v39 hash];
  v41 = [(UNNotificationContent *)self topicIdentifiers];
  v42 = v40 ^ [v41 hash];
  v43 = v42 ^ [(UNNotificationContent *)self realertCount];
  v44 = [(UNNotificationContent *)self summaryArgument];
  v45 = v43 ^ [v44 hash];
  v46 = v45 ^ [(UNNotificationContent *)self summaryArgumentCount];
  v47 = [(UNNotificationContent *)self targetContentIdentifier];
  v48 = v46 ^ [v47 hash];
  v49 = v48 ^ [(UNNotificationContent *)self interruptionLevel];
  v50 = MEMORY[0x1E696AD98];
  [(UNNotificationContent *)self relevanceScore];
  v51 = [v50 numberWithDouble:?];
  v52 = v49 ^ [v51 hash];
  v53 = [(UNNotificationContent *)self filterCriteria];
  v60 = v38 ^ v52 ^ [v53 hash];
  v54 = [(UNNotificationContent *)self screenCaptureProhibited];
  v55 = [(UNNotificationContent *)self userInfo];
  v56 = v54 ^ [v55 hash];

  v57 = [(UNNotificationContent *)self speechLanguage];
  v58 = v56 ^ [v57 hash];

  return v60 ^ v58;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_49;
  }

  v5 = [(UNNotificationContent *)self contentType];
  v6 = [v4 contentType];
  v7 = UNEqualStrings(v5, v6);

  if (!v7)
  {
    goto LABEL_49;
  }

  v8 = [(UNNotificationContent *)self communicationContext];
  v9 = [v4 communicationContext];
  v10 = UNEqualObjects(v8, v9);

  if (!v10)
  {
    goto LABEL_49;
  }

  v11 = [(UNNotificationContent *)self accessoryImageName];
  v12 = [v4 accessoryImageName];
  v13 = UNEqualObjects(v11, v12);

  if (!v13)
  {
    goto LABEL_49;
  }

  v14 = [(UNNotificationContent *)self attachments];
  v15 = [v4 attachments];
  v16 = UNEqualObjects(v14, v15);

  if (!v16)
  {
    goto LABEL_49;
  }

  v17 = [(UNNotificationContent *)self badge];
  v18 = [v4 badge];
  v19 = UNEqualObjects(v17, v18);

  if (!v19)
  {
    goto LABEL_49;
  }

  v20 = [(UNNotificationContent *)self body];
  v21 = [v4 body];
  v22 = UNEqualObjects(v20, v21);

  if (!v22)
  {
    goto LABEL_49;
  }

  v23 = [(UNNotificationContent *)self attributedBody];
  v24 = [v4 attributedBody];
  v25 = UNEqualObjects(v23, v24);

  if (!v25)
  {
    goto LABEL_49;
  }

  v26 = [(UNNotificationContent *)self categoryIdentifier];
  v27 = [v4 categoryIdentifier];
  v28 = UNEqualStrings(v26, v27);

  if (!v28)
  {
    goto LABEL_49;
  }

  v29 = [(UNNotificationContent *)self date];
  v30 = [v4 date];
  v31 = UNEqualObjects(v29, v30);

  if (!v31)
  {
    goto LABEL_49;
  }

  v32 = [(UNNotificationContent *)self expirationDate];
  v33 = [v4 expirationDate];
  v34 = UNEqualObjects(v32, v33);

  if (!v34)
  {
    goto LABEL_49;
  }

  v35 = [(UNNotificationContent *)self defaultActionTitle];
  v36 = [v4 defaultActionTitle];
  v37 = UNEqualStrings(v35, v36);

  if (!v37)
  {
    goto LABEL_49;
  }

  v38 = [(UNNotificationContent *)self defaultActionURL];
  v39 = [v4 defaultActionURL];
  v40 = UNEqualObjects(v38, v39);

  if (!v40)
  {
    goto LABEL_49;
  }

  v41 = [(UNNotificationContent *)self defaultActionBundleIdentifier];
  v42 = [v4 defaultActionBundleIdentifier];
  v43 = UNEqualStrings(v41, v42);

  if (!v43)
  {
    goto LABEL_49;
  }

  v44 = [(UNNotificationContent *)self icon];
  v45 = [v4 icon];
  v46 = UNEqualObjects(v44, v45);

  if (!v46)
  {
    goto LABEL_49;
  }

  v47 = [(UNNotificationContent *)self header];
  v48 = [v4 header];
  v49 = UNEqualStrings(v47, v48);

  if (!v49)
  {
    goto LABEL_49;
  }

  v50 = [(UNNotificationContent *)self footer];
  v51 = [v4 footer];
  v52 = UNEqualStrings(v50, v51);

  if (!v52)
  {
    goto LABEL_49;
  }

  v53 = [(UNNotificationContent *)self launchImageName];
  v54 = [v4 launchImageName];
  v55 = UNEqualObjects(v53, v54);

  if (!v55)
  {
    goto LABEL_49;
  }

  v56 = [(UNNotificationContent *)self peopleIdentifiers];
  v57 = [v4 peopleIdentifiers];
  v58 = UNEqualObjects(v56, v57);

  if (!v58)
  {
    goto LABEL_49;
  }

  v59 = [(UNNotificationContent *)self shouldHideDate];
  if (v59 != [v4 shouldHideDate])
  {
    goto LABEL_49;
  }

  v60 = [(UNNotificationContent *)self shouldHideTime];
  if (v60 != [v4 shouldHideTime])
  {
    goto LABEL_49;
  }

  v61 = [(UNNotificationContent *)self shouldIgnoreDoNotDisturb];
  if (v61 != [v4 shouldIgnoreDoNotDisturb])
  {
    goto LABEL_49;
  }

  v62 = [(UNNotificationContent *)self shouldIgnoreDowntime];
  if (v62 != [v4 shouldIgnoreDowntime])
  {
    goto LABEL_49;
  }

  v63 = [(UNNotificationContent *)self shouldAuthenticateDefaultAction];
  if (v63 != [v4 shouldAuthenticateDefaultAction])
  {
    goto LABEL_49;
  }

  v64 = [(UNNotificationContent *)self shouldBackgroundDefaultAction];
  if (v64 != [v4 shouldBackgroundDefaultAction])
  {
    goto LABEL_49;
  }

  v65 = [(UNNotificationContent *)self shouldShowSubordinateIcon];
  if (v65 != [v4 shouldShowSubordinateIcon])
  {
    goto LABEL_49;
  }

  v66 = [(UNNotificationContent *)self shouldPreventNotificationDismissalAfterDefaultAction];
  if (v66 != [v4 shouldPreventNotificationDismissalAfterDefaultAction])
  {
    goto LABEL_49;
  }

  v67 = [(UNNotificationContent *)self shouldSuppressDefaultAction];
  if (v67 != [v4 shouldSuppressDefaultAction])
  {
    goto LABEL_49;
  }

  v68 = [(UNNotificationContent *)self shouldSuppressScreenLightUp];
  if (v68 != [v4 shouldSuppressScreenLightUp])
  {
    goto LABEL_49;
  }

  v69 = [(UNNotificationContent *)self shouldSuppressSyncDismissalWhenRemoved];
  if (v69 != [v4 shouldSuppressSyncDismissalWhenRemoved])
  {
    goto LABEL_49;
  }

  v70 = [(UNNotificationContent *)self shouldUseRequestIdentifierForDismissalSync];
  if (v70 != [v4 shouldUseRequestIdentifierForDismissalSync])
  {
    goto LABEL_49;
  }

  v71 = [(UNNotificationContent *)self shouldPreemptPresentedNotification];
  if (v71 != [v4 shouldPreemptPresentedNotification])
  {
    goto LABEL_49;
  }

  v72 = [(UNNotificationContent *)self shouldDisplayActionsInline];
  if (v72 != [v4 shouldDisplayActionsInline])
  {
    goto LABEL_49;
  }

  v73 = [(UNNotificationContent *)self sound];
  v74 = [v4 sound];
  v75 = UNEqualObjects(v73, v74);

  if (!v75)
  {
    goto LABEL_49;
  }

  v76 = [(UNNotificationContent *)self subtitle];
  v77 = [v4 subtitle];
  v78 = UNEqualObjects(v76, v77);

  if (!v78)
  {
    goto LABEL_49;
  }

  v79 = [(UNNotificationContent *)self threadIdentifier];
  v80 = [v4 threadIdentifier];
  v81 = UNEqualStrings(v79, v80);

  if (!v81)
  {
    goto LABEL_49;
  }

  v82 = [(UNNotificationContent *)self title];
  v83 = [v4 title];
  v84 = UNEqualObjects(v82, v83);

  if (!v84)
  {
    goto LABEL_49;
  }

  v85 = [(UNNotificationContent *)self topicIdentifiers];
  v86 = [v4 topicIdentifiers];
  v87 = UNEqualObjects(v85, v86);

  if (!v87)
  {
    goto LABEL_49;
  }

  v88 = [(UNNotificationContent *)self realertCount];
  if (v88 != [v4 realertCount])
  {
    goto LABEL_49;
  }

  v89 = [(UNNotificationContent *)self summaryArgument];
  v90 = [v4 summaryArgument];
  v91 = UNEqualStrings(v89, v90);

  if (!v91)
  {
    goto LABEL_49;
  }

  v92 = [(UNNotificationContent *)self summaryArgumentCount];
  if (v92 != [v4 summaryArgumentCount])
  {
    goto LABEL_49;
  }

  v93 = [(UNNotificationContent *)self targetContentIdentifier];
  v94 = [v4 targetContentIdentifier];
  v95 = UNEqualStrings(v93, v94);

  if (!v95)
  {
    goto LABEL_49;
  }

  v96 = [(UNNotificationContent *)self interruptionLevel];
  if (v96 != [v4 interruptionLevel])
  {
    goto LABEL_49;
  }

  [(UNNotificationContent *)self relevanceScore];
  v98 = v97;
  [v4 relevanceScore];
  if (v98 != v99)
  {
    goto LABEL_49;
  }

  v100 = [(UNNotificationContent *)self filterCriteria];
  v101 = [v4 filterCriteria];
  v102 = UNEqualStrings(v100, v101);

  if (!v102)
  {
    goto LABEL_49;
  }

  v103 = [(UNNotificationContent *)self screenCaptureProhibited];
  if (v103 != [v4 screenCaptureProhibited])
  {
    goto LABEL_49;
  }

  v104 = [(UNNotificationContent *)self userInfo];
  v105 = [v4 userInfo];
  v106 = UNEqualObjects(v104, v105);

  if (v106)
  {
    v107 = [(UNNotificationContent *)self speechLanguage];
    v108 = [v4 speechLanguage];
    v109 = UNEqualStrings(v107, v108);
  }

  else
  {
LABEL_49:
    v109 = 0;
  }

  return v109;
}

- (id)_safeStringForString:(id)a3 debug:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 || ![(__CFString *)v5 length])
  {
    v7 = v6;
  }

  else
  {
    v7 = @"<redacted>";
  }

  v8 = v7;

  return v7;
}

- (id)_safeAttributedStringForAttributedString:(id)a3 debug:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 || ![v5 length])
  {
    v7 = v6;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"<redacted>"];
  }

  v8 = v7;

  return v8;
}

- (id)markedMutableCopyWithMessage:(id)a3
{
  v4 = a3;
  v5 = [(UNNotificationContent *)self mutableCopy];
  [v5 setMarkedMutableCopyMessage:v4];

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v58 = [(UNNotificationContent *)self speechLanguage];
  v42 = [UNMutableNotificationContent allocWithZone:a3];
  v57 = [(UNNotificationContent *)self contentType];
  v56 = [(UNNotificationContent *)self communicationContext];
  v55 = [(UNNotificationContent *)self accessoryImageName];
  v54 = [(UNNotificationContent *)self attachments];
  v53 = [(UNNotificationContent *)self badge];
  v41 = [(UNNotificationContent *)self body];
  v52 = [(UNNotificationContent *)self attributedBody];
  v49 = [(UNNotificationContent *)self categoryIdentifier];
  v51 = [(UNNotificationContent *)self date];
  v50 = [(UNNotificationContent *)self icon];
  v48 = [(UNNotificationContent *)self defaultActionTitle];
  v40 = [(UNNotificationContent *)self defaultActionURL];
  v39 = [(UNNotificationContent *)self defaultActionBundleIdentifier];
  v38 = [(UNNotificationContent *)self expirationDate];
  v47 = [(UNNotificationContent *)self header];
  v37 = [(UNNotificationContent *)self footer];
  v36 = [(UNNotificationContent *)self launchImageName];
  v46 = [(UNNotificationContent *)self peopleIdentifiers];
  v35 = [(UNNotificationContent *)self shouldHideDate];
  v34 = [(UNNotificationContent *)self shouldHideTime];
  v33 = [(UNNotificationContent *)self shouldIgnoreDoNotDisturb];
  v32 = [(UNNotificationContent *)self shouldIgnoreDowntime];
  v31 = [(UNNotificationContent *)self shouldSuppressScreenLightUp];
  v30 = [(UNNotificationContent *)self shouldAuthenticateDefaultAction];
  v29 = [(UNNotificationContent *)self shouldBackgroundDefaultAction];
  v28 = [(UNNotificationContent *)self shouldPreventNotificationDismissalAfterDefaultAction];
  v27 = [(UNNotificationContent *)self shouldShowSubordinateIcon];
  v26 = [(UNNotificationContent *)self shouldSuppressDefaultAction];
  v25 = [(UNNotificationContent *)self shouldSuppressSyncDismissalWhenRemoved];
  v24 = [(UNNotificationContent *)self shouldUseRequestIdentifierForDismissalSync];
  v23 = [(UNNotificationContent *)self shouldPreemptPresentedNotification];
  v22 = [(UNNotificationContent *)self shouldDisplayActionsInline];
  v45 = [(UNNotificationContent *)self sound];
  v44 = [(UNNotificationContent *)self subtitle];
  v20 = [(UNNotificationContent *)self threadIdentifier];
  v19 = [(UNNotificationContent *)self title];
  v21 = [(UNNotificationContent *)self topicIdentifiers];
  v5 = [(UNNotificationContent *)self realertCount];
  v18 = [(UNNotificationContent *)self summaryArgument];
  v6 = [(UNNotificationContent *)self summaryArgumentCount];
  v7 = [(UNNotificationContent *)self targetContentIdentifier];
  v8 = [(UNNotificationContent *)self interruptionLevel];
  [(UNNotificationContent *)self relevanceScore];
  v10 = v9;
  v11 = [(UNNotificationContent *)self filterCriteria];
  v12 = [(UNNotificationContent *)self screenCaptureProhibited];
  v13 = [(UNNotificationContent *)self userInfo];
  LOBYTE(v17) = v12;
  BYTE5(v16) = v22;
  BYTE4(v16) = v23;
  BYTE3(v16) = v24;
  BYTE2(v16) = v25;
  BYTE1(v16) = v26;
  LOBYTE(v16) = v27;
  HIBYTE(v15) = v28;
  BYTE6(v15) = v29;
  BYTE5(v15) = v30;
  BYTE4(v15) = v31;
  BYTE3(v15) = v32;
  BYTE2(v15) = v33;
  BYTE1(v15) = v34;
  LOBYTE(v15) = v35;
  v43 = [UNNotificationContent _initWithContentType:v42 communicationContext:"_initWithContentType:communicationContext:accessoryImageName:attachments:badge:body:attributedBody:categoryIdentifier:date:icon:defaultActionTitle:defaultActionURL:defaultActionBundleIdentifier:expirationDate:header:footer:launchImageName:peopleIdentifiers:shouldHideDate:shouldHideTime:shouldIgnoreDoNotDisturb:shouldIgnoreDowntime:shouldSuppressScreenLightUp:shouldAuthenticateDefaultAction:shouldBackgroundDefaultAction:shouldPreventNotificationDismissalAfterDefaultAction:shouldShowSubordinateIcon:shouldSuppressDefaultAction:shouldSuppressSyncDismissalWhenRemoved:shouldUseRequestIdentifierForDismissalSync:shouldPreemptPresentedNotification:shouldDisplayActionsInline:sound:subtitle:threadIdentifier:title:topicIdentifiers:realertCount:summaryArgument:summaryArgumentCount:targetContentIdentifier:interruptionLevel:relevanceScore:filterCriteria:screenCaptureProhibited:speechLanguage:userInfo:" accessoryImageName:v57 attachments:v56 badge:v55 body:v54 attributedBody:v53 categoryIdentifier:v41 date:v10 icon:v52 defaultActionTitle:v49 defaultActionURL:v51 defaultActionBundleIdentifier:v50 expirationDate:v48 header:v40 footer:v39 launchImageName:v38 peopleIdentifiers:v47 shouldHideDate:v37 shouldHideTime:v36 shouldIgnoreDoNotDisturb:v46 shouldIgnoreDowntime:v15 shouldSuppressScreenLightUp:v16 shouldAuthenticateDefaultAction:v45 shouldBackgroundDefaultAction:v44 shouldPreventNotificationDismissalAfterDefaultAction:v20 shouldShowSubordinateIcon:v19 shouldSuppressDefaultAction:v21 shouldSuppressSyncDismissalWhenRemoved:v5 shouldUseRequestIdentifierForDismissalSync:v18 shouldPreemptPresentedNotification:v6 shouldDisplayActionsInline:v7 sound:v8 subtitle:v11 threadIdentifier:v17 title:v58 topicIdentifiers:v13 realertCount:? summaryArgument:? summaryArgumentCount:? targetContentIdentifier:? interruptionLevel:? relevanceScore:? filterCriteria:? screenCaptureProhibited:? speechLanguage:? userInfo:?];

  return v43;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UNNotificationContent *)self contentType];
  [v4 encodeObject:v5 forKey:@"contentType"];

  v6 = [(UNNotificationContent *)self communicationContext];
  [v4 encodeObject:v6 forKey:@"communicationContext"];

  v7 = [(UNNotificationContent *)self accessoryImageName];
  [v4 encodeObject:v7 forKey:@"accessoryImageName"];

  v8 = [(UNNotificationContent *)self attachments];
  [v4 encodeObject:v8 forKey:@"attachments"];

  v9 = [(UNNotificationContent *)self badge];
  [v4 encodeObject:v9 forKey:@"badge"];

  v10 = [(UNNotificationContent *)self body];
  v11 = [v10 un_stringWithMaxLength:2000];
  [v4 encodeObject:v11 forKey:@"body"];

  v12 = [(UNNotificationContent *)self attributedBody];
  v13 = [v12 _un_RTFDData];
  [v4 encodeObject:v13 forKey:@"attributedBody"];

  v14 = [(UNNotificationContent *)self categoryIdentifier];
  v15 = [v14 un_stringWithMaxLength:1000];
  [v4 encodeObject:v15 forKey:@"categoryIdentifier"];

  v16 = [(UNNotificationContent *)self date];
  [v4 encodeObject:v16 forKey:@"date"];

  v17 = [(UNNotificationContent *)self defaultActionTitle];
  v18 = [v17 un_stringWithMaxLength:1000];
  [v4 encodeObject:v18 forKey:@"defaultActionTitle"];

  v19 = [(UNNotificationContent *)self defaultActionURL];
  [v4 encodeObject:v19 forKey:@"defaultActionURL"];

  v20 = [(UNNotificationContent *)self defaultActionBundleIdentifier];
  v21 = [v20 un_stringWithMaxLength:1000];
  [v4 encodeObject:v21 forKey:@"defaultActionBundleIdentifier"];

  v22 = [(UNNotificationContent *)self expirationDate];
  [v4 encodeObject:v22 forKey:@"expirationDate"];

  v23 = [(UNNotificationContent *)self header];
  v24 = [v23 un_stringWithMaxLength:1000];
  [v4 encodeObject:v24 forKey:@"header"];

  v25 = [(UNNotificationContent *)self footer];
  v26 = [v25 un_stringWithMaxLength:1000];
  [v4 encodeObject:v26 forKey:@"footer"];

  v27 = [(UNNotificationContent *)self icon];
  [v4 encodeObject:v27 forKey:@"icon"];

  v28 = [(UNNotificationContent *)self launchImageName];
  v29 = [v28 un_stringWithMaxLength:1000];
  [v4 encodeObject:v29 forKey:@"launchImageName"];

  v30 = [(UNNotificationContent *)self peopleIdentifiers];
  [v4 encodeObject:v30 forKey:@"peopleIdentifiers"];

  [v4 encodeBool:-[UNNotificationContent shouldHideDate](self forKey:{"shouldHideDate"), @"shouldHideDate"}];
  [v4 encodeBool:-[UNNotificationContent shouldHideTime](self forKey:{"shouldHideTime"), @"shouldHideTime"}];
  [v4 encodeBool:-[UNNotificationContent shouldIgnoreDoNotDisturb](self forKey:{"shouldIgnoreDoNotDisturb"), @"shouldIgnoreDoNotDisturb"}];
  [v4 encodeBool:-[UNNotificationContent shouldIgnoreDowntime](self forKey:{"shouldIgnoreDowntime"), @"shouldIgnoreDowntime"}];
  [v4 encodeBool:-[UNNotificationContent shouldAuthenticateDefaultAction](self forKey:{"shouldAuthenticateDefaultAction"), @"shouldAuthenticateDefaultAction"}];
  [v4 encodeBool:-[UNNotificationContent shouldBackgroundDefaultAction](self forKey:{"shouldBackgroundDefaultAction"), @"shouldBackgroundDefaultAction"}];
  [v4 encodeBool:-[UNNotificationContent shouldPreventNotificationDismissalAfterDefaultAction](self forKey:{"shouldPreventNotificationDismissalAfterDefaultAction"), @"shouldPreventNotificationDismissalAfterDefaultAction"}];
  [v4 encodeBool:-[UNNotificationContent shouldShowSubordinateIcon](self forKey:{"shouldShowSubordinateIcon"), @"shouldShowSubordinateIcon"}];
  [v4 encodeBool:-[UNNotificationContent shouldSuppressDefaultAction](self forKey:{"shouldSuppressDefaultAction"), @"shouldSuppressDefaultAction"}];
  [v4 encodeBool:-[UNNotificationContent shouldSuppressScreenLightUp](self forKey:{"shouldSuppressScreenLightUp"), @"shouldSuppressScreenLightUp"}];
  [v4 encodeBool:-[UNNotificationContent shouldSuppressSyncDismissalWhenRemoved](self forKey:{"shouldSuppressSyncDismissalWhenRemoved"), @"shouldSuppressSyncDismissalWhenRemoved"}];
  [v4 encodeBool:-[UNNotificationContent shouldUseRequestIdentifierForDismissalSync](self forKey:{"shouldUseRequestIdentifierForDismissalSync"), @"shouldUseRequestIdentifierForDismissalSync"}];
  [v4 encodeBool:-[UNNotificationContent shouldPreemptPresentedNotification](self forKey:{"shouldPreemptPresentedNotification"), @"shouldPreemptPresentedNotification"}];
  [v4 encodeBool:-[UNNotificationContent shouldDisplayActionsInline](self forKey:{"shouldDisplayActionsInline"), @"shouldDisplayActionsInline"}];
  v31 = [(UNNotificationContent *)self sound];
  [v4 encodeObject:v31 forKey:@"sound"];

  v32 = [(UNNotificationContent *)self subtitle];
  v33 = [v32 un_stringWithMaxLength:1000];
  [v4 encodeObject:v33 forKey:@"subtitle"];

  v34 = [(UNNotificationContent *)self threadIdentifier];
  v35 = [v34 un_stringWithMaxLength:1000];
  [v4 encodeObject:v35 forKey:@"threadIdentifier"];

  v36 = [(UNNotificationContent *)self title];
  v37 = [v36 un_stringWithMaxLength:1000];
  [v4 encodeObject:v37 forKey:@"title"];

  v38 = [(UNNotificationContent *)self topicIdentifiers];
  [v4 encodeObject:v38 forKey:@"topicIdentifiers"];

  [v4 encodeInteger:-[UNNotificationContent realertCount](self forKey:{"realertCount"), @"realertCount"}];
  v39 = [(UNNotificationContent *)self summaryArgument];
  [v4 encodeObject:v39 forKey:@"summaryArgument"];

  [v4 encodeInteger:-[UNNotificationContent summaryArgumentCount](self forKey:{"summaryArgumentCount"), @"summaryArgumentCount"}];
  v40 = [(UNNotificationContent *)self targetContentIdentifier];
  [v4 encodeObject:v40 forKey:@"targetContentIdentifier"];

  [v4 encodeInteger:-[UNNotificationContent interruptionLevel](self forKey:{"interruptionLevel"), @"interruptionLevel"}];
  [(UNNotificationContent *)self relevanceScore];
  *&v41 = v41;
  [v4 encodeFloat:@"relevanceScore" forKey:v41];
  v42 = [(UNNotificationContent *)self filterCriteria];
  [v4 encodeObject:v42 forKey:@"filterCriteria"];

  [v4 encodeBool:-[UNNotificationContent screenCaptureProhibited](self forKey:{"screenCaptureProhibited"), @"screenCaptureProhibited"}];
  v43 = [(UNNotificationContent *)self userInfo];
  [v4 encodeObject:v43 forKey:@"userInfo"];

  v44 = [(UNNotificationContent *)self speechLanguage];
  [v4 encodeObject:v44 forKey:@"speechLanguage"];
}

- (UNNotificationContent)initWithCoder:(id)a3
{
  v3 = a3;
  v99 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];
  v98 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"communicationContext"];
  v97 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryImageName"];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v96 = [v3 decodeObjectOfClasses:v6 forKey:@"attachments"];

  v95 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"badge"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v94 = [v3 decodeObjectOfClasses:v9 forKey:@"body"];

  v10 = MEMORY[0x1E696AAB0];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"attributedBody"];
  v93 = [v10 _un_attributedStringWithRTFDData:v11];

  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  v92 = [v3 decodeObjectOfClasses:v14 forKey:@"peopleIdentifiers"];

  v91 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"categoryIdentifier"];
  v90 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v89 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  v88 = [v3 decodeObjectOfClasses:v17 forKey:@"defaultActionTitle"];

  v87 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"defaultActionURL"];
  v18 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
  v86 = [v3 decodeObjectOfClasses:v20 forKey:@"defaultActionBundleIdentifier"];

  v82 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  v81 = [v3 decodeObjectOfClasses:v23 forKey:@"header"];

  v24 = MEMORY[0x1E695DFD8];
  v25 = objc_opt_class();
  v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
  v80 = [v3 decodeObjectOfClasses:v26 forKey:@"footer"];

  v79 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"launchImageName"];
  v78 = [v3 decodeBoolForKey:@"shouldHideDate"];
  v77 = [v3 decodeBoolForKey:@"shouldHideTime"];
  v76 = [v3 decodeBoolForKey:@"shouldIgnoreDoNotDisturb"];
  v75 = [v3 decodeBoolForKey:@"shouldIgnoreDowntime"];
  v74 = [v3 decodeBoolForKey:@"shouldAuthenticateDefaultAction"];
  v72 = [v3 decodeBoolForKey:@"shouldBackgroundDefaultAction"];
  v71 = [v3 decodeBoolForKey:@"shouldPreventNotificationDismissalAfterDefaultAction"];
  v70 = [v3 decodeBoolForKey:@"shouldShowSubordinateIcon"];
  v68 = [v3 decodeBoolForKey:@"shouldSuppressDefaultAction"];
  v69 = [v3 decodeBoolForKey:@"shouldSuppressScreenLightUp"];
  v66 = [v3 decodeBoolForKey:@"shouldSuppressSyncDismissalWhenRemoved"];
  v65 = [v3 decodeBoolForKey:@"shouldUseRequestIdentifierForDismissalSync"];
  v63 = [v3 decodeBoolForKey:@"shouldPreemptPresentedNotification"];
  v62 = [v3 decodeBoolForKey:@"shouldDisplayActionsInline"];
  v73 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"sound"];
  v27 = MEMORY[0x1E695DFD8];
  v28 = objc_opt_class();
  v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
  v67 = [v3 decodeObjectOfClasses:v29 forKey:@"subtitle"];

  v64 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"threadIdentifier"];
  v30 = MEMORY[0x1E695DFD8];
  v31 = objc_opt_class();
  v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
  v85 = [v3 decodeObjectOfClasses:v32 forKey:@"title"];

  v33 = MEMORY[0x1E695DFD8];
  v34 = objc_opt_class();
  v35 = [v33 setWithObjects:{v34, objc_opt_class(), 0}];
  v61 = [v3 decodeObjectOfClasses:v35 forKey:@"topicIdentifiers"];

  v59 = [v3 decodeIntegerForKey:@"realertCount"];
  v60 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"summaryArgument"];
  v58 = [v3 decodeIntegerForKey:@"summaryArgumentCount"];
  v36 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"targetContentIdentifier"];
  v37 = MEMORY[0x1E695DFD8];
  v38 = objc_opt_class();
  v39 = objc_opt_class();
  v40 = objc_opt_class();
  v41 = objc_opt_class();
  v42 = objc_opt_class();
  v43 = objc_opt_class();
  v44 = [v37 setWithObjects:{v38, v39, v40, v41, v42, v43, objc_opt_class(), 0}];
  v45 = [v3 decodeObjectOfClasses:v44 forKey:@"userInfo"];

  if ([v3 containsValueForKey:@"interruptionLevel"])
  {
    v46 = [v3 decodeIntegerForKey:@"interruptionLevel"];
  }

  else
  {
    v46 = 1;
  }

  [v3 decodeFloatForKey:@"relevanceScore"];
  v48 = v47;
  v56 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"filterCriteria"];
  v49 = [v3 decodeBoolForKey:@"screenCaptureProhibited"];
  v55 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"speechLanguage"];
  v50 = objc_opt_class();
  v57 = UNSafeCast(v50, v45);

  LOBYTE(v54) = v49;
  BYTE5(v53) = v62;
  BYTE4(v53) = v63;
  BYTE3(v53) = v65;
  BYTE2(v53) = v66;
  BYTE1(v53) = v68;
  LOBYTE(v53) = v70;
  HIBYTE(v52) = v71;
  BYTE6(v52) = v72;
  BYTE5(v52) = v74;
  BYTE4(v52) = v69;
  BYTE3(v52) = v75;
  BYTE2(v52) = v76;
  BYTE1(v52) = v77;
  LOBYTE(v52) = v78;
  v84 = [UNNotificationContent _initWithContentType:"_initWithContentType:communicationContext:accessoryImageName:attachments:badge:body:attributedBody:categoryIdentifier:date:icon:defaultActionTitle:defaultActionURL:defaultActionBundleIdentifier:expirationDate:header:footer:launchImageName:peopleIdentifiers:shouldHideDate:shouldHideTime:shouldIgnoreDoNotDisturb:shouldIgnoreDowntime:shouldSuppressScreenLightUp:shouldAuthenticateDefaultAction:shouldBackgroundDefaultAction:shouldPreventNotificationDismissalAfterDefaultAction:shouldShowSubordinateIcon:shouldSuppressDefaultAction:shouldSuppressSyncDismissalWhenRemoved:shouldUseRequestIdentifierForDismissalSync:shouldPreemptPresentedNotification:shouldDisplayActionsInline:sound:subtitle:threadIdentifier:title:topicIdentifiers:realertCount:summaryArgument:summaryArgumentCount:targetContentIdentifier:interruptionLevel:relevanceScore:filterCriteria:screenCaptureProhibited:speechLanguage:userInfo:" communicationContext:v99 accessoryImageName:v98 attachments:v97 badge:v96 body:v95 attributedBody:v94 categoryIdentifier:v48 date:v93 icon:v91 defaultActionTitle:v90 defaultActionURL:v89 defaultActionBundleIdentifier:v88 expirationDate:v87 header:v86 footer:v82 launchImageName:v81 peopleIdentifiers:v80 shouldHideDate:v79 shouldHideTime:v92 shouldIgnoreDoNotDisturb:v52 shouldIgnoreDowntime:v53 shouldSuppressScreenLightUp:v73 shouldAuthenticateDefaultAction:v67 shouldBackgroundDefaultAction:v64 shouldPreventNotificationDismissalAfterDefaultAction:v85 shouldShowSubordinateIcon:v61 shouldSuppressDefaultAction:v59 shouldSuppressSyncDismissalWhenRemoved:v60 shouldUseRequestIdentifierForDismissalSync:v58 shouldPreemptPresentedNotification:v36 shouldDisplayActionsInline:v46 sound:v56 subtitle:v54 threadIdentifier:v55 title:v57 topicIdentifiers:? realertCount:? summaryArgument:? summaryArgumentCount:? targetContentIdentifier:? interruptionLevel:? relevanceScore:? filterCriteria:? screenCaptureProhibited:? speechLanguage:? userInfo:?];

  return v84;
}

- (void)addSecurityScope:(id)a3
{
  v4 = a3;
  v5 = [(UNNotificationContent *)self attachments];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__UNNotificationContent_addSecurityScope___block_invoke;
  v7[3] = &unk_1E7CFFCA0;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

- (void)removeSecurityScope
{
  v2 = [(UNNotificationContent *)self attachments];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_9];
}

- (void)enterSecurityScope
{
  v2 = [(UNNotificationContent *)self attachments];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_198];
}

- (void)leaveSecurityScope
{
  v2 = [(UNNotificationContent *)self attachments];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_200];
}

@end