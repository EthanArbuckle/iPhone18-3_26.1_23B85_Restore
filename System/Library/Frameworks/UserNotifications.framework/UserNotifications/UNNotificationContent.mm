@interface UNNotificationContent
- (BOOL)isEqual:(id)equal;
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
- (UNNotificationContent)initWithCoder:(id)coder;
- (UNNotificationIcon)icon;
- (_UNNotificationCommunicationContext)communicationContext;
- (id)_initWithContentType:(id)type communicationContext:(id)context accessoryImageName:(id)name attachments:(id)attachments badge:(id)badge body:(id)body attributedBody:(id)attributedBody categoryIdentifier:(id)self0 date:(id)self1 icon:(id)self2 defaultActionTitle:(id)self3 defaultActionURL:(id)self4 defaultActionBundleIdentifier:(id)self5 expirationDate:(id)self6 header:(id)self7 footer:(id)self8 launchImageName:(id)self9 peopleIdentifiers:(id)identifiers shouldHideDate:(BOOL)hideDate shouldHideTime:(BOOL)time shouldIgnoreDoNotDisturb:(BOOL)disturb shouldIgnoreDowntime:(BOOL)downtime shouldSuppressScreenLightUp:(BOOL)up shouldAuthenticateDefaultAction:(BOOL)action shouldBackgroundDefaultAction:(BOOL)defaultAction shouldPreventNotificationDismissalAfterDefaultAction:(BOOL)afterDefaultAction shouldShowSubordinateIcon:(BOOL)subordinateIcon shouldSuppressDefaultAction:(BOOL)type0 shouldSuppressSyncDismissalWhenRemoved:(BOOL)type1 shouldUseRequestIdentifierForDismissalSync:(BOOL)type2 shouldPreemptPresentedNotification:(BOOL)type3 shouldDisplayActionsInline:(BOOL)type4 sound:(id)type5 subtitle:(id)type6 threadIdentifier:(id)type7 title:(id)type8 topicIdentifiers:(id)type9 realertCount:(unint64_t)context0 summaryArgument:(id)context1 summaryArgumentCount:(unint64_t)context2 targetContentIdentifier:(id)context3 interruptionLevel:(unint64_t)context4 relevanceScore:(double)context5 filterCriteria:(id)context6 screenCaptureProhibited:(BOOL)context7 speechLanguage:(id)context8 userInfo:(id)context9;
- (id)_safeAttributedStringForAttributedString:(id)string debug:(BOOL)debug;
- (id)_safeStringForString:(id)string debug:(BOOL)debug;
- (id)contentByUpdatingWithAttributedMessageContext:(id)context error:(id *)error;
- (id)contentByUpdatingWithReadAnnouncementIntent:(id)intent error:(id *)error;
- (id)contentByUpdatingWithSendMessageIntent:(id)intent error:(id *)error;
- (id)contentByUpdatingWithStartCallIntent:(id)intent error:(id *)error;
- (id)markedMutableCopyWithMessage:(id)message;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)addSecurityScope:(id)scope;
- (void)encodeWithCoder:(id)coder;
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

- (id)contentByUpdatingWithSendMessageIntent:(id)intent error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  v6 = [_UNMutableNotificationCommunicationContext mutableContextFromINIntent:intentCopy];
  sender = [intentCopy sender];
  if (sender)
  {
    serviceName = [intentCopy serviceName];
    v9 = [_UNNotificationContact contactFromINPerson:sender serviceName:serviceName];

    if (v9)
    {
      [v6 setSender:v9];
    }

    else
    {
      sender2 = [intentCopy sender];
      isMe = [sender2 isMe];

      if (isMe)
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
  recipients = [intentCopy recipients];
  v14 = [recipients count];

  if (v14)
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    recipients2 = [intentCopy recipients];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __109__UNNotificationContent_UserNotifications_INSendMessageIntent__contentByUpdatingWithSendMessageIntent_error___block_invoke;
    v36[3] = &unk_1E7CFF750;
    v37 = intentCopy;
    v17 = v15;
    v38 = v17;
    v39 = &v40;
    [recipients2 enumerateObjectsUsingBlock:v36];

    [v6 setRecipients:v17];
  }

  speakableGroupName = [intentCopy speakableGroupName];
  spokenPhrase = [speakableGroupName spokenPhrase];
  [v6 setDisplayName:spokenPhrase];

  conversationIdentifier = [intentCopy conversationIdentifier];
  [v6 setIdentifier:conversationIdentifier];

  donationMetadata = [intentCopy donationMetadata];
  v22 = UNLogCommunicationNotifications;
  v23 = os_log_type_enabled(UNLogCommunicationNotifications, OS_LOG_TYPE_DEFAULT);
  if (donationMetadata)
  {
    if (v23)
    {
      *buf = 136446210;
      v45 = "[UNNotificationContent(UserNotifications_INSendMessageIntent) contentByUpdatingWithSendMessageIntent:error:]";
      _os_log_impl(&dword_1B85E3000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s: Intent has INSendMessageIntentDonationMetadata", buf, 0xCu);
    }

    [v6 setMentionsCurrentUser:{objc_msgSend(donationMetadata, "mentionsCurrentUser")}];
    [v6 setNotifyRecipientAnyway:{objc_msgSend(donationMetadata, "notifyRecipientAnyway")}];
    [v6 setReplyToCurrentUser:{objc_msgSend(donationMetadata, "isReplyToCurrentUser")}];
    [v6 setBusinessCorrespondence:{objc_msgSend(donationMetadata, "isBusinessChat")}];
    recipientCount = [donationMetadata recipientCount];
    if (recipientCount)
    {
      v25 = recipientCount - *(v41 + 24);
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
  recipients3 = [v6 recipients];
  v27 = [recipients3 count];

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
  isGroup = [v6 isGroup];
  v31 = _UNNotificationContentTypeMessagingGroup;
  if (!isGroup)
  {
    v31 = _UNNotificationContentTypeMessagingDirect;
  }

  [v29 setContentType:*v31];
  v32 = UNLogCommunicationNotifications;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    contentType = [v29 contentType];
    *buf = 136446466;
    v45 = "[UNNotificationContent(UserNotifications_INSendMessageIntent) contentByUpdatingWithSendMessageIntent:error:]";
    v46 = 2114;
    v47 = contentType;
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

- (id)contentByUpdatingWithAttributedMessageContext:(id)context error:(id *)error
{
  contextCopy = context;
  v7 = contextCopy;
  if (contextCopy)
  {
    sendMessageIntent = [contextCopy sendMessageIntent];
    if (sendMessageIntent)
    {
      v9 = [(UNNotificationContent *)self contentByUpdatingWithSendMessageIntent:sendMessageIntent error:error];
      v10 = [v9 mutableCopy];

      attributedContent = [v7 attributedContent];
      [v10 setAttributedBody:attributedContent];

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

- (id)contentByUpdatingWithStartCallIntent:(id)intent error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  v6 = [_UNMutableNotificationCommunicationContext mutableContextFromINIntent:intentCopy];
  contacts = [intentCopy contacts];
  v8 = [contacts count];

  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    contacts2 = [intentCopy contacts];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __111__UNNotificationContent_UserNotifications_INStartCallIntentIntent__contentByUpdatingWithStartCallIntent_error___block_invoke;
    v24[3] = &unk_1E7CFF800;
    v25 = intentCopy;
    v11 = v6;
    v26 = v11;
    v27 = v9;
    v12 = v9;
    [contacts2 enumerateObjectsUsingBlock:v24];

    [v11 setRecipients:v12];
    [v11 setRecipientCount:{objc_msgSend(v12, "count")}];
  }

  else
  {
    UNLogToDeveloper(@"[UNNotificationContent contentByUpdatingWithProvider:(id<UNNotificationContentProviding>)]", @"Warning: [INStartCallIntent contacts] is empty. Some notification features associated with INStartCallIntent will not work.");
  }

  if ([intentCopy callCapability] == 2)
  {
    [v6 setCapabilities:1];
  }

  v13 = [(UNNotificationContent *)self mutableCopy];
  [v13 setCommunicationContext:v6];
  if ([intentCopy destinationType] == 3)
  {
    v14 = _UNNotificationContentTypeVoicemail;
  }

  else if ([intentCopy destinationType] == 5 && (objc_msgSend(intentCopy, "callRecordToCallBack"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "callRecordType"), v15, v16 == 2))
  {
    v14 = _UNNotificationContentTypeMissedCall;
  }

  else
  {
    destinationType = [intentCopy destinationType];
    v14 = _UNNotificationContentTypeCallOther;
    if (destinationType == 1)
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
    contentType = [v13 contentType];
    *buf = 136446466;
    v29 = "[UNNotificationContent(UserNotifications_INStartCallIntentIntent) contentByUpdatingWithStartCallIntent:error:]";
    v30 = 2114;
    v31 = contentType;
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

- (id)contentByUpdatingWithReadAnnouncementIntent:(id)intent error:(id *)error
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [(UNNotificationContent *)self mutableCopy:intent];
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
    contentType = [v14 contentType];
    communicationContext = [v14 communicationContext];
    *buf = 136446978;
    *&buf[4] = "[UNNotificationContent contentByUpdatingWithProvider:error:]";
    *&buf[12] = 2114;
    *&buf[14] = v18;
    *&buf[22] = 2114;
    v28 = contentType;
    LOWORD(v29[0]) = 2114;
    *(v29 + 2) = communicationContext;
    _os_log_impl(&dword_1B85E3000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: Provided object of type '%{public}@'. Assigned content type: '%{public}@' Created communication context: '%{public}@'", buf, 0x2Au);
  }

  v21 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_initWithContentType:(id)type communicationContext:(id)context accessoryImageName:(id)name attachments:(id)attachments badge:(id)badge body:(id)body attributedBody:(id)attributedBody categoryIdentifier:(id)self0 date:(id)self1 icon:(id)self2 defaultActionTitle:(id)self3 defaultActionURL:(id)self4 defaultActionBundleIdentifier:(id)self5 expirationDate:(id)self6 header:(id)self7 footer:(id)self8 launchImageName:(id)self9 peopleIdentifiers:(id)identifiers shouldHideDate:(BOOL)hideDate shouldHideTime:(BOOL)time shouldIgnoreDoNotDisturb:(BOOL)disturb shouldIgnoreDowntime:(BOOL)downtime shouldSuppressScreenLightUp:(BOOL)up shouldAuthenticateDefaultAction:(BOOL)action shouldBackgroundDefaultAction:(BOOL)defaultAction shouldPreventNotificationDismissalAfterDefaultAction:(BOOL)afterDefaultAction shouldShowSubordinateIcon:(BOOL)subordinateIcon shouldSuppressDefaultAction:(BOOL)type0 shouldSuppressSyncDismissalWhenRemoved:(BOOL)type1 shouldUseRequestIdentifierForDismissalSync:(BOOL)type2 shouldPreemptPresentedNotification:(BOOL)type3 shouldDisplayActionsInline:(BOOL)type4 sound:(id)type5 subtitle:(id)type6 threadIdentifier:(id)type7 title:(id)type8 topicIdentifiers:(id)type9 realertCount:(unint64_t)context0 summaryArgument:(id)context1 summaryArgumentCount:(unint64_t)context2 targetContentIdentifier:(id)context3 interruptionLevel:(unint64_t)context4 relevanceScore:(double)context5 filterCriteria:(id)context6 screenCaptureProhibited:(BOOL)context7 speechLanguage:(id)context8 userInfo:(id)context9
{
  typeCopy = type;
  contextCopy = context;
  obj = name;
  nameCopy = name;
  attachmentsCopy = attachments;
  badgeCopy = badge;
  bodyCopy = body;
  attributedBodyCopy = attributedBody;
  identifierCopy = identifier;
  dateCopy = date;
  iconCopy = icon;
  titleCopy = title;
  lCopy = l;
  bundleIdentifierCopy = bundleIdentifier;
  expirationDateCopy = expirationDate;
  headerCopy = header;
  footerCopy = footer;
  imageNameCopy = imageName;
  identifiersCopy = identifiers;
  soundCopy = sound;
  subtitleCopy = subtitle;
  threadIdentifierCopy = threadIdentifier;
  v56 = a38;
  topicIdentifiersCopy = topicIdentifiers;
  argumentCopy = argument;
  contentIdentifierCopy = contentIdentifier;
  criteriaCopy = criteria;
  languageCopy = language;
  infoCopy = info;
  if (!infoCopy)
  {
    infoCopy = [MEMORY[0x1E695DF20] dictionary];
  }

  v116 = infoCopy;
  v130.receiver = self;
  v130.super_class = UNNotificationContent;
  v63 = [(UNNotificationContent *)&v130 init];
  if (v63)
  {
    v64 = [typeCopy copy];
    contentType = v63->_contentType;
    v63->_contentType = v64;

    v66 = [contextCopy copy];
    communicationContext = v63->_communicationContext;
    v63->_communicationContext = v66;

    objc_storeStrong(&v63->_accessoryImageName, obj);
    v68 = [attachmentsCopy copy];
    attachments = v63->_attachments;
    v63->_attachments = v68;

    v70 = [badgeCopy copy];
    badge = v63->_badge;
    v63->_badge = v70;

    v72 = [bodyCopy copy];
    body = v63->_body;
    v63->_body = v72;

    v74 = [attributedBodyCopy copy];
    attributedBody = v63->_attributedBody;
    v63->_attributedBody = v74;

    v76 = [identifierCopy copy];
    categoryIdentifier = v63->_categoryIdentifier;
    v63->_categoryIdentifier = v76;

    v78 = [dateCopy copy];
    date = v63->_date;
    v63->_date = v78;

    v80 = [expirationDateCopy copy];
    expirationDate = v63->_expirationDate;
    v63->_expirationDate = v80;

    objc_storeStrong(&v63->_icon, icon);
    objc_storeStrong(&v63->_defaultActionTitle, title);
    objc_storeStrong(&v63->_defaultActionURL, l);
    objc_storeStrong(&v63->_defaultActionBundleIdentifier, bundleIdentifier);
    objc_storeStrong(&v63->_header, header);
    objc_storeStrong(&v63->_footer, footer);
    v82 = [imageNameCopy copy];
    launchImageName = v63->_launchImageName;
    v63->_launchImageName = v82;

    v84 = [identifiersCopy copy];
    peopleIdentifiers = v63->_peopleIdentifiers;
    v63->_peopleIdentifiers = v84;

    v63->_shouldHideDate = hideDate;
    v63->_shouldHideTime = time;
    v63->_shouldIgnoreDoNotDisturb = disturb;
    v63->_shouldIgnoreDowntime = downtime;
    v63->_shouldAuthenticateDefaultAction = action;
    v63->_shouldBackgroundDefaultAction = defaultAction;
    v63->_shouldPreventNotificationDismissalAfterDefaultAction = afterDefaultAction;
    v63->_shouldShowSubordinateIcon = subordinateIcon;
    v63->_shouldSuppressDefaultAction = suppressDefaultAction;
    v63->_shouldSuppressScreenLightUp = up;
    v63->_shouldSuppressSyncDismissalWhenRemoved = removed;
    v63->_shouldUseRequestIdentifierForDismissalSync = sync;
    v63->_shouldPreemptPresentedNotification = notification;
    v63->_shouldDisplayActionsInline = inline;
    v86 = [soundCopy copy];
    sound = v63->_sound;
    v63->_sound = v86;

    v88 = [subtitleCopy copy];
    subtitle = v63->_subtitle;
    v63->_subtitle = v88;

    v90 = [threadIdentifierCopy copy];
    threadIdentifier = v63->_threadIdentifier;
    v63->_threadIdentifier = v90;

    v92 = [v56 copy];
    title = v63->_title;
    v63->_title = v92;

    v94 = [topicIdentifiersCopy copy];
    topicIdentifiers = v63->_topicIdentifiers;
    v63->_topicIdentifiers = v94;

    v63->_realertCount = count;
    v96 = [argumentCopy copy];
    summaryArgument = v63->_summaryArgument;
    v63->_summaryArgument = v96;

    v63->_summaryArgumentCount = argumentCount;
    v98 = [contentIdentifierCopy copy];
    targetContentIdentifier = v63->_targetContentIdentifier;
    v63->_targetContentIdentifier = v98;

    v63->_interruptionLevel = level;
    v63->_relevanceScore = score;
    v100 = [criteriaCopy copy];
    filterCriteria = v63->_filterCriteria;
    v63->_filterCriteria = v100;

    v63->_screenCaptureProhibited = prohibited;
    v102 = [languageCopy copy];
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
  contentType = [(UNNotificationContent *)self contentType];
  v3 = [contentType hash];
  communicationContext = [(UNNotificationContent *)self communicationContext];
  v4 = [communicationContext hash] ^ v3;
  accessoryImageName = [(UNNotificationContent *)self accessoryImageName];
  v5 = [accessoryImageName hash];
  attachments = [(UNNotificationContent *)self attachments];
  v6 = v4 ^ v5 ^ [attachments hash];
  badge = [(UNNotificationContent *)self badge];
  v7 = [badge hash];
  body = [(UNNotificationContent *)self body];
  v8 = v7 ^ [body hash];
  attributedBody = [(UNNotificationContent *)self attributedBody];
  v9 = v6 ^ v8 ^ [attributedBody hash];
  categoryIdentifier = [(UNNotificationContent *)self categoryIdentifier];
  v10 = [categoryIdentifier hash];
  date = [(UNNotificationContent *)self date];
  v11 = v10 ^ [date hash];
  expirationDate = [(UNNotificationContent *)self expirationDate];
  v12 = v11 ^ [expirationDate hash];
  defaultActionTitle = [(UNNotificationContent *)self defaultActionTitle];
  v13 = v9 ^ v12 ^ [defaultActionTitle hash];
  defaultActionURL = [(UNNotificationContent *)self defaultActionURL];
  v14 = [defaultActionURL hash];
  defaultActionBundleIdentifier = [(UNNotificationContent *)self defaultActionBundleIdentifier];
  v15 = v14 ^ [defaultActionBundleIdentifier hash];
  icon = [(UNNotificationContent *)self icon];
  v16 = v15 ^ [icon hash];
  header = [(UNNotificationContent *)self header];
  v17 = v16 ^ [header hash];
  footer = [(UNNotificationContent *)self footer];
  v18 = v13 ^ v17 ^ [footer hash];
  launchImageName = [(UNNotificationContent *)self launchImageName];
  v19 = [launchImageName hash];
  peopleIdentifiers = [(UNNotificationContent *)self peopleIdentifiers];
  v20 = v19 ^ [peopleIdentifiers hash];
  v21 = v20 ^ [(UNNotificationContent *)self shouldHideDate];
  v22 = v21 ^ [(UNNotificationContent *)self shouldHideTime];
  v23 = v22 ^ [(UNNotificationContent *)self shouldIgnoreDoNotDisturb];
  v24 = v18 ^ v23 ^ [(UNNotificationContent *)self shouldIgnoreDowntime];
  shouldSuppressScreenLightUp = [(UNNotificationContent *)self shouldSuppressScreenLightUp];
  v26 = shouldSuppressScreenLightUp ^ [(UNNotificationContent *)self shouldAuthenticateDefaultAction];
  v27 = v26 ^ [(UNNotificationContent *)self shouldBackgroundDefaultAction];
  v28 = v27 ^ [(UNNotificationContent *)self shouldShowSubordinateIcon];
  v29 = v28 ^ [(UNNotificationContent *)self shouldPreventNotificationDismissalAfterDefaultAction];
  v30 = v24 ^ v29 ^ [(UNNotificationContent *)self shouldSuppressDefaultAction];
  shouldSuppressSyncDismissalWhenRemoved = [(UNNotificationContent *)self shouldSuppressSyncDismissalWhenRemoved];
  v32 = shouldSuppressSyncDismissalWhenRemoved ^ [(UNNotificationContent *)self shouldUseRequestIdentifierForDismissalSync];
  v33 = v32 ^ [(UNNotificationContent *)self shouldPreemptPresentedNotification];
  v34 = v33 ^ [(UNNotificationContent *)self shouldDisplayActionsInline];
  sound = [(UNNotificationContent *)self sound];
  v35 = v34 ^ [sound hash];
  subtitle = [(UNNotificationContent *)self subtitle];
  v36 = v35 ^ [subtitle hash];
  threadIdentifier = [(UNNotificationContent *)self threadIdentifier];
  v38 = v30 ^ v36 ^ [threadIdentifier hash];
  title = [(UNNotificationContent *)self title];
  v40 = [title hash];
  topicIdentifiers = [(UNNotificationContent *)self topicIdentifiers];
  v42 = v40 ^ [topicIdentifiers hash];
  v43 = v42 ^ [(UNNotificationContent *)self realertCount];
  summaryArgument = [(UNNotificationContent *)self summaryArgument];
  v45 = v43 ^ [summaryArgument hash];
  v46 = v45 ^ [(UNNotificationContent *)self summaryArgumentCount];
  targetContentIdentifier = [(UNNotificationContent *)self targetContentIdentifier];
  v48 = v46 ^ [targetContentIdentifier hash];
  v49 = v48 ^ [(UNNotificationContent *)self interruptionLevel];
  v50 = MEMORY[0x1E696AD98];
  [(UNNotificationContent *)self relevanceScore];
  v51 = [v50 numberWithDouble:?];
  v52 = v49 ^ [v51 hash];
  filterCriteria = [(UNNotificationContent *)self filterCriteria];
  v60 = v38 ^ v52 ^ [filterCriteria hash];
  screenCaptureProhibited = [(UNNotificationContent *)self screenCaptureProhibited];
  userInfo = [(UNNotificationContent *)self userInfo];
  v56 = screenCaptureProhibited ^ [userInfo hash];

  speechLanguage = [(UNNotificationContent *)self speechLanguage];
  v58 = v56 ^ [speechLanguage hash];

  return v60 ^ v58;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_49;
  }

  contentType = [(UNNotificationContent *)self contentType];
  contentType2 = [equalCopy contentType];
  v7 = UNEqualStrings(contentType, contentType2);

  if (!v7)
  {
    goto LABEL_49;
  }

  communicationContext = [(UNNotificationContent *)self communicationContext];
  communicationContext2 = [equalCopy communicationContext];
  v10 = UNEqualObjects(communicationContext, communicationContext2);

  if (!v10)
  {
    goto LABEL_49;
  }

  accessoryImageName = [(UNNotificationContent *)self accessoryImageName];
  accessoryImageName2 = [equalCopy accessoryImageName];
  v13 = UNEqualObjects(accessoryImageName, accessoryImageName2);

  if (!v13)
  {
    goto LABEL_49;
  }

  attachments = [(UNNotificationContent *)self attachments];
  attachments2 = [equalCopy attachments];
  v16 = UNEqualObjects(attachments, attachments2);

  if (!v16)
  {
    goto LABEL_49;
  }

  badge = [(UNNotificationContent *)self badge];
  badge2 = [equalCopy badge];
  v19 = UNEqualObjects(badge, badge2);

  if (!v19)
  {
    goto LABEL_49;
  }

  body = [(UNNotificationContent *)self body];
  body2 = [equalCopy body];
  v22 = UNEqualObjects(body, body2);

  if (!v22)
  {
    goto LABEL_49;
  }

  attributedBody = [(UNNotificationContent *)self attributedBody];
  attributedBody2 = [equalCopy attributedBody];
  v25 = UNEqualObjects(attributedBody, attributedBody2);

  if (!v25)
  {
    goto LABEL_49;
  }

  categoryIdentifier = [(UNNotificationContent *)self categoryIdentifier];
  categoryIdentifier2 = [equalCopy categoryIdentifier];
  v28 = UNEqualStrings(categoryIdentifier, categoryIdentifier2);

  if (!v28)
  {
    goto LABEL_49;
  }

  date = [(UNNotificationContent *)self date];
  date2 = [equalCopy date];
  v31 = UNEqualObjects(date, date2);

  if (!v31)
  {
    goto LABEL_49;
  }

  expirationDate = [(UNNotificationContent *)self expirationDate];
  expirationDate2 = [equalCopy expirationDate];
  v34 = UNEqualObjects(expirationDate, expirationDate2);

  if (!v34)
  {
    goto LABEL_49;
  }

  defaultActionTitle = [(UNNotificationContent *)self defaultActionTitle];
  defaultActionTitle2 = [equalCopy defaultActionTitle];
  v37 = UNEqualStrings(defaultActionTitle, defaultActionTitle2);

  if (!v37)
  {
    goto LABEL_49;
  }

  defaultActionURL = [(UNNotificationContent *)self defaultActionURL];
  defaultActionURL2 = [equalCopy defaultActionURL];
  v40 = UNEqualObjects(defaultActionURL, defaultActionURL2);

  if (!v40)
  {
    goto LABEL_49;
  }

  defaultActionBundleIdentifier = [(UNNotificationContent *)self defaultActionBundleIdentifier];
  defaultActionBundleIdentifier2 = [equalCopy defaultActionBundleIdentifier];
  v43 = UNEqualStrings(defaultActionBundleIdentifier, defaultActionBundleIdentifier2);

  if (!v43)
  {
    goto LABEL_49;
  }

  icon = [(UNNotificationContent *)self icon];
  icon2 = [equalCopy icon];
  v46 = UNEqualObjects(icon, icon2);

  if (!v46)
  {
    goto LABEL_49;
  }

  header = [(UNNotificationContent *)self header];
  header2 = [equalCopy header];
  v49 = UNEqualStrings(header, header2);

  if (!v49)
  {
    goto LABEL_49;
  }

  footer = [(UNNotificationContent *)self footer];
  footer2 = [equalCopy footer];
  v52 = UNEqualStrings(footer, footer2);

  if (!v52)
  {
    goto LABEL_49;
  }

  launchImageName = [(UNNotificationContent *)self launchImageName];
  launchImageName2 = [equalCopy launchImageName];
  v55 = UNEqualObjects(launchImageName, launchImageName2);

  if (!v55)
  {
    goto LABEL_49;
  }

  peopleIdentifiers = [(UNNotificationContent *)self peopleIdentifiers];
  peopleIdentifiers2 = [equalCopy peopleIdentifiers];
  v58 = UNEqualObjects(peopleIdentifiers, peopleIdentifiers2);

  if (!v58)
  {
    goto LABEL_49;
  }

  shouldHideDate = [(UNNotificationContent *)self shouldHideDate];
  if (shouldHideDate != [equalCopy shouldHideDate])
  {
    goto LABEL_49;
  }

  shouldHideTime = [(UNNotificationContent *)self shouldHideTime];
  if (shouldHideTime != [equalCopy shouldHideTime])
  {
    goto LABEL_49;
  }

  shouldIgnoreDoNotDisturb = [(UNNotificationContent *)self shouldIgnoreDoNotDisturb];
  if (shouldIgnoreDoNotDisturb != [equalCopy shouldIgnoreDoNotDisturb])
  {
    goto LABEL_49;
  }

  shouldIgnoreDowntime = [(UNNotificationContent *)self shouldIgnoreDowntime];
  if (shouldIgnoreDowntime != [equalCopy shouldIgnoreDowntime])
  {
    goto LABEL_49;
  }

  shouldAuthenticateDefaultAction = [(UNNotificationContent *)self shouldAuthenticateDefaultAction];
  if (shouldAuthenticateDefaultAction != [equalCopy shouldAuthenticateDefaultAction])
  {
    goto LABEL_49;
  }

  shouldBackgroundDefaultAction = [(UNNotificationContent *)self shouldBackgroundDefaultAction];
  if (shouldBackgroundDefaultAction != [equalCopy shouldBackgroundDefaultAction])
  {
    goto LABEL_49;
  }

  shouldShowSubordinateIcon = [(UNNotificationContent *)self shouldShowSubordinateIcon];
  if (shouldShowSubordinateIcon != [equalCopy shouldShowSubordinateIcon])
  {
    goto LABEL_49;
  }

  shouldPreventNotificationDismissalAfterDefaultAction = [(UNNotificationContent *)self shouldPreventNotificationDismissalAfterDefaultAction];
  if (shouldPreventNotificationDismissalAfterDefaultAction != [equalCopy shouldPreventNotificationDismissalAfterDefaultAction])
  {
    goto LABEL_49;
  }

  shouldSuppressDefaultAction = [(UNNotificationContent *)self shouldSuppressDefaultAction];
  if (shouldSuppressDefaultAction != [equalCopy shouldSuppressDefaultAction])
  {
    goto LABEL_49;
  }

  shouldSuppressScreenLightUp = [(UNNotificationContent *)self shouldSuppressScreenLightUp];
  if (shouldSuppressScreenLightUp != [equalCopy shouldSuppressScreenLightUp])
  {
    goto LABEL_49;
  }

  shouldSuppressSyncDismissalWhenRemoved = [(UNNotificationContent *)self shouldSuppressSyncDismissalWhenRemoved];
  if (shouldSuppressSyncDismissalWhenRemoved != [equalCopy shouldSuppressSyncDismissalWhenRemoved])
  {
    goto LABEL_49;
  }

  shouldUseRequestIdentifierForDismissalSync = [(UNNotificationContent *)self shouldUseRequestIdentifierForDismissalSync];
  if (shouldUseRequestIdentifierForDismissalSync != [equalCopy shouldUseRequestIdentifierForDismissalSync])
  {
    goto LABEL_49;
  }

  shouldPreemptPresentedNotification = [(UNNotificationContent *)self shouldPreemptPresentedNotification];
  if (shouldPreemptPresentedNotification != [equalCopy shouldPreemptPresentedNotification])
  {
    goto LABEL_49;
  }

  shouldDisplayActionsInline = [(UNNotificationContent *)self shouldDisplayActionsInline];
  if (shouldDisplayActionsInline != [equalCopy shouldDisplayActionsInline])
  {
    goto LABEL_49;
  }

  sound = [(UNNotificationContent *)self sound];
  sound2 = [equalCopy sound];
  v75 = UNEqualObjects(sound, sound2);

  if (!v75)
  {
    goto LABEL_49;
  }

  subtitle = [(UNNotificationContent *)self subtitle];
  subtitle2 = [equalCopy subtitle];
  v78 = UNEqualObjects(subtitle, subtitle2);

  if (!v78)
  {
    goto LABEL_49;
  }

  threadIdentifier = [(UNNotificationContent *)self threadIdentifier];
  threadIdentifier2 = [equalCopy threadIdentifier];
  v81 = UNEqualStrings(threadIdentifier, threadIdentifier2);

  if (!v81)
  {
    goto LABEL_49;
  }

  title = [(UNNotificationContent *)self title];
  title2 = [equalCopy title];
  v84 = UNEqualObjects(title, title2);

  if (!v84)
  {
    goto LABEL_49;
  }

  topicIdentifiers = [(UNNotificationContent *)self topicIdentifiers];
  topicIdentifiers2 = [equalCopy topicIdentifiers];
  v87 = UNEqualObjects(topicIdentifiers, topicIdentifiers2);

  if (!v87)
  {
    goto LABEL_49;
  }

  realertCount = [(UNNotificationContent *)self realertCount];
  if (realertCount != [equalCopy realertCount])
  {
    goto LABEL_49;
  }

  summaryArgument = [(UNNotificationContent *)self summaryArgument];
  summaryArgument2 = [equalCopy summaryArgument];
  v91 = UNEqualStrings(summaryArgument, summaryArgument2);

  if (!v91)
  {
    goto LABEL_49;
  }

  summaryArgumentCount = [(UNNotificationContent *)self summaryArgumentCount];
  if (summaryArgumentCount != [equalCopy summaryArgumentCount])
  {
    goto LABEL_49;
  }

  targetContentIdentifier = [(UNNotificationContent *)self targetContentIdentifier];
  targetContentIdentifier2 = [equalCopy targetContentIdentifier];
  v95 = UNEqualStrings(targetContentIdentifier, targetContentIdentifier2);

  if (!v95)
  {
    goto LABEL_49;
  }

  interruptionLevel = [(UNNotificationContent *)self interruptionLevel];
  if (interruptionLevel != [equalCopy interruptionLevel])
  {
    goto LABEL_49;
  }

  [(UNNotificationContent *)self relevanceScore];
  v98 = v97;
  [equalCopy relevanceScore];
  if (v98 != v99)
  {
    goto LABEL_49;
  }

  filterCriteria = [(UNNotificationContent *)self filterCriteria];
  filterCriteria2 = [equalCopy filterCriteria];
  v102 = UNEqualStrings(filterCriteria, filterCriteria2);

  if (!v102)
  {
    goto LABEL_49;
  }

  screenCaptureProhibited = [(UNNotificationContent *)self screenCaptureProhibited];
  if (screenCaptureProhibited != [equalCopy screenCaptureProhibited])
  {
    goto LABEL_49;
  }

  userInfo = [(UNNotificationContent *)self userInfo];
  userInfo2 = [equalCopy userInfo];
  v106 = UNEqualObjects(userInfo, userInfo2);

  if (v106)
  {
    speechLanguage = [(UNNotificationContent *)self speechLanguage];
    speechLanguage2 = [equalCopy speechLanguage];
    v109 = UNEqualStrings(speechLanguage, speechLanguage2);
  }

  else
  {
LABEL_49:
    v109 = 0;
  }

  return v109;
}

- (id)_safeStringForString:(id)string debug:(BOOL)debug
{
  stringCopy = string;
  v6 = stringCopy;
  if (debug || ![(__CFString *)stringCopy length])
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

- (id)_safeAttributedStringForAttributedString:(id)string debug:(BOOL)debug
{
  stringCopy = string;
  v6 = stringCopy;
  if (debug || ![stringCopy length])
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

- (id)markedMutableCopyWithMessage:(id)message
{
  messageCopy = message;
  v5 = [(UNNotificationContent *)self mutableCopy];
  [v5 setMarkedMutableCopyMessage:messageCopy];

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  speechLanguage = [(UNNotificationContent *)self speechLanguage];
  v42 = [UNMutableNotificationContent allocWithZone:zone];
  contentType = [(UNNotificationContent *)self contentType];
  communicationContext = [(UNNotificationContent *)self communicationContext];
  accessoryImageName = [(UNNotificationContent *)self accessoryImageName];
  attachments = [(UNNotificationContent *)self attachments];
  badge = [(UNNotificationContent *)self badge];
  body = [(UNNotificationContent *)self body];
  attributedBody = [(UNNotificationContent *)self attributedBody];
  categoryIdentifier = [(UNNotificationContent *)self categoryIdentifier];
  date = [(UNNotificationContent *)self date];
  icon = [(UNNotificationContent *)self icon];
  defaultActionTitle = [(UNNotificationContent *)self defaultActionTitle];
  defaultActionURL = [(UNNotificationContent *)self defaultActionURL];
  defaultActionBundleIdentifier = [(UNNotificationContent *)self defaultActionBundleIdentifier];
  expirationDate = [(UNNotificationContent *)self expirationDate];
  header = [(UNNotificationContent *)self header];
  footer = [(UNNotificationContent *)self footer];
  launchImageName = [(UNNotificationContent *)self launchImageName];
  peopleIdentifiers = [(UNNotificationContent *)self peopleIdentifiers];
  shouldHideDate = [(UNNotificationContent *)self shouldHideDate];
  shouldHideTime = [(UNNotificationContent *)self shouldHideTime];
  shouldIgnoreDoNotDisturb = [(UNNotificationContent *)self shouldIgnoreDoNotDisturb];
  shouldIgnoreDowntime = [(UNNotificationContent *)self shouldIgnoreDowntime];
  shouldSuppressScreenLightUp = [(UNNotificationContent *)self shouldSuppressScreenLightUp];
  shouldAuthenticateDefaultAction = [(UNNotificationContent *)self shouldAuthenticateDefaultAction];
  shouldBackgroundDefaultAction = [(UNNotificationContent *)self shouldBackgroundDefaultAction];
  shouldPreventNotificationDismissalAfterDefaultAction = [(UNNotificationContent *)self shouldPreventNotificationDismissalAfterDefaultAction];
  shouldShowSubordinateIcon = [(UNNotificationContent *)self shouldShowSubordinateIcon];
  shouldSuppressDefaultAction = [(UNNotificationContent *)self shouldSuppressDefaultAction];
  shouldSuppressSyncDismissalWhenRemoved = [(UNNotificationContent *)self shouldSuppressSyncDismissalWhenRemoved];
  shouldUseRequestIdentifierForDismissalSync = [(UNNotificationContent *)self shouldUseRequestIdentifierForDismissalSync];
  shouldPreemptPresentedNotification = [(UNNotificationContent *)self shouldPreemptPresentedNotification];
  shouldDisplayActionsInline = [(UNNotificationContent *)self shouldDisplayActionsInline];
  sound = [(UNNotificationContent *)self sound];
  subtitle = [(UNNotificationContent *)self subtitle];
  threadIdentifier = [(UNNotificationContent *)self threadIdentifier];
  title = [(UNNotificationContent *)self title];
  topicIdentifiers = [(UNNotificationContent *)self topicIdentifiers];
  realertCount = [(UNNotificationContent *)self realertCount];
  summaryArgument = [(UNNotificationContent *)self summaryArgument];
  summaryArgumentCount = [(UNNotificationContent *)self summaryArgumentCount];
  targetContentIdentifier = [(UNNotificationContent *)self targetContentIdentifier];
  interruptionLevel = [(UNNotificationContent *)self interruptionLevel];
  [(UNNotificationContent *)self relevanceScore];
  v10 = v9;
  filterCriteria = [(UNNotificationContent *)self filterCriteria];
  screenCaptureProhibited = [(UNNotificationContent *)self screenCaptureProhibited];
  userInfo = [(UNNotificationContent *)self userInfo];
  LOBYTE(v17) = screenCaptureProhibited;
  BYTE5(v16) = shouldDisplayActionsInline;
  BYTE4(v16) = shouldPreemptPresentedNotification;
  BYTE3(v16) = shouldUseRequestIdentifierForDismissalSync;
  BYTE2(v16) = shouldSuppressSyncDismissalWhenRemoved;
  BYTE1(v16) = shouldSuppressDefaultAction;
  LOBYTE(v16) = shouldShowSubordinateIcon;
  HIBYTE(v15) = shouldPreventNotificationDismissalAfterDefaultAction;
  BYTE6(v15) = shouldBackgroundDefaultAction;
  BYTE5(v15) = shouldAuthenticateDefaultAction;
  BYTE4(v15) = shouldSuppressScreenLightUp;
  BYTE3(v15) = shouldIgnoreDowntime;
  BYTE2(v15) = shouldIgnoreDoNotDisturb;
  BYTE1(v15) = shouldHideTime;
  LOBYTE(v15) = shouldHideDate;
  v43 = [UNNotificationContent _initWithContentType:v42 communicationContext:"_initWithContentType:communicationContext:accessoryImageName:attachments:badge:body:attributedBody:categoryIdentifier:date:icon:defaultActionTitle:defaultActionURL:defaultActionBundleIdentifier:expirationDate:header:footer:launchImageName:peopleIdentifiers:shouldHideDate:shouldHideTime:shouldIgnoreDoNotDisturb:shouldIgnoreDowntime:shouldSuppressScreenLightUp:shouldAuthenticateDefaultAction:shouldBackgroundDefaultAction:shouldPreventNotificationDismissalAfterDefaultAction:shouldShowSubordinateIcon:shouldSuppressDefaultAction:shouldSuppressSyncDismissalWhenRemoved:shouldUseRequestIdentifierForDismissalSync:shouldPreemptPresentedNotification:shouldDisplayActionsInline:sound:subtitle:threadIdentifier:title:topicIdentifiers:realertCount:summaryArgument:summaryArgumentCount:targetContentIdentifier:interruptionLevel:relevanceScore:filterCriteria:screenCaptureProhibited:speechLanguage:userInfo:" accessoryImageName:contentType attachments:communicationContext badge:accessoryImageName body:attachments attributedBody:badge categoryIdentifier:body date:v10 icon:attributedBody defaultActionTitle:categoryIdentifier defaultActionURL:date defaultActionBundleIdentifier:icon expirationDate:defaultActionTitle header:defaultActionURL footer:defaultActionBundleIdentifier launchImageName:expirationDate peopleIdentifiers:header shouldHideDate:footer shouldHideTime:launchImageName shouldIgnoreDoNotDisturb:peopleIdentifiers shouldIgnoreDowntime:v15 shouldSuppressScreenLightUp:v16 shouldAuthenticateDefaultAction:sound shouldBackgroundDefaultAction:subtitle shouldPreventNotificationDismissalAfterDefaultAction:threadIdentifier shouldShowSubordinateIcon:title shouldSuppressDefaultAction:topicIdentifiers shouldSuppressSyncDismissalWhenRemoved:realertCount shouldUseRequestIdentifierForDismissalSync:summaryArgument shouldPreemptPresentedNotification:summaryArgumentCount shouldDisplayActionsInline:targetContentIdentifier sound:interruptionLevel subtitle:filterCriteria threadIdentifier:v17 title:speechLanguage topicIdentifiers:userInfo realertCount:? summaryArgument:? summaryArgumentCount:? targetContentIdentifier:? interruptionLevel:? relevanceScore:? filterCriteria:? screenCaptureProhibited:? speechLanguage:? userInfo:?];

  return v43;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  contentType = [(UNNotificationContent *)self contentType];
  [coderCopy encodeObject:contentType forKey:@"contentType"];

  communicationContext = [(UNNotificationContent *)self communicationContext];
  [coderCopy encodeObject:communicationContext forKey:@"communicationContext"];

  accessoryImageName = [(UNNotificationContent *)self accessoryImageName];
  [coderCopy encodeObject:accessoryImageName forKey:@"accessoryImageName"];

  attachments = [(UNNotificationContent *)self attachments];
  [coderCopy encodeObject:attachments forKey:@"attachments"];

  badge = [(UNNotificationContent *)self badge];
  [coderCopy encodeObject:badge forKey:@"badge"];

  body = [(UNNotificationContent *)self body];
  v11 = [body un_stringWithMaxLength:2000];
  [coderCopy encodeObject:v11 forKey:@"body"];

  attributedBody = [(UNNotificationContent *)self attributedBody];
  _un_RTFDData = [attributedBody _un_RTFDData];
  [coderCopy encodeObject:_un_RTFDData forKey:@"attributedBody"];

  categoryIdentifier = [(UNNotificationContent *)self categoryIdentifier];
  v15 = [categoryIdentifier un_stringWithMaxLength:1000];
  [coderCopy encodeObject:v15 forKey:@"categoryIdentifier"];

  date = [(UNNotificationContent *)self date];
  [coderCopy encodeObject:date forKey:@"date"];

  defaultActionTitle = [(UNNotificationContent *)self defaultActionTitle];
  v18 = [defaultActionTitle un_stringWithMaxLength:1000];
  [coderCopy encodeObject:v18 forKey:@"defaultActionTitle"];

  defaultActionURL = [(UNNotificationContent *)self defaultActionURL];
  [coderCopy encodeObject:defaultActionURL forKey:@"defaultActionURL"];

  defaultActionBundleIdentifier = [(UNNotificationContent *)self defaultActionBundleIdentifier];
  v21 = [defaultActionBundleIdentifier un_stringWithMaxLength:1000];
  [coderCopy encodeObject:v21 forKey:@"defaultActionBundleIdentifier"];

  expirationDate = [(UNNotificationContent *)self expirationDate];
  [coderCopy encodeObject:expirationDate forKey:@"expirationDate"];

  header = [(UNNotificationContent *)self header];
  v24 = [header un_stringWithMaxLength:1000];
  [coderCopy encodeObject:v24 forKey:@"header"];

  footer = [(UNNotificationContent *)self footer];
  v26 = [footer un_stringWithMaxLength:1000];
  [coderCopy encodeObject:v26 forKey:@"footer"];

  icon = [(UNNotificationContent *)self icon];
  [coderCopy encodeObject:icon forKey:@"icon"];

  launchImageName = [(UNNotificationContent *)self launchImageName];
  v29 = [launchImageName un_stringWithMaxLength:1000];
  [coderCopy encodeObject:v29 forKey:@"launchImageName"];

  peopleIdentifiers = [(UNNotificationContent *)self peopleIdentifiers];
  [coderCopy encodeObject:peopleIdentifiers forKey:@"peopleIdentifiers"];

  [coderCopy encodeBool:-[UNNotificationContent shouldHideDate](self forKey:{"shouldHideDate"), @"shouldHideDate"}];
  [coderCopy encodeBool:-[UNNotificationContent shouldHideTime](self forKey:{"shouldHideTime"), @"shouldHideTime"}];
  [coderCopy encodeBool:-[UNNotificationContent shouldIgnoreDoNotDisturb](self forKey:{"shouldIgnoreDoNotDisturb"), @"shouldIgnoreDoNotDisturb"}];
  [coderCopy encodeBool:-[UNNotificationContent shouldIgnoreDowntime](self forKey:{"shouldIgnoreDowntime"), @"shouldIgnoreDowntime"}];
  [coderCopy encodeBool:-[UNNotificationContent shouldAuthenticateDefaultAction](self forKey:{"shouldAuthenticateDefaultAction"), @"shouldAuthenticateDefaultAction"}];
  [coderCopy encodeBool:-[UNNotificationContent shouldBackgroundDefaultAction](self forKey:{"shouldBackgroundDefaultAction"), @"shouldBackgroundDefaultAction"}];
  [coderCopy encodeBool:-[UNNotificationContent shouldPreventNotificationDismissalAfterDefaultAction](self forKey:{"shouldPreventNotificationDismissalAfterDefaultAction"), @"shouldPreventNotificationDismissalAfterDefaultAction"}];
  [coderCopy encodeBool:-[UNNotificationContent shouldShowSubordinateIcon](self forKey:{"shouldShowSubordinateIcon"), @"shouldShowSubordinateIcon"}];
  [coderCopy encodeBool:-[UNNotificationContent shouldSuppressDefaultAction](self forKey:{"shouldSuppressDefaultAction"), @"shouldSuppressDefaultAction"}];
  [coderCopy encodeBool:-[UNNotificationContent shouldSuppressScreenLightUp](self forKey:{"shouldSuppressScreenLightUp"), @"shouldSuppressScreenLightUp"}];
  [coderCopy encodeBool:-[UNNotificationContent shouldSuppressSyncDismissalWhenRemoved](self forKey:{"shouldSuppressSyncDismissalWhenRemoved"), @"shouldSuppressSyncDismissalWhenRemoved"}];
  [coderCopy encodeBool:-[UNNotificationContent shouldUseRequestIdentifierForDismissalSync](self forKey:{"shouldUseRequestIdentifierForDismissalSync"), @"shouldUseRequestIdentifierForDismissalSync"}];
  [coderCopy encodeBool:-[UNNotificationContent shouldPreemptPresentedNotification](self forKey:{"shouldPreemptPresentedNotification"), @"shouldPreemptPresentedNotification"}];
  [coderCopy encodeBool:-[UNNotificationContent shouldDisplayActionsInline](self forKey:{"shouldDisplayActionsInline"), @"shouldDisplayActionsInline"}];
  sound = [(UNNotificationContent *)self sound];
  [coderCopy encodeObject:sound forKey:@"sound"];

  subtitle = [(UNNotificationContent *)self subtitle];
  v33 = [subtitle un_stringWithMaxLength:1000];
  [coderCopy encodeObject:v33 forKey:@"subtitle"];

  threadIdentifier = [(UNNotificationContent *)self threadIdentifier];
  v35 = [threadIdentifier un_stringWithMaxLength:1000];
  [coderCopy encodeObject:v35 forKey:@"threadIdentifier"];

  title = [(UNNotificationContent *)self title];
  v37 = [title un_stringWithMaxLength:1000];
  [coderCopy encodeObject:v37 forKey:@"title"];

  topicIdentifiers = [(UNNotificationContent *)self topicIdentifiers];
  [coderCopy encodeObject:topicIdentifiers forKey:@"topicIdentifiers"];

  [coderCopy encodeInteger:-[UNNotificationContent realertCount](self forKey:{"realertCount"), @"realertCount"}];
  summaryArgument = [(UNNotificationContent *)self summaryArgument];
  [coderCopy encodeObject:summaryArgument forKey:@"summaryArgument"];

  [coderCopy encodeInteger:-[UNNotificationContent summaryArgumentCount](self forKey:{"summaryArgumentCount"), @"summaryArgumentCount"}];
  targetContentIdentifier = [(UNNotificationContent *)self targetContentIdentifier];
  [coderCopy encodeObject:targetContentIdentifier forKey:@"targetContentIdentifier"];

  [coderCopy encodeInteger:-[UNNotificationContent interruptionLevel](self forKey:{"interruptionLevel"), @"interruptionLevel"}];
  [(UNNotificationContent *)self relevanceScore];
  *&v41 = v41;
  [coderCopy encodeFloat:@"relevanceScore" forKey:v41];
  filterCriteria = [(UNNotificationContent *)self filterCriteria];
  [coderCopy encodeObject:filterCriteria forKey:@"filterCriteria"];

  [coderCopy encodeBool:-[UNNotificationContent screenCaptureProhibited](self forKey:{"screenCaptureProhibited"), @"screenCaptureProhibited"}];
  userInfo = [(UNNotificationContent *)self userInfo];
  [coderCopy encodeObject:userInfo forKey:@"userInfo"];

  speechLanguage = [(UNNotificationContent *)self speechLanguage];
  [coderCopy encodeObject:speechLanguage forKey:@"speechLanguage"];
}

- (UNNotificationContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v99 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];
  v98 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"communicationContext"];
  v97 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryImageName"];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v96 = [coderCopy decodeObjectOfClasses:v6 forKey:@"attachments"];

  v95 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"badge"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v94 = [coderCopy decodeObjectOfClasses:v9 forKey:@"body"];

  v10 = MEMORY[0x1E696AAB0];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attributedBody"];
  v93 = [v10 _un_attributedStringWithRTFDData:v11];

  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  v92 = [coderCopy decodeObjectOfClasses:v14 forKey:@"peopleIdentifiers"];

  v91 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"categoryIdentifier"];
  v90 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v89 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  v88 = [coderCopy decodeObjectOfClasses:v17 forKey:@"defaultActionTitle"];

  v87 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultActionURL"];
  v18 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
  v86 = [coderCopy decodeObjectOfClasses:v20 forKey:@"defaultActionBundleIdentifier"];

  v82 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  v81 = [coderCopy decodeObjectOfClasses:v23 forKey:@"header"];

  v24 = MEMORY[0x1E695DFD8];
  v25 = objc_opt_class();
  v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
  v80 = [coderCopy decodeObjectOfClasses:v26 forKey:@"footer"];

  v79 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"launchImageName"];
  v78 = [coderCopy decodeBoolForKey:@"shouldHideDate"];
  v77 = [coderCopy decodeBoolForKey:@"shouldHideTime"];
  v76 = [coderCopy decodeBoolForKey:@"shouldIgnoreDoNotDisturb"];
  v75 = [coderCopy decodeBoolForKey:@"shouldIgnoreDowntime"];
  v74 = [coderCopy decodeBoolForKey:@"shouldAuthenticateDefaultAction"];
  v72 = [coderCopy decodeBoolForKey:@"shouldBackgroundDefaultAction"];
  v71 = [coderCopy decodeBoolForKey:@"shouldPreventNotificationDismissalAfterDefaultAction"];
  v70 = [coderCopy decodeBoolForKey:@"shouldShowSubordinateIcon"];
  v68 = [coderCopy decodeBoolForKey:@"shouldSuppressDefaultAction"];
  v69 = [coderCopy decodeBoolForKey:@"shouldSuppressScreenLightUp"];
  v66 = [coderCopy decodeBoolForKey:@"shouldSuppressSyncDismissalWhenRemoved"];
  v65 = [coderCopy decodeBoolForKey:@"shouldUseRequestIdentifierForDismissalSync"];
  v63 = [coderCopy decodeBoolForKey:@"shouldPreemptPresentedNotification"];
  v62 = [coderCopy decodeBoolForKey:@"shouldDisplayActionsInline"];
  v73 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sound"];
  v27 = MEMORY[0x1E695DFD8];
  v28 = objc_opt_class();
  v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
  v67 = [coderCopy decodeObjectOfClasses:v29 forKey:@"subtitle"];

  v64 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"threadIdentifier"];
  v30 = MEMORY[0x1E695DFD8];
  v31 = objc_opt_class();
  v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
  v85 = [coderCopy decodeObjectOfClasses:v32 forKey:@"title"];

  v33 = MEMORY[0x1E695DFD8];
  v34 = objc_opt_class();
  v35 = [v33 setWithObjects:{v34, objc_opt_class(), 0}];
  v61 = [coderCopy decodeObjectOfClasses:v35 forKey:@"topicIdentifiers"];

  v59 = [coderCopy decodeIntegerForKey:@"realertCount"];
  v60 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"summaryArgument"];
  v58 = [coderCopy decodeIntegerForKey:@"summaryArgumentCount"];
  v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetContentIdentifier"];
  v37 = MEMORY[0x1E695DFD8];
  v38 = objc_opt_class();
  v39 = objc_opt_class();
  v40 = objc_opt_class();
  v41 = objc_opt_class();
  v42 = objc_opt_class();
  v43 = objc_opt_class();
  v44 = [v37 setWithObjects:{v38, v39, v40, v41, v42, v43, objc_opt_class(), 0}];
  v45 = [coderCopy decodeObjectOfClasses:v44 forKey:@"userInfo"];

  if ([coderCopy containsValueForKey:@"interruptionLevel"])
  {
    v46 = [coderCopy decodeIntegerForKey:@"interruptionLevel"];
  }

  else
  {
    v46 = 1;
  }

  [coderCopy decodeFloatForKey:@"relevanceScore"];
  v48 = v47;
  v56 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"filterCriteria"];
  v49 = [coderCopy decodeBoolForKey:@"screenCaptureProhibited"];
  v55 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"speechLanguage"];
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

- (void)addSecurityScope:(id)scope
{
  scopeCopy = scope;
  attachments = [(UNNotificationContent *)self attachments];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__UNNotificationContent_addSecurityScope___block_invoke;
  v7[3] = &unk_1E7CFFCA0;
  v8 = scopeCopy;
  v6 = scopeCopy;
  [attachments enumerateObjectsUsingBlock:v7];
}

- (void)removeSecurityScope
{
  attachments = [(UNNotificationContent *)self attachments];
  [attachments enumerateObjectsUsingBlock:&__block_literal_global_9];
}

- (void)enterSecurityScope
{
  attachments = [(UNNotificationContent *)self attachments];
  [attachments enumerateObjectsUsingBlock:&__block_literal_global_198];
}

- (void)leaveSecurityScope
{
  attachments = [(UNNotificationContent *)self attachments];
  [attachments enumerateObjectsUsingBlock:&__block_literal_global_200];
}

@end