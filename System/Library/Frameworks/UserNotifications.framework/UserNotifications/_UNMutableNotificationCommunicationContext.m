@interface _UNMutableNotificationCommunicationContext
+ (id)mutableContextFromINIntent:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAssociatedObjectUri:(id)a3;
- (void)setBundleIdentifier:(id)a3;
- (void)setContentURL:(id)a3;
- (void)setDisplayName:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setImageName:(id)a3;
- (void)setRecipients:(id)a3;
- (void)setSender:(id)a3;
@end

@implementation _UNMutableNotificationCommunicationContext

+ (id)mutableContextFromINIntent:(id)a3
{
  v103 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(_UNMutableNotificationCommunicationContext);
  v5 = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [v5 bundleIdentifier];
  [(_UNMutableNotificationCommunicationContext *)v4 setBundleIdentifier:v6];

  v7 = [v3 identifier];
  [(_UNMutableNotificationCommunicationContext *)v4 setAssociatedObjectUri:v7];

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
    v13 = [v3 recipients];
    v14 = 0;
    v15 = [v13 countByEnumeratingWithState:&v91 objects:v102 count:16];
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
            objc_enumerationMutation(v13);
          }

          v20 = [*(*(&v91 + 1) + 8 * i) isMe];
          v14 |= v20;
          if (v20)
          {
            v21 = 0;
          }

          else
          {
            v21 = 8;
          }

          v16 += v21;
        }

        v15 = [v13 countByEnumeratingWithState:&v91 objects:v102 count:16];
      }

      while (v15);
      v22 = v19 == 0;
    }

    else
    {
      v22 = 1;
    }

    v31 = [v3 donationMetadata];
    v32 = v31;
    if (v31 && (v33 = [v31 recipientCount]) != 0)
    {
      v34 = v14 & (v33 == 1);
    }

    else
    {
      v34 = 1;
    }

    if ((v22 & v34) == 1)
    {
      v35 = [v3 sender];
      v27 = [v35 image];

      v36 = UNLogCommunicationNotifications;
      if (os_log_type_enabled(UNLogCommunicationNotifications, OS_LOG_TYPE_DEFAULT))
      {
        v37 = v36;
        v38 = [v27 _uri];
        *buf = 138543618;
        *&buf[4] = v86;
        *&buf[12] = 2112;
        *&buf[14] = v38;
        _os_log_impl(&dword_1B85E3000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ sender image _uri: %@", buf, 0x16u);
      }
    }

    else
    {
      v27 = [v3 imageForParameterNamed:@"speakableGroupName"];
      v39 = UNLogCommunicationNotifications;
      if (os_log_type_enabled(UNLogCommunicationNotifications, OS_LOG_TYPE_DEFAULT))
      {
        v40 = v39;
        v41 = [v27 _uri];
        *buf = 138543618;
        *&buf[4] = v86;
        *&buf[12] = 2112;
        *&buf[14] = v41;
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
      v25 = [v3 contacts];
      v26 = [v25 count] > 1;

      if (v26)
      {
        v27 = [v3 imageForParameterNamed:@"callRecordToCallBack"];
      }

      else
      {
        v42 = [v3 contacts];
        v43 = [v42 firstObject];
        v27 = [v43 image];
      }
    }

    else
    {
      v27 = [v3 keyImage];
      v28 = UNLogCommunicationNotifications;
      if (os_log_type_enabled(UNLogCommunicationNotifications, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v28;
        v30 = [v27 _uri];
        *buf = 138543618;
        *&buf[4] = v86;
        *&buf[12] = 2112;
        *&buf[14] = v30;
        _os_log_impl(&dword_1B85E3000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ key image _uri: %@", buf, 0x16u);
      }
    }
  }

  if (v27)
  {
    v44 = [v27 _name];

    if (v44)
    {
      v45 = [v27 _name];
      v46 = [v27 _isSystem];
      [(_UNMutableNotificationCommunicationContext *)v4 setImageName:v45];
      [(_UNMutableNotificationCommunicationContext *)v4 setSystemImage:v46];
      v47 = UNLogCommunicationNotifications;
      if (os_log_type_enabled(UNLogCommunicationNotifications, OS_LOG_TYPE_DEFAULT))
      {
        v48 = @"NO";
        *buf = 138543874;
        *&buf[4] = v86;
        *&buf[12] = 2114;
        if (v46)
        {
          v48 = @"YES";
        }

        *&buf[14] = v45;
        *&buf[22] = 2114;
        v100 = v48;
        _os_log_impl(&dword_1B85E3000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@ Found image of '%{public}@' name. System image:%{public}@", buf, 0x20u);
      }

      goto LABEL_80;
    }

    v50 = [MEMORY[0x1E695DF00] now];
    v51 = [v27 _uri];

    if (v51)
    {
      v52 = [v27 _uri];
      v53 = UNLogCommunicationNotifications;
      if (!os_log_type_enabled(UNLogCommunicationNotifications, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_50;
      }

      *buf = 138543618;
      *&buf[4] = v86;
      *&buf[12] = 2114;
      *&buf[14] = v52;
      v54 = "%{public}@ url found at image's _uri: %{public}@";
      v55 = v53;
      v56 = 22;
    }

    else
    {
      v57 = [v27 _identifier];

      if (!v57)
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
      v59 = [v27 _identifier];
      v52 = [v58 URLWithString:v59];

      v60 = UNLogCommunicationNotifications;
      if (!os_log_type_enabled(UNLogCommunicationNotifications, OS_LOG_TYPE_DEFAULT))
      {
LABEL_50:
        if (v52)
        {
          v61 = [v52 scheme];
          v62 = [v61 isEqualToString:@"intents-remote-image-proxy"];

          if (v62)
          {
            v63 = v52;
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
            *(&v101 + 2) = v52;
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
              *&buf[14] = v52;
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
            [v27 _requestProxy:v87];
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
              v63 = v52;
            }

            _Block_object_dispose(buf, 8);
            goto LABEL_77;
          }

          if (v67)
          {
            *buf = 138543618;
            *&buf[4] = v86;
            *&buf[12] = 2114;
            *&buf[14] = v52;
            _os_log_impl(&dword_1B85E3000, v66, OS_LOG_TYPE_DEFAULT, "%{public}@ Getting proxied image synchronously for content url '%{public}@'.", buf, 0x16u);
          }

          v90 = 0;
          v85 = [v27 _proxiedImageWithError:&v90];
          v68 = v90;
          if (v68)
          {
            v69 = UNLogCommunicationNotifications;
            if (os_log_type_enabled(UNLogCommunicationNotifications, OS_LOG_TYPE_ERROR))
            {
              v83 = v69;
              v84 = [v68 localizedDescription];
              *buf = 138543874;
              *&buf[4] = v86;
              *&buf[12] = 2114;
              *&buf[14] = v52;
              *&buf[22] = 2114;
              v100 = v84;
              _os_log_error_impl(&dword_1B85E3000, v83, OS_LOG_TYPE_ERROR, "%{public}@ Error getting proxied image synchronously for content url '%{public}@' error: %{public}@", buf, 0x20u);
            }
          }

          else
          {
            if (v85)
            {
              v75 = MEMORY[0x1E695DFF8];
              v76 = [v85 _identifier];
              v63 = [v75 URLWithString:v76];

              v52 = v76;
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

- (void)setIdentifier:(id)a3
{
  v4 = [a3 copy];
  identifier = self->super._identifier;
  self->super._identifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAssociatedObjectUri:(id)a3
{
  v4 = [a3 copy];
  associatedObjectUri = self->super._associatedObjectUri;
  self->super._associatedObjectUri = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setBundleIdentifier:(id)a3
{
  v4 = [a3 copy];
  bundleIdentifier = self->super._bundleIdentifier;
  self->super._bundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setDisplayName:(id)a3
{
  v4 = [a3 copy];
  displayName = self->super._displayName;
  self->super._displayName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setSender:(id)a3
{
  v4 = [a3 copy];
  sender = self->super._sender;
  self->super._sender = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setRecipients:(id)a3
{
  v4 = [a3 copy];
  recipients = self->super._recipients;
  self->super._recipients = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setContentURL:(id)a3
{
  v4 = [a3 copy];
  contentURL = self->super._contentURL;
  self->super._contentURL = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setImageName:(id)a3
{
  v4 = [a3 copy];
  imageName = self->super._imageName;
  self->super._imageName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v22 = [_UNNotificationCommunicationContext allocWithZone:a3];
  v21 = [(_UNNotificationCommunicationContext *)self identifier];
  v20 = [(_UNNotificationCommunicationContext *)self associatedObjectUri];
  v19 = [(_UNNotificationCommunicationContext *)self bundleIdentifier];
  v18 = [(_UNNotificationCommunicationContext *)self displayName];
  v17 = [(_UNNotificationCommunicationContext *)self sender];
  v4 = [(_UNNotificationCommunicationContext *)self recipients];
  v5 = [(_UNNotificationCommunicationContext *)self contentURL];
  v6 = [(_UNNotificationCommunicationContext *)self imageName];
  v7 = [(_UNNotificationCommunicationContext *)self isSystemImage];
  v8 = [(_UNNotificationCommunicationContext *)self mentionsCurrentUser];
  v9 = [(_UNNotificationCommunicationContext *)self notifyRecipientAnyway];
  v10 = [(_UNNotificationCommunicationContext *)self isReplyToCurrentUser];
  v11 = [(_UNNotificationCommunicationContext *)self recipientCount];
  v12 = [(_UNNotificationCommunicationContext *)self capabilities];
  LOBYTE(v16) = [(_UNNotificationCommunicationContext *)self isBusinessCorrespondence];
  BYTE3(v15) = v10;
  BYTE2(v15) = v9;
  BYTE1(v15) = v8;
  LOBYTE(v15) = v7;
  v13 = [_UNNotificationCommunicationContext _initWithIdentifier:v22 associatedObjectUri:"_initWithIdentifier:associatedObjectUri:bundleIdentifier:displayName:sender:recipients:contentURL:imageName:systemImage:mentionsCurrentUser:notifyRecipientAnyway:replyToCurrentUser:recipientCount:capabilities:businessCorrespondence:" bundleIdentifier:v21 displayName:v20 sender:v19 recipients:v18 contentURL:v17 imageName:v4 systemImage:v5 mentionsCurrentUser:v6 notifyRecipientAnyway:v15 replyToCurrentUser:v11 recipientCount:v12 capabilities:v16 businessCorrespondence:?];

  return v13;
}

@end