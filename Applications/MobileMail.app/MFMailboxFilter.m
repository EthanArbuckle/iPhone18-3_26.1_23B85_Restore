@interface MFMailboxFilter
+ (id)_addressLabelOfType:(int64_t)a3;
+ (id)filterForAccount:(id)a3 iconFromSmartMailbox:(id)a4;
+ (id)filterForCCMeMessages;
+ (id)filterForFlaggedMessages;
+ (id)filterForMessagesWithAttachments;
+ (id)filterForSender:(id)a3;
+ (id)filterForToMeMessages;
+ (id)filterForTodayMessages;
+ (id)filterForTouchedByCleanupMessages;
+ (id)filterForUnreadMessages;
+ (id)filterForVIPMessages;
- (BOOL)hasCriterionOfType:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFilter:(id)a3;
- (BOOL)isEquivalentToCriterion:(id)a3;
- (MFMailboxFilter)initWithAccount:(id)a3 iconFromSmartMailbox:(id)a4;
- (MFMailboxFilter)initWithType:(int64_t)a3 name:(id)a4 description:(id)a5 criterion:(id)a6;
- (MFMailboxFilter)initWithType:(int64_t)a3 name:(id)a4 description:(id)a5 icon:(id)a6 iconTintColor:(id)a7 criterion:(id)a8;
- (id)_blankImage;
- (id)debugDescription;
- (id)initForCCMeMessages;
- (id)initForFlaggedMessages;
- (id)initForMessagesWithAttachments;
- (id)initForSender:(id)a3;
- (id)initForToMeMessages;
- (id)initForTodayMessages;
- (id)initForTouchedByCleanupMessages;
- (id)initForUnreadMessages;
- (id)initForVIPMessages;
- (unint64_t)hash;
@end

@implementation MFMailboxFilter

- (MFMailboxFilter)initWithType:(int64_t)a3 name:(id)a4 description:(id)a5 criterion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(MFMailboxFilter *)self _blankImage];
  v14 = [(MFMailboxFilter *)self initWithType:a3 name:v10 description:v11 icon:v13 iconTintColor:0 criterion:v12];

  return v14;
}

- (MFMailboxFilter)initWithType:(int64_t)a3 name:(id)a4 description:(id)a5 icon:(id)a6 iconTintColor:(id)a7 criterion:(id)a8
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = v19;
  if (v15)
  {
    if (v19)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = +[NSAssertionHandler currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"MFMailboxFilter.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"name"}];

    if (v20)
    {
      goto LABEL_3;
    }
  }

  v25 = +[NSAssertionHandler currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"MFMailboxFilter.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"criterion"}];

LABEL_3:
  v27.receiver = self;
  v27.super_class = MFMailboxFilter;
  LOBYTE(v26) = [v20 criterionType] == 23;
  v21 = [(MFMailboxFilter *)&v27 initWithType:a3 name:v15 description:v16 iconImageName:0 iconTintColor:v18 predicate:0 hasMailboxPredicate:v26];
  if (v21)
  {
    v22 = [v17 imageWithRenderingMode:2];
    [(MFMailboxFilter *)v21 setIcon:v22];

    objc_storeStrong(&v21->_criterion, a8);
  }

  return v21;
}

- (id)_blankImage
{
  if (qword_1006DD520 != -1)
  {
    sub_10048B800();
  }

  v3 = qword_1006DD518;

  return v3;
}

- (BOOL)isEquivalentToCriterion:(id)a3
{
  v4 = a3;
  v5 = [(MFMailboxFilter *)self criterion];
  v6 = [v5 isEqual:v4];

  return v6;
}

- (BOOL)hasCriterionOfType:(int64_t)a3
{
  v4 = [(MFMailboxFilter *)self criterion];
  LOBYTE(a3) = [v4 criterionType] == a3;

  return a3;
}

- (unint64_t)hash
{
  v3 = [(MFMailboxFilter *)self predicate];
  if (v3)
  {
    [(MFMailboxFilter *)self predicate];
  }

  else
  {
    [(MFMailboxFilter *)self criterion];
  }
  v4 = ;
  v5 = [v4 hash];

  v6 = [(MFMailboxFilter *)self name];
  v7 = [v6 hash];

  v8 = [(MFMailboxFilter *)self filterDescription];
  v9 = 33 * (v7 + 33 * v5);
  v10 = [v8 hash] + 193376997;

  return &v10[v9];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(MFMailboxFilter *)self isEqualToFilter:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToFilter:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(MFMailboxFilter *)self predicate];

    if (v5)
    {
      v6 = [(MFMailboxFilter *)self predicate];
      v7 = [v4 isEquivalentToPredicate:v6];
    }

    else
    {
      v6 = [(MFMailboxFilter *)self criterion];
      v9 = [v4 criterion];
      v7 = [v6 isEqual:v9];
    }

    v10 = [(MFMailboxFilter *)self name];
    v11 = [v4 name];
    if ([v10 isEqualToString:v11])
    {
      v12 = [(MFMailboxFilter *)self filterDescription];
      v13 = [v4 filterDescription];
      v8 = [v12 isEqualToString:v13] & v7;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(MFMailboxFilter *)self name];
  v6 = [(MFMailboxFilter *)self filterDescription];
  v7 = [(MFMailboxFilter *)self criterion];
  v8 = [(MFMailboxFilter *)self predicate];
  v9 = [NSString stringWithFormat:@"<%@: %p\nName: %@\nDescription:  %@\nCriterion: \n%@\nPredicate: \n%@", v4, self, v5, v6, v7, v8];

  return v9;
}

- (id)initForFlaggedMessages
{
  v6.receiver = self;
  v6.super_class = MFMailboxFilter;
  v2 = [(MFMailboxFilter *)&v6 initForFlaggedMessages];
  if (v2)
  {
    v3 = +[MFMessageCriterion flaggedMessageCriterion];
    v4 = v2[1];
    v2[1] = v3;
  }

  return v2;
}

- (id)initForUnreadMessages
{
  v6.receiver = self;
  v6.super_class = MFMailboxFilter;
  v2 = [(MFMailboxFilter *)&v6 initForUnreadMessages];
  if (v2)
  {
    v3 = +[MFMessageCriterion unreadMessageCriterion];
    v4 = v2[1];
    v2[1] = v3;
  }

  return v2;
}

- (id)initForToMeMessages
{
  v7.receiver = self;
  v7.super_class = MFMailboxFilter;
  v2 = [(MFMailboxFilter *)&v7 initForToMeMessages];
  if (v2)
  {
    v3 = +[MFMessageCriterion toMeCriterion];
    v4 = v2[1];
    v2[1] = v3;

    v5 = [MFMailboxFilter _addressLabelOfType:2];
    [v2 setIcon:v5];
  }

  return v2;
}

- (id)initForCCMeMessages
{
  v7.receiver = self;
  v7.super_class = MFMailboxFilter;
  v2 = [(MFMailboxFilter *)&v7 initForCCMeMessages];
  if (v2)
  {
    v3 = +[MFMessageCriterion ccMeCriterion];
    v4 = v2[1];
    v2[1] = v3;

    v5 = [MFMailboxFilter _addressLabelOfType:3];
    [v2 setIcon:v5];
  }

  return v2;
}

- (id)initForTodayMessages
{
  v6.receiver = self;
  v6.super_class = MFMailboxFilter;
  v2 = [(MFMailboxFilter *)&v6 initForTodayMessages];
  if (v2)
  {
    v3 = +[MFMessageCriterion todayMessageCriterion];
    v4 = v2[1];
    v2[1] = v3;
  }

  return v2;
}

- (id)initForMessagesWithAttachments
{
  v6.receiver = self;
  v6.super_class = MFMailboxFilter;
  v2 = [(MFMailboxFilter *)&v6 initForMessagesWithAttachments];
  if (v2)
  {
    v3 = +[MFMessageCriterion hasAttachmentsCriterion];
    v4 = v2[1];
    v2[1] = v3;
  }

  return v2;
}

- (id)initForVIPMessages
{
  v6.receiver = self;
  v6.super_class = MFMailboxFilter;
  v2 = [(MFMailboxFilter *)&v6 initForVIPMessages];
  if (v2)
  {
    v3 = [MFMessageCriterion senderIsVIPCriterion:1];
    v4 = v2[1];
    v2[1] = v3;
  }

  return v2;
}

- (id)initForTouchedByCleanupMessages
{
  v7.receiver = self;
  v7.super_class = MFMailboxFilter;
  v2 = [(MFMailboxFilter *)&v7 initForTouchedByCleanupMessages];
  if (v2)
  {
    v3 = [UIImage mf_symbolConfigurationForView:6];
    v4 = [UIImage _systemImageNamed:MFImageGlyphFilterTouchedByCleanupMailbox withConfiguration:v3];
    v5 = [v4 imageWithRenderingMode:2];
    [v2 setIcon:v5];
  }

  return v2;
}

- (MFMailboxFilter)initWithAccount:(id)a3 iconFromSmartMailbox:(id)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = MFMailboxFilter;
  v7 = [(MFMailboxFilter *)&v14 initWithAccount:v6 iconFromSmartMailbox:a4];
  if (v7)
  {
    v8 = [v6 objectID];
    v9 = [v8 representedObjectID];

    v10 = [MailAccount accountWithUniqueId:v9];
    v11 = [MFMessageCriterion criterionForAccount:v10];
    criterion = v7->_criterion;
    v7->_criterion = v11;
  }

  return v7;
}

- (id)initForSender:(id)a3
{
  v7.receiver = self;
  v7.super_class = MFMailboxFilter;
  v3 = [(MFMailboxFilter *)&v7 initForSender:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3[1];
    v3[1] = 0;
  }

  return v4;
}

+ (id)filterForFlaggedMessages
{
  v2 = [[MFMailboxFilter alloc] initForFlaggedMessages];

  return v2;
}

+ (id)filterForUnreadMessages
{
  v2 = [[MFMailboxFilter alloc] initForUnreadMessages];

  return v2;
}

+ (id)filterForToMeMessages
{
  v2 = [[MFMailboxFilter alloc] initForToMeMessages];

  return v2;
}

+ (id)filterForCCMeMessages
{
  v2 = [[MFMailboxFilter alloc] initForCCMeMessages];

  return v2;
}

+ (id)filterForTodayMessages
{
  v2 = [[MFMailboxFilter alloc] initForTodayMessages];

  return v2;
}

+ (id)filterForMessagesWithAttachments
{
  v2 = [[MFMailboxFilter alloc] initForMessagesWithAttachments];

  return v2;
}

+ (id)filterForVIPMessages
{
  v2 = [[MFMailboxFilter alloc] initForVIPMessages];

  return v2;
}

+ (id)filterForAccount:(id)a3 iconFromSmartMailbox:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[MFMailboxFilter alloc] initWithAccount:v5 iconFromSmartMailbox:v6];

  return v7;
}

+ (id)filterForSender:(id)a3
{
  v3 = a3;
  v4 = [[MFMailboxFilter alloc] initForSender:v3];

  return v4;
}

+ (id)filterForTouchedByCleanupMessages
{
  v2 = [[MFMailboxFilter alloc] initForTouchedByCleanupMessages];

  return v2;
}

+ (id)_addressLabelOfType:(int64_t)a3
{
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 preferredContentSizeCategory];

  v6 = sub_10014A0BC(a3, v5, 36.0);
  v7 = +[NSBundle mainBundle];
  v8 = +[UIColor systemGrayColor];
  v9 = sub_100149B0C(a3, v5, v7, v8, 0, v6);

  return v9;
}

@end