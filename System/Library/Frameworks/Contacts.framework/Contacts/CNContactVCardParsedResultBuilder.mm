@interface CNContactVCardParsedResultBuilder
+ (id)contactKeyForVCardKey:(id)key;
+ (id)contactValueTransformForVCardKey:(id)key;
+ (id)labeledValuesWithValues:(id)values transform:(id)transform labels:(id)labels isPrimaries:(id)primaries;
+ (id)os_log;
- (BOOL)setImageData:(id)data forReference:(id)reference clipRects:(id)rects;
- (BOOL)setPersonFlags:(int64_t)flags;
- (BOOL)setValue:(id)value forProperty:(id)property;
- (BOOL)setValues:(id)values labels:(id)labels isPrimaries:(id)primaries forProperty:(id)property;
- (CNContactVCardParsedResultBuilder)init;
- (id)build;
- (id)valueForProperty:(id)property;
- (int64_t)personFlags;
- (unint64_t)personFlagsByAddingContactType:(int64_t)type toFlags:(unint64_t)flags;
- (unint64_t)personFlagsByAddingSharedPhotoDisplayPreference:(int64_t)preference toFlags:(unint64_t)flags;
@end

@implementation CNContactVCardParsedResultBuilder

+ (id)contactKeyForVCardKey:(id)key
{
  v3 = contactKeyForVCardKey__cn_once_token_0;
  keyCopy = key;
  if (v3 != -1)
  {
    +[CNContactVCardParsedResultBuilder contactKeyForVCardKey:];
  }

  v5 = [contactKeyForVCardKey__cn_once_object_0 objectForKeyedSubscript:keyCopy];

  return v5;
}

void __59__CNContactVCardParsedResultBuilder_contactKeyForVCardKey___block_invoke()
{
  v22[37] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E49B0];
  v21[0] = *MEMORY[0x1E69E4960];
  v21[1] = v0;
  v22[0] = @"givenName";
  v22[1] = @"middleName";
  v1 = *MEMORY[0x1E69E49C0];
  v21[2] = *MEMORY[0x1E69E4998];
  v21[3] = v1;
  v22[2] = @"familyName";
  v22[3] = @"namePrefix";
  v2 = *MEMORY[0x1E69E49C8];
  v21[4] = *MEMORY[0x1E69E49B8];
  v21[5] = v2;
  v22[4] = @"nameSuffix";
  v22[5] = @"nickname";
  v3 = *MEMORY[0x1E69E49F0];
  v21[6] = *MEMORY[0x1E69E49A0];
  v21[7] = v3;
  v22[6] = @"previousFamilyName";
  v22[7] = @"phoneticGivenName";
  v4 = *MEMORY[0x1E69E49F8];
  v21[8] = *MEMORY[0x1E69E4A00];
  v21[9] = v4;
  v22[8] = @"phoneticMiddleName";
  v22[9] = @"phoneticFamilyName";
  v5 = *MEMORY[0x1E69E4A28];
  v21[10] = *MEMORY[0x1E69E4A20];
  v21[11] = v5;
  v22[10] = @"pronunciationGivenName";
  v22[11] = @"pronunciationFamilyName";
  v6 = *MEMORY[0x1E69E49D8];
  v21[12] = *MEMORY[0x1E69E4938];
  v21[13] = v6;
  v22[12] = @"addressingGrammars";
  v22[13] = @"organizationName";
  v7 = *MEMORY[0x1E69E4990];
  v21[14] = *MEMORY[0x1E69E4950];
  v21[15] = v7;
  v22[14] = @"departmentName";
  v22[15] = @"jobTitle";
  v8 = *MEMORY[0x1E69E4940];
  v21[16] = *MEMORY[0x1E69E4948];
  v21[17] = v8;
  v22[16] = @"birthday";
  v22[17] = @"nonGregorianBirthday";
  v9 = *MEMORY[0x1E69E4958];
  v21[18] = *MEMORY[0x1E69E49E8];
  v21[19] = v9;
  v22[18] = @"phoneNumbers";
  v22[19] = @"emailAddresses";
  v10 = *MEMORY[0x1E69E4A40];
  v21[20] = *MEMORY[0x1E69E4A08];
  v21[21] = v10;
  v22[20] = @"postalAddresses";
  v22[21] = @"socialProfiles";
  v11 = *MEMORY[0x1E69E4A48];
  v21[22] = *MEMORY[0x1E69E4988];
  v21[23] = v11;
  v22[22] = @"instantMessageAddresses";
  v22[23] = @"urlAddresses";
  v12 = *MEMORY[0x1E69E49E0];
  v21[24] = *MEMORY[0x1E69E4A30];
  v21[25] = v12;
  v22[24] = @"contactRelations";
  v22[25] = @"dates";
  v13 = *MEMORY[0x1E69E4A10];
  v21[26] = *MEMORY[0x1E69E4A18];
  v21[27] = v13;
  v22[26] = @"preferredLikenessSource";
  v22[27] = @"preferredApplePersonaIdentifier";
  v14 = *MEMORY[0x1E69E49D0];
  v21[28] = *MEMORY[0x1E69E4968];
  v21[29] = v14;
  v22[28] = @"downtimeWhitelist";
  v22[29] = @"note";
  v15 = *MEMORY[0x1E69E4978];
  v21[30] = *MEMORY[0x1E69E4980];
  v21[31] = v15;
  v22[30] = @"imageType";
  v22[31] = @"imageHash";
  v16 = *MEMORY[0x1E69E4A50];
  v21[32] = *MEMORY[0x1E69E49A8];
  v21[33] = v16;
  v22[32] = @"memojiMetadata";
  v22[33] = @"wallpaper";
  v17 = *MEMORY[0x1E69E4A38];
  v21[34] = *MEMORY[0x1E69E4A58];
  v21[35] = v17;
  v22[34] = @"watchWallpaperImageData";
  v22[35] = @"sharedPhotoDisplayPreference";
  v21[36] = *MEMORY[0x1E69E4970];
  v22[36] = @"imageBackgroundColorsData";
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:37];
  v19 = [v18 copy];
  v20 = contactKeyForVCardKey__cn_once_object_0;
  contactKeyForVCardKey__cn_once_object_0 = v19;
}

+ (id)contactValueTransformForVCardKey:(id)key
{
  keyCopy = key;
  if (contactValueTransformForVCardKey__cn_once_token_1 != -1)
  {
    +[CNContactVCardParsedResultBuilder contactValueTransformForVCardKey:];
  }

  v4 = [contactValueTransformForVCardKey__cn_once_object_1 objectForKeyedSubscript:keyCopy];
  if (!v4)
  {
    v4 = _Block_copy(*MEMORY[0x1E6996520]);
  }

  v5 = _Block_copy(v4);

  return v5;
}

void __70__CNContactVCardParsedResultBuilder_contactValueTransformForVCardKey___block_invoke()
{
  v10[7] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E4A40];
  v9[0] = *MEMORY[0x1E69E4A08];
  v9[1] = v0;
  v10[0] = &__block_literal_global_6;
  v10[1] = &__block_literal_global_10;
  v10[2] = &__block_literal_global_13;
  v1 = *MEMORY[0x1E69E49E8];
  v9[2] = *MEMORY[0x1E69E4988];
  v9[3] = v1;
  v2 = +[CN phoneNumberFromStringTransform];
  v10[3] = v2;
  v9[4] = *MEMORY[0x1E69E4A30];
  v3 = +[CN relatedContactFromStringTransform];
  v10[4] = v3;
  v9[5] = *MEMORY[0x1E69E4938];
  v4 = +[CN addressingGrammarFromStringTransform];
  v10[5] = v4;
  v9[6] = *MEMORY[0x1E69E4A50];
  v5 = +[CN wallpaperFromDataTransform];
  v10[6] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:7];
  v7 = [v6 copy];
  v8 = contactValueTransformForVCardKey__cn_once_object_1;
  contactValueTransformForVCardKey__cn_once_object_1 = v7;
}

- (CNContactVCardParsedResultBuilder)init
{
  v7.receiver = self;
  v7.super_class = CNContactVCardParsedResultBuilder;
  v2 = [(CNContactVCardParsedResultBuilder *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(CNMutableContact);
    contact = v2->_contact;
    v2->_contact = v3;

    v2->_empty = 1;
    v5 = v2;
  }

  return v2;
}

+ (id)os_log
{
  if (os_log_cn_once_token_2_1 != -1)
  {
    +[CNContactVCardParsedResultBuilder os_log];
  }

  v3 = os_log_cn_once_object_2_1;

  return v3;
}

uint64_t __43__CNContactVCardParsedResultBuilder_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.vcard", "parser");
  v1 = os_log_cn_once_object_2_1;
  os_log_cn_once_object_2_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)build
{
  if (self->_empty)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(CNMutableContact *)self->_contact copy];
  }

  return v4;
}

- (id)valueForProperty:(id)property
{
  if ([property isEqual:*MEMORY[0x1E69E4930]])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CNContactVCardParsedResultBuilder personFlags](self, "personFlags")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)setValue:(id)value forProperty:(id)property
{
  v20 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  propertyCopy = property;
  v8 = [objc_opt_class() contactKeyForVCardKey:propertyCopy];
  v9 = MEMORY[0x1E69E4930];
  if (v8 || ([propertyCopy isEqual:*MEMORY[0x1E69E4930]] & 1) != 0)
  {
    if (valueCopy)
    {
      self->_empty = 0;
    }

    if ([propertyCopy isEqual:*v9])
    {
      -[CNContactVCardParsedResultBuilder setPersonFlags:](self, "setPersonFlags:", [valueCopy integerValue]);
    }

    else
    {
      v10 = [objc_opt_class() contactValueTransformForVCardKey:propertyCopy];
      v11 = v10;
      if (v10)
      {
        v12 = (*(v10 + 16))(v10, valueCopy);

        valueCopy = v12;
      }

      [(CNMutableContact *)self->_contact setValue:valueCopy forKey:v8];
    }

    v13 = 1;
  }

  else
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = propertyCopy;
      v18 = 2112;
      v19 = valueCopy;
      _os_log_impl(&dword_1954A0000, os_log, OS_LOG_TYPE_DEFAULT, "Not sure how to handle '%@': %@", &v16, 0x16u);
    }

    v13 = 0;
  }

  return v13;
}

- (BOOL)setValues:(id)values labels:(id)labels isPrimaries:(id)primaries forProperty:(id)property
{
  v23 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  labelsCopy = labels;
  primariesCopy = primaries;
  propertyCopy = property;
  v14 = [objc_opt_class() contactKeyForVCardKey:propertyCopy];
  if (v14)
  {
    if ([valuesCopy count])
    {
      self->_empty = 0;
    }

    v15 = [objc_opt_class() contactValueTransformForVCardKey:propertyCopy];
    v16 = [objc_opt_class() labeledValuesWithValues:valuesCopy transform:v15 labels:labelsCopy isPrimaries:primariesCopy];
    [(CNMutableContact *)self->_contact setValue:v16 forKey:v14];
  }

  else
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412546;
      v20 = propertyCopy;
      v21 = 2112;
      v22 = valuesCopy;
      _os_log_impl(&dword_1954A0000, os_log, OS_LOG_TYPE_DEFAULT, "Not sure how to handle '%@': %@", &v19, 0x16u);
    }
  }

  return v14 != 0;
}

+ (id)labeledValuesWithValues:(id)values transform:(id)transform labels:(id)labels isPrimaries:(id)primaries
{
  v29 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  transformCopy = transform;
  labelsCopy = labels;
  primariesCopy = primaries;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  if ([valuesCopy count])
  {
    v14 = 0;
    *&v13 = 138412290;
    v24 = v13;
    do
    {
      os_log = [valuesCopy objectAtIndexedSubscript:{v14, v24}];
      if (transformCopy && (transformCopy[2](transformCopy, os_log), v16 = objc_claimAutoreleasedReturnValue(), os_log, (os_log = v16) == 0))
      {
        os_log = [objc_opt_class() os_log];
        if (!os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_11;
        }

        v17 = [valuesCopy objectAtIndexedSubscript:v14];
        *buf = v24;
        v28 = v17;
        _os_log_debug_impl(&dword_1954A0000, os_log, OS_LOG_TYPE_DEBUG, "Got nil when transforming from vcard value:%@", buf, 0xCu);
      }

      else
      {
        v17 = [labelsCopy objectAtIndexedSubscript:v14];
        v18 = [[CNLabeledValue alloc] initWithLabel:v17 value:os_log];
        v19 = [primariesCopy objectAtIndexedSubscript:v14];
        bOOLValue = [v19 BOOLValue];

        if (bOOLValue)
        {
          v21 = array;
        }

        else
        {
          v21 = array2;
        }

        [v21 addObject:v18];
      }

LABEL_11:
      ++v14;
    }

    while (v14 < [valuesCopy count]);
  }

  v22 = [array mutableCopy];
  [v22 addObjectsFromArray:array2];

  return v22;
}

- (BOOL)setImageData:(id)data forReference:(id)reference clipRects:(id)rects
{
  dataCopy = data;
  referenceCopy = reference;
  rectsCopy = rects;
  if (dataCopy && [dataCopy length])
  {
    self->_empty = 0;
    [(CNMutableContact *)self->_contact setImageData:dataCopy];
    firstObject = [rectsCopy firstObject];
    v12 = [firstObject objectForKeyedSubscript:@"kABImageInfoClipRectKey"];
    v13 = v12;
    if (v12)
    {
      [v12 rectValue];
      [(CNMutableContact *)self->_contact setCropRect:?];
    }
  }

  return 1;
}

- (unint64_t)personFlagsByAddingContactType:(int64_t)type toFlags:(unint64_t)flags
{
  if (type == 1)
  {
    return (flags & 0xFFFFFFFFFFFFFFF8) + 1;
  }

  else
  {
    return flags & 0xFFFFFFFFFFFFFFF8;
  }
}

- (unint64_t)personFlagsByAddingSharedPhotoDisplayPreference:(int64_t)preference toFlags:(unint64_t)flags
{
  if ((preference - 1) >= 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((preference - 1) << 6) + 64;
  }

  return v4 | flags & 0xFFFFFFFFFFFFFF3FLL;
}

- (BOOL)setPersonFlags:(int64_t)flags
{
  [(CNMutableContact *)self->_contact setContactType:[(CNContactVCardParsedResultBuilder *)self contactTypeFromPersonFlags:?]];
  [(CNMutableContact *)self->_contact setSharedPhotoDisplayPreference:[(CNContactVCardParsedResultBuilder *)self sharedPhotoDisplayPreferenceFromPersonFlags:flags]];
  return 1;
}

- (int64_t)personFlags
{
  v3 = [(CNContactVCardParsedResultBuilder *)self personFlagsByAddingContactType:[(CNMutableContact *)self->_contact contactType] toFlags:0];
  sharedPhotoDisplayPreference = [(CNMutableContact *)self->_contact sharedPhotoDisplayPreference];

  return [(CNContactVCardParsedResultBuilder *)self personFlagsByAddingSharedPhotoDisplayPreference:sharedPhotoDisplayPreference toFlags:v3];
}

@end