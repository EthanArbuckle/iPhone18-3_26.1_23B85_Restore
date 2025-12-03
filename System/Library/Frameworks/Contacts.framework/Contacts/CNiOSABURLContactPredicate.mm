@interface CNiOSABURLContactPredicate
- (CNiOSABURLContactPredicate)initWithCoder:(id)coder;
- (CNiOSABURLContactPredicate)initWithURLString:(id)string;
- (NSString)description;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error;
- (id)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment nserror:(id *)nserror;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABURLContactPredicate

- (CNiOSABURLContactPredicate)initWithURLString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = CNiOSABURLContactPredicate;
  v5 = [(CNPredicate *)&v9 init];
  if (v5)
  {
    v6 = [stringCopy copy];
    urlString = v5->_urlString;
    v5->_urlString = v6;
  }

  return v5;
}

- (CNiOSABURLContactPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CNiOSABURLContactPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_urlString"];
    v7 = [v6 copy];
    urlString = v5->_urlString;
    v5->_urlString = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNiOSABURLContactPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_urlString forKey:{@"_urlString", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error
{
  v15 = 0;
  v8 = [(CNiOSABURLContactPredicate *)self cn_copyPeopleInAddressBook:book fetchRequest:request matchInfos:infos environment:environment nserror:&v15];
  v9 = v15;
  v10 = v9;
  if (v8)
  {
    v11 = v8;
  }

  else if (error)
  {
    code = [v9 code];
    userInfo = [v10 userInfo];
    *error = [CNErrorFactory errorWithCode:code userInfo:userInfo];
  }

  return v8;
}

- (id)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment nserror:(id *)nserror
{
  v24[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  environmentCopy = environment;
  urlString = [(CNiOSABURLContactPredicate *)self urlString];
  v15 = [urlString length];

  if (v15)
  {
    v16 = MEMORY[0x1E698A138];
    urlString2 = [(CNiOSABURLContactPredicate *)self urlString];
    v18 = [v16 personPredicateWithValue:urlString2 comparison:0 forProperty:*MEMORY[0x1E698A630] addressBook:book];

    if (v18)
    {
      v24[0] = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
      v20 = +[CNiOSFetchExecution contactsMatchingPredicates:sortOrdering:matchInfos:options:addressBook:environment:error:](CNiOSFetchExecution, "contactsMatchingPredicates:sortOrdering:matchInfos:options:addressBook:environment:error:", v19, [requestCopy sortOrder], infos, objc_msgSend(requestCopy, "options"), book, environmentCopy, nserror);
    }

    else
    {
      v22 = [CNErrorFactory errorWithCode:400 userInfo:0];
      if (nserror)
      {
        v22 = v22;
        *nserror = v22;
      }

      v20 = 0;
    }
  }

  else
  {
    v21 = [CNErrorFactory errorWithCode:400 userInfo:0];
    if (nserror)
    {
      v21 = v21;
      *nserror = v21;
    }

    v20 = 0;
  }

  return v20;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactMatchingURLString:]"];
  urlString = [(CNiOSABURLContactPredicate *)self urlString];
  v6 = [v3 appendName:@"urlString" object:urlString];

  build = [v3 build];

  return build;
}

@end