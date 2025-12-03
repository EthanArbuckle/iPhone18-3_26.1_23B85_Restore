@interface CNiOSABFaultFulfillmentPredicate
+ (id)os_log;
- (BOOL)isEqual:(id)equal;
- (CNiOSABFaultFulfillmentPredicate)initWithCoder:(id)coder;
- (CNiOSABFaultFulfillmentPredicate)initWithLegacyIdentifier:(int)identifier identifier:(id)a4;
- (NSString)description;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error;
- (id)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment nserror:(id *)nserror;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABFaultFulfillmentPredicate

+ (id)os_log
{
  if (os_log_cn_once_token_0 != -1)
  {
    +[CNiOSABFaultFulfillmentPredicate os_log];
  }

  v3 = os_log_cn_once_object_0;

  return v3;
}

uint64_t __42__CNiOSABFaultFulfillmentPredicate_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "predicates");
  v1 = os_log_cn_once_object_0;
  os_log_cn_once_object_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNiOSABFaultFulfillmentPredicate)initWithLegacyIdentifier:(int)identifier identifier:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = CNiOSABFaultFulfillmentPredicate;
  v7 = [(CNPredicate *)&v10 initWithPredicate:0];
  v7->_legacyIdentifier = identifier;
  identifier = v7->_identifier;
  v7->_identifier = v6;

  return v7;
}

- (CNiOSABFaultFulfillmentPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CNiOSABFaultFulfillmentPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_legacyIdentifier = [coderCopy decodeInt32ForKey:@"_legacyIdentifier"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNiOSABFaultFulfillmentPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt32:self->_legacyIdentifier forKey:{@"_legacyIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_identifier forKey:@"_identifier"];
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error
{
  v13 = 0;
  v8 = [(CNiOSABFaultFulfillmentPredicate *)self cn_copyPeopleInAddressBook:book fetchRequest:request matchInfos:infos environment:environment nserror:&v13];
  v9 = v13;
  v10 = v9;
  if (v8)
  {
    v11 = v8;
  }

  else if (error)
  {
    *error = v9;
  }

  return v8;
}

- (id)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment nserror:(id *)nserror
{
  v33[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if ([(CNiOSABFaultFulfillmentPredicate *)self legacyIdentifier]<= 0)
  {
    v32 = @"CNKeyPaths";
    v31 = @"iOSLegacyIdentifier";
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    v33[0] = v19;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];

    CNSetError(nserror, 400, v12);
    PersonWithRecordID = 0;
    goto LABEL_9;
  }

  v11 = +[CN contactPropertiesByKey];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __107__CNiOSABFaultFulfillmentPredicate_cn_copyPeopleInAddressBook_fetchRequest_matchInfos_environment_nserror___block_invoke;
  aBlock[3] = &unk_1E7412278;
  v12 = v11;
  v29 = v12;
  v13 = _Block_copy(aBlock);
  keysToFetch = [requestCopy keysToFetch];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __107__CNiOSABFaultFulfillmentPredicate_cn_copyPeopleInAddressBook_fetchRequest_matchInfos_environment_nserror___block_invoke_2;
  v25 = &unk_1E74122F0;
  v15 = v13;
  selfCopy = self;
  v27 = v15;
  v16 = [keysToFetch _cn_any:&v22];

  v17 = [(CNiOSABFaultFulfillmentPredicate *)self legacyIdentifier:v22];
  if (v16)
  {
    PersonWithRecordID = ABAddressBookGetPersonWithRecordID(book, v17);
    if (!PersonWithRecordID)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  identifier = [(CNiOSABFaultFulfillmentPredicate *)self identifier];
  PersonWithRecordID = ABAddressBookPrimePersonContextForIdentifier();

  if (PersonWithRecordID)
  {
LABEL_7:
    v30 = PersonWithRecordID;
    PersonWithRecordID = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  }

LABEL_8:

LABEL_9:

  return PersonWithRecordID;
}

BOOL __107__CNiOSABFaultFulfillmentPredicate_cn_copyPeopleInAddressBook_fetchRequest_matchInfos_environment_nserror___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 supportsABLazyLoading])
  {
    v4 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) objectForKeyedSubscript:@"iOSLegacyIdentifier"];
    v4 = v5 != v3;
  }

  return v4;
}

uint64_t __107__CNiOSABFaultFulfillmentPredicate_cn_copyPeopleInAddressBook_fetchRequest_matchInfos_environment_nserror___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v4 = [v3 _cn_requiredKeys];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __107__CNiOSABFaultFulfillmentPredicate_cn_copyPeopleInAddressBook_fetchRequest_matchInfos_environment_nserror___block_invoke_3;
  v12[3] = &unk_1E74122A0;
  v13 = *(a1 + 40);
  v14 = &v15;
  [v4 enumeratePropertiesUsingBlock:v12];

  v5 = *(v16 + 24);
  if ((v5 & 1) == 0)
  {
    v6 = [v3 _cn_optionalKeys];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __107__CNiOSABFaultFulfillmentPredicate_cn_copyPeopleInAddressBook_fetchRequest_matchInfos_environment_nserror___block_invoke_4;
    v9[3] = &unk_1E74122C8;
    v7 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v7;
    v11 = &v15;
    [v6 enumeratePropertiesUsingBlock:v9];

    v5 = *(v16 + 24);
  }

  _Block_object_dispose(&v15, 8);
  return v5 & 1;
}

uint64_t __107__CNiOSABFaultFulfillmentPredicate_cn_copyPeopleInAddressBook_fetchRequest_matchInfos_environment_nserror___block_invoke_3(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void __107__CNiOSABFaultFulfillmentPredicate_cn_copyPeopleInAddressBook_fetchRequest_matchInfos_environment_nserror___block_invoke_4(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1954A0000, v6, OS_LOG_TYPE_INFO, "Using the faultfulfillment predicate with optional keys, this may be slow.", v8, 2u);
  }

  v7 = (*(*(a1 + 40) + 16))();
  if (v7)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForFaultFulfillmentForLegacyIdentifier:identifier:]"];
  v5 = [v3 appendName:@"legacyIdentifier" intValue:{-[CNiOSABFaultFulfillmentPredicate legacyIdentifier](self, "legacyIdentifier")}];
  identifier = [(CNiOSABFaultFulfillmentPredicate *)self identifier];
  v7 = [v3 appendName:@"identifier" object:identifier];

  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __44__CNiOSABFaultFulfillmentPredicate_isEqual___block_invoke;
  v15[3] = &unk_1E7412228;
  v15[4] = self;
  v16 = equalCopy;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __44__CNiOSABFaultFulfillmentPredicate_isEqual___block_invoke_2;
  v12 = &unk_1E7412228;
  selfCopy = self;
  v14 = v16;
  v6 = v16;
  v7 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:v6 memberOfSameClassAndEqualTo:self withBlocks:{v15, v7, 0, aBlock, v10, v11, v12, selfCopy}];

  return self;
}

uint64_t __44__CNiOSABFaultFulfillmentPredicate_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) legacyIdentifier];
  v4 = [*(a1 + 40) legacyIdentifier];

  return [v2 isInteger:v3 equalToOther:v4];
}

uint64_t __44__CNiOSABFaultFulfillmentPredicate_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) identifier];
  v4 = [*(a1 + 40) identifier];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

- (unint64_t)hash
{
  v2 = MEMORY[0x1E6996730];
  aBlock[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__CNiOSABFaultFulfillmentPredicate_hash__block_invoke;
  v7[3] = &unk_1E7412250;
  v7[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__CNiOSABFaultFulfillmentPredicate_hash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  v3 = _Block_copy(aBlock);
  v4 = [v2 hashWithBlocks:{v7, v3, 0}];

  return v4;
}

uint64_t __40__CNiOSABFaultFulfillmentPredicate_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) legacyIdentifier];

  return [v1 integerHash:v2];
}

uint64_t __40__CNiOSABFaultFulfillmentPredicate_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) identifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

@end