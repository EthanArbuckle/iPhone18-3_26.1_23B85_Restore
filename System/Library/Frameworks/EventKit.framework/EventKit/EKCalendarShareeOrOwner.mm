@interface EKCalendarShareeOrOwner
+ (id)ownerForEKCalendar:(id)calendar;
+ (id)shareeWithEKSharee:(id)sharee forCalendar:(id)calendar;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation EKCalendarShareeOrOwner

+ (id)shareeWithEKSharee:(id)sharee forCalendar:(id)calendar
{
  shareeCopy = sharee;
  calendarCopy = calendar;
  v21.receiver = self;
  v21.super_class = &OBJC_METACLASS___EKCalendarShareeOrOwner;
  v8 = [objc_msgSendSuper2(&v21 alloc)];
  name = [shareeCopy name];
  [v8 setName:name];

  emailAddress = [shareeCopy emailAddress];
  [v8 setEmailAddress:emailAddress];

  phoneNumber = [shareeCopy phoneNumber];
  [v8 setPhoneNumber:phoneNumber];

  firstName = [shareeCopy firstName];
  [v8 setFirstName:firstName];

  lastName = [shareeCopy lastName];
  [v8 setLastName:lastName];

  v14 = [shareeCopy URL];
  [v8 setURL:v14];

  uUID = [shareeCopy UUID];
  v16 = *(v8 + 16);
  *(v8 + 16) = uUID;

  if ([calendarCopy sharingStatus])
  {
    source = [calendarCopy source];
    ownerAddresses = [source ownerAddresses];
    address = [shareeCopy address];
    *(v8 + 8) = [ownerAddresses containsObject:address];
  }

  else
  {
    *(v8 + 8) = 0;
  }

  return v8;
}

+ (id)ownerForEKCalendar:(id)calendar
{
  calendarCopy = calendar;
  if ([calendarCopy sharingStatus])
  {
    v15.receiver = self;
    v15.super_class = &OBJC_METACLASS___EKCalendarShareeOrOwner;
    v5 = [objc_msgSendSuper2(&v15 alloc)];
    ownerIdentityDisplayName = [calendarCopy ownerIdentityDisplayName];
    [v5 setName:ownerIdentityDisplayName];

    ownerIdentityEmail = [calendarCopy ownerIdentityEmail];
    [v5 setEmailAddress:ownerIdentityEmail];

    ownerIdentityPhoneNumber = [calendarCopy ownerIdentityPhoneNumber];
    [v5 setPhoneNumber:ownerIdentityPhoneNumber];

    ownerIdentityFirstName = [calendarCopy ownerIdentityFirstName];
    [v5 setFirstName:ownerIdentityFirstName];

    ownerIdentityLastName = [calendarCopy ownerIdentityLastName];
    [v5 setLastName:ownerIdentityLastName];

    ownerIdentityAddress = [calendarCopy ownerIdentityAddress];
    [v5 setURL:ownerIdentityAddress];

    uniqueIdentifier = [calendarCopy uniqueIdentifier];
    v13 = *(v5 + 16);
    *(v5 + 16) = uniqueIdentifier;

    *(v5 + 8) = [calendarCopy sharingStatus] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (equalCopy == self)
  {
    v8 = 1;
    goto LABEL_7;
  }

  if ([(EKCalendarShareeOrOwner *)equalCopy conformsToProtocol:&unk_1F1B8DAB0])
  {
    uUID = [(EKCalendarShareeOrOwner *)v5 UUID];
    uUID2 = [(EKCalendarShareeOrOwner *)self UUID];
    v8 = [uUID isEqualToString:uUID2];
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

LABEL_7:

  return v8;
}

- (unint64_t)hash
{
  uUID = [(EKCalendarShareeOrOwner *)self UUID];
  v3 = [uUID hash];

  return v3;
}

@end