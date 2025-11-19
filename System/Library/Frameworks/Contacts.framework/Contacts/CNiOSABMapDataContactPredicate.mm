@interface CNiOSABMapDataContactPredicate
- (CNiOSABMapDataContactPredicate)initWithCoder:(id)a3;
- (CNiOSABMapDataContactPredicate)initWithString:(id)a3;
- (NSString)description;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNiOSABMapDataContactPredicate

- (CNiOSABMapDataContactPredicate)initWithString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CNiOSABMapDataContactPredicate;
  v5 = [(CNPredicate *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    mapString = v5->_mapString;
    v5->_mapString = v6;
  }

  return v5;
}

- (CNiOSABMapDataContactPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CNiOSABMapDataContactPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_mapString"];
    v7 = [v6 copy];
    mapString = v5->_mapString;
    v5->_mapString = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNiOSABMapDataContactPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_mapString forKey:{@"_mapString", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7
{
  v9 = [(CNiOSABMapDataContactPredicate *)self mapString];
  v10 = [v9 length];

  if (v10)
  {
    v11 = [(CNiOSABMapDataContactPredicate *)self mapString];
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

  else if (a7)
  {
    [CNErrorFactory errorWithCode:400 userInfo:0];
    *a7 = v13 = 0;
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
  v5 = [(CNiOSABMapDataContactPredicate *)self mapString];
  v6 = [v3 appendName:@"mapString" object:v5];

  v7 = [v3 build];

  return v7;
}

@end