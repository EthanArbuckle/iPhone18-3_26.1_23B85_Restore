@interface CNPRUISIncomingCallPosterContextNameVariations
- (CNPRUISIncomingCallPosterContextNameVariations)initWithShortName:(id)name fullName:(id)fullName;
@end

@implementation CNPRUISIncomingCallPosterContextNameVariations

- (CNPRUISIncomingCallPosterContextNameVariations)initWithShortName:(id)name fullName:(id)fullName
{
  nameCopy = name;
  fullNameCopy = fullName;
  v16.receiver = self;
  v16.super_class = CNPRUISIncomingCallPosterContextNameVariations;
  v8 = [(CNPRUISIncomingCallPosterContextNameVariations *)&v16 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
    v10 = v9;
    if (nameCopy)
    {
      [v9 setObject:nameCopy forKeyedSubscript:&unk_1F0D4B850];
    }

    if (fullNameCopy)
    {
      [v10 setObject:fullNameCopy forKeyedSubscript:&unk_1F0D4B868];
    }

    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v11 = getPRUISIncomingCallPosterContextNameVariationsClass_softClass;
    v21 = getPRUISIncomingCallPosterContextNameVariationsClass_softClass;
    if (!getPRUISIncomingCallPosterContextNameVariationsClass_softClass)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __getPRUISIncomingCallPosterContextNameVariationsClass_block_invoke;
      v17[3] = &unk_1E74E7518;
      v17[4] = &v18;
      __getPRUISIncomingCallPosterContextNameVariationsClass_block_invoke(v17);
      v11 = v19[3];
    }

    v12 = v11;
    _Block_object_dispose(&v18, 8);
    v13 = [[v11 alloc] initWithNamesDictionary:v10];
    wrappedNameVariations = v8->_wrappedNameVariations;
    v8->_wrappedNameVariations = v13;
  }

  return v8;
}

@end