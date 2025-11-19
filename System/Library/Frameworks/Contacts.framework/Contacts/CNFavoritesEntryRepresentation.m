@interface CNFavoritesEntryRepresentation
- (CNFavoritesEntryRepresentation)initWithCoder:(id)a3;
- (CNFavoritesEntryRepresentation)initWithDictionaryRepresentation:(id)a3;
- (CNFavoritesEntryRepresentation)initWithIdentifier:(id)a3 name:(id)a4 value:(id)a5 label:(id)a6 propertyKey:(id)a7 actionType:(id)a8 bundleIdentifier:(id)a9 actionChannel:(id)a10 contactIdentifier:(id)a11 labeledValueIdentifier:(id)a12;
- (CNFavoritesEntryRepresentation)initWithRemoteRepresentation:(id)a3;
- (id)debugDescription;
- (id)dictionaryRepresentationWithRedaction:(BOOL)a3;
- (id)mapBundleIdentifier:(id)a3;
- (id)remoteRepresentation;
- (unint64_t)equivalencyHash;
- (unint64_t)hash;
- (void)copyContactMatchingInfoFrom:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)rematchWithContactStore:(id)a3;
@end

@implementation CNFavoritesEntryRepresentation

- (CNFavoritesEntryRepresentation)initWithIdentifier:(id)a3 name:(id)a4 value:(id)a5 label:(id)a6 propertyKey:(id)a7 actionType:(id)a8 bundleIdentifier:(id)a9 actionChannel:(id)a10 contactIdentifier:(id)a11 labeledValueIdentifier:(id)a12
{
  v17 = a3;
  v50 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v51.receiver = self;
  v51.super_class = CNFavoritesEntryRepresentation;
  v26 = [(CNFavoritesEntryRepresentation *)&v51 init];
  if (v26)
  {
    v27 = [v17 copy];
    entryIdentifier = v26->_entryIdentifier;
    v26->_entryIdentifier = v27;

    v29 = [v50 copy];
    name = v26->_name;
    v26->_name = v29;

    v31 = [v18 copy];
    value = v26->_value;
    v26->_value = v31;

    v33 = [v19 copy];
    label = v26->_label;
    v26->_label = v33;

    v35 = [v20 copy];
    propertyKey = v26->_propertyKey;
    v26->_propertyKey = v35;

    v37 = [v21 copy];
    actionType = v26->_actionType;
    v26->_actionType = v37;

    v39 = [v22 copy];
    bundleIdentifier = v26->_bundleIdentifier;
    v26->_bundleIdentifier = v39;

    v41 = [v23 copy];
    actionChannel = v26->_actionChannel;
    v26->_actionChannel = v41;

    v43 = [v24 copy];
    contactIdentifier = v26->_contactIdentifier;
    v26->_contactIdentifier = v43;

    v45 = [v25 copy];
    labeledValueIdentifier = v26->_labeledValueIdentifier;
    v26->_labeledValueIdentifier = v45;

    v47 = v26;
  }

  return v26;
}

- (CNFavoritesEntryRepresentation)initWithRemoteRepresentation:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = CNFavoritesEntryRepresentation;
  v5 = [(CNFavoritesEntryRepresentation *)&v26 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"EntryIdentifier"];
    entryIdentifier = v5->_entryIdentifier;
    v5->_entryIdentifier = v6;

    v8 = [v4 objectForKeyedSubscript:@"Name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [v4 objectForKeyedSubscript:@"Value"];
    value = v5->_value;
    v5->_value = v10;

    v12 = [v4 objectForKeyedSubscript:@"Label"];
    label = v5->_label;
    v5->_label = v12;

    v14 = [v4 objectForKeyedSubscript:@"ContactProperty"];
    propertyKey = v5->_propertyKey;
    v5->_propertyKey = v14;

    v16 = [v4 objectForKeyedSubscript:@"ActionType"];
    actionType = v5->_actionType;
    v5->_actionType = v16;

    v18 = [v4 objectForKeyedSubscript:@"BundleIdentifier"];
    v19 = [(CNFavoritesEntryRepresentation *)v5 mapBundleIdentifier:v18];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v19;

    actionChannel = v5->_actionChannel;
    v5->_actionChannel = 0;

    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = 0;

    labeledValueIdentifier = v5->_labeledValueIdentifier;
    v5->_labeledValueIdentifier = 0;

    v24 = v5;
  }

  return v5;
}

- (void)copyContactMatchingInfoFrom:(id)a3
{
  v4 = a3;
  v5 = [v4 contactIdentifier];
  contactIdentifier = self->_contactIdentifier;
  self->_contactIdentifier = v5;

  v7 = [v4 labeledValueIdentifier];

  labeledValueIdentifier = self->_labeledValueIdentifier;
  self->_labeledValueIdentifier = v7;
}

- (void)rematchWithContactStore:(id)a3
{
  v4 = a3;
  v16 = [[CNFavoritesEntry alloc] initWithEntryRepresentation:self store:v4];

  v5 = [(CNFavoritesEntry *)v16 rematch];
  v6 = [v5 second];
  v7 = [v6 BOOLValue];

  if ((v7 & 1) == 0)
  {
    v8 = [v5 first];
    v9 = [v8 contactIdentifier];
    contactIdentifier = self->_contactIdentifier;
    self->_contactIdentifier = v9;

    v11 = [v8 labeledValueIdentifier];
    labeledValueIdentifier = self->_labeledValueIdentifier;
    self->_labeledValueIdentifier = v11;

    v13 = [v8 name];

    if (v13)
    {
      v14 = [v8 name];
      name = self->_name;
      self->_name = v14;
    }
  }
}

- (id)mapBundleIdentifier:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if (mapBundleIdentifier__cn_once_token_0 != -1)
    {
      [CNFavoritesEntryRepresentation mapBundleIdentifier:];
    }

    v4 = [mapBundleIdentifier__cn_once_object_0 objectForKeyedSubscript:v3];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = v3;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __54__CNFavoritesEntryRepresentation_mapBundleIdentifier___block_invoke()
{
  v0 = [&unk_1F09876D8 copy];
  v1 = mapBundleIdentifier__cn_once_object_0;
  mapBundleIdentifier__cn_once_object_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNFavoritesEntryRepresentation)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = CNFavoritesEntryRepresentation;
  v5 = [(CNFavoritesEntryRepresentation *)&v28 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"EntryIdentifier"];
    entryIdentifier = v5->_entryIdentifier;
    v5->_entryIdentifier = v6;

    v8 = [v4 objectForKey:@"Name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [v4 objectForKey:@"Value"];
    value = v5->_value;
    v5->_value = v10;

    v12 = [v4 objectForKey:@"Label"];
    label = v5->_label;
    v5->_label = v12;

    v14 = [v4 objectForKey:@"ContactProperty"];
    propertyKey = v5->_propertyKey;
    v5->_propertyKey = v14;

    v16 = [v4 objectForKey:@"ActionType"];
    actionType = v5->_actionType;
    v5->_actionType = v16;

    v18 = [v4 objectForKey:@"BundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v18;

    v20 = [v4 objectForKey:@"ActionChannel"];
    actionChannel = v5->_actionChannel;
    v5->_actionChannel = v20;

    v22 = [v4 objectForKey:@"ContactIdentifier"];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v22;

    v24 = [v4 objectForKey:@"LabeledValueIdentifier"];
    labeledValueIdentifier = v5->_labeledValueIdentifier;
    v5->_labeledValueIdentifier = v24;

    v26 = v5;
  }

  return v5;
}

- (id)remoteRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(CNFavoritesEntryRepresentation *)self entryIdentifier];
  [v3 _cn_setNonNilObject:v4 forKey:@"EntryIdentifier"];

  v5 = [(CNFavoritesEntryRepresentation *)self name];
  [v3 _cn_setNonNilObject:v5 forKey:@"Name"];

  v6 = [(CNFavoritesEntryRepresentation *)self value];
  [v3 _cn_setNonNilObject:v6 forKey:@"Value"];

  v7 = [(CNFavoritesEntryRepresentation *)self label];
  [v3 _cn_setNonNilObject:v7 forKey:@"Label"];

  v8 = [(CNFavoritesEntryRepresentation *)self propertyKey];
  [v3 _cn_setNonNilObject:v8 forKey:@"ContactProperty"];

  v9 = [(CNFavoritesEntryRepresentation *)self actionType];
  [v3 _cn_setNonNilObject:v9 forKey:@"ActionType"];

  v10 = [(CNFavoritesEntryRepresentation *)self bundleIdentifier];
  [v3 _cn_setNonNilObject:v10 forKey:@"BundleIdentifier"];

  v11 = [v3 copy];

  return v11;
}

- (id)dictionaryRepresentationWithRedaction:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [(CNFavoritesEntryRepresentation *)self entryIdentifier];
  [v5 _cn_setNonNilObject:v6 forKey:@"EntryIdentifier"];

  v7 = [(CNFavoritesEntryRepresentation *)self name];
  [v5 _cn_setNonNilObject:v7 forKey:@"Name"];

  v8 = [(CNFavoritesEntryRepresentation *)self value];
  [v5 _cn_setNonNilObject:v8 forKey:@"Value"];

  v9 = [(CNFavoritesEntryRepresentation *)self label];
  [v5 _cn_setNonNilObject:v9 forKey:@"Label"];

  v10 = [(CNFavoritesEntryRepresentation *)self propertyKey];
  [v5 _cn_setNonNilObject:v10 forKey:@"ContactProperty"];

  v11 = [(CNFavoritesEntryRepresentation *)self actionType];
  [v5 _cn_setNonNilObject:v11 forKey:@"ActionType"];

  v12 = [(CNFavoritesEntryRepresentation *)self bundleIdentifier];
  [v5 _cn_setNonNilObject:v12 forKey:@"BundleIdentifier"];

  v13 = [(CNFavoritesEntryRepresentation *)self actionChannel];
  [v5 _cn_setNonNilObject:v13 forKey:@"ActionChannel"];

  v14 = [(CNFavoritesEntryRepresentation *)self contactIdentifier];
  [v5 _cn_setNonNilObject:v14 forKey:@"ContactIdentifier"];

  v15 = [(CNFavoritesEntryRepresentation *)self labeledValueIdentifier];
  [v5 _cn_setNonNilObject:v15 forKey:@"LabeledValueIdentifier"];

  if (v3)
  {
    v16 = [(CNFavoritesEntryRepresentation *)self name];

    if (v16)
    {
      [v5 setObject:@"<redacted>" forKeyedSubscript:@"Name"];
    }
  }

  v17 = [v5 copy];

  return v17;
}

- (id)debugDescription
{
  v2 = -[CNFavoritesEntryRepresentation dictionaryRepresentationWithRedaction:](self, "dictionaryRepresentationWithRedaction:", [objc_opt_class() shouldLogAnonymousEntry]);
  v3 = [v2 descriptionInStringsFileFormat];

  return v3;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E6996730];
  aBlock[4] = self;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __38__CNFavoritesEntryRepresentation_hash__block_invoke;
  v18[3] = &unk_1E7412250;
  v18[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __38__CNFavoritesEntryRepresentation_hash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  v4 = _Block_copy(aBlock);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __38__CNFavoritesEntryRepresentation_hash__block_invoke_3;
  v16[3] = &unk_1E7412250;
  v16[4] = self;
  v5 = _Block_copy(v16);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __38__CNFavoritesEntryRepresentation_hash__block_invoke_4;
  v15[3] = &unk_1E7412250;
  v15[4] = self;
  v6 = _Block_copy(v15);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __38__CNFavoritesEntryRepresentation_hash__block_invoke_5;
  v14[3] = &unk_1E7412250;
  v14[4] = self;
  v7 = _Block_copy(v14);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __38__CNFavoritesEntryRepresentation_hash__block_invoke_6;
  v13[3] = &unk_1E7412250;
  v13[4] = self;
  v8 = _Block_copy(v13);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __38__CNFavoritesEntryRepresentation_hash__block_invoke_7;
  v12[3] = &unk_1E7412250;
  v12[4] = self;
  v9 = _Block_copy(v12);
  v10 = [v3 hashWithBlocks:{v18, v4, v5, v6, v7, v8, v9, 0}];

  return v10;
}

uint64_t __38__CNFavoritesEntryRepresentation_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) entryIdentifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __38__CNFavoritesEntryRepresentation_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) name];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __38__CNFavoritesEntryRepresentation_hash__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) value];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __38__CNFavoritesEntryRepresentation_hash__block_invoke_4(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) label];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __38__CNFavoritesEntryRepresentation_hash__block_invoke_5(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) propertyKey];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __38__CNFavoritesEntryRepresentation_hash__block_invoke_6(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) actionType];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __38__CNFavoritesEntryRepresentation_hash__block_invoke_7(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) bundleIdentifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

- (unint64_t)equivalencyHash
{
  v3 = MEMORY[0x1E6996730];
  aBlock[4] = self;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __49__CNFavoritesEntryRepresentation_equivalencyHash__block_invoke;
  v16[3] = &unk_1E7412250;
  v16[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__CNFavoritesEntryRepresentation_equivalencyHash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  v4 = _Block_copy(aBlock);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __49__CNFavoritesEntryRepresentation_equivalencyHash__block_invoke_3;
  v14[3] = &unk_1E7412250;
  v14[4] = self;
  v5 = _Block_copy(v14);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__CNFavoritesEntryRepresentation_equivalencyHash__block_invoke_4;
  v13[3] = &unk_1E7412250;
  v13[4] = self;
  v6 = _Block_copy(v13);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__CNFavoritesEntryRepresentation_equivalencyHash__block_invoke_5;
  v12[3] = &unk_1E7412250;
  v12[4] = self;
  v7 = _Block_copy(v12);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__CNFavoritesEntryRepresentation_equivalencyHash__block_invoke_6;
  v11[3] = &unk_1E7412250;
  v11[4] = self;
  v8 = _Block_copy(v11);
  v9 = [v3 hashWithBlocks:{v16, v4, v5, v6, v7, v8, 0}];

  return v9;
}

uint64_t __49__CNFavoritesEntryRepresentation_equivalencyHash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) name];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __49__CNFavoritesEntryRepresentation_equivalencyHash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) value];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __49__CNFavoritesEntryRepresentation_equivalencyHash__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) label];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __49__CNFavoritesEntryRepresentation_equivalencyHash__block_invoke_4(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) propertyKey];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __49__CNFavoritesEntryRepresentation_equivalencyHash__block_invoke_5(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) actionType];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __49__CNFavoritesEntryRepresentation_equivalencyHash__block_invoke_6(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) bundleIdentifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CNFavoritesEntryRepresentation *)self entryIdentifier];
  [v4 encodeObject:v5 forKey:@"EntryIdentifier"];

  v6 = [(CNFavoritesEntryRepresentation *)self name];
  [v4 encodeObject:v6 forKey:@"Name"];

  v7 = [(CNFavoritesEntryRepresentation *)self value];
  [v4 encodeObject:v7 forKey:@"Value"];

  v8 = [(CNFavoritesEntryRepresentation *)self label];
  [v4 encodeObject:v8 forKey:@"Label"];

  v9 = [(CNFavoritesEntryRepresentation *)self propertyKey];
  [v4 encodeObject:v9 forKey:@"ContactProperty"];

  v10 = [(CNFavoritesEntryRepresentation *)self actionType];
  [v4 encodeObject:v10 forKey:@"ActionType"];

  v11 = [(CNFavoritesEntryRepresentation *)self bundleIdentifier];
  [v4 encodeObject:v11 forKey:@"BundleIdentifier"];

  v12 = [(CNFavoritesEntryRepresentation *)self actionChannel];
  [v4 encodeObject:v12 forKey:@"ActionChannel"];

  v13 = [(CNFavoritesEntryRepresentation *)self contactIdentifier];
  [v4 encodeObject:v13 forKey:@"ContactIdentifier"];

  v14 = [(CNFavoritesEntryRepresentation *)self labeledValueIdentifier];
  [v4 encodeObject:v14 forKey:@"LabeledValueIdentifier"];
}

- (CNFavoritesEntryRepresentation)initWithCoder:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = CNFavoritesEntryRepresentation;
  v5 = [(CNFavoritesEntryRepresentation *)&v28 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EntryIdentifier"];
    entryIdentifier = v5->_entryIdentifier;
    v5->_entryIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Value"];
    value = v5->_value;
    v5->_value = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Label"];
    label = v5->_label;
    v5->_label = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ContactProperty"];
    propertyKey = v5->_propertyKey;
    v5->_propertyKey = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ActionType"];
    actionType = v5->_actionType;
    v5->_actionType = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ActionChannel"];
    actionChannel = v5->_actionChannel;
    v5->_actionChannel = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ContactIdentifier"];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LabeledValueIdentifier"];
    labeledValueIdentifier = v5->_labeledValueIdentifier;
    v5->_labeledValueIdentifier = v24;

    v26 = v5;
  }

  return v5;
}

@end