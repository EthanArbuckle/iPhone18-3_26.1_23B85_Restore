@interface CNiOSABGroupNameMatchingPredicate
+ (id)groupNameTokenizingCharacterSet;
+ (id)tokenizeString:(id)string;
- (BOOL)groupName:(id)name matchesSearchTokens:(id)tokens;
- (CNiOSABGroupNameMatchingPredicate)initWithCoder:(id)coder;
- (CNiOSABGroupNameMatchingPredicate)initWithName:(id)name;
- (NSString)description;
- (__CFArray)cn_copyGroupsInAddressBook:(void *)book error:(__CFError *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABGroupNameMatchingPredicate

- (CNiOSABGroupNameMatchingPredicate)initWithName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  v6 = MEMORY[0x1E696AE18];
  if (nameCopy)
  {
    v7 = nameCopy;
  }

  else
  {
    v7 = &stru_1F094DAB0;
  }

  v8 = [@"*" stringByAppendingString:v7];
  v9 = [v6 predicateWithFormat:@"name LIKE[cd] %@", v8];
  v14.receiver = self;
  v14.super_class = CNiOSABGroupNameMatchingPredicate;
  v10 = [(CNPredicate *)&v14 initWithPredicate:v9];

  if (v10)
  {
    v11 = [(__CFString *)v5 copy];
    name = v10->_name;
    v10->_name = v11;
  }

  return v10;
}

- (CNiOSABGroupNameMatchingPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CNiOSABGroupNameMatchingPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    v7 = [v6 copy];
    name = v5->_name;
    v5->_name = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNiOSABGroupNameMatchingPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_name forKey:{@"_name", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyGroupsInAddressBook:(void *)book error:(__CFError *)error
{
  v7 = *MEMORY[0x1E6996568];
  name = [(CNiOSABGroupNameMatchingPredicate *)self name];
  LODWORD(v7) = (*(v7 + 16))(v7, name);

  if (v7)
  {
    if (!error)
    {
      return 0;
    }

    [CNErrorFactory errorWithCode:400 userInfo:0];
    *error = Mutable = 0;
    return Mutable;
  }

  v10 = ABAddressBookCopyArrayOfAllGroups(book);
  if (v10)
  {
    v11 = v10;
    if (CFArrayGetCount(v10))
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      v12 = objc_opt_class();
      name2 = [(CNiOSABGroupNameMatchingPredicate *)self name];
      v14 = [v12 tokenizeString:name2];

      if (CFArrayGetCount(v11) >= 1)
      {
        v15 = 0;
        v16 = *MEMORY[0x1E698A230];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v11, v15);
          v18 = ABRecordCopyValue(ValueAtIndex, v16);
          if (v18)
          {
            v19 = CFAutorelease(v18);
          }

          else
          {
            v19 = 0;
          }

          if ([(CNiOSABGroupNameMatchingPredicate *)self groupName:v19 matchesSearchTokens:v14])
          {
            CFArrayAppendValue(Mutable, ValueAtIndex);
          }

          ++v15;
        }

        while (v15 < CFArrayGetCount(v11));
      }

      CFRelease(v11);

      return Mutable;
    }

    CFRelease(v11);
  }

  v21 = MEMORY[0x1E695E9C0];

  return CFArrayCreate(0, 0, 0, v21);
}

- (BOOL)groupName:(id)name matchesSearchTokens:(id)tokens
{
  tokensCopy = tokens;
  nameCopy = name;
  v7 = [objc_opt_class() tokenizeString:nameCopy];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__CNiOSABGroupNameMatchingPredicate_groupName_matchesSearchTokens___block_invoke;
  v10[3] = &unk_1E7412440;
  v11 = v7;
  v8 = v7;
  LOBYTE(v7) = [tokensCopy _cn_all:v10];

  return v7;
}

uint64_t __67__CNiOSABGroupNameMatchingPredicate_groupName_matchesSearchTokens___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__CNiOSABGroupNameMatchingPredicate_groupName_matchesSearchTokens___block_invoke_2;
  v8[3] = &unk_1E7412440;
  v9 = v3;
  v5 = v3;
  v6 = [v4 _cn_any:v8];

  return v6;
}

+ (id)tokenizeString:(id)string
{
  stringCopy = string;
  groupNameTokenizingCharacterSet = [self groupNameTokenizingCharacterSet];
  v6 = [stringCopy componentsSeparatedByCharactersInSet:groupNameTokenizingCharacterSet];

  v7 = [v6 _cn_filter:*MEMORY[0x1E6996570]];

  return v7;
}

+ (id)groupNameTokenizingCharacterSet
{
  alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
  invertedSet = [alphanumericCharacterSet invertedSet];
  v4 = [invertedSet mutableCopy];

  [v4 removeCharactersInString:@"@"];

  return v4;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNGroup predicateForGroupWithNameMatching:]"];
  name = [(CNiOSABGroupNameMatchingPredicate *)self name];
  v6 = [v3 appendName:@"name" object:name];

  build = [v3 build];

  return build;
}

@end