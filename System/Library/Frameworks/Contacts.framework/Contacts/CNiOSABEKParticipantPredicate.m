@interface CNiOSABEKParticipantPredicate
- (CNiOSABEKParticipantPredicate)initWithCoder:(id)a3;
- (CNiOSABEKParticipantPredicate)initWithName:(id)a3 URL:(id)a4 emailAddress:(id)a5 customDescription:(id)a6;
- (NSString)description;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNiOSABEKParticipantPredicate

- (CNiOSABEKParticipantPredicate)initWithName:(id)a3 URL:(id)a4 emailAddress:(id)a5 customDescription:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = CNiOSABEKParticipantPredicate;
  v14 = [(CNPredicate *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    name = v14->_name;
    v14->_name = v15;

    v17 = [v11 copy];
    URL = v14->_URL;
    v14->_URL = v17;

    v19 = [v12 copy];
    emailAddress = v14->_emailAddress;
    v14->_emailAddress = v19;

    v21 = [v13 copy];
    customDescription = v14->_customDescription;
    v14->_customDescription = v21;
  }

  return v14;
}

- (CNiOSABEKParticipantPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CNiOSABEKParticipantPredicate;
  v5 = [(CNPredicate *)&v20 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    v7 = [v6 copy];
    name = v5->_name;
    v5->_name = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_emailAddress"];
    v10 = [v9 copy];
    emailAddress = v5->_emailAddress;
    v5->_emailAddress = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_customDescription"];
    v13 = [v12 copy];
    customDescription = v5->_customDescription;
    v5->_customDescription = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_URL"];
    v16 = [v15 copy];
    URL = v5->_URL;
    v5->_URL = v16;

    v18 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNiOSABEKParticipantPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_name forKey:{@"_name", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_emailAddress forKey:@"_emailAddress"];
  [v4 encodeObject:self->_customDescription forKey:@"_customDescription"];
  [v4 encodeObject:self->_URL forKey:@"_URL"];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNiOSABEKParticipantPredicate *)self customDescription];

  if (v4)
  {
    v5 = [(CNiOSABEKParticipantPredicate *)self customDescription];
    v6 = [v3 appendName:@"kind" object:v5];
  }

  else
  {
    v7 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactMatchingEKParticipantWithName:emailAddress:URL:predicateDescription:]"];
  }

  v8 = [(CNiOSABEKParticipantPredicate *)self name];
  v9 = [v3 appendName:@"name" object:v8];

  v10 = [(CNiOSABEKParticipantPredicate *)self URL];
  v11 = [v3 appendName:@"URL" object:v10];

  v12 = [(CNiOSABEKParticipantPredicate *)self emailAddress];
  v13 = [v3 appendName:@"emailAddress" object:v12];

  v14 = [v3 build];

  return v14;
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7
{
  v7 = a3;
  values = 0;
  if (a3)
  {
    v9 = [(CNiOSABEKParticipantPredicate *)self emailAddress:a3];
    if ([(__CFString *)v9 length]&& CFStringFind(v9, @"@", 0).location != -1 && (PersonMatchingEmailAddress = ABAddressBookFindPersonMatchingEmailAddress()) != 0 && (values = CFRetain(PersonMatchingEmailAddress)) != 0 || ([(CNiOSABEKParticipantPredicate *)self URL], v11 = objc_claimAutoreleasedReturnValue(), v11, v11) && ([(CNiOSABEKParticipantPredicate *)self URL], v12 = objc_claimAutoreleasedReturnValue(), values = CNiOSABEKParticipantMatchingCopyPersonByURL(v7, v12), v12, values) || ([(CNiOSABEKParticipantPredicate *)self name], v13 = objc_claimAutoreleasedReturnValue(), v13, v13) && ([(CNiOSABEKParticipantPredicate *)self name], v14 = objc_claimAutoreleasedReturnValue(), values = CNiOSABEKParticipantMatchingCopyPersonByName(v7, v14), v14, values))
    {
      v7 = CFArrayCreate(0, &values, 1, MEMORY[0x1E695E9C0]);
      CFRelease(values);
      values = 0;
    }

    else
    {
      v7 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
    }
  }

  return v7;
}

@end