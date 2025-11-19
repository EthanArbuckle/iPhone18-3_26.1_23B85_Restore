@interface CNiOSABURLContactPredicate
- (CNiOSABURLContactPredicate)initWithCoder:(id)a3;
- (CNiOSABURLContactPredicate)initWithURLString:(id)a3;
- (NSString)description;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7;
- (id)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 nserror:(id *)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNiOSABURLContactPredicate

- (CNiOSABURLContactPredicate)initWithURLString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CNiOSABURLContactPredicate;
  v5 = [(CNPredicate *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    urlString = v5->_urlString;
    v5->_urlString = v6;
  }

  return v5;
}

- (CNiOSABURLContactPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CNiOSABURLContactPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_urlString"];
    v7 = [v6 copy];
    urlString = v5->_urlString;
    v5->_urlString = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNiOSABURLContactPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_urlString forKey:{@"_urlString", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7
{
  v15 = 0;
  v8 = [(CNiOSABURLContactPredicate *)self cn_copyPeopleInAddressBook:a3 fetchRequest:a4 matchInfos:a5 environment:a6 nserror:&v15];
  v9 = v15;
  v10 = v9;
  if (v8)
  {
    v11 = v8;
  }

  else if (a7)
  {
    v12 = [v9 code];
    v13 = [v10 userInfo];
    *a7 = [CNErrorFactory errorWithCode:v12 userInfo:v13];
  }

  return v8;
}

- (id)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 nserror:(id *)a7
{
  v24[1] = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a6;
  v14 = [(CNiOSABURLContactPredicate *)self urlString];
  v15 = [v14 length];

  if (v15)
  {
    v16 = MEMORY[0x1E698A138];
    v17 = [(CNiOSABURLContactPredicate *)self urlString];
    v18 = [v16 personPredicateWithValue:v17 comparison:0 forProperty:*MEMORY[0x1E698A630] addressBook:a3];

    if (v18)
    {
      v24[0] = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
      v20 = +[CNiOSFetchExecution contactsMatchingPredicates:sortOrdering:matchInfos:options:addressBook:environment:error:](CNiOSFetchExecution, "contactsMatchingPredicates:sortOrdering:matchInfos:options:addressBook:environment:error:", v19, [v12 sortOrder], a5, objc_msgSend(v12, "options"), a3, v13, a7);
    }

    else
    {
      v22 = [CNErrorFactory errorWithCode:400 userInfo:0];
      if (a7)
      {
        v22 = v22;
        *a7 = v22;
      }

      v20 = 0;
    }
  }

  else
  {
    v21 = [CNErrorFactory errorWithCode:400 userInfo:0];
    if (a7)
    {
      v21 = v21;
      *a7 = v21;
    }

    v20 = 0;
  }

  return v20;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactMatchingURLString:]"];
  v5 = [(CNiOSABURLContactPredicate *)self urlString];
  v6 = [v3 appendName:@"urlString" object:v5];

  v7 = [v3 build];

  return v7;
}

@end