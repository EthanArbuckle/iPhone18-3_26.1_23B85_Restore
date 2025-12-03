@interface CNFavoritesEntryRepresentation
- (CNFavoritesEntryRepresentation)initWithCoder:(id)coder;
- (CNFavoritesEntryRepresentation)initWithDictionaryRepresentation:(id)representation;
- (CNFavoritesEntryRepresentation)initWithIdentifier:(id)identifier name:(id)name value:(id)value label:(id)label propertyKey:(id)key actionType:(id)type bundleIdentifier:(id)bundleIdentifier actionChannel:(id)self0 contactIdentifier:(id)self1 labeledValueIdentifier:(id)self2;
- (CNFavoritesEntryRepresentation)initWithRemoteRepresentation:(id)representation;
- (id)debugDescription;
- (id)dictionaryRepresentationWithRedaction:(BOOL)redaction;
- (id)mapBundleIdentifier:(id)identifier;
- (id)remoteRepresentation;
- (unint64_t)equivalencyHash;
- (unint64_t)hash;
- (void)copyContactMatchingInfoFrom:(id)from;
- (void)encodeWithCoder:(id)coder;
- (void)rematchWithContactStore:(id)store;
@end

@implementation CNFavoritesEntryRepresentation

- (CNFavoritesEntryRepresentation)initWithIdentifier:(id)identifier name:(id)name value:(id)value label:(id)label propertyKey:(id)key actionType:(id)type bundleIdentifier:(id)bundleIdentifier actionChannel:(id)self0 contactIdentifier:(id)self1 labeledValueIdentifier:(id)self2
{
  identifierCopy = identifier;
  nameCopy = name;
  valueCopy = value;
  labelCopy = label;
  keyCopy = key;
  typeCopy = type;
  bundleIdentifierCopy = bundleIdentifier;
  channelCopy = channel;
  contactIdentifierCopy = contactIdentifier;
  valueIdentifierCopy = valueIdentifier;
  v51.receiver = self;
  v51.super_class = CNFavoritesEntryRepresentation;
  v26 = [(CNFavoritesEntryRepresentation *)&v51 init];
  if (v26)
  {
    v27 = [identifierCopy copy];
    entryIdentifier = v26->_entryIdentifier;
    v26->_entryIdentifier = v27;

    v29 = [nameCopy copy];
    name = v26->_name;
    v26->_name = v29;

    v31 = [valueCopy copy];
    value = v26->_value;
    v26->_value = v31;

    v33 = [labelCopy copy];
    label = v26->_label;
    v26->_label = v33;

    v35 = [keyCopy copy];
    propertyKey = v26->_propertyKey;
    v26->_propertyKey = v35;

    v37 = [typeCopy copy];
    actionType = v26->_actionType;
    v26->_actionType = v37;

    v39 = [bundleIdentifierCopy copy];
    bundleIdentifier = v26->_bundleIdentifier;
    v26->_bundleIdentifier = v39;

    v41 = [channelCopy copy];
    actionChannel = v26->_actionChannel;
    v26->_actionChannel = v41;

    v43 = [contactIdentifierCopy copy];
    contactIdentifier = v26->_contactIdentifier;
    v26->_contactIdentifier = v43;

    v45 = [valueIdentifierCopy copy];
    labeledValueIdentifier = v26->_labeledValueIdentifier;
    v26->_labeledValueIdentifier = v45;

    v47 = v26;
  }

  return v26;
}

- (CNFavoritesEntryRepresentation)initWithRemoteRepresentation:(id)representation
{
  representationCopy = representation;
  v26.receiver = self;
  v26.super_class = CNFavoritesEntryRepresentation;
  v5 = [(CNFavoritesEntryRepresentation *)&v26 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"EntryIdentifier"];
    entryIdentifier = v5->_entryIdentifier;
    v5->_entryIdentifier = v6;

    v8 = [representationCopy objectForKeyedSubscript:@"Name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [representationCopy objectForKeyedSubscript:@"Value"];
    value = v5->_value;
    v5->_value = v10;

    v12 = [representationCopy objectForKeyedSubscript:@"Label"];
    label = v5->_label;
    v5->_label = v12;

    v14 = [representationCopy objectForKeyedSubscript:@"ContactProperty"];
    propertyKey = v5->_propertyKey;
    v5->_propertyKey = v14;

    v16 = [representationCopy objectForKeyedSubscript:@"ActionType"];
    actionType = v5->_actionType;
    v5->_actionType = v16;

    v18 = [representationCopy objectForKeyedSubscript:@"BundleIdentifier"];
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

- (void)copyContactMatchingInfoFrom:(id)from
{
  fromCopy = from;
  contactIdentifier = [fromCopy contactIdentifier];
  contactIdentifier = self->_contactIdentifier;
  self->_contactIdentifier = contactIdentifier;

  labeledValueIdentifier = [fromCopy labeledValueIdentifier];

  labeledValueIdentifier = self->_labeledValueIdentifier;
  self->_labeledValueIdentifier = labeledValueIdentifier;
}

- (void)rematchWithContactStore:(id)store
{
  storeCopy = store;
  v16 = [[CNFavoritesEntry alloc] initWithEntryRepresentation:self store:storeCopy];

  rematch = [(CNFavoritesEntry *)v16 rematch];
  second = [rematch second];
  bOOLValue = [second BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    first = [rematch first];
    contactIdentifier = [first contactIdentifier];
    contactIdentifier = self->_contactIdentifier;
    self->_contactIdentifier = contactIdentifier;

    labeledValueIdentifier = [first labeledValueIdentifier];
    labeledValueIdentifier = self->_labeledValueIdentifier;
    self->_labeledValueIdentifier = labeledValueIdentifier;

    name = [first name];

    if (name)
    {
      name2 = [first name];
      name = self->_name;
      self->_name = name2;
    }
  }
}

- (id)mapBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    if (mapBundleIdentifier__cn_once_token_0 != -1)
    {
      [CNFavoritesEntryRepresentation mapBundleIdentifier:];
    }

    v4 = [mapBundleIdentifier__cn_once_object_0 objectForKeyedSubscript:identifierCopy];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = identifierCopy;
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

- (CNFavoritesEntryRepresentation)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v28.receiver = self;
  v28.super_class = CNFavoritesEntryRepresentation;
  v5 = [(CNFavoritesEntryRepresentation *)&v28 init];
  if (v5)
  {
    v6 = [representationCopy objectForKey:@"EntryIdentifier"];
    entryIdentifier = v5->_entryIdentifier;
    v5->_entryIdentifier = v6;

    v8 = [representationCopy objectForKey:@"Name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [representationCopy objectForKey:@"Value"];
    value = v5->_value;
    v5->_value = v10;

    v12 = [representationCopy objectForKey:@"Label"];
    label = v5->_label;
    v5->_label = v12;

    v14 = [representationCopy objectForKey:@"ContactProperty"];
    propertyKey = v5->_propertyKey;
    v5->_propertyKey = v14;

    v16 = [representationCopy objectForKey:@"ActionType"];
    actionType = v5->_actionType;
    v5->_actionType = v16;

    v18 = [representationCopy objectForKey:@"BundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v18;

    v20 = [representationCopy objectForKey:@"ActionChannel"];
    actionChannel = v5->_actionChannel;
    v5->_actionChannel = v20;

    v22 = [representationCopy objectForKey:@"ContactIdentifier"];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v22;

    v24 = [representationCopy objectForKey:@"LabeledValueIdentifier"];
    labeledValueIdentifier = v5->_labeledValueIdentifier;
    v5->_labeledValueIdentifier = v24;

    v26 = v5;
  }

  return v5;
}

- (id)remoteRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  entryIdentifier = [(CNFavoritesEntryRepresentation *)self entryIdentifier];
  [dictionary _cn_setNonNilObject:entryIdentifier forKey:@"EntryIdentifier"];

  name = [(CNFavoritesEntryRepresentation *)self name];
  [dictionary _cn_setNonNilObject:name forKey:@"Name"];

  value = [(CNFavoritesEntryRepresentation *)self value];
  [dictionary _cn_setNonNilObject:value forKey:@"Value"];

  label = [(CNFavoritesEntryRepresentation *)self label];
  [dictionary _cn_setNonNilObject:label forKey:@"Label"];

  propertyKey = [(CNFavoritesEntryRepresentation *)self propertyKey];
  [dictionary _cn_setNonNilObject:propertyKey forKey:@"ContactProperty"];

  actionType = [(CNFavoritesEntryRepresentation *)self actionType];
  [dictionary _cn_setNonNilObject:actionType forKey:@"ActionType"];

  bundleIdentifier = [(CNFavoritesEntryRepresentation *)self bundleIdentifier];
  [dictionary _cn_setNonNilObject:bundleIdentifier forKey:@"BundleIdentifier"];

  v11 = [dictionary copy];

  return v11;
}

- (id)dictionaryRepresentationWithRedaction:(BOOL)redaction
{
  redactionCopy = redaction;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  entryIdentifier = [(CNFavoritesEntryRepresentation *)self entryIdentifier];
  [v5 _cn_setNonNilObject:entryIdentifier forKey:@"EntryIdentifier"];

  name = [(CNFavoritesEntryRepresentation *)self name];
  [v5 _cn_setNonNilObject:name forKey:@"Name"];

  value = [(CNFavoritesEntryRepresentation *)self value];
  [v5 _cn_setNonNilObject:value forKey:@"Value"];

  label = [(CNFavoritesEntryRepresentation *)self label];
  [v5 _cn_setNonNilObject:label forKey:@"Label"];

  propertyKey = [(CNFavoritesEntryRepresentation *)self propertyKey];
  [v5 _cn_setNonNilObject:propertyKey forKey:@"ContactProperty"];

  actionType = [(CNFavoritesEntryRepresentation *)self actionType];
  [v5 _cn_setNonNilObject:actionType forKey:@"ActionType"];

  bundleIdentifier = [(CNFavoritesEntryRepresentation *)self bundleIdentifier];
  [v5 _cn_setNonNilObject:bundleIdentifier forKey:@"BundleIdentifier"];

  actionChannel = [(CNFavoritesEntryRepresentation *)self actionChannel];
  [v5 _cn_setNonNilObject:actionChannel forKey:@"ActionChannel"];

  contactIdentifier = [(CNFavoritesEntryRepresentation *)self contactIdentifier];
  [v5 _cn_setNonNilObject:contactIdentifier forKey:@"ContactIdentifier"];

  labeledValueIdentifier = [(CNFavoritesEntryRepresentation *)self labeledValueIdentifier];
  [v5 _cn_setNonNilObject:labeledValueIdentifier forKey:@"LabeledValueIdentifier"];

  if (redactionCopy)
  {
    name2 = [(CNFavoritesEntryRepresentation *)self name];

    if (name2)
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
  descriptionInStringsFileFormat = [v2 descriptionInStringsFileFormat];

  return descriptionInStringsFileFormat;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  entryIdentifier = [(CNFavoritesEntryRepresentation *)self entryIdentifier];
  [coderCopy encodeObject:entryIdentifier forKey:@"EntryIdentifier"];

  name = [(CNFavoritesEntryRepresentation *)self name];
  [coderCopy encodeObject:name forKey:@"Name"];

  value = [(CNFavoritesEntryRepresentation *)self value];
  [coderCopy encodeObject:value forKey:@"Value"];

  label = [(CNFavoritesEntryRepresentation *)self label];
  [coderCopy encodeObject:label forKey:@"Label"];

  propertyKey = [(CNFavoritesEntryRepresentation *)self propertyKey];
  [coderCopy encodeObject:propertyKey forKey:@"ContactProperty"];

  actionType = [(CNFavoritesEntryRepresentation *)self actionType];
  [coderCopy encodeObject:actionType forKey:@"ActionType"];

  bundleIdentifier = [(CNFavoritesEntryRepresentation *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"BundleIdentifier"];

  actionChannel = [(CNFavoritesEntryRepresentation *)self actionChannel];
  [coderCopy encodeObject:actionChannel forKey:@"ActionChannel"];

  contactIdentifier = [(CNFavoritesEntryRepresentation *)self contactIdentifier];
  [coderCopy encodeObject:contactIdentifier forKey:@"ContactIdentifier"];

  labeledValueIdentifier = [(CNFavoritesEntryRepresentation *)self labeledValueIdentifier];
  [coderCopy encodeObject:labeledValueIdentifier forKey:@"LabeledValueIdentifier"];
}

- (CNFavoritesEntryRepresentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = CNFavoritesEntryRepresentation;
  v5 = [(CNFavoritesEntryRepresentation *)&v28 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EntryIdentifier"];
    entryIdentifier = v5->_entryIdentifier;
    v5->_entryIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Value"];
    value = v5->_value;
    v5->_value = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Label"];
    label = v5->_label;
    v5->_label = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ContactProperty"];
    propertyKey = v5->_propertyKey;
    v5->_propertyKey = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ActionType"];
    actionType = v5->_actionType;
    v5->_actionType = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ActionChannel"];
    actionChannel = v5->_actionChannel;
    v5->_actionChannel = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ContactIdentifier"];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LabeledValueIdentifier"];
    labeledValueIdentifier = v5->_labeledValueIdentifier;
    v5->_labeledValueIdentifier = v24;

    v26 = v5;
  }

  return v5;
}

@end