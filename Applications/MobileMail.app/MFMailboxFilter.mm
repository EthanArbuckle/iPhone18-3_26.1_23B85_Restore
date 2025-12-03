@interface MFMailboxFilter
+ (id)_addressLabelOfType:(int64_t)type;
+ (id)filterForAccount:(id)account iconFromSmartMailbox:(id)mailbox;
+ (id)filterForCCMeMessages;
+ (id)filterForFlaggedMessages;
+ (id)filterForMessagesWithAttachments;
+ (id)filterForSender:(id)sender;
+ (id)filterForToMeMessages;
+ (id)filterForTodayMessages;
+ (id)filterForTouchedByCleanupMessages;
+ (id)filterForUnreadMessages;
+ (id)filterForVIPMessages;
- (BOOL)hasCriterionOfType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFilter:(id)filter;
- (BOOL)isEquivalentToCriterion:(id)criterion;
- (MFMailboxFilter)initWithAccount:(id)account iconFromSmartMailbox:(id)mailbox;
- (MFMailboxFilter)initWithType:(int64_t)type name:(id)name description:(id)description criterion:(id)criterion;
- (MFMailboxFilter)initWithType:(int64_t)type name:(id)name description:(id)description icon:(id)icon iconTintColor:(id)color criterion:(id)criterion;
- (id)_blankImage;
- (id)debugDescription;
- (id)initForCCMeMessages;
- (id)initForFlaggedMessages;
- (id)initForMessagesWithAttachments;
- (id)initForSender:(id)sender;
- (id)initForToMeMessages;
- (id)initForTodayMessages;
- (id)initForTouchedByCleanupMessages;
- (id)initForUnreadMessages;
- (id)initForVIPMessages;
- (unint64_t)hash;
@end

@implementation MFMailboxFilter

- (MFMailboxFilter)initWithType:(int64_t)type name:(id)name description:(id)description criterion:(id)criterion
{
  nameCopy = name;
  descriptionCopy = description;
  criterionCopy = criterion;
  _blankImage = [(MFMailboxFilter *)self _blankImage];
  v14 = [(MFMailboxFilter *)self initWithType:type name:nameCopy description:descriptionCopy icon:_blankImage iconTintColor:0 criterion:criterionCopy];

  return v14;
}

- (MFMailboxFilter)initWithType:(int64_t)type name:(id)name description:(id)description icon:(id)icon iconTintColor:(id)color criterion:(id)criterion
{
  nameCopy = name;
  descriptionCopy = description;
  iconCopy = icon;
  colorCopy = color;
  criterionCopy = criterion;
  v20 = criterionCopy;
  if (nameCopy)
  {
    if (criterionCopy)
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
  v21 = [(MFMailboxFilter *)&v27 initWithType:type name:nameCopy description:descriptionCopy iconImageName:0 iconTintColor:colorCopy predicate:0 hasMailboxPredicate:v26];
  if (v21)
  {
    v22 = [iconCopy imageWithRenderingMode:2];
    [(MFMailboxFilter *)v21 setIcon:v22];

    objc_storeStrong(&v21->_criterion, criterion);
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

- (BOOL)isEquivalentToCriterion:(id)criterion
{
  criterionCopy = criterion;
  criterion = [(MFMailboxFilter *)self criterion];
  v6 = [criterion isEqual:criterionCopy];

  return v6;
}

- (BOOL)hasCriterionOfType:(int64_t)type
{
  criterion = [(MFMailboxFilter *)self criterion];
  LOBYTE(type) = [criterion criterionType] == type;

  return type;
}

- (unint64_t)hash
{
  predicate = [(MFMailboxFilter *)self predicate];
  if (predicate)
  {
    [(MFMailboxFilter *)self predicate];
  }

  else
  {
    [(MFMailboxFilter *)self criterion];
  }
  v4 = ;
  v5 = [v4 hash];

  name = [(MFMailboxFilter *)self name];
  v7 = [name hash];

  filterDescription = [(MFMailboxFilter *)self filterDescription];
  v9 = 33 * (v7 + 33 * v5);
  v10 = [filterDescription hash] + 193376997;

  return &v10[v9];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(MFMailboxFilter *)self isEqualToFilter:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToFilter:(id)filter
{
  filterCopy = filter;
  if (filterCopy)
  {
    predicate = [(MFMailboxFilter *)self predicate];

    if (predicate)
    {
      predicate2 = [(MFMailboxFilter *)self predicate];
      v7 = [filterCopy isEquivalentToPredicate:predicate2];
    }

    else
    {
      predicate2 = [(MFMailboxFilter *)self criterion];
      criterion = [filterCopy criterion];
      v7 = [predicate2 isEqual:criterion];
    }

    name = [(MFMailboxFilter *)self name];
    name2 = [filterCopy name];
    if ([name isEqualToString:name2])
    {
      filterDescription = [(MFMailboxFilter *)self filterDescription];
      filterDescription2 = [filterCopy filterDescription];
      v8 = [filterDescription isEqualToString:filterDescription2] & v7;
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
  name = [(MFMailboxFilter *)self name];
  filterDescription = [(MFMailboxFilter *)self filterDescription];
  criterion = [(MFMailboxFilter *)self criterion];
  predicate = [(MFMailboxFilter *)self predicate];
  v9 = [NSString stringWithFormat:@"<%@: %p\nName: %@\nDescription:  %@\nCriterion: \n%@\nPredicate: \n%@", v4, self, name, filterDescription, criterion, predicate];

  return v9;
}

- (id)initForFlaggedMessages
{
  v6.receiver = self;
  v6.super_class = MFMailboxFilter;
  initForFlaggedMessages = [(MFMailboxFilter *)&v6 initForFlaggedMessages];
  if (initForFlaggedMessages)
  {
    v3 = +[MFMessageCriterion flaggedMessageCriterion];
    v4 = initForFlaggedMessages[1];
    initForFlaggedMessages[1] = v3;
  }

  return initForFlaggedMessages;
}

- (id)initForUnreadMessages
{
  v6.receiver = self;
  v6.super_class = MFMailboxFilter;
  initForUnreadMessages = [(MFMailboxFilter *)&v6 initForUnreadMessages];
  if (initForUnreadMessages)
  {
    v3 = +[MFMessageCriterion unreadMessageCriterion];
    v4 = initForUnreadMessages[1];
    initForUnreadMessages[1] = v3;
  }

  return initForUnreadMessages;
}

- (id)initForToMeMessages
{
  v7.receiver = self;
  v7.super_class = MFMailboxFilter;
  initForToMeMessages = [(MFMailboxFilter *)&v7 initForToMeMessages];
  if (initForToMeMessages)
  {
    v3 = +[MFMessageCriterion toMeCriterion];
    v4 = initForToMeMessages[1];
    initForToMeMessages[1] = v3;

    v5 = [MFMailboxFilter _addressLabelOfType:2];
    [initForToMeMessages setIcon:v5];
  }

  return initForToMeMessages;
}

- (id)initForCCMeMessages
{
  v7.receiver = self;
  v7.super_class = MFMailboxFilter;
  initForCCMeMessages = [(MFMailboxFilter *)&v7 initForCCMeMessages];
  if (initForCCMeMessages)
  {
    v3 = +[MFMessageCriterion ccMeCriterion];
    v4 = initForCCMeMessages[1];
    initForCCMeMessages[1] = v3;

    v5 = [MFMailboxFilter _addressLabelOfType:3];
    [initForCCMeMessages setIcon:v5];
  }

  return initForCCMeMessages;
}

- (id)initForTodayMessages
{
  v6.receiver = self;
  v6.super_class = MFMailboxFilter;
  initForTodayMessages = [(MFMailboxFilter *)&v6 initForTodayMessages];
  if (initForTodayMessages)
  {
    v3 = +[MFMessageCriterion todayMessageCriterion];
    v4 = initForTodayMessages[1];
    initForTodayMessages[1] = v3;
  }

  return initForTodayMessages;
}

- (id)initForMessagesWithAttachments
{
  v6.receiver = self;
  v6.super_class = MFMailboxFilter;
  initForMessagesWithAttachments = [(MFMailboxFilter *)&v6 initForMessagesWithAttachments];
  if (initForMessagesWithAttachments)
  {
    v3 = +[MFMessageCriterion hasAttachmentsCriterion];
    v4 = initForMessagesWithAttachments[1];
    initForMessagesWithAttachments[1] = v3;
  }

  return initForMessagesWithAttachments;
}

- (id)initForVIPMessages
{
  v6.receiver = self;
  v6.super_class = MFMailboxFilter;
  initForVIPMessages = [(MFMailboxFilter *)&v6 initForVIPMessages];
  if (initForVIPMessages)
  {
    v3 = [MFMessageCriterion senderIsVIPCriterion:1];
    v4 = initForVIPMessages[1];
    initForVIPMessages[1] = v3;
  }

  return initForVIPMessages;
}

- (id)initForTouchedByCleanupMessages
{
  v7.receiver = self;
  v7.super_class = MFMailboxFilter;
  initForTouchedByCleanupMessages = [(MFMailboxFilter *)&v7 initForTouchedByCleanupMessages];
  if (initForTouchedByCleanupMessages)
  {
    v3 = [UIImage mf_symbolConfigurationForView:6];
    v4 = [UIImage _systemImageNamed:MFImageGlyphFilterTouchedByCleanupMailbox withConfiguration:v3];
    v5 = [v4 imageWithRenderingMode:2];
    [initForTouchedByCleanupMessages setIcon:v5];
  }

  return initForTouchedByCleanupMessages;
}

- (MFMailboxFilter)initWithAccount:(id)account iconFromSmartMailbox:(id)mailbox
{
  accountCopy = account;
  v14.receiver = self;
  v14.super_class = MFMailboxFilter;
  v7 = [(MFMailboxFilter *)&v14 initWithAccount:accountCopy iconFromSmartMailbox:mailbox];
  if (v7)
  {
    objectID = [accountCopy objectID];
    representedObjectID = [objectID representedObjectID];

    v10 = [MailAccount accountWithUniqueId:representedObjectID];
    v11 = [MFMessageCriterion criterionForAccount:v10];
    criterion = v7->_criterion;
    v7->_criterion = v11;
  }

  return v7;
}

- (id)initForSender:(id)sender
{
  v7.receiver = self;
  v7.super_class = MFMailboxFilter;
  v3 = [(MFMailboxFilter *)&v7 initForSender:sender];
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
  initForFlaggedMessages = [[MFMailboxFilter alloc] initForFlaggedMessages];

  return initForFlaggedMessages;
}

+ (id)filterForUnreadMessages
{
  initForUnreadMessages = [[MFMailboxFilter alloc] initForUnreadMessages];

  return initForUnreadMessages;
}

+ (id)filterForToMeMessages
{
  initForToMeMessages = [[MFMailboxFilter alloc] initForToMeMessages];

  return initForToMeMessages;
}

+ (id)filterForCCMeMessages
{
  initForCCMeMessages = [[MFMailboxFilter alloc] initForCCMeMessages];

  return initForCCMeMessages;
}

+ (id)filterForTodayMessages
{
  initForTodayMessages = [[MFMailboxFilter alloc] initForTodayMessages];

  return initForTodayMessages;
}

+ (id)filterForMessagesWithAttachments
{
  initForMessagesWithAttachments = [[MFMailboxFilter alloc] initForMessagesWithAttachments];

  return initForMessagesWithAttachments;
}

+ (id)filterForVIPMessages
{
  initForVIPMessages = [[MFMailboxFilter alloc] initForVIPMessages];

  return initForVIPMessages;
}

+ (id)filterForAccount:(id)account iconFromSmartMailbox:(id)mailbox
{
  accountCopy = account;
  mailboxCopy = mailbox;
  v7 = [[MFMailboxFilter alloc] initWithAccount:accountCopy iconFromSmartMailbox:mailboxCopy];

  return v7;
}

+ (id)filterForSender:(id)sender
{
  senderCopy = sender;
  v4 = [[MFMailboxFilter alloc] initForSender:senderCopy];

  return v4;
}

+ (id)filterForTouchedByCleanupMessages
{
  initForTouchedByCleanupMessages = [[MFMailboxFilter alloc] initForTouchedByCleanupMessages];

  return initForTouchedByCleanupMessages;
}

+ (id)_addressLabelOfType:(int64_t)type
{
  v4 = +[UIApplication sharedApplication];
  preferredContentSizeCategory = [v4 preferredContentSizeCategory];

  v6 = sub_10014A0BC(type, preferredContentSizeCategory, 36.0);
  v7 = +[NSBundle mainBundle];
  v8 = +[UIColor systemGrayColor];
  v9 = sub_100149B0C(type, preferredContentSizeCategory, v7, v8, 0, v6);

  return v9;
}

@end