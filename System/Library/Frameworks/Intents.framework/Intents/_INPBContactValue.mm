@interface _INPBContactValue
- (BOOL)isEqual:(id)equal;
- (_INPBContactValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsSearchProvider:(id)provider;
- (int)StringAsSuggestionType:(id)type;
- (unint64_t)hash;
- (void)addAliases:(id)aliases;
- (void)encodeWithCoder:(id)coder;
- (void)setAliases:(id)aliases;
- (void)setCustomIdentifier:(id)identifier;
- (void)setFirstName:(id)name;
- (void)setFullName:(id)name;
- (void)setHandle:(id)handle;
- (void)setHasIsMe:(BOOL)me;
- (void)setHasSearchProvider:(BOOL)provider;
- (void)setHasSuggestionType:(BOOL)type;
- (void)setLastName:(id)name;
- (void)setMiddleName:(id)name;
- (void)setNamePrefix:(id)prefix;
- (void)setNameSuffix:(id)suffix;
- (void)setNickName:(id)name;
- (void)setPhonemeData:(id)data;
- (void)setPhoneticFirstName:(id)name;
- (void)setPhoneticLastName:(id)name;
- (void)setPhoneticMiddleName:(id)name;
- (void)setPhoneticNamePrefix:(id)prefix;
- (void)setPhoneticNameSuffix:(id)suffix;
- (void)setRelationship:(id)relationship;
- (void)setSearchProvider:(int)provider;
- (void)setSuggestionType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBContactValue

- (id)dictionaryRepresentation
{
  v62 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_aliases count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v5 = self->_aliases;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v57 objects:v61 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v58;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v58 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v57 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v57 objects:v61 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"aliases"];
  }

  contactHandle = [(_INPBContactValue *)self contactHandle];
  dictionaryRepresentation2 = [contactHandle dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"contactHandle"];

  if (self->_customIdentifier)
  {
    customIdentifier = [(_INPBContactValue *)self customIdentifier];
    v14 = [customIdentifier copy];
    [dictionary setObject:v14 forKeyedSubscript:@"customIdentifier"];
  }

  if (self->_firstName)
  {
    firstName = [(_INPBContactValue *)self firstName];
    v16 = [firstName copy];
    [dictionary setObject:v16 forKeyedSubscript:@"firstName"];
  }

  if (self->_fullName)
  {
    fullName = [(_INPBContactValue *)self fullName];
    v18 = [fullName copy];
    [dictionary setObject:v18 forKeyedSubscript:@"fullName"];
  }

  if (self->_handle)
  {
    handle = [(_INPBContactValue *)self handle];
    v20 = [handle copy];
    [dictionary setObject:v20 forKeyedSubscript:@"handle"];
  }

  image = [(_INPBContactValue *)self image];
  dictionaryRepresentation3 = [image dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"image"];

  if ([(_INPBContactValue *)self hasIsContactSuggestion])
  {
    v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBContactValue isContactSuggestion](self, "isContactSuggestion")}];
    [dictionary setObject:v23 forKeyedSubscript:@"isContactSuggestion"];
  }

  if ([(_INPBContactValue *)self hasIsMe])
  {
    v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBContactValue isMe](self, "isMe")}];
    [dictionary setObject:v24 forKeyedSubscript:@"isMe"];
  }

  if (self->_lastName)
  {
    lastName = [(_INPBContactValue *)self lastName];
    v26 = [lastName copy];
    [dictionary setObject:v26 forKeyedSubscript:@"lastName"];
  }

  if (self->_middleName)
  {
    middleName = [(_INPBContactValue *)self middleName];
    v28 = [middleName copy];
    [dictionary setObject:v28 forKeyedSubscript:@"middleName"];
  }

  if (self->_namePrefix)
  {
    namePrefix = [(_INPBContactValue *)self namePrefix];
    v30 = [namePrefix copy];
    [dictionary setObject:v30 forKeyedSubscript:@"namePrefix"];
  }

  if (self->_nameSuffix)
  {
    nameSuffix = [(_INPBContactValue *)self nameSuffix];
    v32 = [nameSuffix copy];
    [dictionary setObject:v32 forKeyedSubscript:@"nameSuffix"];
  }

  if (self->_nickName)
  {
    nickName = [(_INPBContactValue *)self nickName];
    v34 = [nickName copy];
    [dictionary setObject:v34 forKeyedSubscript:@"nickName"];
  }

  if (self->_phonemeData)
  {
    phonemeData = [(_INPBContactValue *)self phonemeData];
    v36 = [phonemeData copy];
    [dictionary setObject:v36 forKeyedSubscript:@"phonemeData"];
  }

  if (self->_phoneticFirstName)
  {
    phoneticFirstName = [(_INPBContactValue *)self phoneticFirstName];
    v38 = [phoneticFirstName copy];
    [dictionary setObject:v38 forKeyedSubscript:@"phoneticFirstName"];
  }

  if (self->_phoneticLastName)
  {
    phoneticLastName = [(_INPBContactValue *)self phoneticLastName];
    v40 = [phoneticLastName copy];
    [dictionary setObject:v40 forKeyedSubscript:@"phoneticLastName"];
  }

  if (self->_phoneticMiddleName)
  {
    phoneticMiddleName = [(_INPBContactValue *)self phoneticMiddleName];
    v42 = [phoneticMiddleName copy];
    [dictionary setObject:v42 forKeyedSubscript:@"phoneticMiddleName"];
  }

  if (self->_phoneticNamePrefix)
  {
    phoneticNamePrefix = [(_INPBContactValue *)self phoneticNamePrefix];
    v44 = [phoneticNamePrefix copy];
    [dictionary setObject:v44 forKeyedSubscript:@"phoneticNamePrefix"];
  }

  if (self->_phoneticNameSuffix)
  {
    phoneticNameSuffix = [(_INPBContactValue *)self phoneticNameSuffix];
    v46 = [phoneticNameSuffix copy];
    [dictionary setObject:v46 forKeyedSubscript:@"phoneticNameSuffix"];
  }

  if (self->_relationship)
  {
    relationship = [(_INPBContactValue *)self relationship];
    v48 = [relationship copy];
    [dictionary setObject:v48 forKeyedSubscript:@"relationship"];
  }

  if ([(_INPBContactValue *)self hasSearchProvider])
  {
    searchProvider = [(_INPBContactValue *)self searchProvider];
    if (searchProvider >= 4)
    {
      v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", searchProvider];
    }

    else
    {
      v50 = off_1E727F808[searchProvider];
    }

    [dictionary setObject:v50 forKeyedSubscript:@"searchProvider"];
  }

  if ([(_INPBContactValue *)self hasSuggestionType])
  {
    suggestionType = [(_INPBContactValue *)self suggestionType];
    if (suggestionType >= 3)
    {
      v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", suggestionType];
    }

    else
    {
      v52 = off_1E727F828[suggestionType];
    }

    [dictionary setObject:v52 forKeyedSubscript:@"suggestionType"];
  }

  valueMetadata = [(_INPBContactValue *)self valueMetadata];
  dictionaryRepresentation4 = [valueMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"valueMetadata"];

  v55 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v26 = [(NSArray *)self->_aliases hash];
  v25 = [(_INPBContactHandle *)self->_contactHandle hash];
  v24 = [(NSString *)self->_customIdentifier hash];
  v23 = [(NSString *)self->_firstName hash];
  v22 = [(NSString *)self->_fullName hash];
  v21 = [(NSString *)self->_handle hash];
  v20 = [(_INPBImageValue *)self->_image hash];
  if ([(_INPBContactValue *)self hasIsContactSuggestion])
  {
    v19 = 2654435761 * self->_isContactSuggestion;
  }

  else
  {
    v19 = 0;
  }

  if ([(_INPBContactValue *)self hasIsMe])
  {
    v18 = 2654435761 * self->_isMe;
  }

  else
  {
    v18 = 0;
  }

  v17 = [(NSString *)self->_lastName hash];
  v16 = [(NSString *)self->_middleName hash];
  v15 = [(NSString *)self->_namePrefix hash];
  v14 = [(NSString *)self->_nameSuffix hash];
  v13 = [(NSString *)self->_nickName hash];
  v3 = [(NSString *)self->_phonemeData hash];
  v4 = [(NSString *)self->_phoneticFirstName hash];
  v5 = [(NSString *)self->_phoneticLastName hash];
  v6 = [(NSString *)self->_phoneticMiddleName hash];
  v7 = [(NSString *)self->_phoneticNamePrefix hash];
  v8 = [(NSString *)self->_phoneticNameSuffix hash];
  v9 = [(NSString *)self->_relationship hash];
  if ([(_INPBContactValue *)self hasSearchProvider])
  {
    v10 = 2654435761 * self->_searchProvider;
  }

  else
  {
    v10 = 0;
  }

  if ([(_INPBContactValue *)self hasSuggestionType])
  {
    v11 = 2654435761 * self->_suggestionType;
  }

  else
  {
    v11 = 0;
  }

  return v25 ^ v26 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v14 ^ v13 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(_INPBValueMetadata *)self->_valueMetadata hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_118;
  }

  aliases = [(_INPBContactValue *)self aliases];
  aliases2 = [equalCopy aliases];
  if ((aliases != 0) == (aliases2 == 0))
  {
    goto LABEL_117;
  }

  aliases3 = [(_INPBContactValue *)self aliases];
  if (aliases3)
  {
    v8 = aliases3;
    aliases4 = [(_INPBContactValue *)self aliases];
    aliases5 = [equalCopy aliases];
    v11 = [aliases4 isEqual:aliases5];

    if (!v11)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  aliases = [(_INPBContactValue *)self contactHandle];
  aliases2 = [equalCopy contactHandle];
  if ((aliases != 0) == (aliases2 == 0))
  {
    goto LABEL_117;
  }

  contactHandle = [(_INPBContactValue *)self contactHandle];
  if (contactHandle)
  {
    v13 = contactHandle;
    contactHandle2 = [(_INPBContactValue *)self contactHandle];
    contactHandle3 = [equalCopy contactHandle];
    v16 = [contactHandle2 isEqual:contactHandle3];

    if (!v16)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  aliases = [(_INPBContactValue *)self customIdentifier];
  aliases2 = [equalCopy customIdentifier];
  if ((aliases != 0) == (aliases2 == 0))
  {
    goto LABEL_117;
  }

  customIdentifier = [(_INPBContactValue *)self customIdentifier];
  if (customIdentifier)
  {
    v18 = customIdentifier;
    customIdentifier2 = [(_INPBContactValue *)self customIdentifier];
    customIdentifier3 = [equalCopy customIdentifier];
    v21 = [customIdentifier2 isEqual:customIdentifier3];

    if (!v21)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  aliases = [(_INPBContactValue *)self firstName];
  aliases2 = [equalCopy firstName];
  if ((aliases != 0) == (aliases2 == 0))
  {
    goto LABEL_117;
  }

  firstName = [(_INPBContactValue *)self firstName];
  if (firstName)
  {
    v23 = firstName;
    firstName2 = [(_INPBContactValue *)self firstName];
    firstName3 = [equalCopy firstName];
    v26 = [firstName2 isEqual:firstName3];

    if (!v26)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  aliases = [(_INPBContactValue *)self fullName];
  aliases2 = [equalCopy fullName];
  if ((aliases != 0) == (aliases2 == 0))
  {
    goto LABEL_117;
  }

  fullName = [(_INPBContactValue *)self fullName];
  if (fullName)
  {
    v28 = fullName;
    fullName2 = [(_INPBContactValue *)self fullName];
    fullName3 = [equalCopy fullName];
    v31 = [fullName2 isEqual:fullName3];

    if (!v31)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  aliases = [(_INPBContactValue *)self handle];
  aliases2 = [equalCopy handle];
  if ((aliases != 0) == (aliases2 == 0))
  {
    goto LABEL_117;
  }

  handle = [(_INPBContactValue *)self handle];
  if (handle)
  {
    v33 = handle;
    handle2 = [(_INPBContactValue *)self handle];
    handle3 = [equalCopy handle];
    v36 = [handle2 isEqual:handle3];

    if (!v36)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  aliases = [(_INPBContactValue *)self image];
  aliases2 = [equalCopy image];
  if ((aliases != 0) == (aliases2 == 0))
  {
    goto LABEL_117;
  }

  image = [(_INPBContactValue *)self image];
  if (image)
  {
    v38 = image;
    image2 = [(_INPBContactValue *)self image];
    image3 = [equalCopy image];
    v41 = [image2 isEqual:image3];

    if (!v41)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  hasIsContactSuggestion = [(_INPBContactValue *)self hasIsContactSuggestion];
  if (hasIsContactSuggestion != [equalCopy hasIsContactSuggestion])
  {
    goto LABEL_118;
  }

  if ([(_INPBContactValue *)self hasIsContactSuggestion])
  {
    if ([equalCopy hasIsContactSuggestion])
    {
      isContactSuggestion = self->_isContactSuggestion;
      if (isContactSuggestion != [equalCopy isContactSuggestion])
      {
        goto LABEL_118;
      }
    }
  }

  hasIsMe = [(_INPBContactValue *)self hasIsMe];
  if (hasIsMe != [equalCopy hasIsMe])
  {
    goto LABEL_118;
  }

  if ([(_INPBContactValue *)self hasIsMe])
  {
    if ([equalCopy hasIsMe])
    {
      isMe = self->_isMe;
      if (isMe != [equalCopy isMe])
      {
        goto LABEL_118;
      }
    }
  }

  aliases = [(_INPBContactValue *)self lastName];
  aliases2 = [equalCopy lastName];
  if ((aliases != 0) == (aliases2 == 0))
  {
    goto LABEL_117;
  }

  lastName = [(_INPBContactValue *)self lastName];
  if (lastName)
  {
    v47 = lastName;
    lastName2 = [(_INPBContactValue *)self lastName];
    lastName3 = [equalCopy lastName];
    v50 = [lastName2 isEqual:lastName3];

    if (!v50)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  aliases = [(_INPBContactValue *)self middleName];
  aliases2 = [equalCopy middleName];
  if ((aliases != 0) == (aliases2 == 0))
  {
    goto LABEL_117;
  }

  middleName = [(_INPBContactValue *)self middleName];
  if (middleName)
  {
    v52 = middleName;
    middleName2 = [(_INPBContactValue *)self middleName];
    middleName3 = [equalCopy middleName];
    v55 = [middleName2 isEqual:middleName3];

    if (!v55)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  aliases = [(_INPBContactValue *)self namePrefix];
  aliases2 = [equalCopy namePrefix];
  if ((aliases != 0) == (aliases2 == 0))
  {
    goto LABEL_117;
  }

  namePrefix = [(_INPBContactValue *)self namePrefix];
  if (namePrefix)
  {
    v57 = namePrefix;
    namePrefix2 = [(_INPBContactValue *)self namePrefix];
    namePrefix3 = [equalCopy namePrefix];
    v60 = [namePrefix2 isEqual:namePrefix3];

    if (!v60)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  aliases = [(_INPBContactValue *)self nameSuffix];
  aliases2 = [equalCopy nameSuffix];
  if ((aliases != 0) == (aliases2 == 0))
  {
    goto LABEL_117;
  }

  nameSuffix = [(_INPBContactValue *)self nameSuffix];
  if (nameSuffix)
  {
    v62 = nameSuffix;
    nameSuffix2 = [(_INPBContactValue *)self nameSuffix];
    nameSuffix3 = [equalCopy nameSuffix];
    v65 = [nameSuffix2 isEqual:nameSuffix3];

    if (!v65)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  aliases = [(_INPBContactValue *)self nickName];
  aliases2 = [equalCopy nickName];
  if ((aliases != 0) == (aliases2 == 0))
  {
    goto LABEL_117;
  }

  nickName = [(_INPBContactValue *)self nickName];
  if (nickName)
  {
    v67 = nickName;
    nickName2 = [(_INPBContactValue *)self nickName];
    nickName3 = [equalCopy nickName];
    v70 = [nickName2 isEqual:nickName3];

    if (!v70)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  aliases = [(_INPBContactValue *)self phonemeData];
  aliases2 = [equalCopy phonemeData];
  if ((aliases != 0) == (aliases2 == 0))
  {
    goto LABEL_117;
  }

  phonemeData = [(_INPBContactValue *)self phonemeData];
  if (phonemeData)
  {
    v72 = phonemeData;
    phonemeData2 = [(_INPBContactValue *)self phonemeData];
    phonemeData3 = [equalCopy phonemeData];
    v75 = [phonemeData2 isEqual:phonemeData3];

    if (!v75)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  aliases = [(_INPBContactValue *)self phoneticFirstName];
  aliases2 = [equalCopy phoneticFirstName];
  if ((aliases != 0) == (aliases2 == 0))
  {
    goto LABEL_117;
  }

  phoneticFirstName = [(_INPBContactValue *)self phoneticFirstName];
  if (phoneticFirstName)
  {
    v77 = phoneticFirstName;
    phoneticFirstName2 = [(_INPBContactValue *)self phoneticFirstName];
    phoneticFirstName3 = [equalCopy phoneticFirstName];
    v80 = [phoneticFirstName2 isEqual:phoneticFirstName3];

    if (!v80)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  aliases = [(_INPBContactValue *)self phoneticLastName];
  aliases2 = [equalCopy phoneticLastName];
  if ((aliases != 0) == (aliases2 == 0))
  {
    goto LABEL_117;
  }

  phoneticLastName = [(_INPBContactValue *)self phoneticLastName];
  if (phoneticLastName)
  {
    v82 = phoneticLastName;
    phoneticLastName2 = [(_INPBContactValue *)self phoneticLastName];
    phoneticLastName3 = [equalCopy phoneticLastName];
    v85 = [phoneticLastName2 isEqual:phoneticLastName3];

    if (!v85)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  aliases = [(_INPBContactValue *)self phoneticMiddleName];
  aliases2 = [equalCopy phoneticMiddleName];
  if ((aliases != 0) == (aliases2 == 0))
  {
    goto LABEL_117;
  }

  phoneticMiddleName = [(_INPBContactValue *)self phoneticMiddleName];
  if (phoneticMiddleName)
  {
    v87 = phoneticMiddleName;
    phoneticMiddleName2 = [(_INPBContactValue *)self phoneticMiddleName];
    phoneticMiddleName3 = [equalCopy phoneticMiddleName];
    v90 = [phoneticMiddleName2 isEqual:phoneticMiddleName3];

    if (!v90)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  aliases = [(_INPBContactValue *)self phoneticNamePrefix];
  aliases2 = [equalCopy phoneticNamePrefix];
  if ((aliases != 0) == (aliases2 == 0))
  {
    goto LABEL_117;
  }

  phoneticNamePrefix = [(_INPBContactValue *)self phoneticNamePrefix];
  if (phoneticNamePrefix)
  {
    v92 = phoneticNamePrefix;
    phoneticNamePrefix2 = [(_INPBContactValue *)self phoneticNamePrefix];
    phoneticNamePrefix3 = [equalCopy phoneticNamePrefix];
    v95 = [phoneticNamePrefix2 isEqual:phoneticNamePrefix3];

    if (!v95)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  aliases = [(_INPBContactValue *)self phoneticNameSuffix];
  aliases2 = [equalCopy phoneticNameSuffix];
  if ((aliases != 0) == (aliases2 == 0))
  {
    goto LABEL_117;
  }

  phoneticNameSuffix = [(_INPBContactValue *)self phoneticNameSuffix];
  if (phoneticNameSuffix)
  {
    v97 = phoneticNameSuffix;
    phoneticNameSuffix2 = [(_INPBContactValue *)self phoneticNameSuffix];
    phoneticNameSuffix3 = [equalCopy phoneticNameSuffix];
    v100 = [phoneticNameSuffix2 isEqual:phoneticNameSuffix3];

    if (!v100)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  aliases = [(_INPBContactValue *)self relationship];
  aliases2 = [equalCopy relationship];
  if ((aliases != 0) == (aliases2 == 0))
  {
    goto LABEL_117;
  }

  relationship = [(_INPBContactValue *)self relationship];
  if (relationship)
  {
    v102 = relationship;
    relationship2 = [(_INPBContactValue *)self relationship];
    relationship3 = [equalCopy relationship];
    v105 = [relationship2 isEqual:relationship3];

    if (!v105)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  hasSearchProvider = [(_INPBContactValue *)self hasSearchProvider];
  if (hasSearchProvider != [equalCopy hasSearchProvider])
  {
    goto LABEL_118;
  }

  if ([(_INPBContactValue *)self hasSearchProvider])
  {
    if ([equalCopy hasSearchProvider])
    {
      searchProvider = self->_searchProvider;
      if (searchProvider != [equalCopy searchProvider])
      {
        goto LABEL_118;
      }
    }
  }

  hasSuggestionType = [(_INPBContactValue *)self hasSuggestionType];
  if (hasSuggestionType != [equalCopy hasSuggestionType])
  {
    goto LABEL_118;
  }

  if ([(_INPBContactValue *)self hasSuggestionType])
  {
    if ([equalCopy hasSuggestionType])
    {
      suggestionType = self->_suggestionType;
      if (suggestionType != [equalCopy suggestionType])
      {
        goto LABEL_118;
      }
    }
  }

  aliases = [(_INPBContactValue *)self valueMetadata];
  aliases2 = [equalCopy valueMetadata];
  if ((aliases != 0) != (aliases2 == 0))
  {
    valueMetadata = [(_INPBContactValue *)self valueMetadata];
    if (!valueMetadata)
    {

LABEL_121:
      v115 = 1;
      goto LABEL_119;
    }

    v111 = valueMetadata;
    valueMetadata2 = [(_INPBContactValue *)self valueMetadata];
    valueMetadata3 = [equalCopy valueMetadata];
    v114 = [valueMetadata2 isEqual:valueMetadata3];

    if (v114)
    {
      goto LABEL_121;
    }
  }

  else
  {
LABEL_117:
  }

LABEL_118:
  v115 = 0;
LABEL_119:

  return v115;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBContactValue allocWithZone:](_INPBContactValue init];
  v6 = [(NSArray *)self->_aliases copyWithZone:zone];
  [(_INPBContactValue *)v5 setAliases:v6];

  v7 = [(_INPBContactHandle *)self->_contactHandle copyWithZone:zone];
  [(_INPBContactValue *)v5 setContactHandle:v7];

  v8 = [(NSString *)self->_customIdentifier copyWithZone:zone];
  [(_INPBContactValue *)v5 setCustomIdentifier:v8];

  v9 = [(NSString *)self->_firstName copyWithZone:zone];
  [(_INPBContactValue *)v5 setFirstName:v9];

  v10 = [(NSString *)self->_fullName copyWithZone:zone];
  [(_INPBContactValue *)v5 setFullName:v10];

  v11 = [(NSString *)self->_handle copyWithZone:zone];
  [(_INPBContactValue *)v5 setHandle:v11];

  v12 = [(_INPBImageValue *)self->_image copyWithZone:zone];
  [(_INPBContactValue *)v5 setImage:v12];

  if ([(_INPBContactValue *)self hasIsContactSuggestion])
  {
    [(_INPBContactValue *)v5 setIsContactSuggestion:[(_INPBContactValue *)self isContactSuggestion]];
  }

  if ([(_INPBContactValue *)self hasIsMe])
  {
    [(_INPBContactValue *)v5 setIsMe:[(_INPBContactValue *)self isMe]];
  }

  v13 = [(NSString *)self->_lastName copyWithZone:zone];
  [(_INPBContactValue *)v5 setLastName:v13];

  v14 = [(NSString *)self->_middleName copyWithZone:zone];
  [(_INPBContactValue *)v5 setMiddleName:v14];

  v15 = [(NSString *)self->_namePrefix copyWithZone:zone];
  [(_INPBContactValue *)v5 setNamePrefix:v15];

  v16 = [(NSString *)self->_nameSuffix copyWithZone:zone];
  [(_INPBContactValue *)v5 setNameSuffix:v16];

  v17 = [(NSString *)self->_nickName copyWithZone:zone];
  [(_INPBContactValue *)v5 setNickName:v17];

  v18 = [(NSString *)self->_phonemeData copyWithZone:zone];
  [(_INPBContactValue *)v5 setPhonemeData:v18];

  v19 = [(NSString *)self->_phoneticFirstName copyWithZone:zone];
  [(_INPBContactValue *)v5 setPhoneticFirstName:v19];

  v20 = [(NSString *)self->_phoneticLastName copyWithZone:zone];
  [(_INPBContactValue *)v5 setPhoneticLastName:v20];

  v21 = [(NSString *)self->_phoneticMiddleName copyWithZone:zone];
  [(_INPBContactValue *)v5 setPhoneticMiddleName:v21];

  v22 = [(NSString *)self->_phoneticNamePrefix copyWithZone:zone];
  [(_INPBContactValue *)v5 setPhoneticNamePrefix:v22];

  v23 = [(NSString *)self->_phoneticNameSuffix copyWithZone:zone];
  [(_INPBContactValue *)v5 setPhoneticNameSuffix:v23];

  v24 = [(NSString *)self->_relationship copyWithZone:zone];
  [(_INPBContactValue *)v5 setRelationship:v24];

  if ([(_INPBContactValue *)self hasSearchProvider])
  {
    [(_INPBContactValue *)v5 setSearchProvider:[(_INPBContactValue *)self searchProvider]];
  }

  if ([(_INPBContactValue *)self hasSuggestionType])
  {
    [(_INPBContactValue *)v5 setSuggestionType:[(_INPBContactValue *)self suggestionType]];
  }

  v25 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:zone];
  [(_INPBContactValue *)v5 setValueMetadata:v25];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBContactValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBContactValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBContactValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v59 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v5 = self->_aliases;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v55;
    do
    {
      v9 = 0;
      do
      {
        if (*v55 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v54 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v7);
  }

  contactHandle = [(_INPBContactValue *)self contactHandle];

  if (contactHandle)
  {
    contactHandle2 = [(_INPBContactValue *)self contactHandle];
    PBDataWriterWriteSubmessage();
  }

  customIdentifier = [(_INPBContactValue *)self customIdentifier];

  if (customIdentifier)
  {
    customIdentifier = self->_customIdentifier;
    PBDataWriterWriteStringField();
  }

  firstName = [(_INPBContactValue *)self firstName];

  if (firstName)
  {
    firstName = self->_firstName;
    PBDataWriterWriteStringField();
  }

  fullName = [(_INPBContactValue *)self fullName];

  if (fullName)
  {
    fullName = self->_fullName;
    PBDataWriterWriteStringField();
  }

  handle = [(_INPBContactValue *)self handle];

  if (handle)
  {
    handle = self->_handle;
    PBDataWriterWriteStringField();
  }

  image = [(_INPBContactValue *)self image];

  if (image)
  {
    image2 = [(_INPBContactValue *)self image];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBContactValue *)self hasIsContactSuggestion])
  {
    isContactSuggestion = self->_isContactSuggestion;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBContactValue *)self hasIsMe])
  {
    isMe = self->_isMe;
    PBDataWriterWriteBOOLField();
  }

  lastName = [(_INPBContactValue *)self lastName];

  if (lastName)
  {
    lastName = self->_lastName;
    PBDataWriterWriteStringField();
  }

  middleName = [(_INPBContactValue *)self middleName];

  if (middleName)
  {
    middleName = self->_middleName;
    PBDataWriterWriteStringField();
  }

  namePrefix = [(_INPBContactValue *)self namePrefix];

  if (namePrefix)
  {
    namePrefix = self->_namePrefix;
    PBDataWriterWriteStringField();
  }

  nameSuffix = [(_INPBContactValue *)self nameSuffix];

  if (nameSuffix)
  {
    nameSuffix = self->_nameSuffix;
    PBDataWriterWriteStringField();
  }

  nickName = [(_INPBContactValue *)self nickName];

  if (nickName)
  {
    nickName = self->_nickName;
    PBDataWriterWriteStringField();
  }

  phonemeData = [(_INPBContactValue *)self phonemeData];

  if (phonemeData)
  {
    phonemeData = self->_phonemeData;
    PBDataWriterWriteStringField();
  }

  phoneticFirstName = [(_INPBContactValue *)self phoneticFirstName];

  if (phoneticFirstName)
  {
    phoneticFirstName = self->_phoneticFirstName;
    PBDataWriterWriteStringField();
  }

  phoneticLastName = [(_INPBContactValue *)self phoneticLastName];

  if (phoneticLastName)
  {
    phoneticLastName = self->_phoneticLastName;
    PBDataWriterWriteStringField();
  }

  phoneticMiddleName = [(_INPBContactValue *)self phoneticMiddleName];

  if (phoneticMiddleName)
  {
    phoneticMiddleName = self->_phoneticMiddleName;
    PBDataWriterWriteStringField();
  }

  phoneticNamePrefix = [(_INPBContactValue *)self phoneticNamePrefix];

  if (phoneticNamePrefix)
  {
    phoneticNamePrefix = self->_phoneticNamePrefix;
    PBDataWriterWriteStringField();
  }

  phoneticNameSuffix = [(_INPBContactValue *)self phoneticNameSuffix];

  if (phoneticNameSuffix)
  {
    phoneticNameSuffix = self->_phoneticNameSuffix;
    PBDataWriterWriteStringField();
  }

  relationship = [(_INPBContactValue *)self relationship];

  if (relationship)
  {
    relationship = self->_relationship;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBContactValue *)self hasSearchProvider])
  {
    searchProvider = self->_searchProvider;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBContactValue *)self hasSuggestionType])
  {
    suggestionType = self->_suggestionType;
    PBDataWriterWriteInt32Field();
  }

  valueMetadata = [(_INPBContactValue *)self valueMetadata];

  if (valueMetadata)
  {
    valueMetadata2 = [(_INPBContactValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();
  }

  v53 = *MEMORY[0x1E69E9840];
}

- (int)StringAsSuggestionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"SocialProfile"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"InstantMessageAddress"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSuggestionType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setSuggestionType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xF7;
  }

  else
  {
    *&self->_has = has | 8;
    self->_suggestionType = type;
  }
}

- (int)StringAsSearchProvider:(id)provider
{
  providerCopy = provider;
  if ([providerCopy isEqualToString:@"Default"])
  {
    v4 = 0;
  }

  else if ([providerCopy isEqualToString:@"PLUS"])
  {
    v4 = 1;
  }

  else if ([providerCopy isEqualToString:@"SRR"])
  {
    v4 = 2;
  }

  else if ([providerCopy isEqualToString:@"SuggestedStore"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSearchProvider:(BOOL)provider
{
  if (provider)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setSearchProvider:(int)provider
{
  has = self->_has;
  if (provider == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFB;
  }

  else
  {
    *&self->_has = has | 4;
    self->_searchProvider = provider;
  }
}

- (void)setRelationship:(id)relationship
{
  v4 = [relationship copy];
  relationship = self->_relationship;
  self->_relationship = v4;

  MEMORY[0x1EEE66BB8](v4, relationship);
}

- (void)setPhoneticNameSuffix:(id)suffix
{
  v4 = [suffix copy];
  phoneticNameSuffix = self->_phoneticNameSuffix;
  self->_phoneticNameSuffix = v4;

  MEMORY[0x1EEE66BB8](v4, phoneticNameSuffix);
}

- (void)setPhoneticNamePrefix:(id)prefix
{
  v4 = [prefix copy];
  phoneticNamePrefix = self->_phoneticNamePrefix;
  self->_phoneticNamePrefix = v4;

  MEMORY[0x1EEE66BB8](v4, phoneticNamePrefix);
}

- (void)setPhoneticMiddleName:(id)name
{
  v4 = [name copy];
  phoneticMiddleName = self->_phoneticMiddleName;
  self->_phoneticMiddleName = v4;

  MEMORY[0x1EEE66BB8](v4, phoneticMiddleName);
}

- (void)setPhoneticLastName:(id)name
{
  v4 = [name copy];
  phoneticLastName = self->_phoneticLastName;
  self->_phoneticLastName = v4;

  MEMORY[0x1EEE66BB8](v4, phoneticLastName);
}

- (void)setPhoneticFirstName:(id)name
{
  v4 = [name copy];
  phoneticFirstName = self->_phoneticFirstName;
  self->_phoneticFirstName = v4;

  MEMORY[0x1EEE66BB8](v4, phoneticFirstName);
}

- (void)setPhonemeData:(id)data
{
  v4 = [data copy];
  phonemeData = self->_phonemeData;
  self->_phonemeData = v4;

  MEMORY[0x1EEE66BB8](v4, phonemeData);
}

- (void)setNickName:(id)name
{
  v4 = [name copy];
  nickName = self->_nickName;
  self->_nickName = v4;

  MEMORY[0x1EEE66BB8](v4, nickName);
}

- (void)setNameSuffix:(id)suffix
{
  v4 = [suffix copy];
  nameSuffix = self->_nameSuffix;
  self->_nameSuffix = v4;

  MEMORY[0x1EEE66BB8](v4, nameSuffix);
}

- (void)setNamePrefix:(id)prefix
{
  v4 = [prefix copy];
  namePrefix = self->_namePrefix;
  self->_namePrefix = v4;

  MEMORY[0x1EEE66BB8](v4, namePrefix);
}

- (void)setMiddleName:(id)name
{
  v4 = [name copy];
  middleName = self->_middleName;
  self->_middleName = v4;

  MEMORY[0x1EEE66BB8](v4, middleName);
}

- (void)setLastName:(id)name
{
  v4 = [name copy];
  lastName = self->_lastName;
  self->_lastName = v4;

  MEMORY[0x1EEE66BB8](v4, lastName);
}

- (void)setHasIsMe:(BOOL)me
{
  if (me)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHandle:(id)handle
{
  v4 = [handle copy];
  handle = self->_handle;
  self->_handle = v4;

  MEMORY[0x1EEE66BB8](v4, handle);
}

- (void)setFullName:(id)name
{
  v4 = [name copy];
  fullName = self->_fullName;
  self->_fullName = v4;

  MEMORY[0x1EEE66BB8](v4, fullName);
}

- (void)setFirstName:(id)name
{
  v4 = [name copy];
  firstName = self->_firstName;
  self->_firstName = v4;

  MEMORY[0x1EEE66BB8](v4, firstName);
}

- (void)setCustomIdentifier:(id)identifier
{
  v4 = [identifier copy];
  customIdentifier = self->_customIdentifier;
  self->_customIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, customIdentifier);
}

- (void)addAliases:(id)aliases
{
  aliasesCopy = aliases;
  aliases = self->_aliases;
  v8 = aliasesCopy;
  if (!aliases)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_aliases;
    self->_aliases = array;

    aliasesCopy = v8;
    aliases = self->_aliases;
  }

  [(NSArray *)aliases addObject:aliasesCopy];
}

- (void)setAliases:(id)aliases
{
  v4 = [aliases mutableCopy];
  aliases = self->_aliases;
  self->_aliases = v4;

  MEMORY[0x1EEE66BB8](v4, aliases);
}

@end