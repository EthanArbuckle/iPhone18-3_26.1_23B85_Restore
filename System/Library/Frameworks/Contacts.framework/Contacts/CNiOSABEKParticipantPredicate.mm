@interface CNiOSABEKParticipantPredicate
- (CNiOSABEKParticipantPredicate)initWithCoder:(id)coder;
- (CNiOSABEKParticipantPredicate)initWithName:(id)name URL:(id)l emailAddress:(id)address customDescription:(id)description;
- (NSString)description;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABEKParticipantPredicate

- (CNiOSABEKParticipantPredicate)initWithName:(id)name URL:(id)l emailAddress:(id)address customDescription:(id)description
{
  nameCopy = name;
  lCopy = l;
  addressCopy = address;
  descriptionCopy = description;
  v24.receiver = self;
  v24.super_class = CNiOSABEKParticipantPredicate;
  v14 = [(CNPredicate *)&v24 init];
  if (v14)
  {
    v15 = [nameCopy copy];
    name = v14->_name;
    v14->_name = v15;

    v17 = [lCopy copy];
    URL = v14->_URL;
    v14->_URL = v17;

    v19 = [addressCopy copy];
    emailAddress = v14->_emailAddress;
    v14->_emailAddress = v19;

    v21 = [descriptionCopy copy];
    customDescription = v14->_customDescription;
    v14->_customDescription = v21;
  }

  return v14;
}

- (CNiOSABEKParticipantPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = CNiOSABEKParticipantPredicate;
  v5 = [(CNPredicate *)&v20 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    v7 = [v6 copy];
    name = v5->_name;
    v5->_name = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_emailAddress"];
    v10 = [v9 copy];
    emailAddress = v5->_emailAddress;
    v5->_emailAddress = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_customDescription"];
    v13 = [v12 copy];
    customDescription = v5->_customDescription;
    v5->_customDescription = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_URL"];
    v16 = [v15 copy];
    URL = v5->_URL;
    v5->_URL = v16;

    v18 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNiOSABEKParticipantPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_name forKey:{@"_name", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_emailAddress forKey:@"_emailAddress"];
  [coderCopy encodeObject:self->_customDescription forKey:@"_customDescription"];
  [coderCopy encodeObject:self->_URL forKey:@"_URL"];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  customDescription = [(CNiOSABEKParticipantPredicate *)self customDescription];

  if (customDescription)
  {
    customDescription2 = [(CNiOSABEKParticipantPredicate *)self customDescription];
    v6 = [v3 appendName:@"kind" object:customDescription2];
  }

  else
  {
    v7 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactMatchingEKParticipantWithName:emailAddress:URL:predicateDescription:]"];
  }

  name = [(CNiOSABEKParticipantPredicate *)self name];
  v9 = [v3 appendName:@"name" object:name];

  v10 = [(CNiOSABEKParticipantPredicate *)self URL];
  v11 = [v3 appendName:@"URL" object:v10];

  emailAddress = [(CNiOSABEKParticipantPredicate *)self emailAddress];
  v13 = [v3 appendName:@"emailAddress" object:emailAddress];

  build = [v3 build];

  return build;
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error
{
  bookCopy = book;
  values = 0;
  if (book)
  {
    v9 = [(CNiOSABEKParticipantPredicate *)self emailAddress:book];
    if ([(__CFString *)v9 length]&& CFStringFind(v9, @"@", 0).location != -1 && (PersonMatchingEmailAddress = ABAddressBookFindPersonMatchingEmailAddress()) != 0 && (values = CFRetain(PersonMatchingEmailAddress)) != 0 || ([(CNiOSABEKParticipantPredicate *)self URL], v11 = objc_claimAutoreleasedReturnValue(), v11, v11) && ([(CNiOSABEKParticipantPredicate *)self URL], v12 = objc_claimAutoreleasedReturnValue(), values = CNiOSABEKParticipantMatchingCopyPersonByURL(bookCopy, v12), v12, values) || ([(CNiOSABEKParticipantPredicate *)self name], v13 = objc_claimAutoreleasedReturnValue(), v13, v13) && ([(CNiOSABEKParticipantPredicate *)self name], v14 = objc_claimAutoreleasedReturnValue(), values = CNiOSABEKParticipantMatchingCopyPersonByName(bookCopy, v14), v14, values))
    {
      bookCopy = CFArrayCreate(0, &values, 1, MEMORY[0x1E695E9C0]);
      CFRelease(values);
      values = 0;
    }

    else
    {
      bookCopy = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
    }
  }

  return bookCopy;
}

@end