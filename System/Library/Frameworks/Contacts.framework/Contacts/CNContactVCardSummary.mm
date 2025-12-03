@interface CNContactVCardSummary
+ (BOOL)isAvatarContacts:(id)contacts equalTo:(id)to;
+ (CNContactFormatter)defaultNameFormatter;
+ (id)localizedStringWithName:(id)name andOtherName:(id)otherName;
+ (id)localizedStringWithName:(id)name andThisManyOthers:(unint64_t)others;
+ (id)makeFormatter;
+ (id)nameForContact:(id)contact;
+ (id)namesForContact:(id)contact;
+ (id)readingOptionsWithContactLimit:(unint64_t)limit;
- (BOOL)isEqual:(id)equal;
- (CNContactVCardSummary)initWithCoder:(id)coder;
- (CNContactVCardSummary)initWithData:(id)data error:(id *)error;
- (CNContactVCardSummary)initWithTitle:(id)title subtitle:(id)subtitle contactCount:(unint64_t)count avatarContacts:(id)contacts;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNContactVCardSummary

- (CNContactVCardSummary)initWithData:(id)data error:(id *)error
{
  v35[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if ((*(*MEMORY[0x1E6996540] + 16))())
  {
    goto LABEL_2;
  }

  v8 = [MEMORY[0x1E69E4B20] countOfCardsInData:dataCopy];
  if (v8 == 2)
  {
    v11 = [objc_opt_class() readingOptionsWithContactLimit:2];
    v32 = 0;
    v12 = [CNContactVCardSerialization contactsWithData:dataCopy options:v11 error:&v32];
    v13 = v32;
    if (!v12)
    {
      goto LABEL_17;
    }

    if ([v12 count] <= 1)
    {
      goto LABEL_19;
    }

    v22 = objc_opt_class();
    v23 = [v12 objectAtIndexedSubscript:0];
    v16 = [v22 nameForContact:v23];

    v24 = objc_opt_class();
    v25 = [v12 objectAtIndexedSubscript:1];
    first = [v24 nameForContact:v25];

    second = [objc_opt_class() localizedStringWithName:v16 andOtherName:first];
    v21 = [(CNContactVCardSummary *)self initWithTitle:second subtitle:&stru_1F094DAB0 contactCount:2 avatarContacts:v12];
LABEL_15:
    self = v21;

    goto LABEL_16;
  }

  v9 = v8;
  v10 = v8 - 1;
  if (v8 == 1)
  {
    v11 = [objc_opt_class() readingOptionsWithContactLimit:1];
    v33 = 0;
    v12 = [CNContactVCardSerialization contactsWithData:dataCopy options:v11 error:&v33];
    v13 = v33;
    if (!v12)
    {
      goto LABEL_17;
    }

    if (![v12 count])
    {
      goto LABEL_19;
    }

    v18 = objc_opt_class();
    v19 = [v12 objectAtIndexedSubscript:0];
    v16 = [v18 namesForContact:v19];

    first = [v16 first];
    second = [v16 second];
    v21 = [(CNContactVCardSummary *)self initWithTitle:first subtitle:second contactCount:1 avatarContacts:v12];
    goto LABEL_15;
  }

  if (v8)
  {
    v11 = [objc_opt_class() readingOptionsWithContactLimit:2];
    v31 = 0;
    v12 = [CNContactVCardSerialization contactsWithData:dataCopy options:v11 error:&v31];
    v13 = v31;
    if (v12)
    {
      if ([v12 count])
      {
        v14 = objc_opt_class();
        v15 = [v12 objectAtIndexedSubscript:0];
        v16 = [v14 nameForContact:v15];

        first = [objc_opt_class() localizedStringWithName:v16 andThisManyOthers:v10];
        self = [(CNContactVCardSummary *)self initWithTitle:first subtitle:&stru_1F094DAB0 contactCount:v9 avatarContacts:v12];
LABEL_16:

        selfCopy2 = self;
LABEL_24:

        goto LABEL_25;
      }

LABEL_19:
      v16 = [CNErrorFactory errorWithCode:701 userInfo:0];
      if (!error)
      {
LABEL_20:
        selfCopy2 = 0;
        goto LABEL_24;
      }

LABEL_23:
      v29 = v16;
      selfCopy2 = 0;
      *error = v16;
      goto LABEL_24;
    }

LABEL_17:
    v26 = v13;
    v27 = v26;
    if (v26)
    {
      v34 = *MEMORY[0x1E696AA08];
      v35[0] = v26;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    }

    else
    {
      v28 = 0;
    }

    v16 = [CNErrorFactory errorWithCode:701 userInfo:v28];

    if (!error)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

LABEL_2:
  self = [(CNContactVCardSummary *)self initWithTitle:&stru_1F094DAB0 subtitle:&stru_1F094DAB0 contactCount:0 avatarContacts:MEMORY[0x1E695E0F0]];
  selfCopy2 = self;
LABEL_25:

  return selfCopy2;
}

+ (id)readingOptionsWithContactLimit:(unint64_t)limit
{
  v10[7] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E69E4B30]);
  [v4 setContactLimit:limit];
  v5 = *MEMORY[0x1E69E4AC0];
  v10[0] = *MEMORY[0x1E69E4AB8];
  v10[1] = v5;
  v6 = *MEMORY[0x1E69E4AE0];
  v10[2] = *MEMORY[0x1E69E4AC8];
  v10[3] = v6;
  v7 = *MEMORY[0x1E69E4AD8];
  v10[4] = *MEMORY[0x1E69E4AB0];
  v10[5] = v7;
  v10[6] = *MEMORY[0x1E69E4AD0];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:7];
  [v4 setPropertiesToFetch:v8];

  [v4 setMaximumValueLength:100];

  return v4;
}

+ (id)namesForContact:(id)contact
{
  contactCopy = contact;
  v5 = [self nameForContact:contactCopy];
  v6 = [[_CNContactVCardNameSummzarizationScope alloc] initWithContact:contactCopy fullName:v5];

  v8 = sOrganizationWithPerson_block_invoke(v7, v6);
  if (!v8)
  {
    v8 = sPersonWithOrganization_block_invoke_2(0, v6);
  }

  return v8;
}

+ (id)nameForContact:(id)contact
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__CNContactVCardSummary_nameForContact___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  v3 = nameForContact__cn_once_token_0;
  contactCopy = contact;
  if (v3 != -1)
  {
    dispatch_once(&nameForContact__cn_once_token_0, block);
  }

  v5 = [nameForContact__cn_once_object_0 stringFromContact:contactCopy];

  return v5;
}

uint64_t __40__CNContactVCardSummary_nameForContact___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) makeFormatter];
  v2 = nameForContact__cn_once_object_0;
  nameForContact__cn_once_object_0 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (CNContactFormatter)defaultNameFormatter
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CNContactVCardSummary_defaultNameFormatter__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultNameFormatter_cn_once_token_1 != -1)
  {
    dispatch_once(&defaultNameFormatter_cn_once_token_1, block);
  }

  v2 = defaultNameFormatter_cn_once_object_1;

  return v2;
}

uint64_t __45__CNContactVCardSummary_defaultNameFormatter__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) makeFormatter];
  v2 = defaultNameFormatter_cn_once_object_1;
  defaultNameFormatter_cn_once_object_1 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)makeFormatter
{
  v2 = objc_alloc_init(CNContactFormatter);
  [(CNContactFormatter *)v2 setFallbackStyle:-1];

  return v2;
}

+ (id)localizedStringWithName:(id)name andOtherName:(id)otherName
{
  v5 = MEMORY[0x1E696AAE8];
  otherNameCopy = otherName;
  nameCopy = name;
  v8 = [v5 bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"NAME_AND_OTHER_NAME" value:&stru_1F094DAB0 table:@"ContactsVCards"];

  otherNameCopy = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v9, nameCopy, otherNameCopy];

  return otherNameCopy;
}

+ (id)localizedStringWithName:(id)name andThisManyOthers:(unint64_t)others
{
  v5 = MEMORY[0x1E696AAE8];
  nameCopy = name;
  v7 = [v5 bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"NAME_AND_N_OTHERS" value:&stru_1F094DAB0 table:@"ContactsVCards"];

  others = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v8, nameCopy, others];

  return others;
}

- (CNContactVCardSummary)initWithTitle:(id)title subtitle:(id)subtitle contactCount:(unint64_t)count avatarContacts:(id)contacts
{
  titleCopy = title;
  subtitleCopy = subtitle;
  contactsCopy = contacts;
  v22.receiver = self;
  v22.super_class = CNContactVCardSummary;
  v13 = [(CNContactVCardSummary *)&v22 init];
  if (v13)
  {
    v14 = [titleCopy copy];
    title = v13->_title;
    v13->_title = v14;

    v16 = [subtitleCopy copy];
    subtitle = v13->_subtitle;
    v13->_subtitle = v16;

    v13->_contactCount = count;
    v18 = [contactsCopy copy];
    avatarContacts = v13->_avatarContacts;
    v13->_avatarContacts = v18;

    v20 = v13;
  }

  return v13;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  title = [(CNContactVCardSummary *)self title];
  v5 = [v3 appendName:@"descriptive label" object:title];

  subtitle = [(CNContactVCardSummary *)self subtitle];
  v7 = [v3 appendName:@"secondary descriptive label" object:subtitle];

  v8 = [v3 appendName:@"contact count" intValue:{-[CNContactVCardSummary contactCount](self, "contactCount")}];
  avatarContacts = [(CNContactVCardSummary *)self avatarContacts];
  v10 = [v3 appendName:@"avatar contacts" object:avatarContacts];

  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __33__CNContactVCardSummary_isEqual___block_invoke;
  v23[3] = &unk_1E7412228;
  v23[4] = self;
  v24 = equalCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __33__CNContactVCardSummary_isEqual___block_invoke_2;
  aBlock[3] = &unk_1E7412228;
  aBlock[4] = self;
  v6 = v24;
  v22 = v6;
  v7 = _Block_copy(aBlock);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __33__CNContactVCardSummary_isEqual___block_invoke_3;
  v19[3] = &unk_1E7412228;
  v19[4] = self;
  v8 = v6;
  v20 = v8;
  v9 = _Block_copy(v19);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __33__CNContactVCardSummary_isEqual___block_invoke_4;
  v16 = &unk_1E7412228;
  selfCopy = self;
  v18 = v8;
  v10 = v8;
  v11 = _Block_copy(&v13);
  LOBYTE(self) = [v5 isObject:self memberOfSameClassAndEqualTo:v10 withBlocks:{v23, v7, v9, v11, 0, v13, v14, v15, v16, selfCopy}];

  return self;
}

uint64_t __33__CNContactVCardSummary_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) title];
  v4 = [*(a1 + 40) title];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __33__CNContactVCardSummary_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) subtitle];
  v4 = [*(a1 + 40) subtitle];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __33__CNContactVCardSummary_isEqual___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) contactCount];
  v4 = [*(a1 + 40) contactCount];

  return [v2 isInteger:v3 equalToOther:v4];
}

uint64_t __33__CNContactVCardSummary_isEqual___block_invoke_4(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = [*(a1 + 32) avatarContacts];
  v4 = [*(a1 + 40) avatarContacts];
  v5 = [v2 isAvatarContacts:v3 equalTo:v4];

  return v5;
}

+ (BOOL)isAvatarContacts:(id)contacts equalTo:(id)to
{
  contactsCopy = contacts;
  toCopy = to;
  v7 = [contactsCopy count];
  if (v7 == [toCopy count])
  {
    v8 = [contactsCopy _cn_zip:toCopy];
    v9 = [v8 _cn_all:&__block_literal_global_44];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __50__CNContactVCardSummary_isAvatarContacts_equalTo___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 first];
  v4 = [v2 second];

  v5 = [v3 isEqualIgnoringIdentifiers:v4];
  return v5;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E6996730];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __29__CNContactVCardSummary_hash__block_invoke;
  v12[3] = &unk_1E7412250;
  v12[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __29__CNContactVCardSummary_hash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __29__CNContactVCardSummary_hash__block_invoke_3;
  v10[3] = &unk_1E7412250;
  v10[4] = self;
  v5 = _Block_copy(v10);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __29__CNContactVCardSummary_hash__block_invoke_4;
  v9[3] = &unk_1E7412250;
  v9[4] = self;
  v6 = _Block_copy(v9);
  v7 = [v3 hashWithBlocks:{v12, v4, v5, v6, 0}];

  return v7;
}

uint64_t __29__CNContactVCardSummary_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) title];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __29__CNContactVCardSummary_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) subtitle];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __29__CNContactVCardSummary_hash__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) contactCount];

  return [v1 unsignedIntegerHash:v2];
}

uint64_t __29__CNContactVCardSummary_hash__block_invoke_4(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) avatarContacts];
  v3 = [v1 arrayHash:v2];

  return v3;
}

- (CNContactVCardSummary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CNContactVCardSummary;
  v5 = [(CNContactVCardSummary *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_title"];
    v7 = [v6 copy];
    title = v5->_title;
    v5->_title = v7;

    v5->_contactCount = [coderCopy decodeIntegerForKey:@"_contactCount"];
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"_avatarContacts"];
    v13 = [v12 copy];
    avatarContacts = v5->_avatarContacts;
    v5->_avatarContacts = v13;

    v15 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"_title"];
  [coderCopy encodeInteger:self->_contactCount forKey:@"_contactCount"];
  [coderCopy encodeObject:self->_avatarContacts forKey:@"_avatarContacts"];
}

@end