@interface MFComposeRecipient
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (id)_requiredKeyDescriptors;
+ (id)composeRecipientWithAutocompleteResult:(id)a3;
+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5;
+ (id)recipientWithProperty:(int)a3 address:(id)a4;
+ (id)recipientWithRecord:(void *)a3 property:(int)a4 identifier:(int)a5;
+ (id)recipientWithRecord:(void *)a3 recordID:(int)a4 property:(int)a5 identifier:(int)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)showsAccessoryButton;
- (BOOL)wasCompleteMatch;
- (CNContact)contact;
- (MFComposeRecipient)initWithCoder:(id)a3;
- (MFComposeRecipient)initWithContact:(id)a3 address:(id)a4 kind:(unint64_t)a5;
- (MFComposeRecipient)initWithRecord:(void *)a3 recordID:(int)a4 property:(int)a5 identifier:(int)a6 address:(id)a7;
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
- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAddress:(id)a3;
- (void)setIdentifier:(int)a3;
- (void)setRecord:(void *)a3 recordID:(int)a4 identifier:(int)a5;
@end

@implementation MFComposeRecipient

+ (NSArray)readableTypeIdentifiersForItemProvider
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.mobilemail.recipient";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([v9 isEqualToString:@"com.apple.mobilemail.recipient"])
  {
    v10 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v8 error:0];
    v11 = [[a1 alloc] initWithCoder:v10];
    [v10 finishDecoding];

    if (!a5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  if (!v11)
  {
    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
  }

LABEL_7:

  return v11;
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  v2 = [MEMORY[0x1E695DF70] array];
  [v2 addObject:@"com.apple.mobilemail.recipient"];
  v3 = [*MEMORY[0x1E6983078] identifier];
  [v2 addObject:v3];

  v4 = [MEMORY[0x1E696AEC0] writableTypeIdentifiersForItemProvider];
  [v2 addObjectsFromArray:v4];

  return v2;
}

- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E6982C40] typeWithIdentifier:v6];
  if ([v6 isEqualToString:@"com.apple.mobilemail.recipient"])
  {
    v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
    v7[2](v7, v9, 0);

LABEL_3:
    v10 = 0;
    goto LABEL_10;
  }

  if ([v8 conformsToType:*MEMORY[0x1E6982F40]])
  {
    v11 = [(MFComposeRecipient *)self commentedAddress];
    v10 = [v11 loadDataWithTypeIdentifier:v6 forItemProviderCompletionHandler:v7];
  }

  else
  {
    if ([v8 conformsToType:*MEMORY[0x1E6983078]])
    {
      v12 = [(MFComposeRecipient *)self contact];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v16 = MEMORY[0x1E695CD58];
        v17 = [(MFComposeRecipient *)self commentedAddress];
        v14 = [v16 em_contactFromEmailAddress:v17];
      }

      v18 = MEMORY[0x1E695CE30];
      v23[0] = v14;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
      v22 = 0;
      v20 = [v18 dataWithContacts:v19 error:&v22];
      v21 = v22;

      (v7)[2](v7, v20, v21);
      goto LABEL_3;
    }

    v7[2](v7, 0, 0);
    v10 = 0;
  }

LABEL_10:

  return v10;
}

- (MFComposeRecipient)initWithContact:(id)a3 address:(id)a4 kind:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = MFComposeRecipient;
  v11 = [(MFComposeRecipient *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_contact, a3);
    v13 = [v10 copy];
    address = v12->_address;
    v12->_address = v13;

    v12->_kind = a5;
  }

  return v12;
}

+ (id)composeRecipientWithAutocompleteResult:(id)a3
{
  v3 = a3;
  if ([v3 resultType])
  {
    if ([v3 resultType] == 1)
    {
      v4 = [[MFComposeRecipientGroup alloc] initWithChildren:0 displayString:0];
      [(MFComposeRecipient *)v4 setAutocompleteResult:v3];
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_24;
  }

  v5 = [v3 value];
  v6 = [v5 addressType];

  if ((v6 - 1) >= 3)
  {
    v7 = 5;
  }

  else
  {
    v7 = v6 - 1;
  }

  v8 = [v3 value];
  v9 = [v8 address];

  if (v9 && ([v9 ea_isLegalEmailAddress] & 1) == 0)
  {
    v10 = [MEMORY[0x1E695DFF8] URLWithString:v9];
    v11 = [v10 scheme];
    if ([v11 length])
    {
      if ([@"mailto" isEqualToString:v11])
      {
        v12 = [v10 resourceSpecifier];

        v7 = 0;
      }

      else
      {
        if (![@"tel" isEqualToString:v11])
        {
          if ([@"urn" isEqualToString:v11])
          {
            v7 = 4;
          }

          goto LABEL_18;
        }

        v12 = [v10 resourceSpecifier];

        v7 = 1;
      }

      v9 = v12;
    }

LABEL_18:
  }

  if ([v9 length])
  {
    v4 = [[MFComposeRecipient alloc] initWithContact:0 address:v9 kind:v7];
    [(MFComposeRecipient *)v4 setAutocompleteResult:v3];
    v13 = [v3 displayName];
    [(MFComposeRecipient *)v4 setDisplayString:v13];

    v14 = [v3 value];
    v15 = [v14 identifier];
    [(MFComposeRecipient *)v4 setValueIdentifier:v15];

    v16 = [v3 value];
    v17 = [v16 label];
    [(MFComposeRecipient *)v4 setUnlocalizedLabel:v17];

    -[MFComposeRecipient setSourceType:](v4, "setSourceType:", [v3 sourceType]);
    v18 = [v3 identifier];

    if (v18)
    {
      v19 = [v3 identifier];
      [(MFComposeRecipient *)v4 setContactIdentifier:v19];
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_24:

  return v4;
}

- (MFComposeRecipient)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contact"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"property"];
  v19 = -1431655766;
  [v6 getValue:&v19 size:4];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
  v8 = [v4 decodeObjectForKey:@"address"];
  v9 = [v4 decodeIntegerForKey:@"kind"];
  if (v5 || ![v4 containsValueForKey:@"recordID"])
  {
    self = [(MFComposeRecipient *)self initWithContact:v5 address:v8 kind:v9];
  }

  else
  {
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recordID"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"address"];
    v11 = +[MFAddressBookManager sharedManager];
    v12 = [v11 addressBook];

    recordID = -1431655766;
    [v16 getValue:&recordID size:4];
    v17 = -1431655766;
    [v15 getValue:&v17 size:4];
    PersonWithRecordID = ABAddressBookGetPersonWithRecordID(v12, recordID);
    if (PersonWithRecordID)
    {
      self = [(MFComposeRecipient *)self initWithRecord:PersonWithRecordID recordID:recordID property:v19 identifier:v17 address:v10];
    }
  }

  [(MFComposeRecipient *)self setContactIdentifier:v7, v15];

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  if (*&self->_contact == 0)
  {
    if (self->_record)
    {
      v6 = [MEMORY[0x1E696B098] valueWithBytes:&self->_property objCType:"i"];
      [v9 encodeObject:v6 forKey:@"property"];
      if (self->_recordID)
      {
        v7 = [MEMORY[0x1E696B098] valueWithBytes:&self->_recordID objCType:"i"];
        [v9 encodeObject:v7 forKey:@"recordID"];
        v8 = [MEMORY[0x1E696B098] valueWithBytes:&self->_identifier objCType:"i"];
        [v9 encodeObject:v8 forKey:@"identifier"];
      }
    }
  }

  else
  {
    [v9 encodeObject:? forKey:?];
  }

  address = self->_address;
  if (address)
  {
    [v9 encodeObject:address forKey:@"address"];
  }

  kind = self->_kind;
  if (kind)
  {
    [v9 encodeInteger:kind forKey:@"kind"];
  }
}

- (MFComposeRecipient)initWithRecord:(void *)a3 recordID:(int)a4 property:(int)a5 identifier:(int)a6 address:(id)a7
{
  v13 = a7;
  v14 = *MEMORY[0x1E698A548];
  if (*MEMORY[0x1E698A548] == a5)
  {
    v15 = 1;
  }

  else if (*MEMORY[0x1E698A340] == a5)
  {
    v15 = 0;
  }

  else if (*MEMORY[0x1E698A3C8] == a5)
  {
    v15 = 2;
  }

  else
  {
    v15 = 5;
  }

  v16 = [(MFComposeRecipient *)self initWithContact:0 address:v13 kind:v15];
  if (v16)
  {
    if (a3)
    {
      v16->_record = CFRetain(a3);
      v16->_recordID = a4;
    }

    else
    {
      a6 = -1;
    }

    v16->_identifier = a6;
    objc_storeStrong(&v16->_address, a7);
    v16->_property = a5;
    if (v14 == a5)
    {
      v17 = 1;
    }

    else if (*MEMORY[0x1E698A340] == a5)
    {
      v17 = 0;
    }

    else
    {
      v17 = 5;
      if (*MEMORY[0x1E698A3C8] == a5)
      {
        v17 = 2;
      }
    }

    v16->_kind = v17;
  }

  return v16;
}

+ (id)recipientWithRecord:(void *)a3 recordID:(int)a4 property:(int)a5 identifier:(int)a6
{
  v6 = [[a1 alloc] initWithRecord:a3 recordID:*&a4 property:*&a5 identifier:*&a6 address:0];

  return v6;
}

+ (id)recipientWithRecord:(void *)a3 property:(int)a4 identifier:(int)a5
{
  v5 = [[a1 alloc] initWithRecord:a3 recordID:0xFFFFFFFFLL property:*&a4 identifier:*&a5 address:0];

  return v5;
}

+ (id)recipientWithProperty:(int)a3 address:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = [[a1 alloc] initWithRecord:0 recordID:0xFFFFFFFFLL property:v4 identifier:0xFFFFFFFFLL address:v6];

  return v7;
}

- (void)setRecord:(void *)a3 recordID:(int)a4 identifier:(int)a5
{
  if (a3 && !self->_record)
  {
    self->_record = CFRetain(a3);
    self->_recordID = a4;
    self->_identifier = a5;
    label = self->_label;
    self->_label = 0;
  }
}

- (void)setIdentifier:(int)a3
{
  if (self->_identifier != a3)
  {
    v5 = [(MFComposeRecipient *)self record];
    if (v5)
    {
      v6 = ABRecordCopyValue(v5, self->_property);
      if (v6)
      {
        v7 = v6;
        if (ABMultiValueGetCount(v6) >= 1 && ABMultiValueGetIndexForIdentifier(v7, a3) != -1)
        {
          self->_identifier = a3;
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
  v2 = [MEMORY[0x1E695D148] descriptorForRequiredKeys];
  v5[2] = v2;
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
      v17 = [v9 localizedDescription];
      *buf = 134218242;
      v22 = self;
      v23 = 2112;
      v24 = v17;
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
  v3 = [(MFComposeRecipientOriginContext *)self->_originContext searchTerm];
  v8[0] = self;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v7 = 0;
  v5 = _fastCountOfCompleteMatches(v3, v4, &v7) != 0;

  return v5;
}

- (id)completelyMatchedAttributedStrings
{
  v14[1] = *MEMORY[0x1E69E9840];
  cachedMatchedStrings = self->_cachedMatchedStrings;
  if (!cachedMatchedStrings)
  {
    v4 = [(MFComposeRecipientOriginContext *)self->_originContext searchTerm];
    v14[0] = self;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v12 = 0;
    v13 = 0;
    v6 = _sortedArrayByRelevancy(v4, v5, &v13, &v12);
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
  v3 = [(MFComposeRecipient *)self uncommentedAddress];
  kind = self->_kind;
  v5 = v3;
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

- (void)setAddress:(id)a3
{
  v7 = a3;
  v4 = [v7 copy];
  address = self->_address;
  self->_address = v4;

  compositeName = self->_compositeName;
  self->_compositeName = 0;
}

- (NSString)normalizedAddress
{
  v3 = [(MFComposeRecipient *)self uncommentedAddress];
  kind = self->_kind;
  v5 = v3;
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
    v3 = [(MFComposeRecipient *)self address];
  }

  else
  {
    v4 = [(MFComposeRecipient *)self uncommentedAddress];
    v5 = [(MFComposeRecipient *)self compositeName];
    v6 = v5;
    if (v4 && v5)
    {
      v7 = [MEMORY[0x1E699AFC0] formattedAddressWithName:v5 email:v4 useQuotes:1];
    }

    else
    {
      v7 = v4;
    }

    v3 = v7;
    if (!v7)
    {
      address = self->_address;
      if (address)
      {
        v9 = [(NSString *)address ea_uncommentedAddress];
        v10 = [(NSString *)self->_address ea_addressComment];
        v3 = [MEMORY[0x1E699AFC0] formattedAddressWithName:v10 email:v9 useQuotes:1];
      }

      else
      {
        v3 = 0;
      }
    }
  }

  return v3;
}

- (NSString)label
{
  label = self->_label;
  if (!label)
  {
    v4 = [(MFComposeRecipient *)self unlocalizedLabel];
    if (v4)
    {
      v5 = [(MFComposeRecipient *)self contact];

      if (v5)
      {
        v6 = [MEMORY[0x1E695CEE0] localizedStringForLabel:v4];
      }

      else
      {
        v6 = ABAddressBookCopyLocalizedLabel(v4);
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
  v3 = [(MFComposeRecipient *)self contact];

  if (v3)
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
    v4 = [(MFComposeRecipient *)self contact];

    if (v4)
    {
      v5 = MEMORY[0x1E695CD80];
      v6 = [(MFComposeRecipient *)self contact];
      v7 = [v5 stringFromContact:v6 style:0];

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
        v8 = [(NSString *)self->_address ea_addressComment];
        v9 = [v8 copy];

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
  v3 = [(MFComposeRecipient *)self compositeName];
  v4 = v3;
  if (!v3 || ([v3 ea_personNameComponents], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_alloc_init(MEMORY[0x1E696ADF8]), objc_msgSend(v6, "setStyle:", 1), objc_msgSend(v6, "stringFromPersonNameComponents:", v5), v7 = objc_claimAutoreleasedReturnValue(), v6, v5, !v7))
  {
    v8 = [(MFComposeRecipient *)self address];
    v9 = v8;
    if (v8)
    {
      if ([v8 ea_isLegalEmailAddress])
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
  v3 = self->_displayString;
  if (![(NSString *)v3 length])
  {
    v4 = [(MFComposeRecipient *)self compositeName];

    v3 = v4;
    if (!v4)
    {
      v3 = [(MFComposeRecipient *)self address];
      if (!v3)
      {
        v3 = [(MFComposeRecipient *)self placeholderName];
      }
    }
  }

  return v3;
}

- (NSString)placeholderName
{
  v2 = [(MFComposeRecipient *)self sourceType];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (v2 == 1)
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
      v4 = address;
    }

    else
    {
      v4 = [(NSString *)address ea_uncommentedAddress];
    }

    v8 = v4;
    goto LABEL_17;
  }

  v5 = [(MFComposeRecipient *)self contact];

  if (!v5)
  {
    v15 = [(MFComposeRecipient *)self record];
    if (!v15 || (v16 = ABRecordCopyValue(v15, self->_property), (v17 = v16) == 0))
    {
      v8 = 0;
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
        v8 = 0;
LABEL_42:
        CFRelease(v17);
        goto LABEL_17;
      }
    }

    v8 = ABMultiValueCopyValueAtIndex(v17, IndexForIdentifier);
    goto LABEL_42;
  }

  if (self->_kind == 1)
  {
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v6 = [(MFComposeRecipient *)self contact];
    v7 = [v6 phoneNumbers];

    v8 = [v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v8)
    {
      v9 = *v33;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v32 + 1) + 8 * i);
          v12 = [v11 identifier];
          v13 = [v12 isEqualToString:self->_valueIdentifier];

          if (v13)
          {
            v27 = [v11 value];
            v8 = [v27 stringValue];

            goto LABEL_37;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v8)
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
    v20 = [(MFComposeRecipient *)self contact];
    v21 = [v20 emailAddresses];

    v8 = [v21 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v8)
    {
      v22 = *v29;
      while (2)
      {
        for (j = 0; j != v8; j = j + 1)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(v21);
          }

          v24 = *(*(&v28 + 1) + 8 * j);
          v25 = [v24 identifier];
          v26 = [v25 isEqualToString:self->_valueIdentifier];

          if (v26)
          {
            v8 = [v24 value];
            goto LABEL_39;
          }
        }

        v8 = [v21 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_39:
  }

LABEL_17:

  return v8;
}

- (id)_unformattedAddress
{
  v3 = [(MFComposeRecipient *)self uncommentedAddress];
  if (self->_kind == 1)
  {
    v4 = UIUnformattedPhoneNumberFromString();

    v3 = v4;
  }

  return v3;
}

- (id)labeledValueIdentifier
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1;
  v14 = __Block_byref_object_dispose__1;
  v15 = 0;
  v3 = [(MFComposeRecipient *)self contact];
  if (v3)
  {
    address = self->_address;

    if (address)
    {
      v5 = [(MFComposeRecipient *)self contact];
      v6 = [v5 emailAddresses];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __44__MFComposeRecipient_labeledValueIdentifier__block_invoke;
      v9[3] = &unk_1E806CF70;
      v9[4] = self;
      v9[5] = &v10;
      [v6 enumerateObjectsUsingBlock:v9];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    if (self->_kind == 1)
    {
      v5 = [(MFComposeRecipient *)self _unformattedAddress];
      [v5 UTF8String];

      v6 = [(MFComposeRecipient *)v4 _unformattedAddress];
      [v6 UTF8String];

      v7 = [(MFComposeRecipient *)self countryCode];
      if (!v7)
      {
        active = CPPhoneNumberCopyActiveCountryCode();
        CFAutorelease(active);
      }

      v9 = CPPhoneNumbersEqual();
    }

    else
    {
      v10 = [(MFComposeRecipient *)self address];
      if (!v10 || ([(MFComposeRecipient *)v4 address], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, !v11))
      {
        v9 = 0;
        goto LABEL_12;
      }

      v7 = [(MFComposeRecipient *)v4 address];
      v12 = [(MFComposeRecipient *)self address];
      v9 = [v12 ea_isEqualToEmailAddress:v7];
    }
  }

LABEL_12:

  return v9;
}

- (unint64_t)hash
{
  if ([(MFComposeRecipient *)self record]&& *MEMORY[0x1E698A548] == self->_property)
  {
    v3 = [(MFComposeRecipient *)self _unformattedAddress];
    if (v3)
    {
      v8 = 0;
      CPPhoneNumberGetLastFour();
    }

    v4 = 0;
    goto LABEL_10;
  }

  v5 = [(MFComposeRecipient *)self address];

  if (v5)
  {
    v3 = [(MFComposeRecipient *)self address];
    v4 = [v3 hash];
LABEL_10:

    return v4;
  }

  v7.receiver = self;
  v7.super_class = MFComposeRecipient;
  return [(MFComposeRecipient *)&v7 hash];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E695DF70] array];
  if (([(MFComposeRecipient *)self sourceType]& 2) != 0)
  {
    [v3 addObject:@"Contact"];
  }

  if (([(MFComposeRecipient *)self sourceType]& 0x10) != 0)
  {
    [v3 addObject:@"Prediction"];
  }

  if (([(MFComposeRecipient *)self sourceType]& 1) != 0)
  {
    [v3 addObject:@"Recent"];
  }

  if (([(MFComposeRecipient *)self sourceType]& 0x48) != 0)
  {
    [v3 addObject:@"Server"];
  }

  if (([(MFComposeRecipient *)self sourceType]& 4) != 0)
  {
    [v3 addObject:@"Suggestion"];
  }

  if (![(MFComposeRecipient *)self sourceType])
  {
    [v3 addObject:@"<undefined>"];
  }

  v4 = [v3 componentsJoinedByString:@"+"];
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [(MFComposeRecipient *)self displayString];
  v9 = [(MFComposeRecipient *)self address];
  v10 = [v5 stringWithFormat:@"<%@: %p displayString: %@; address: %@; autocompleteSource: %@>", v7, self, v8, v9, v4];;

  return v10;
}

@end