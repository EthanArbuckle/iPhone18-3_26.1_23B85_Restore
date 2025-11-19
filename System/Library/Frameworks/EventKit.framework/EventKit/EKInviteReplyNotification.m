@interface EKInviteReplyNotification
+ (id)knownRelationshipSingleValueKeys;
+ (id)sourceForInviteReplyNotification:(id)a3;
- (BOOL)alerted;
- (BOOL)validate:(id *)a3;
- (EKInviteReplyNotification)initWithInviteReplyCalendar:(id)a3;
- (NSString)shareeDisplayName;
- (NSString)shareeEmailAddress;
- (NSString)shareePhoneNumber;
- (NSURL)shareeURL;
- (unint64_t)shareeStatus;
- (void)_setInviteReplyCalendar:(id)a3;
- (void)clearAlertedStatus;
- (void)setShareeStatus:(unint64_t)a3;
- (void)setShareeURL:(id)a3;
@end

@implementation EKInviteReplyNotification

+ (id)knownRelationshipSingleValueKeys
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__EKInviteReplyNotification_knownRelationshipSingleValueKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

+ (id)sourceForInviteReplyNotification:(id)a3
{
  v3 = [a3 calendar];
  v4 = [v3 source];

  return v4;
}

- (EKInviteReplyNotification)initWithInviteReplyCalendar:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = EKInviteReplyNotification;
  v5 = [(EKObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(EKInviteReplyNotification *)v5 _setInviteReplyCalendar:v4];
  }

  return v6;
}

- (void)_setInviteReplyCalendar:(id)a3
{
  v4 = *MEMORY[0x1E6992AC0];
  v5 = a3;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:v5 forKey:v4 frozenClass:+[EKCalendar frozenClass]];
}

- (NSString)shareeDisplayName
{
  v3 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992AD8]];
  if (!v3)
  {
    v4 = [(EKInviteReplyNotification *)self shareeFirstName];
    v5 = [(EKInviteReplyNotification *)self shareeLastName];
    v3 = DisplayNameStringForIdentityWithProperties();
  }

  return v3;
}

- (NSURL)shareeURL
{
  v2 = [(EKInviteReplyNotification *)self shareeURLString];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setShareeURL:(id)a3
{
  v4 = [a3 absoluteString];
  [(EKInviteReplyNotification *)self setShareeURLString:v4];
}

- (unint64_t)shareeStatus
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992AF0]];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setShareeStatus:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E6992AF0]];
}

- (NSString)shareeEmailAddress
{
  v2 = [(EKInviteReplyNotification *)self shareeURL];
  v3 = [v2 cal_emailAddressString];

  return v3;
}

- (NSString)shareePhoneNumber
{
  v2 = [(EKInviteReplyNotification *)self shareeURL];
  v3 = [v2 cal_phoneNumberString];

  return v3;
}

- (BOOL)alerted
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992A90]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)clearAlertedStatus
{
  v2 = [(EKObject *)self persistentObject];
  [v2 unloadPropertyForKey:*MEMORY[0x1E6992A90]];
}

- (BOOL)validate:(id *)a3
{
  v9.receiver = self;
  v9.super_class = EKInviteReplyNotification;
  LODWORD(v5) = [(EKObject *)&v9 validate:?];
  if (v5)
  {
    v6 = [(EKInviteReplyNotification *)self inviteReplyCalendar];

    if (v6)
    {
      LOBYTE(v5) = 1;
    }

    else if (a3)
    {
      v7 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:31];
      v5 = v7;
      LOBYTE(v5) = 0;
      *a3 = v7;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

@end