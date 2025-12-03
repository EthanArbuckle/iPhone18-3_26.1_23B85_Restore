@interface MFComposeRecipient
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (id)_requiredKeyDescriptors;
+ (id)composeRecipientWithAutocompleteResult:(id)result;
+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error;
+ (id)recipientWithProperty:(int)property address:(id)address;
+ (id)recipientWithRecord:(void *)record property:(int)property identifier:(int)identifier;
+ (id)recipientWithRecord:(void *)record recordID:(int)d property:(int)property identifier:(int)identifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)showsAccessoryButton;
- (BOOL)wasCompleteMatch;
- (CNContact)contact;
- (MFComposeRecipient)initWithCoder:(id)coder;
- (MFComposeRecipient)initWithContact:(id)contact address:(id)address kind:(unint64_t)kind;
- (MFComposeRecipient)initWithRecord:(void *)record recordID:(int)d property:(int)property identifier:(int)identifier address:(id)address;
- (NSString)address;
- (NSString)commentedAddress;
- (NSString)compositeName;
- (NSString)description;
- (NSString)displayString;
- (NSString)label;
- (NSString)normalizedAddress;
- (NSString)placeholderName;
- (NSString)shortName;
- (NSString)uncommentedAddress;
- (NSString)unlocalizedLabel;
- (id)_unformattedAddress;
- (id)completelyMatchedAttributedStrings;
- (id)labeledValueIdentifier;
- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAddress:(id)address;
- (void)setIdentifier:(int)identifier;
- (void)setRecord:(void *)record recordID:(int)d identifier:(int)identifier;
@end

@implementation MFComposeRecipient

+ (NSArray)readableTypeIdentifiersForItemProvider
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.mobilemail.recipient";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error
{
  dataCopy = data;
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"com.apple.mobilemail.recipient"])
  {
    v10 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:dataCopy error:0];
    v11 = [[self alloc] initWithCoder:v10];
    [v10 finishDecoding];

    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v11)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
  }

LABEL_7:

  return v11;
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  array = [MEMORY[0x1E695DF70] array];
  [array addObject:@"com.apple.mobilemail.recipient"];
  identifier = [*MEMORY[0x1E6983078] identifier];
  [array addObject:identifier];

  writableTypeIdentifiersForItemProvider = [MEMORY[0x1E696AEC0] writableTypeIdentifiersForItemProvider];
  [array addObjectsFromArray:writableTypeIdentifiersForItemProvider];

  return array;
}

- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler
{
  v23[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = [MEMORY[0x1E6982C40] typeWithIdentifier:identifierCopy];
  if ([identifierCopy isEqualToString:@"com.apple.mobilemail.recipient"])
  {
    v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
    handlerCopy[2](handlerCopy, v9, 0);

LABEL_3:
    v10 = 0;
    goto LABEL_10;
  }

  if ([v8 conformsToType:*MEMORY[0x1E6982F40]])
  {
    commentedAddress = [(MFComposeRecipient *)self commentedAddress];
    v10 = [commentedAddress loadDataWithTypeIdentifier:identifierCopy forItemProviderCompletionHandler:handlerCopy];
  }

  else
  {
    if ([v8 conformsToType:*MEMORY[0x1E6983078]])
    {
      contact = [(MFComposeRecipient *)self contact];
      v13 = contact;
      if (contact)
      {
        v14 = contact;
      }

      else
      {
        v16 = MEMORY[0x1E695CD58];
        commentedAddress2 = [(MFComposeRecipient *)self commentedAddress];
        v14 = [v16 em_contactFromEmailAddress:commentedAddress2];
      }

      v18 = MEMORY[0x1E695CE30];
      v23[0] = v14;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
      v22 = 0;
      v20 = [v18 dataWithContacts:v19 error:&v22];
      v21 = v22;

      (handlerCopy)[2](handlerCopy, v20, v21);
      goto LABEL_3;
    }

    handlerCopy[2](handlerCopy, 0, 0);
    v10 = 0;
  }

LABEL_10:

  return v10;
}

- (MFComposeRecipient)initWithContact:(id)contact address:(id)address kind:(unint64_t)kind
{
  contactCopy = contact;
  addressCopy = address;
  v16.receiver = self;
  v16.super_class = MFComposeRecipient;
  v11 = [(MFComposeRecipient *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_contact, contact);
    v13 = [addressCopy copy];
    address = v12->_address;
    v12->_address = v13;

    v12->_kind = kind;
  }

  return v12;
}

+ (id)composeRecipientWithAutocompleteResult:(id)result
{
  resultCopy = result;
  if ([resultCopy resultType])
  {
    if ([resultCopy resultType] == 1)
    {
      v4 = [[MFComposeRecipientGroup alloc] initWithChildren:0 displayString:0];
      [(MFComposeRecipient *)v4 setAutocompleteResult:resultCopy];
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_24;
  }

  value = [resultCopy value];
  addressType = [value addressType];

  if ((addressType - 1) >= 3)
  {
    v7 = 5;
  }

  else
  {
    v7 = addressType - 1;
  }

  value2 = [resultCopy value];
  address = [value2 address];

  if (address && ([address ea_isLegalEmailAddress] & 1) == 0)
  {
    v10 = [MEMORY[0x1E695DFF8] URLWithString:address];
    scheme = [v10 scheme];
    if ([scheme length])
    {
      if ([@"mailto" isEqualToString:scheme])
      {
        resourceSpecifier = [v10 resourceSpecifier];

        v7 = 0;
      }

      else
      {
        if (![@"tel" isEqualToString:scheme])
        {
          if ([@"urn" isEqualToString:scheme])
          {
            v7 = 4;
          }

          goto LABEL_18;
        }

        resourceSpecifier = [v10 resourceSpecifier];

        v7 = 1;
      }

      address = resourceSpecifier;
    }

LABEL_18:
  }

  if ([address length])
  {
    v4 = [[MFComposeRecipient alloc] initWithContact:0 address:address kind:v7];
    [(MFComposeRecipient *)v4 setAutocompleteResult:resultCopy];
    displayName = [resultCopy displayName];
    [(MFComposeRecipient *)v4 setDisplayString:displayName];

    value3 = [resultCopy value];
    identifier = [value3 identifier];
    [(MFComposeRecipient *)v4 setValueIdentifier:identifier];

    value4 = [resultCopy value];
    label = [value4 label];
    [(MFComposeRecipient *)v4 setUnlocalizedLabel:label];

    -[MFComposeRecipient setSourceType:](v4, "setSourceType:", [resultCopy sourceType]);
    identifier2 = [resultCopy identifier];

    if (identifier2)
    {
      identifier3 = [resultCopy identifier];
      [(MFComposeRecipient *)v4 setContactIdentifier:identifier3];
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_24:

  return v4;
}

- (MFComposeRecipient)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contact"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"property"];
  v19 = -1431655766;
  [v6 getValue:&v19 size:4];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
  v8 = [coderCopy decodeObjectForKey:@"address"];
  v9 = [coderCopy decodeIntegerForKey:@"kind"];
  if (v5 || ![coderCopy containsValueForKey:@"recordID"])
  {
    self = [(MFComposeRecipient *)self initWithContact:v5 address:v8 kind:v9];
  }

  else
  {
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recordID"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"address"];
    v11 = +[MFAddressBookManager sharedManager];
    addressBook = [v11 addressBook];

    recordID = -1431655766;
    [v16 getValue:&recordID size:4];
    v17 = -1431655766;
    [v15 getValue:&v17 size:4];
    PersonWithRecordID = ABAddressBookGetPersonWithRecordID(addressBook, recordID);
    if (PersonWithRecordID)
    {
      self = [(MFComposeRecipient *)self initWithRecord:PersonWithRecordID recordID:recordID property:v19 identifier:v17 address:v10];
    }
  }

  [(MFComposeRecipient *)self setContactIdentifier:v7, v15];

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (*&self->_contact == 0)
  {
    if (self->_record)
    {
      v6 = [MEMORY[0x1E696B098] valueWithBytes:&self->_property objCType:"i"];
      [coderCopy encodeObject:v6 forKey:@"property"];
      if (self->_recordID)
      {
        v7 = [MEMORY[0x1E696B098] valueWithBytes:&self->_recordID objCType:"i"];
        [coderCopy encodeObject:v7 forKey:@"recordID"];
        v8 = [MEMORY[0x1E696B098] valueWithBytes:&self->_identifier objCType:"i"];
        [coderCopy encodeObject:v8 forKey:@"identifier"];
      }
    }
  }

  else
  {
    [coderCopy encodeObject:? forKey:?];
  }

  address = self->_address;
  if (address)
  {
    [coderCopy encodeObject:address forKey:@"address"];
  }

  kind = self->_kind;
  if (kind)
  {
    [coderCopy encodeInteger:kind forKey:@"kind"];
  }
}

- (MFComposeRecipient)initWithRecord:(void *)record recordID:(int)d property:(int)property identifier:(int)identifier address:(id)address
{
  addressCopy = address;
  v14 = *MEMORY[0x1E698A548];
  if (*MEMORY[0x1E698A548] == property)
  {
    v15 = 1;
  }

  else if (*MEMORY[0x1E698A340] == property)
  {
    v15 = 0;
  }

  else if (*MEMORY[0x1E698A3C8] == property)
  {
    v15 = 2;
  }

  else
  {
    v15 = 5;
  }

  v16 = [(MFComposeRecipient *)self initWithContact:0 address:addressCopy kind:v15];
  if (v16)
  {
    if (record)
    {
      v16->_record = CFRetain(record);
      v16->_recordID = d;
    }

    else
    {
      identifier = -1;
    }

    v16->_identifier = identifier;
    objc_storeStrong(&v16->_address, address);
    v16->_property = property;
    if (v14 == property)
    {
      v17 = 1;
    }

    else if (*MEMORY[0x1E698A340] == property)
    {
      v17 = 0;
    }

    else
    {
      v17 = 5;
      if (*MEMORY[0x1E698A3C8] == property)
      {
        v17 = 2;
      }
    }

    v16->_kind = v17;
  }

  return v16;
}

+ (id)recipientWithRecord:(void *)record recordID:(int)d property:(int)property identifier:(int)identifier
{
  v6 = [[self alloc] initWithRecord:record recordID:*&d property:*&property identifier:*&identifier address:0];

  return v6;
}

+ (id)recipientWithRecord:(void *)record property:(int)property identifier:(int)identifier
{
  v5 = [[self alloc] initWithRecord:record recordID:0xFFFFFFFFLL property:*&property identifier:*&identifier address:0];

  return v5;
}

+ (id)recipientWithProperty:(int)property address:(id)address
{
  v4 = *&property;
  addressCopy = address;
  v7 = [[self alloc] initWithRecord:0 recordID:0xFFFFFFFFLL property:v4 identifier:0xFFFFFFFFLL address:addressCopy];

  return v7;
}

- (void)setRecord:(void *)record recordID:(int)d identifier:(int)identifier
{
  if (record && !self->_record)
  {
    self->_record = CFRetain(record);
    self->_recordID = d;
    self->_identifier = identifier;
    label = self->_label;
    self->_label = 0;
  }
}

- (void)setIdentifier:(int)identifier
{
  if (self->_identifier != identifier)
  {
    record = [(MFComposeRecipient *)self record];
    if (record)
    {
      v6 = ABRecordCopyValue(record, self->_property);
      if (v6)
      {
        v7 = v6;
        if (ABMultiValueGetCount(v6) >= 1 && ABMultiValueGetIndexForIdentifier(v7, identifier) != -1)
        {
          self->_identifier = identifier;
          label = self->_label;
          self->_label = 0;
        }

        CFRelease(v7);
      }
    }
  }
}

+ (id)_requiredKeyDescriptors
{
  v5[3] = *MEMORY[0x1E69E9840];
  descriptorForRequiredKeys = [MEMORY[0x1E695D148] descriptorForRequiredKeys];
  v5[2] = descriptorForRequiredKeys;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];

  return v3;
}

- (CNContact)contact
{
  v25 = *MEMORY[0x1E69E9840];
  contact = self->_contact;
  if (contact)
  {
    goto LABEL_13;
  }

  autocompleteResult = self->_autocompleteResult;
  if (!autocompleteResult)
  {
    v9 = 0;
    goto LABEL_6;
  }

  v5 = +[MFComposeRecipient _requiredKeyDescriptors];
  v20 = 0;
  v6 = [(CNAutocompleteResult *)autocompleteResult contactWithKeysToFetch:v5 error:&v20];
  v7 = v20;
  v8 = self->_contact;
  self->_contact = v6;

  v9 = v7;
  if (!self->_contact)
  {
LABEL_6:
    if (self->_contactIdentifier)
    {
      v10 = [MEMORY[0x1E695CE18] storeWithOptions:3];
      contactIdentifier = self->_contactIdentifier;
      v12 = +[MFComposeRecipient _requiredKeyDescriptors];
      v19 = v9;
      v13 = [v10 unifiedContactWithIdentifier:contactIdentifier keysToFetch:v12 error:&v19];
      v14 = v19;

      v15 = self->_contact;
      self->_contact = v13;

      v9 = v14;
    }
  }

  if (v9)
  {
    v16 = MFLogGeneral();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription = [v9 localizedDescription];
      *buf = 134218242;
      selfCopy = self;
      v23 = 2112;
      v24 = localizedDescription;
      _os_log_impl(&dword_1BE819000, v16, OS_LOG_TYPE_DEFAULT, "#Warning Error fetching contact for recipient: %p, %@", buf, 0x16u);
    }
  }

  contact = self->_contact;
LABEL_13:

  return contact;
}

- (BOOL)showsAccessoryButton
{
  if ([(MFComposeRecipient *)self isSuggestedRecipient])
  {
    return 1;
  }

  return [(MFComposeRecipient *)self isRemovableFromSearchResults];
}

- (BOOL)wasCompleteMatch
{
  v8[1] = *MEMORY[0x1E69E9840];
  searchTerm = [(MFComposeRecipientOriginContext *)self->_originContext searchTerm];
  v8[0] = self;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v7 = 0;
  v5 = _fastCountOfCompleteMatches(searchTerm, v4, &v7) != 0;

  return v5;
}

- (id)completelyMatchedAttributedStrings
{
  v14[1] = *MEMORY[0x1E69E9840];
  cachedMatchedStrings = self->_cachedMatchedStrings;
  if (!cachedMatchedStrings)
  {
    searchTerm = [(MFComposeRecipientOriginContext *)self->_originContext searchTerm];
    v14[0] = self;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v12 = 0;
    v13 = 0;
    v6 = _sortedArrayByRelevancy(searchTerm, v5, &v13, &v12);
    v7 = v13;
    v8 = v12;

    v10 = self->_cachedMatchedStrings;
    p_cachedMatchedStrings = &self->_cachedMatchedStrings;
    *p_cachedMatchedStrings = v8;

    cachedMatchedStrings = *p_cachedMatchedStrings;
  }

  return cachedMatchedStrings;
}

- (NSString)address
{
  uncommentedAddress = [(MFComposeRecipient *)self uncommentedAddress];
  kind = self->_kind;
  v5 = uncommentedAddress;
  v6 = v5;
  v7 = v5;
  if (v5)
  {
    v7 = v5;
    if (kind == 1)
    {
      v8 = CPPhoneNumberCopyFormattedStringForTextMessage();
      v9 = v8;
      v7 = v6;
      if (v8)
      {
        v10 = v8;

        v7 = [@"\u200E" stringByAppendingString:v10];
      }
    }
  }

  return v7;
}

- (void)setAddress:(id)address
{
  addressCopy = address;
  v4 = [addressCopy copy];
  address = self->_address;
  self->_address = v4;

  compositeName = self->_compositeName;
  self->_compositeName = 0;
}

- (NSString)normalizedAddress
{
  uncommentedAddress = [(MFComposeRecipient *)self uncommentedAddress];
  kind = self->_kind;
  v5 = uncommentedAddress;
  v6 = v5;
  v7 = v5;
  if (!v5)
  {
    goto LABEL_15;
  }

  v7 = v5;
  if (kind != 1)
  {
    goto LABEL_15;
  }

  [v5 UTF8String];
  v8 = CPPhoneNumberCopyNormalized();
  if (!v8)
  {
    v7 = v6;
    goto LABEL_15;
  }

  v9 = CFStringCreateWithCString(0, v8, 0x8000100u);
  v10 = CPPhoneNumberCopyHomeCountryCode();
  v11 = CFPhoneNumberCreate();
  String = CFPhoneNumberCreateString();

  v7 = String;
  if (String)
  {
    if (!v11)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v7 = CFPhoneNumberCreateString();
  if (v11)
  {
LABEL_9:
    CFRelease(v11);
  }

LABEL_10:
  if (v10)
  {
    CFRelease(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  free(v8);
LABEL_15:

  return v7;
}

- (NSString)commentedAddress
{
  if (self->_kind)
  {
    address = [(MFComposeRecipient *)self address];
  }

  else
  {
    uncommentedAddress = [(MFComposeRecipient *)self uncommentedAddress];
    compositeName = [(MFComposeRecipient *)self compositeName];
    v6 = compositeName;
    if (uncommentedAddress && compositeName)
    {
      v7 = [MEMORY[0x1E699AFC0] formattedAddressWithName:compositeName email:uncommentedAddress useQuotes:1];
    }

    else
    {
      v7 = uncommentedAddress;
    }

    address = v7;
    if (!v7)
    {
      address = self->_address;
      if (address)
      {
        ea_uncommentedAddress = [(NSString *)address ea_uncommentedAddress];
        ea_addressComment = [(NSString *)self->_address ea_addressComment];
        address = [MEMORY[0x1E699AFC0] formattedAddressWithName:ea_addressComment email:ea_uncommentedAddress useQuotes:1];
      }

      else
      {
        address = 0;
      }
    }
  }

  return address;
}

- (NSString)label
{
  label = self->_label;
  if (!label)
  {
    unlocalizedLabel = [(MFComposeRecipient *)self unlocalizedLabel];
    if (unlocalizedLabel)
    {
      contact = [(MFComposeRecipient *)self contact];

      if (contact)
      {
        v6 = [MEMORY[0x1E695CEE0] localizedStringForLabel:unlocalizedLabel];
      }

      else
      {
        v6 = ABAddressBookCopyLocalizedLabel(unlocalizedLabel);
      }

      v7 = self->_label;
      self->_label = v6;
    }

    label = self->_label;
  }

  return label;
}

- (NSString)unlocalizedLabel
{
  contact = [(MFComposeRecipient *)self contact];

  if (contact)
  {
    v4 = self->_unlocalizedLabel;
  }

  else if ([(MFComposeRecipient *)self record]&& (v5 = ABRecordCopyValue([(MFComposeRecipient *)self record], self->_property), (v6 = v5) != 0))
  {
    if (ABMultiValueGetCount(v5) < 1 || (IndexForIdentifier = ABMultiValueGetIndexForIdentifier(v6, self->_identifier), IndexForIdentifier == -1))
    {
      v4 = 0;
    }

    else
    {
      v4 = ABMultiValueCopyLabelAtIndex(v6, IndexForIdentifier);
    }

    CFRelease(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)compositeName
{
  compositeName = self->_compositeName;
  if (!compositeName)
  {
    contact = [(MFComposeRecipient *)self contact];

    if (contact)
    {
      v5 = MEMORY[0x1E695CD80];
      contact2 = [(MFComposeRecipient *)self contact];
      v7 = [v5 stringFromContact:contact2 style:0];

      if (!v7)
      {
        goto LABEL_7;
      }
    }

    else if (![(MFComposeRecipient *)self record]|| (v7 = ABRecordCopyCompositeName([(MFComposeRecipient *)self record])) == 0)
    {
LABEL_7:
      if (self->_kind)
      {
        v7 = 0;
      }

      else
      {
        ea_addressComment = [(NSString *)self->_address ea_addressComment];
        v9 = [ea_addressComment copy];

        if (v9 == self->_address)
        {
          v7 = 0;
        }

        else
        {
          v7 = v9;
        }
      }
    }

    v10 = self->_compositeName;
    self->_compositeName = v7;

    compositeName = self->_compositeName;
  }

  return compositeName;
}

- (NSString)shortName
{
  compositeName = [(MFComposeRecipient *)self compositeName];
  v4 = compositeName;
  if (!compositeName || ([compositeName ea_personNameComponents], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_alloc_init(MEMORY[0x1E696ADF8]), objc_msgSend(v6, "setStyle:", 1), objc_msgSend(v6, "stringFromPersonNameComponents:", v5), v7 = objc_claimAutoreleasedReturnValue(), v6, v5, !v7))
  {
    address = [(MFComposeRecipient *)self address];
    v9 = address;
    if (address)
    {
      if ([address ea_isLegalEmailAddress])
      {
        v10 = [v9 substringToIndex:{objc_msgSend(MEMORY[0x1E699AFD0], "rangeOfAddressDomainFromAddress:", v9) - 1}];
      }

      else
      {
        v10 = v9;
      }

      v7 = v10;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (NSString)displayString
{
  address = self->_displayString;
  if (![(NSString *)address length])
  {
    compositeName = [(MFComposeRecipient *)self compositeName];

    address = compositeName;
    if (!compositeName)
    {
      address = [(MFComposeRecipient *)self address];
      if (!address)
      {
        address = [(MFComposeRecipient *)self placeholderName];
      }
    }
  }

  return address;
}

- (NSString)placeholderName
{
  sourceType = [(MFComposeRecipient *)self sourceType];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (sourceType == 1)
  {
    [v3 localizedStringForKey:@"RECENT_PLACEHOLDER_NAME" value:&stru_1F3CF3758 table:@"Main"];
  }

  else
  {
    [v3 localizedStringForKey:@"PLACEHOLDER_NAME" value:&stru_1F3CF3758 table:@"Main"];
  }
  v5 = ;

  return v5;
}

- (NSString)uncommentedAddress
{
  v38 = *MEMORY[0x1E69E9840];
  address = self->_address;
  if (address)
  {
    if (self->_kind)
    {
      ea_uncommentedAddress = address;
    }

    else
    {
      ea_uncommentedAddress = [(NSString *)address ea_uncommentedAddress];
    }

    stringValue = ea_uncommentedAddress;
    goto LABEL_17;
  }

  contact = [(MFComposeRecipient *)self contact];

  if (!contact)
  {
    record = [(MFComposeRecipient *)self record];
    if (!record || (v16 = ABRecordCopyValue(record, self->_property), (v17 = v16) == 0))
    {
      stringValue = 0;
      goto LABEL_17;
    }

    if (ABMultiValueGetCount(v16) < 1)
    {
      goto LABEL_25;
    }

    identifier = self->_identifier;
    if (identifier < 0)
    {
      IndexForIdentifier = 0;
    }

    else
    {
      IndexForIdentifier = ABMultiValueGetIndexForIdentifier(v17, identifier);
      if (IndexForIdentifier == -1)
      {
LABEL_25:
        stringValue = 0;
LABEL_42:
        CFRelease(v17);
        goto LABEL_17;
      }
    }

    stringValue = ABMultiValueCopyValueAtIndex(v17, IndexForIdentifier);
    goto LABEL_42;
  }

  if (self->_kind == 1)
  {
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    contact2 = [(MFComposeRecipient *)self contact];
    phoneNumbers = [contact2 phoneNumbers];

    stringValue = [phoneNumbers countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (stringValue)
    {
      v9 = *v33;
      while (2)
      {
        for (i = 0; i != stringValue; i = i + 1)
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(phoneNumbers);
          }

          v11 = *(*(&v32 + 1) + 8 * i);
          identifier = [v11 identifier];
          v13 = [identifier isEqualToString:self->_valueIdentifier];

          if (v13)
          {
            value = [v11 value];
            stringValue = [value stringValue];

            goto LABEL_37;
          }
        }

        stringValue = [phoneNumbers countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (stringValue)
        {
          continue;
        }

        break;
      }
    }

LABEL_37:
  }

  else
  {
    v30 = 0uLL;
    v31 = 0uLL;
    *(&v28 + 1) = 0;
    v29 = 0uLL;
    contact3 = [(MFComposeRecipient *)self contact];
    emailAddresses = [contact3 emailAddresses];

    stringValue = [emailAddresses countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (stringValue)
    {
      v22 = *v29;
      while (2)
      {
        for (j = 0; j != stringValue; j = j + 1)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(emailAddresses);
          }

          v24 = *(*(&v28 + 1) + 8 * j);
          identifier2 = [v24 identifier];
          v26 = [identifier2 isEqualToString:self->_valueIdentifier];

          if (v26)
          {
            stringValue = [v24 value];
            goto LABEL_39;
          }
        }

        stringValue = [emailAddresses countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (stringValue)
        {
          continue;
        }

        break;
      }
    }

LABEL_39:
  }

LABEL_17:

  return stringValue;
}

- (id)_unformattedAddress
{
  uncommentedAddress = [(MFComposeRecipient *)self uncommentedAddress];
  if (self->_kind == 1)
  {
    v4 = UIUnformattedPhoneNumberFromString();

    uncommentedAddress = v4;
  }

  return uncommentedAddress;
}

- (id)labeledValueIdentifier
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1;
  v14 = __Block_byref_object_dispose__1;
  v15 = 0;
  contact = [(MFComposeRecipient *)self contact];
  if (contact)
  {
    address = self->_address;

    if (address)
    {
      contact2 = [(MFComposeRecipient *)self contact];
      emailAddresses = [contact2 emailAddresses];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __44__MFComposeRecipient_labeledValueIdentifier__block_invoke;
      v9[3] = &unk_1E806CF70;
      v9[4] = self;
      v9[5] = &v10;
      [emailAddresses enumerateObjectsUsingBlock:v9];
    }
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __44__MFComposeRecipient_labeledValueIdentifier__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 value];
  v7 = [v6 isEqualToString:*(*(a1 + 32) + 32)];

  if (v7)
  {
    v8 = [v11 identifier];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    if (self->_kind == 1)
    {
      _unformattedAddress = [(MFComposeRecipient *)self _unformattedAddress];
      [_unformattedAddress UTF8String];

      _unformattedAddress2 = [(MFComposeRecipient *)equalCopy _unformattedAddress];
      [_unformattedAddress2 UTF8String];

      countryCode = [(MFComposeRecipient *)self countryCode];
      if (!countryCode)
      {
        active = CPPhoneNumberCopyActiveCountryCode();
        CFAutorelease(active);
      }

      v9 = CPPhoneNumbersEqual();
    }

    else
    {
      address = [(MFComposeRecipient *)self address];
      if (!address || ([(MFComposeRecipient *)equalCopy address], v11 = objc_claimAutoreleasedReturnValue(), v11, address, !v11))
      {
        v9 = 0;
        goto LABEL_12;
      }

      countryCode = [(MFComposeRecipient *)equalCopy address];
      address2 = [(MFComposeRecipient *)self address];
      v9 = [address2 ea_isEqualToEmailAddress:countryCode];
    }
  }

LABEL_12:

  return v9;
}

- (unint64_t)hash
{
  if ([(MFComposeRecipient *)self record]&& *MEMORY[0x1E698A548] == self->_property)
  {
    _unformattedAddress = [(MFComposeRecipient *)self _unformattedAddress];
    if (_unformattedAddress)
    {
      v8 = 0;
      CPPhoneNumberGetLastFour();
    }

    v4 = 0;
    goto LABEL_10;
  }

  address = [(MFComposeRecipient *)self address];

  if (address)
  {
    _unformattedAddress = [(MFComposeRecipient *)self address];
    v4 = [_unformattedAddress hash];
LABEL_10:

    return v4;
  }

  v7.receiver = self;
  v7.super_class = MFComposeRecipient;
  return [(MFComposeRecipient *)&v7 hash];
}

- (NSString)description
{
  array = [MEMORY[0x1E695DF70] array];
  if (([(MFComposeRecipient *)self sourceType]& 2) != 0)
  {
    [array addObject:@"Contact"];
  }

  if (([(MFComposeRecipient *)self sourceType]& 0x10) != 0)
  {
    [array addObject:@"Prediction"];
  }

  if (([(MFComposeRecipient *)self sourceType]& 1) != 0)
  {
    [array addObject:@"Recent"];
  }

  if (([(MFComposeRecipient *)self sourceType]& 0x48) != 0)
  {
    [array addObject:@"Server"];
  }

  if (([(MFComposeRecipient *)self sourceType]& 4) != 0)
  {
    [array addObject:@"Suggestion"];
  }

  if (![(MFComposeRecipient *)self sourceType])
  {
    [array addObject:@"<undefined>"];
  }

  v4 = [array componentsJoinedByString:@"+"];
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  displayString = [(MFComposeRecipient *)self displayString];
  address = [(MFComposeRecipient *)self address];
  v10 = [v5 stringWithFormat:@"<%@: %p displayString: %@; address: %@; autocompleteSource: %@>", v7, self, displayString, address, v4];;

  return v10;
}

@end