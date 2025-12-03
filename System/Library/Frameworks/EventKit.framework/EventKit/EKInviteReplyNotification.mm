@interface EKInviteReplyNotification
+ (id)knownRelationshipSingleValueKeys;
+ (id)sourceForInviteReplyNotification:(id)notification;
- (BOOL)alerted;
- (BOOL)validate:(id *)validate;
- (EKInviteReplyNotification)initWithInviteReplyCalendar:(id)calendar;
- (NSString)shareeDisplayName;
- (NSString)shareeEmailAddress;
- (NSString)shareePhoneNumber;
- (NSURL)shareeURL;
- (unint64_t)shareeStatus;
- (void)_setInviteReplyCalendar:(id)calendar;
- (void)clearAlertedStatus;
- (void)setShareeStatus:(unint64_t)status;
- (void)setShareeURL:(id)l;
@end

@implementation EKInviteReplyNotification

+ (id)knownRelationshipSingleValueKeys
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__EKInviteReplyNotification_knownRelationshipSingleValueKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (knownRelationshipSingleValueKeys_onceToken_0 != -1)
  {
    dispatch_once(&knownRelationshipSingleValueKeys_onceToken_0, block);
  }

  v2 = knownRelationshipSingleValueKeys_keys_0;

  return v2;
}

void __61__EKInviteReplyNotification_knownRelationshipSingleValueKeys__block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = *MEMORY[0x1E6992AC0];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v3 = knownRelationshipSingleValueKeys_keys_0;
  knownRelationshipSingleValueKeys_keys_0 = v2;

  v4 = knownRelationshipSingleValueKeys_keys_0;
  v9.receiver = *(a1 + 32);
  v9.super_class = &OBJC_METACLASS___EKInviteReplyNotification;
  v5 = objc_msgSendSuper2(&v9, sel_knownRelationshipSingleValueKeys);
  v6 = [v4 arrayByAddingObjectsFromArray:v5];
  v7 = knownRelationshipSingleValueKeys_keys_0;
  knownRelationshipSingleValueKeys_keys_0 = v6;

  v8 = *MEMORY[0x1E69E9840];
}

+ (id)sourceForInviteReplyNotification:(id)notification
{
  calendar = [notification calendar];
  source = [calendar source];

  return source;
}

- (EKInviteReplyNotification)initWithInviteReplyCalendar:(id)calendar
{
  calendarCopy = calendar;
  v8.receiver = self;
  v8.super_class = EKInviteReplyNotification;
  v5 = [(EKObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(EKInviteReplyNotification *)v5 _setInviteReplyCalendar:calendarCopy];
  }

  return v6;
}

- (void)_setInviteReplyCalendar:(id)calendar
{
  v4 = *MEMORY[0x1E6992AC0];
  calendarCopy = calendar;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:calendarCopy forKey:v4 frozenClass:+[EKCalendar frozenClass]];
}

- (NSString)shareeDisplayName
{
  v3 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992AD8]];
  if (!v3)
  {
    shareeFirstName = [(EKInviteReplyNotification *)self shareeFirstName];
    shareeLastName = [(EKInviteReplyNotification *)self shareeLastName];
    v3 = DisplayNameStringForIdentityWithProperties();
  }

  return v3;
}

- (NSURL)shareeURL
{
  shareeURLString = [(EKInviteReplyNotification *)self shareeURLString];
  if (shareeURLString)
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:shareeURLString];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setShareeURL:(id)l
{
  absoluteString = [l absoluteString];
  [(EKInviteReplyNotification *)self setShareeURLString:absoluteString];
}

- (unint64_t)shareeStatus
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992AF0]];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setShareeStatus:(unint64_t)status
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:status];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E6992AF0]];
}

- (NSString)shareeEmailAddress
{
  shareeURL = [(EKInviteReplyNotification *)self shareeURL];
  cal_emailAddressString = [shareeURL cal_emailAddressString];

  return cal_emailAddressString;
}

- (NSString)shareePhoneNumber
{
  shareeURL = [(EKInviteReplyNotification *)self shareeURL];
  cal_phoneNumberString = [shareeURL cal_phoneNumberString];

  return cal_phoneNumberString;
}

- (BOOL)alerted
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992A90]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)clearAlertedStatus
{
  persistentObject = [(EKObject *)self persistentObject];
  [persistentObject unloadPropertyForKey:*MEMORY[0x1E6992A90]];
}

- (BOOL)validate:(id *)validate
{
  v9.receiver = self;
  v9.super_class = EKInviteReplyNotification;
  LODWORD(v5) = [(EKObject *)&v9 validate:?];
  if (v5)
  {
    inviteReplyCalendar = [(EKInviteReplyNotification *)self inviteReplyCalendar];

    if (inviteReplyCalendar)
    {
      LOBYTE(v5) = 1;
    }

    else if (validate)
    {
      v7 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:31];
      v5 = v7;
      LOBYTE(v5) = 0;
      *validate = v7;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

@end