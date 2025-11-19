@interface CNPhoneNumberContactPredicate
- (BOOL)cn_hasHighSpecificity;
- (BOOL)isEqual:(id)a3;
- (CNPhoneNumberContactPredicate)initWithCoder:(id)a3;
- (NSString)description;
- (id)contactsFromRecentsLibrary:(id)a3;
- (id)initWithPhoneNumber:(char)a3 returnMultipleResults:(uint64_t)a4;
- (id)initWithPhoneNumber:(void *)a3 prefixHint:(uint64_t)a4 returnMultipleResults:;
- (id)initWithPhoneNumber:(void *)a3 prefixHint:(void *)a4 groupIdentifiers:(char)a5 returnMultipleResults:;
- (id)sgContactMatchesWithSortOrder:(int64_t)a3 mutableObjects:(BOOL)a4 service:(id)a5 error:(id *)a6;
- (uint64_t)countryCode;
- (uint64_t)digits;
- (uint64_t)groupIdentifiers;
- (uint64_t)phoneNumber;
- (uint64_t)prefixHint;
- (uint64_t)returnsMultipleResults;
- (unint64_t)countOfContactsFromRecentsLibrary:(id)a3;
- (unint64_t)hash;
- (void)cn_triageWithLog:(id)a3 serialNumber:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
- (void)initWithDigits:(void *)a3 countryCode:(char)a4 returnMultipleResults:;
@end

@implementation CNPhoneNumberContactPredicate

- (BOOL)cn_hasHighSpecificity
{
  if (self)
  {
    self = self->_phoneNumber;
  }

  v2 = [(CNPhoneNumberContactPredicate *)self digits];
  v3 = [v2 length] > 5;

  return v3;
}

- (uint64_t)returnsMultipleResults
{
  if (a1)
  {
    v1 = *(a1 + 40);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)digits
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

- (uint64_t)phoneNumber
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (uint64_t)countryCode
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

- (uint64_t)prefixHint
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (uint64_t)groupIdentifiers
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactsMatchingPhoneNumber:]"];
  if (self)
  {
    v5 = [v3 appendName:@"phoneNumber" object:self->_phoneNumber];
    v6 = [v3 appendName:@"returnsMultipleResults" BOOLValue:self->_returnsMultipleResults];
    prefixHint = self->_prefixHint;
  }

  else
  {
    v16 = [v3 appendName:@"phoneNumber" object:0];
    v17 = [v3 appendName:@"returnsMultipleResults" BOOLValue:0];
    prefixHint = 0;
  }

  v8 = [v3 appendName:@"prefixHint" object:prefixHint];
  if (self)
  {
    v9 = [v3 appendName:@"countryCode" object:self->_countryCode];
    digits = self->_digits;
  }

  else
  {
    v18 = [v3 appendName:@"countryCode" object:0];
    digits = 0;
  }

  v11 = [v3 appendName:@"digits" object:digits];
  if (self)
  {
    groupIdentifiers = self->_groupIdentifiers;
  }

  else
  {
    groupIdentifiers = 0;
  }

  v13 = [v3 appendName:@"groupIdentifiers" object:groupIdentifiers];
  v14 = [v3 build];

  return v14;
}

- (id)contactsFromRecentsLibrary:(id)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E6996570];
  v6 = [(CNPhoneNumberContactPredicate *)self phoneNumber];
  v7 = [v6 stringValue];
  LOBYTE(v5) = (*(v5 + 16))(v5, v7);

  if (v5)
  {
    v8 = [(CNPhoneNumberContactPredicate *)self returnsMultipleResults];
    v9 = [(CNPhoneNumberContactPredicate *)self phoneNumber];
    v10 = [v9 stringValue];
    v11 = v10;
    if (v8)
    {
      v23[0] = v10;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
      v21 = 0;
      v13 = [v4 contactsWithPhoneNumbers:v12 error:&v21];
      v14 = v21;
    }

    else
    {
      v20 = 0;
      v16 = [v4 singleContactWithPhoneNumber:v10 error:&v20];
      v14 = v20;

      if (v16)
      {
        v22 = v16;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
      }

      else
      {
        v13 = MEMORY[0x1E695E0F0];
      }

      v9 = v16;
    }

    v17 = MEMORY[0x1E6996810];
    v18 = (*(sContactsPairedWithNoMatchInfo + 2))(sContactsPairedWithNoMatchInfo, v13);
    v15 = [v17 resultWithValue:v18 orError:v14];
  }

  else
  {
    v15 = [MEMORY[0x1E6996810] successWithValue:MEMORY[0x1E695E0F0]];
  }

  return v15;
}

- (unint64_t)countOfContactsFromRecentsLibrary:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E6996570];
  v6 = [(CNPhoneNumberContactPredicate *)self phoneNumber];
  v7 = [v6 stringValue];
  LODWORD(v5) = (*(v5 + 16))(v5, v7);

  if (v5)
  {
    v8 = [(CNPhoneNumberContactPredicate *)self phoneNumber];
    v9 = [v8 stringValue];
    v14[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v11 = [v4 countOfContactsWithPhoneNumbers:v10 error:0];

    if ([(CNPhoneNumberContactPredicate *)self returnsMultipleResults])
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 != 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNPhoneNumberContactPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_phoneNumber forKey:{@"_phoneNumber", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_prefixHint forKey:@"_prefixHint"];
  [v4 encodeBool:self->_returnsMultipleResults forKey:@"_returnsMultipleResults"];
  [v4 encodeObject:self->_digits forKey:@"_digits"];
  [v4 encodeObject:self->_countryCode forKey:@"_countryCode"];
  [v4 encodeObject:self->_groupIdentifiers forKey:@"_groupIdentifiers"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __41__CNPhoneNumberContactPredicate_isEqual___block_invoke;
  v31[3] = &unk_1E7412228;
  v31[4] = self;
  v32 = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__CNPhoneNumberContactPredicate_isEqual___block_invoke_2;
  aBlock[3] = &unk_1E7412228;
  aBlock[4] = self;
  v6 = v32;
  v30 = v6;
  v7 = _Block_copy(aBlock);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __41__CNPhoneNumberContactPredicate_isEqual___block_invoke_3;
  v27[3] = &unk_1E7412228;
  v27[4] = self;
  v8 = v6;
  v28 = v8;
  v9 = _Block_copy(v27);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __41__CNPhoneNumberContactPredicate_isEqual___block_invoke_4;
  v25[3] = &unk_1E7412228;
  v25[4] = self;
  v10 = v8;
  v26 = v10;
  v11 = _Block_copy(v25);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __41__CNPhoneNumberContactPredicate_isEqual___block_invoke_5;
  v23[3] = &unk_1E7412228;
  v23[4] = self;
  v12 = v10;
  v24 = v12;
  v13 = _Block_copy(v23);
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __41__CNPhoneNumberContactPredicate_isEqual___block_invoke_6;
  v20 = &unk_1E7412228;
  v21 = self;
  v22 = v12;
  v14 = v12;
  v15 = _Block_copy(&v17);
  LOBYTE(self) = [v5 isObject:v14 memberOfSameClassAndEqualTo:self withBlocks:{v31, v7, v9, v11, v13, v15, 0, v17, v18, v19, v20, v21}];

  return self;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E6996730];
  aBlock[4] = self;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __37__CNPhoneNumberContactPredicate_hash__block_invoke;
  v16[3] = &unk_1E7412250;
  v16[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__CNPhoneNumberContactPredicate_hash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  v4 = _Block_copy(aBlock);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __37__CNPhoneNumberContactPredicate_hash__block_invoke_3;
  v14[3] = &unk_1E7412250;
  v14[4] = self;
  v5 = _Block_copy(v14);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __37__CNPhoneNumberContactPredicate_hash__block_invoke_4;
  v13[3] = &unk_1E7412250;
  v13[4] = self;
  v6 = _Block_copy(v13);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __37__CNPhoneNumberContactPredicate_hash__block_invoke_5;
  v12[3] = &unk_1E7412250;
  v12[4] = self;
  v7 = _Block_copy(v12);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __37__CNPhoneNumberContactPredicate_hash__block_invoke_6;
  v11[3] = &unk_1E7412250;
  v11[4] = self;
  v8 = _Block_copy(v11);
  v9 = [v3 hashWithBlocks:{v16, v4, v5, v6, v7, v8, 0}];

  return v9;
}

- (void)cn_triageWithLog:(id)a3 serialNumber:(unint64_t)a4
{
  v14 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a3, OS_LOG_TYPE_INFO))
  {
    v6 = MEMORY[0x1E69966E8];
    v7 = a3;
    v8 = [v6 currentEnvironment];
    v9 = [v8 defaultCountryCode];
    v10 = 134218242;
    v11 = a4;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&dword_1954A0000, v7, OS_LOG_TYPE_INFO, "%04llx Default country code: %{public}@", &v10, 0x16u);
  }
}

- (id)sgContactMatchesWithSortOrder:(int64_t)a3 mutableObjects:(BOOL)a4 service:(id)a5 error:(id *)a6
{
  v8 = a5;
  v9 = [(CNPhoneNumberContactPredicate *)self phoneNumber];
  v10 = [v9 stringValue];
  v11 = [v8 contactMatchesByPhoneNumber:v10 error:a6];

  return v11;
}

- (id)initWithPhoneNumber:(char)a3 returnMultipleResults:(uint64_t)a4
{
  if (result)
  {
    return OUTLINED_FUNCTION_3_5(result, a2, 0, a4, a3);
  }

  return result;
}

- (id)initWithPhoneNumber:(void *)a3 prefixHint:(uint64_t)a4 returnMultipleResults:
{
  if (result)
  {
    return OUTLINED_FUNCTION_3_5(result, a2, a3, a4, a4);
  }

  return result;
}

- (void)initWithDigits:(void *)a3 countryCode:(char)a4 returnMultipleResults:
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v9 = [CNPhoneNumber phoneNumberWithDigits:v7 countryCode:v8];
    v10 = [(CNPhoneNumberContactPredicate *)a1 initWithPhoneNumber:v9 prefixHint:0 groupIdentifiers:0 returnMultipleResults:a4];

    if (v10)
    {
      v11 = [v7 _cn_stringBySanitizingPhoneNumber];
      v12 = [v11 copy];
      v13 = v10[8];
      v10[8] = v12;

      v14 = [v8 copy];
      v15 = v10[9];
      v10[9] = v14;

      v10 = v10;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)initWithPhoneNumber:(void *)a3 prefixHint:(void *)a4 groupIdentifiers:(char)a5 returnMultipleResults:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (a1)
  {
    v19.receiver = a1;
    v19.super_class = CNPhoneNumberContactPredicate;
    a1 = objc_msgSendSuper2(&v19, sel_initWithPredicate_, 0);
    if (a1)
    {
      v12 = [v9 copy];
      v13 = *(a1 + 6);
      *(a1 + 6) = v12;

      v14 = [v10 copy];
      v15 = *(a1 + 7);
      *(a1 + 7) = v14;

      *(a1 + 40) = a5;
      v16 = [v11 copy];
      v17 = *(a1 + 10);
      *(a1 + 10) = v16;
    }
  }

  return a1;
}

- (CNPhoneNumberContactPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_phoneNumber"];
  v6 = [v4 decodeBoolForKey:@"_returnsMultipleResults"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_prefixHint"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"_groupIdentifiers"];

  v12 = [(CNPhoneNumberContactPredicate *)self initWithPhoneNumber:v5 prefixHint:v7 groupIdentifiers:v11 returnMultipleResults:v6];
  if (v12)
  {
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_digits"];
    v14 = [v13 copy];
    digits = v12->_digits;
    v12->_digits = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_countryCode"];
    v17 = [v16 copy];
    countryCode = v12->_countryCode;
    v12->_countryCode = v17;

    v19 = v12;
  }

  return v12;
}

uint64_t __41__CNPhoneNumberContactPredicate_isEqual___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[6];
  }

  v3 = OUTLINED_FUNCTION_2_6(v2);

  return v3;
}

uint64_t __41__CNPhoneNumberContactPredicate_isEqual___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 40);
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    LOBYTE(v2) = *(v2 + 40);
  }

  return [MEMORY[0x1E69966F0] isBool:v1 & 1 equalToOther:v2 & 1];
}

uint64_t __41__CNPhoneNumberContactPredicate_isEqual___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[7];
  }

  v3 = OUTLINED_FUNCTION_2_6(v2);

  return v3;
}

uint64_t __41__CNPhoneNumberContactPredicate_isEqual___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[9];
  }

  v3 = OUTLINED_FUNCTION_2_6(v2);

  return v3;
}

uint64_t __41__CNPhoneNumberContactPredicate_isEqual___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[8];
  }

  v3 = OUTLINED_FUNCTION_2_6(v2);

  return v3;
}

uint64_t __41__CNPhoneNumberContactPredicate_isEqual___block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[10];
  }

  v3 = OUTLINED_FUNCTION_2_6(v2);

  return v3;
}

uint64_t __37__CNPhoneNumberContactPredicate_hash__block_invoke(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    return OUTLINED_FUNCTION_0_11(MEMORY[0x1E6996730], v2);
  }

  else
  {
    return OUTLINED_FUNCTION_1_5(MEMORY[0x1E6996730], a2);
  }
}

uint64_t __37__CNPhoneNumberContactPredicate_hash__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 40);
  }

  return [MEMORY[0x1E6996730] BOOLHash:v1 & 1];
}

uint64_t __37__CNPhoneNumberContactPredicate_hash__block_invoke_3(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    return OUTLINED_FUNCTION_0_11(MEMORY[0x1E6996730], v2);
  }

  else
  {
    return OUTLINED_FUNCTION_1_5(MEMORY[0x1E6996730], a2);
  }
}

uint64_t __37__CNPhoneNumberContactPredicate_hash__block_invoke_4(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    return OUTLINED_FUNCTION_0_11(MEMORY[0x1E6996730], v2);
  }

  else
  {
    return OUTLINED_FUNCTION_1_5(MEMORY[0x1E6996730], a2);
  }
}

uint64_t __37__CNPhoneNumberContactPredicate_hash__block_invoke_5(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    return OUTLINED_FUNCTION_0_11(MEMORY[0x1E6996730], v2);
  }

  else
  {
    return OUTLINED_FUNCTION_1_5(MEMORY[0x1E6996730], a2);
  }
}

uint64_t __37__CNPhoneNumberContactPredicate_hash__block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 80);
  }

  else
  {
    v2 = 0;
  }

  return [MEMORY[0x1E6996730] arrayHash:v2];
}

@end