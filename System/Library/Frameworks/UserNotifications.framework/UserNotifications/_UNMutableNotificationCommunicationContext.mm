@interface _UNMutableNotificationCommunicationContext
+ (id)mutableContextFromINIntent:(id)intent;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAssociatedObjectUri:(id)uri;
- (void)setBundleIdentifier:(id)identifier;
- (void)setContentURL:(id)l;
- (void)setDisplayName:(id)name;
- (void)setIdentifier:(id)identifier;
- (void)setImageName:(id)name;
- (void)setRecipients:(id)recipients;
- (void)setSender:(id)sender;
@end

@implementation _UNMutableNotificationCommunicationContext

+ (id)mutableContextFromINIntent:(id)intent
{
  v103 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  v4 = objc_alloc_init(_UNMutableNotificationCommunicationContext);
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  [(_UNMutableNotificationCommunicationContext *)v4 setBundleIdentifier:bundleIdentifier];

  identifier = [intentCopy identifier];
  [(_UNMutableNotificationCommunicationContext *)v4 setAssociatedObjectUri:identifier];

  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v86 = [v8 stringWithFormat:@"Persisting INImage for Intent Type '%@':", v10];

  v95 = 0;
  v96 = &v95;
  v97 = 0x2050000000;
  v11 = getINSendMessageIntentClass_softClass;
  v98 = getINSendMessageIntentClass_softClass;
  if (!getINSendMessageIntentClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getINSendMessageIntentClass_block_invoke;
    v100 = &unk_1E7CFF990;
    *&v101 = &v95;
    __getINSendMessageIntentClass_block_invoke(buf);
    v11 = v96[3];
  }

  v12 = v11;
  _Block_object_dispose(&v95, 8);
  if (objc_opt_isKindOfClass())
  {
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    recipients = [intentCopy recipients];
    v14 = 0;
    v15 = [recipients countByEnumeratingWithState:&v91 objects:v102 count:16];
    if (v15)
    {
      v16 = 0;
      v17 = *v92;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          v19 = v16;
          if (*v92 != v17)
          {
            objc_enumerationMutation(recipients);
          }

          isMe = [*(*(&v91 + 1) + 8 * i) isMe];
          v14 |= isMe;
          if (isMe)
          {
            v21 = 0;
          }

          else
          {
            v21 = 8;
          }

          v16 += v21;
        }

        v15 = [recipients countByEnumeratingWithState:&v91 objects:v102 count:16];
      }

      while (v15);
      v22 = v19 == 0;
    }

    else
    {
      v22 = 1;
    }

    donationMetadata = [intentCopy donationMetadata];
    v32 = donationMetadata;
    if (donationMetadata && (v33 = [donationMetadata recipientCount]) != 0)
    {
      v34 = v14 & (v33 == 1);
    }

    else
    {
      v34 = 1;
    }

    if ((v22 & v34) == 1)
    {
      sender = [intentCopy sender];
      image = [sender image];

      v36 = UNLogCommunicationNotifications;
      if (os_log_type_enabled(UNLogCommunicationNotifications, OS_LOG_TYPE_DEFAULT))
      {
        v37 = v36;
        _uri = [image _uri];
        *buf = 138543618;
        *&buf[4] = v86;
        *&buf[12] = 2112;
        *&buf[14] = _uri;
        _os_log_impl(&dword_1B85E3000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ sender image _uri: %@", buf, 0x16u);
      }
    }

    else
    {
      image = [intentCopy imageForParameterNamed:@"speakableGroupName"];
      v39 = UNLogCommunicationNotifications;
      if (os_log_type_enabled(UNLogCommunicationNotifications, OS_LOG_TYPE_DEFAULT))
      {
        v40 = v39;
        _uri2 = [image _uri];
        *buf = 138543618;
        *&buf[4] = v86;
        *&buf[12] = 2112;
        *&buf[14] = _uri2;
        _os_log_impl(&dword_1B85E3000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ speakableGroupName image _uri: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v95 = 0;
    v96 = &v95;
    v97 = 0x2050000000;
    v23 = getINStartCallIntentClass_softClass;
    v98 = getINStartCallIntentClass_softClass;
    if (!getINStartCallIntentClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getINStartCallIntentClass_block_invoke;
      v100 = &unk_1E7CFF990;
      *&v101 = &v95;
      __getINStartCallIntentClass_block_invoke(buf);
      v23 = v96[3];
    }

    v24 = v23;
    _Block_object_dispose(&v95, 8);
    if (objc_opt_isKindOfClass())
    {
      contacts = [intentCopy contacts];
      v26 = [contacts count] > 1;

      if (v26)
      {
        image = [intentCopy imageForParameterNamed:@"callRecordToCallBack"];
      }

      else
      {
        contacts2 = [intentCopy contacts];
        firstObject = [contacts2 firstObject];
        image = [firstObject image];
      }
    }

    else
    {
      image = [intentCopy keyImage];
      v28 = UNLogCommunicationNotifications;
      if (os_log_type_enabled(UNLogCommunicationNotifications, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v28;
        _uri3 = [image _uri];
        *buf = 138543618;
        *&buf[4] = v86;
        *&buf[12] = 2112;
        *&buf[14] = _uri3;
        _os_log_impl(&dword_1B85E3000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ key image _uri: %@", buf, 0x16u);
      }
    }
  }

  if (image)
  {
    _name = [image _name];

    if (_name)
    {
      _name2 = [image _name];
      _isSystem = [image _isSystem];
      [(_UNMutableNotificationCommunicationContext *)v4 setImageName:_name2];
      [(_UNMutableNotificationCommunicationContext *)v4 setSystemImage:_isSystem];
      v47 = UNLogCommunicationNotifications;
      if (os_log_type_enabled(UNLogCommunicationNotifications, OS_LOG_TYPE_DEFAULT))
      {
        v48 = @"NO";
        *buf = 138543874;
        *&buf[4] = v86;
        *&buf[12] = 2114;
        if (_isSystem)
        {
          v48 = @"YES";
        }

        *&buf[14] = _name2;
        *&buf[22] = 2114;
        v100 = v48;
        _os_log_impl(&dword_1B85E3000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@ Found image of '%{public}@' name. System image:%{public}@", buf, 0x20u);
      }

      goto LABEL_80;
    }

    v50 = [MEMORY[0x1E695DF00] now];
    _uri4 = [image _uri];

    if (_uri4)
    {
      _uri5 = [image _uri];
      v53 = UNLogCommunicationNotifications;
      if (!os_log_type_enabled(UNLogCommunicationNotifications, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_50;
      }

      *buf = 138543618;
      *&buf[4] = v86;
      *&buf[12] = 2114;
      *&buf[14] = _uri5;
      v54 = "%{public}@ url found at image's _uri: %{public}@";
      v55 = v53;
      v56 = 22;
    }

    else
    {
      _identifier = [image _identifier];

      if (!_identifier)
      {
        v70 = UNLogCommunicationNotifications;
        if (os_log_type_enabled(UNLogCommunicationNotifications, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v86;
          _os_log_impl(&dword_1B85E3000, v70, OS_LOG_TYPE_DEFAULT, "%{public}@ url cannot be found", buf, 0xCu);
        }

        goto LABEL_64;
      }

      v58 = MEMORY[0x1E695DFF8];
      _identifier2 = [image _identifier];
      _uri5 = [v58 URLWithString:_identifier2];

      v60 = UNLogCommunicationNotifications;
      if (!os_log_type_enabled(UNLogCommunicationNotifications, OS_LOG_TYPE_DEFAULT))
      {
LABEL_50:
        if (_uri5)
        {
          scheme = [_uri5 scheme];
          v62 = [scheme isEqualToString:@"intents-remote-image-proxy"];

          if (v62)
          {
            v63 = _uri5;
LABEL_77:
            v77 = [MEMORY[0x1E695DF00] now];
            [v77 timeIntervalSinceDate:v50];
            v79 = v78;
            v80 = UNLogCommunicationNotifications;
            if (os_log_type_enabled(UNLogCommunicationNotifications, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              *&buf[4] = v86;
              *&buf[12] = 2114;
              *&buf[14] = v63;
              *&buf[22] = 2050;
              v100 = v79;
              _os_log_impl(&dword_1B85E3000, v80, OS_LOG_TYPE_DEFAULT, "%{public}@ Final contentURL '%{public}@' to persist. Finished in: %{public}f seconds", buf, 0x20u);
            }

            [(_UNMutableNotificationCommunicationContext *)v4 setContentURL:v63];

            goto LABEL_80;
          }

          v64 = UNLogCommunicationNotifications;
          if (os_log_type_enabled(UNLogCommunicationNotifications, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138544130;
            *&buf[4] = v86;
            *&buf[12] = 2114;
            *&buf[14] = @"intents-remote-image-proxy";
            *&buf[22] = 2114;
            v100 = @"intents-remote-image-proxy";
            LOWORD(v101) = 2114;
            *(&v101 + 2) = _uri5;
            _os_log_impl(&dword_1B85E3000, v64, OS_LOG_TYPE_DEFAULT, "%{public}@ contentURL scheme does not match scheme '%{public}@'. Attempting to get a corresponding url with '%{public}@' scheme. contentURL: '%{public}@'", buf, 0x2Au);
          }

          v65 = objc_opt_respondsToSelector();
          v66 = UNLogCommunicationNotifications;
          v67 = os_log_type_enabled(UNLogCommunicationNotifications, OS_LOG_TYPE_DEFAULT);
          if ((v65 & 1) == 0)
          {
            if (v67)
            {
              *buf = 138543618;
              *&buf[4] = v86;
              *&buf[12] = 2114;
              *&buf[14] = _uri5;
              _os_log_impl(&dword_1B85E3000, v66, OS_LOG_TYPE_DEFAULT, "%{public}@ Getting proxied image asynchronously for content url '%{public}@'.", buf, 0x16u);
            }

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v100 = __Block_byref_object_copy_;
            *&v101 = __Block_byref_object_dispose_;
            *(&v101 + 1) = 0;
            v71 = dispatch_semaphore_create(0);
            v87[0] = MEMORY[0x1E69E9820];
            v87[1] = 3221225472;
            v87[2] = __101___UNMutableNotificationCommunicationContext_UserNotifications_INIntent__mutableContextFromINIntent___block_invoke;
            v87[3] = &unk_1E7CFF968;
            v89 = buf;
            v72 = v71;
            v88 = v72;
            [image _requestProxy:v87];
            v73 = dispatch_time(0, 1000000000);
            if (dispatch_semaphore_wait(v72, v73) && os_log_type_enabled(UNLogCommunicationNotifications, OS_LOG_TYPE_ERROR))
            {
              +[_UNMutableNotificationCommunicationContext(UserNotifications_INIntent) mutableContextFromINIntent:];
            }

            v74 = *(*&buf[8] + 40);
            if (v74)
            {
              v63 = v74;
            }

            else
            {
              v63 = _uri5;
            }

            _Block_object_dispose(buf, 8);
            goto LABEL_77;
          }

          if (v67)
          {
            *buf = 138543618;
            *&buf[4] = v86;
            *&buf[12] = 2114;
            *&buf[14] = _uri5;
            _os_log_impl(&dword_1B85E3000, v66, OS_LOG_TYPE_DEFAULT, "%{public}@ Getting proxied image synchronously for content url '%{public}@'.", buf, 0x16u);
          }

          v90 = 0;
          v85 = [image _proxiedImageWithError:&v90];
          v68 = v90;
          if (v68)
          {
            v69 = UNLogCommunicationNotifications;
            if (os_log_type_enabled(UNLogCommunicationNotifications, OS_LOG_TYPE_ERROR))
            {
              v83 = v69;
              localizedDescription = [v68 localizedDescription];
              *buf = 138543874;
              *&buf[4] = v86;
              *&buf[12] = 2114;
              *&buf[14] = _uri5;
              *&buf[22] = 2114;
              v100 = localizedDescription;
              _os_log_error_impl(&dword_1B85E3000, v83, OS_LOG_TYPE_ERROR, "%{public}@ Error getting proxied image synchronously for content url '%{public}@' error: %{public}@", buf, 0x20u);
            }
          }

          else
          {
            if (v85)
            {
              v75 = MEMORY[0x1E695DFF8];
              _identifier3 = [v85 _identifier];
              v63 = [v75 URLWithString:_identifier3];

              _uri5 = _identifier3;
              goto LABEL_74;
            }

            if (os_log_type_enabled(UNLogCommunicationNotifications, OS_LOG_TYPE_ERROR))
            {
              +[_UNMutableNotificationCommunicationContext(UserNotifications_INIntent) mutableContextFromINIntent:];
            }
          }

          v63 = 0;
LABEL_74:

          goto LABEL_77;
        }

LABEL_64:
        v63 = 0;
        goto LABEL_77;
      }

      *buf = 138543362;
      *&buf[4] = v86;
      v54 = "%{public}@ url created from image's _identifier";
      v55 = v60;
      v56 = 12;
    }

    _os_log_impl(&dword_1B85E3000, v55, OS_LOG_TYPE_DEFAULT, v54, buf, v56);
    goto LABEL_50;
  }

  v49 = UNLogCommunicationNotifications;
  if (os_log_type_enabled(UNLogCommunicationNotifications, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v86;
    _os_log_impl(&dword_1B85E3000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@ INImage is nil.", buf, 0xCu);
  }

LABEL_80:

  v81 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setIdentifier:(id)identifier
{
  v4 = [identifier copy];
  identifier = self->super._identifier;
  self->super._identifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAssociatedObjectUri:(id)uri
{
  v4 = [uri copy];
  associatedObjectUri = self->super._associatedObjectUri;
  self->super._associatedObjectUri = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setBundleIdentifier:(id)identifier
{
  v4 = [identifier copy];
  bundleIdentifier = self->super._bundleIdentifier;
  self->super._bundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setDisplayName:(id)name
{
  v4 = [name copy];
  displayName = self->super._displayName;
  self->super._displayName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setSender:(id)sender
{
  v4 = [sender copy];
  sender = self->super._sender;
  self->super._sender = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setRecipients:(id)recipients
{
  v4 = [recipients copy];
  recipients = self->super._recipients;
  self->super._recipients = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setContentURL:(id)l
{
  v4 = [l copy];
  contentURL = self->super._contentURL;
  self->super._contentURL = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setImageName:(id)name
{
  v4 = [name copy];
  imageName = self->super._imageName;
  self->super._imageName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = [_UNNotificationCommunicationContext allocWithZone:zone];
  identifier = [(_UNNotificationCommunicationContext *)self identifier];
  associatedObjectUri = [(_UNNotificationCommunicationContext *)self associatedObjectUri];
  bundleIdentifier = [(_UNNotificationCommunicationContext *)self bundleIdentifier];
  displayName = [(_UNNotificationCommunicationContext *)self displayName];
  sender = [(_UNNotificationCommunicationContext *)self sender];
  recipients = [(_UNNotificationCommunicationContext *)self recipients];
  contentURL = [(_UNNotificationCommunicationContext *)self contentURL];
  imageName = [(_UNNotificationCommunicationContext *)self imageName];
  isSystemImage = [(_UNNotificationCommunicationContext *)self isSystemImage];
  mentionsCurrentUser = [(_UNNotificationCommunicationContext *)self mentionsCurrentUser];
  notifyRecipientAnyway = [(_UNNotificationCommunicationContext *)self notifyRecipientAnyway];
  isReplyToCurrentUser = [(_UNNotificationCommunicationContext *)self isReplyToCurrentUser];
  recipientCount = [(_UNNotificationCommunicationContext *)self recipientCount];
  capabilities = [(_UNNotificationCommunicationContext *)self capabilities];
  LOBYTE(v16) = [(_UNNotificationCommunicationContext *)self isBusinessCorrespondence];
  BYTE3(v15) = isReplyToCurrentUser;
  BYTE2(v15) = notifyRecipientAnyway;
  BYTE1(v15) = mentionsCurrentUser;
  LOBYTE(v15) = isSystemImage;
  v13 = [_UNNotificationCommunicationContext _initWithIdentifier:v22 associatedObjectUri:"_initWithIdentifier:associatedObjectUri:bundleIdentifier:displayName:sender:recipients:contentURL:imageName:systemImage:mentionsCurrentUser:notifyRecipientAnyway:replyToCurrentUser:recipientCount:capabilities:businessCorrespondence:" bundleIdentifier:identifier displayName:associatedObjectUri sender:bundleIdentifier recipients:displayName contentURL:sender imageName:recipients systemImage:contentURL mentionsCurrentUser:imageName notifyRecipientAnyway:v15 replyToCurrentUser:recipientCount recipientCount:capabilities capabilities:v16 businessCorrespondence:?];

  return v13;
}

@end