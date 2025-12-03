@interface CNiOSABMapDataContactPredicate
- (CNiOSABMapDataContactPredicate)initWithCoder:(id)coder;
- (CNiOSABMapDataContactPredicate)initWithString:(id)string;
- (NSString)description;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABMapDataContactPredicate

- (CNiOSABMapDataContactPredicate)initWithString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = CNiOSABMapDataContactPredicate;
  v5 = [(CNPredicate *)&v9 init];
  if (v5)
  {
    v6 = [stringCopy copy];
    mapString = v5->_mapString;
    v5->_mapString = v6;
  }

  return v5;
}

- (CNiOSABMapDataContactPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CNiOSABMapDataContactPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_mapString"];
    v7 = [v6 copy];
    mapString = v5->_mapString;
    v5->_mapString = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNiOSABMapDataContactPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_mapString forKey:{@"_mapString", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error
{
  mapString = [(CNiOSABMapDataContactPredicate *)self mapString];
  v10 = [mapString length];

  if (v10)
  {
    mapString2 = [(CNiOSABMapDataContactPredicate *)self mapString];
    v12 = ABAddressBookCopyPersonMatchingMapData();

    values = v12;
    if (v12)
    {
      v13 = CFArrayCreate(0, &values, 1, MEMORY[0x1E695E9C0]);
      CFRelease(values);
    }

    else
    {
      return CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
    }
  }

  else if (error)
  {
    [CNErrorFactory errorWithCode:400 userInfo:0];
    *error = v13 = 0;
  }

  else
  {
    return 0;
  }

  return v13;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactMatchingMapString:]"];
  mapString = [(CNiOSABMapDataContactPredicate *)self mapString];
  v6 = [v3 appendName:@"mapString" object:mapString];

  build = [v3 build];

  return build;
}

@end