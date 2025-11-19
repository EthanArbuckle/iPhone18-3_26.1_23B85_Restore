@interface EKCalendarShareeOrOwner
+ (id)ownerForEKCalendar:(id)a3;
+ (id)shareeWithEKSharee:(id)a3 forCalendar:(id)a4;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation EKCalendarShareeOrOwner

+ (id)shareeWithEKSharee:(id)a3 forCalendar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = a1;
  v21.super_class = &OBJC_METACLASS___EKCalendarShareeOrOwner;
  v8 = [objc_msgSendSuper2(&v21 alloc)];
  v9 = [v6 name];
  [v8 setName:v9];

  v10 = [v6 emailAddress];
  [v8 setEmailAddress:v10];

  v11 = [v6 phoneNumber];
  [v8 setPhoneNumber:v11];

  v12 = [v6 firstName];
  [v8 setFirstName:v12];

  v13 = [v6 lastName];
  [v8 setLastName:v13];

  v14 = [v6 URL];
  [v8 setURL:v14];

  v15 = [v6 UUID];
  v16 = *(v8 + 16);
  *(v8 + 16) = v15;

  if ([v7 sharingStatus])
  {
    v17 = [v7 source];
    v18 = [v17 ownerAddresses];
    v19 = [v6 address];
    *(v8 + 8) = [v18 containsObject:v19];
  }

  else
  {
    *(v8 + 8) = 0;
  }

  return v8;
}

+ (id)ownerForEKCalendar:(id)a3
{
  v4 = a3;
  if ([v4 sharingStatus])
  {
    v15.receiver = a1;
    v15.super_class = &OBJC_METACLASS___EKCalendarShareeOrOwner;
    v5 = [objc_msgSendSuper2(&v15 alloc)];
    v6 = [v4 ownerIdentityDisplayName];
    [v5 setName:v6];

    v7 = [v4 ownerIdentityEmail];
    [v5 setEmailAddress:v7];

    v8 = [v4 ownerIdentityPhoneNumber];
    [v5 setPhoneNumber:v8];

    v9 = [v4 ownerIdentityFirstName];
    [v5 setFirstName:v9];

    v10 = [v4 ownerIdentityLastName];
    [v5 setLastName:v10];

    v11 = [v4 ownerIdentityAddress];
    [v5 setURL:v11];

    v12 = [v4 uniqueIdentifier];
    v13 = *(v5 + 16);
    *(v5 + 16) = v12;

    *(v5 + 8) = [v4 sharingStatus] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (v4 == self)
  {
    v8 = 1;
    goto LABEL_7;
  }

  if ([(EKCalendarShareeOrOwner *)v4 conformsToProtocol:&unk_1F1B8DAB0])
  {
    v6 = [(EKCalendarShareeOrOwner *)v5 UUID];
    v7 = [(EKCalendarShareeOrOwner *)self UUID];
    v8 = [v6 isEqualToString:v7];
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
  v2 = [(EKCalendarShareeOrOwner *)self UUID];
  v3 = [v2 hash];

  return v3;
}

@end