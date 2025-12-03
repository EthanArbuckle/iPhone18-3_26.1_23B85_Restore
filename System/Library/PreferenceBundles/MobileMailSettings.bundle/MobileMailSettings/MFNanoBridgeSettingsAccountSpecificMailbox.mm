@interface MFNanoBridgeSettingsAccountSpecificMailbox
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (MFNanoBridgeSettingsAccountSpecificMailbox)initWithAccountUniqueIdentifier:(id)identifier mailboxURL:(id)l;
- (MFNanoBridgeSettingsAccountSpecificMailbox)initWithCoder:(id)coder;
- (MFNanoBridgeSettingsAccountSpecificMailbox)initWithMailboxUid:(id)uid account:(id)account;
- (NSString)mailboxId;
- (id)_mailboxUid;
- (id)displayName;
- (id)icon;
- (int64_t)type;
- (unint64_t)hash;
- (unint64_t)level;
- (void)encodeWithCoder:(id)coder;
- (void)invalidateCachedData;
@end

@implementation MFNanoBridgeSettingsAccountSpecificMailbox

- (MFNanoBridgeSettingsAccountSpecificMailbox)initWithMailboxUid:(id)uid account:(id)account
{
  uidCopy = uid;
  accountCopy = account;
  if (!accountCopy)
  {
    accountCopy = [uidCopy account];
  }

  uniqueID = [accountCopy uniqueID];
  uRLString = [uidCopy URLString];
  v11 = [NSURL URLWithString:uRLString];
  v12 = [(MFNanoBridgeSettingsAccountSpecificMailbox *)self initWithAccountUniqueIdentifier:uniqueID mailboxURL:v11];

  if (v12)
  {
    objc_storeStrong(&v12->_mailboxUid, uid);
    v12->_type = [(MFMailboxUid *)v12->_mailboxUid type];
  }

  return v12;
}

- (MFNanoBridgeSettingsAccountSpecificMailbox)initWithAccountUniqueIdentifier:(id)identifier mailboxURL:(id)l
{
  identifierCopy = identifier;
  lCopy = l;
  v12.receiver = self;
  v12.super_class = MFNanoBridgeSettingsAccountSpecificMailbox;
  v8 = [(MFNanoBridgeSettingsAccountSpecificMailbox *)&v12 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    accountUniqueIdentifier = v8->_accountUniqueIdentifier;
    v8->_accountUniqueIdentifier = v9;

    objc_storeStrong(&v8->_mailboxURL, l);
  }

  return v8;
}

- (void)invalidateCachedData
{
  mailboxUid = self->_mailboxUid;
  self->_mailboxUid = 0;
  _objc_release_x1();
}

- (int64_t)type
{
  _mailboxUid = [(MFNanoBridgeSettingsAccountSpecificMailbox *)self _mailboxUid];
  type = [_mailboxUid type];

  return type;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_accountUniqueIdentifier forKey:@"kNSCodingKeyAccount"];
  [coderCopy encodeObject:self->_mailboxURL forKey:@"kNSCodingKeyURL"];
  v4 = [NSNumber numberWithInteger:self->_type];
  [coderCopy encodeObject:v4 forKey:@"kNSCodingKeyType"];
}

- (MFNanoBridgeSettingsAccountSpecificMailbox)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MFNanoBridgeSettingsAccountSpecificMailbox;
  v5 = [(MFNanoBridgeSettingsAccountSpecificMailbox *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyAccount"];
    accountUniqueIdentifier = v5->_accountUniqueIdentifier;
    v5->_accountUniqueIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyURL"];
    mailboxURL = v5->_mailboxURL;
    v5->_mailboxURL = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyType"];
    v5->_type = [v10 unsignedIntegerValue];
  }

  return v5;
}

- (id)displayName
{
  _mailboxUid = [(MFNanoBridgeSettingsAccountSpecificMailbox *)self _mailboxUid];
  v3 = _mailboxUid;
  if (_mailboxUid)
  {
    displayNameUsingSpecialNames = [_mailboxUid displayNameUsingSpecialNames];
  }

  else
  {
    displayNameUsingSpecialNames = 0;
  }

  return displayNameUsingSpecialNames;
}

- (id)icon
{
  _mailboxUid = [(MFNanoBridgeSettingsAccountSpecificMailbox *)self _mailboxUid];
  v3 = _mailboxUid;
  if (_mailboxUid)
  {
    v4 = +[MFMailboxUid shorcutIconNameForMailboxType:](MFMailboxUid, "shorcutIconNameForMailboxType:", [_mailboxUid mailboxType]);
    if (v4)
    {
      v5 = [UIImage mf_systemImageNamed:v4 forView:7];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)level
{
  _mailboxUid = [(MFNanoBridgeSettingsAccountSpecificMailbox *)self _mailboxUid];
  v3 = _mailboxUid;
  if (_mailboxUid)
  {
    if ([_mailboxUid mailboxType])
    {
      level = 0;
    }

    else
    {
      level = [v3 level];
    }

    v5 = level;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isValid
{
  _mailboxUid = [(MFNanoBridgeSettingsAccountSpecificMailbox *)self _mailboxUid];
  v3 = _mailboxUid != 0;

  return v3;
}

- (unint64_t)hash
{
  mailboxURL = [(MFNanoBridgeSettingsAccountSpecificMailbox *)self mailboxURL];
  v3 = [mailboxURL hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = MFNanoBridgeSettingsAccountSpecificMailbox;
  if ([(MFNanoBridgeSettingsMailbox *)&v9 isEqual:equalCopy])
  {
    mailboxURL = [equalCopy mailboxURL];
    if ([mailboxURL isEqual:self->_mailboxURL])
    {
      accountUniqueIdentifier = [equalCopy accountUniqueIdentifier];
      v7 = [accountUniqueIdentifier isEqualToString:self->_accountUniqueIdentifier];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)mailboxId
{
  _mailboxUid = [(MFNanoBridgeSettingsAccountSpecificMailbox *)self _mailboxUid];
  nano_mailboxId = [_mailboxUid nano_mailboxId];

  return nano_mailboxId;
}

- (id)_mailboxUid
{
  mailboxUid = self->_mailboxUid;
  if (!mailboxUid)
  {
    v4 = [MailAccount accountWithUniqueId:self->_accountUniqueIdentifier];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || ![v4 isActive])
    {
      v7 = MFLogGeneral();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_25920(self->_accountUniqueIdentifier, [v4 isActive], v20, v7);
      }
    }

    else
    {
      if (self->_type == 7)
      {
        v5 = [v4 mailboxUidOfType:7 createIfNeeded:0];
        v6 = self->_mailboxUid;
        self->_mailboxUid = v5;
      }

      else
      {
        absoluteString = [(NSURL *)self->_mailboxURL absoluteString];
        v10 = [v4 mailboxUidForURL:absoluteString];
        v11 = self->_mailboxUid;
        self->_mailboxUid = v10;

        if (!self->_mailboxUid)
        {
          absoluteString2 = [(NSURL *)self->_mailboxURL absoluteString];
          v13 = [v4 URLStringFromLegacyURLString:absoluteString2];

          v14 = [v4 mailboxUidForURL:v13];
          v15 = self->_mailboxUid;
          self->_mailboxUid = v14;

          if (self->_mailboxUid)
          {
            v16 = [[NSURL alloc] initWithString:v13];
            mailboxURL = self->_mailboxURL;
            self->_mailboxURL = v16;
          }

          else
          {
            v18 = MFLogGeneral();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              sub_258A4(&self->_mailboxURL, v18);
            }
          }
        }
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ![(MFMailboxUid *)self->_mailboxUid type])
      {
        primaryMailboxUid = [v4 primaryMailboxUid];
      }
    }

    mailboxUid = self->_mailboxUid;
  }

  return mailboxUid;
}

@end