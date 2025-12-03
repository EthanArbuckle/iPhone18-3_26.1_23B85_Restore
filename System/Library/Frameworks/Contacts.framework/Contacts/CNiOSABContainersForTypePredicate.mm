@interface CNiOSABContainersForTypePredicate
- (CNiOSABContainersForTypePredicate)initWithCoder:(id)coder;
- (CNiOSABContainersForTypePredicate)initWithType:(int64_t)type includingDisabledContainers:(BOOL)containers;
- (NSString)description;
- (__CFArray)cn_copyContainersInAddressBook:(void *)book error:(__CFError *)error;
- (id)containersFromRecentsLibrary:(id)library;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABContainersForTypePredicate

- (id)containersFromRecentsLibrary:(id)library
{
  libraryCopy = library;
  if ([(CNiOSABContainersForTypePredicate *)self type]== 1004)
  {
    domains = [libraryCopy domains];
    v6 = [libraryCopy containersForIdentifiers:domains];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (CNiOSABContainersForTypePredicate)initWithType:(int64_t)type includingDisabledContainers:(BOOL)containers
{
  v7 = MEMORY[0x1E696AE18];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v9 = [v7 predicateWithFormat:@"type == %@", v8];

  v14.receiver = self;
  v14.super_class = CNiOSABContainersForTypePredicate;
  v10 = [(CNPredicate *)&v14 initWithPredicate:v9];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    v10->_includeDisabledContainers = containers;
    v12 = v10;
  }

  return v11;
}

- (CNiOSABContainersForTypePredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CNiOSABContainersForTypePredicate;
  v5 = [(CNPredicate *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNiOSABContainersForTypePredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_type forKey:{@"type", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyContainersInAddressBook:(void *)book error:(__CFError *)error
{
  v6 = +[CNiOSABConstantsMapping CNToABSourceTypeConstantsMapping];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CNiOSABContainersForTypePredicate type](self, "type")}];
  v8 = [v6 mappedConstant:v7];

  null = [MEMORY[0x1E695DFB0] null];

  if (v8 == null)
  {
    if (error)
    {
      [CNErrorFactory errorWithCode:400 userInfo:0];
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    [(CNiOSABContainersForTypePredicate *)self includeDisabledContainers];
    v10 = ABAddressBookCopyArrayOfAllSourcesIncludingDisabledSources();
    if (v10)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __74__CNiOSABContainersForTypePredicate_cn_copyContainersInAddressBook_error___block_invoke;
      v13[3] = &unk_1E7413740;
      v14 = v8;
      v11 = [v10 _cn_filter:v13];
    }

    else
    {
      v11 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
    }
  }

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  type = [(CNiOSABContainersForTypePredicate *)self type];
  v5 = [CNContainer descriptionForContainerType:[(CNiOSABContainersForTypePredicate *)self type]];
  v6 = [v3 stringWithFormat:@"%ld(%@)", type, v5];

  v7 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v8 = [v7 appendName:@"kind" object:@"-[CNContainer predicateForContainersWithType:]"];
  v9 = [v7 appendObject:v6 withName:@"type"];
  build = [v7 build];

  return build;
}

@end