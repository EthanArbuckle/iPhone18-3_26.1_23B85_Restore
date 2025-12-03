@interface CNChangeHistoryContactChange
- (BOOL)isEqual:(id)equal;
- (CNChangeHistoryContactChange)initWithCoder:(id)coder;
- (CNChangeHistoryContactChange)initWithIdentifier:(id)identifier changeType:(int64_t)type changeAnchor:(id)anchor changeID:(id)d externalID:(id)iD imagesChanged:(id)changed linkToPersonUUID:(id)uID personLinkUUID:(id)self0;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNChangeHistoryContactChange

- (CNChangeHistoryContactChange)initWithIdentifier:(id)identifier changeType:(int64_t)type changeAnchor:(id)anchor changeID:(id)d externalID:(id)iD imagesChanged:(id)changed linkToPersonUUID:(id)uID personLinkUUID:(id)self0
{
  identifierCopy = identifier;
  anchorCopy = anchor;
  dCopy = d;
  iDCopy = iD;
  changedCopy = changed;
  uIDCopy = uID;
  uUIDCopy = uUID;
  v42.receiver = self;
  v42.super_class = CNChangeHistoryContactChange;
  v23 = [(CNChangeHistoryContactChange *)&v42 init];
  if (v23)
  {
    v24 = (*(*MEMORY[0x1E6996570] + 16))();
    if (type != 10 || v24)
    {
      if (v24)
      {
LABEL_9:
        v26 = [(__CFString *)identifierCopy copy];
        contactIdentifier = v23->_contactIdentifier;
        v23->_contactIdentifier = v26;

        v23->_changeType = type;
        v28 = [anchorCopy copy];
        changeAnchor = v23->_changeAnchor;
        v23->_changeAnchor = v28;

        v30 = [dCopy copy];
        changeID = v23->_changeID;
        v23->_changeID = v30;

        v32 = [iDCopy copy];
        externalID = v23->_externalID;
        v23->_externalID = v32;

        v34 = [changedCopy copy];
        imagesChanged = v23->_imagesChanged;
        v23->_imagesChanged = v34;

        v36 = [uIDCopy copy];
        linkToPersonUUID = v23->_linkToPersonUUID;
        v23->_linkToPersonUUID = v36;

        v38 = [uUIDCopy copy];
        personLinkUUID = v23->_personLinkUUID;
        v23->_personLinkUUID = v38;

        v40 = v23;
        goto LABEL_10;
      }

      v25 = +[CNChangeHistory os_log];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        [CNChangeHistoryContactChange initWithIdentifier:dCopy changeType:type changeAnchor:v25 changeID:? externalID:? imagesChanged:? linkToPersonUUID:? personLinkUUID:?];
      }
    }

    else
    {
      v25 = identifierCopy;
      identifierCopy = &stru_1F094DAB0;
    }

    goto LABEL_9;
  }

LABEL_10:

  return v23;
}

- (CNChangeHistoryContactChange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_contactIdentifier"];
  v6 = [coderCopy decodeIntegerForKey:@"_changeType"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_changeAnchor"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_changeID"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_externalID"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_imagesChanged"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_linkToPersonUUID"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_personLinkUUID"];

  v13 = [(CNChangeHistoryContactChange *)self initWithIdentifier:v5 changeType:v6 changeAnchor:v7 changeID:v8 externalID:v9 imagesChanged:v10 linkToPersonUUID:v11 personLinkUUID:v12];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  contactIdentifier = self->_contactIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:contactIdentifier forKey:@"_contactIdentifier"];
  [coderCopy encodeInteger:self->_changeType forKey:@"_changeType"];
  [coderCopy encodeObject:self->_changeAnchor forKey:@"_changeAnchor"];
  [coderCopy encodeObject:self->_changeID forKey:@"_changeID"];
  [coderCopy encodeObject:self->_externalID forKey:@"_externalID"];
  [coderCopy encodeObject:self->_imagesChanged forKey:@"_imagesChanged"];
  [coderCopy encodeObject:self->_linkToPersonUUID forKey:@"_linkToPersonUUID"];
  [coderCopy encodeObject:self->_personLinkUUID forKey:@"_personLinkUUID"];
}

- (id)description
{
  v14 = MEMORY[0x1E69966B0];
  contactIdentifier = [(CNChangeHistoryContactChange *)self contactIdentifier];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CNChangeHistoryContactChange changeType](self, "changeType")}];
  changeAnchor = [(CNChangeHistoryContactChange *)self changeAnchor];
  changeID = [(CNChangeHistoryContactChange *)self changeID];
  externalID = [(CNChangeHistoryContactChange *)self externalID];
  imagesChanged = [(CNChangeHistoryContactChange *)self imagesChanged];
  linkToPersonUUID = [(CNChangeHistoryContactChange *)self linkToPersonUUID];
  personLinkUUID = [(CNChangeHistoryContactChange *)self personLinkUUID];
  contact = [(CNChangeHistoryContactChange *)self contact];
  v12 = [v14 descriptionForObject:self withNamesAndObjects:{@"contactIdentifier", contactIdentifier, @"changeType", v4, @"changeAnchor", changeAnchor, @"changeID", changeID, @"externalID", externalID, @"imagesChanged", imagesChanged, @"linkToPersonUUID", linkToPersonUUID, @"personLinkUUID", personLinkUUID, @"contact", contact, 0}];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __40__CNChangeHistoryContactChange_isEqual___block_invoke;
  v35[3] = &unk_1E7412228;
  v35[4] = self;
  v36 = equalCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__CNChangeHistoryContactChange_isEqual___block_invoke_2;
  aBlock[3] = &unk_1E7412228;
  aBlock[4] = self;
  v6 = v36;
  v34 = v6;
  v7 = _Block_copy(aBlock);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __40__CNChangeHistoryContactChange_isEqual___block_invoke_3;
  v31[3] = &unk_1E7412228;
  v31[4] = self;
  v8 = v6;
  v32 = v8;
  v9 = _Block_copy(v31);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __40__CNChangeHistoryContactChange_isEqual___block_invoke_4;
  v29[3] = &unk_1E7412228;
  v29[4] = self;
  v10 = v8;
  v30 = v10;
  v11 = _Block_copy(v29);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __40__CNChangeHistoryContactChange_isEqual___block_invoke_5;
  v27[3] = &unk_1E7412228;
  v27[4] = self;
  v12 = v10;
  v28 = v12;
  v13 = _Block_copy(v27);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __40__CNChangeHistoryContactChange_isEqual___block_invoke_6;
  v25[3] = &unk_1E7412228;
  v25[4] = self;
  v14 = v12;
  v26 = v14;
  v15 = _Block_copy(v25);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __40__CNChangeHistoryContactChange_isEqual___block_invoke_7;
  v23[3] = &unk_1E7412228;
  v23[4] = self;
  v16 = v14;
  v24 = v16;
  v17 = _Block_copy(v23);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __40__CNChangeHistoryContactChange_isEqual___block_invoke_8;
  v21[3] = &unk_1E7412228;
  v21[4] = self;
  v22 = v16;
  v18 = v16;
  v19 = _Block_copy(v21);
  LOBYTE(self) = [v5 isObject:v18 memberOfSameClassAndEqualTo:self withBlocks:{v35, v7, v9, v11, v13, v15, v17, v19, 0}];

  return self;
}

uint64_t __40__CNChangeHistoryContactChange_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) contactIdentifier];
  v4 = [*(a1 + 40) contactIdentifier];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __40__CNChangeHistoryContactChange_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) changeType];
  v4 = [*(a1 + 40) changeType];

  return [v2 isInteger:v3 equalToOther:v4];
}

uint64_t __40__CNChangeHistoryContactChange_isEqual___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) changeAnchor];
  v4 = [*(a1 + 40) changeAnchor];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __40__CNChangeHistoryContactChange_isEqual___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) changeID];
  v4 = [*(a1 + 40) changeID];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __40__CNChangeHistoryContactChange_isEqual___block_invoke_5(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) externalID];
  v4 = [*(a1 + 40) externalID];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __40__CNChangeHistoryContactChange_isEqual___block_invoke_6(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) imagesChanged];
  v4 = [*(a1 + 40) imagesChanged];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __40__CNChangeHistoryContactChange_isEqual___block_invoke_7(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) linkToPersonUUID];
  v4 = [*(a1 + 40) linkToPersonUUID];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __40__CNChangeHistoryContactChange_isEqual___block_invoke_8(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) personLinkUUID];
  v4 = [*(a1 + 40) personLinkUUID];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E6996730];
  aBlock[4] = self;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __36__CNChangeHistoryContactChange_hash__block_invoke;
  v20[3] = &unk_1E7412250;
  v20[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __36__CNChangeHistoryContactChange_hash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  v4 = _Block_copy(aBlock);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __36__CNChangeHistoryContactChange_hash__block_invoke_3;
  v18[3] = &unk_1E7412250;
  v18[4] = self;
  v5 = _Block_copy(v18);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __36__CNChangeHistoryContactChange_hash__block_invoke_4;
  v17[3] = &unk_1E7412250;
  v17[4] = self;
  v6 = _Block_copy(v17);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __36__CNChangeHistoryContactChange_hash__block_invoke_5;
  v16[3] = &unk_1E7412250;
  v16[4] = self;
  v7 = _Block_copy(v16);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __36__CNChangeHistoryContactChange_hash__block_invoke_6;
  v15[3] = &unk_1E7412250;
  v15[4] = self;
  v8 = _Block_copy(v15);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __36__CNChangeHistoryContactChange_hash__block_invoke_7;
  v14[3] = &unk_1E7412250;
  v14[4] = self;
  v9 = _Block_copy(v14);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __36__CNChangeHistoryContactChange_hash__block_invoke_8;
  v13[3] = &unk_1E7412250;
  v13[4] = self;
  v10 = _Block_copy(v13);
  v11 = [v3 hashWithBlocks:{v20, v4, v5, v6, v7, v8, v9, v10, 0}];

  return v11;
}

uint64_t __36__CNChangeHistoryContactChange_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) contactIdentifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __36__CNChangeHistoryContactChange_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) changeType];

  return [v1 integerHash:v2];
}

uint64_t __36__CNChangeHistoryContactChange_hash__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) changeAnchor];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __36__CNChangeHistoryContactChange_hash__block_invoke_4(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) changeID];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __36__CNChangeHistoryContactChange_hash__block_invoke_5(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) externalID];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __36__CNChangeHistoryContactChange_hash__block_invoke_6(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) imagesChanged];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __36__CNChangeHistoryContactChange_hash__block_invoke_7(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) linkToPersonUUID];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __36__CNChangeHistoryContactChange_hash__block_invoke_8(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) personLinkUUID];
  v3 = [v1 objectHash:v2];

  return v3;
}

- (void)initWithIdentifier:(os_log_t)log changeType:changeAnchor:changeID:externalID:imagesChanged:linkToPersonUUID:personLinkUUID:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_fault_impl(&dword_1954A0000, log, OS_LOG_TYPE_FAULT, "Attempt to create a change history event without an expected contact identifier! Change id: %{public}@, type: %ld", &v3, 0x16u);
}

@end