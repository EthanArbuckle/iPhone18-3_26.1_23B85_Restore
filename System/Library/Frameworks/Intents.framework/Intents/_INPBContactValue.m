@interface _INPBContactValue
- (BOOL)isEqual:(id)a3;
- (_INPBContactValue)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsSearchProvider:(id)a3;
- (int)StringAsSuggestionType:(id)a3;
- (unint64_t)hash;
- (void)addAliases:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAliases:(id)a3;
- (void)setCustomIdentifier:(id)a3;
- (void)setFirstName:(id)a3;
- (void)setFullName:(id)a3;
- (void)setHandle:(id)a3;
- (void)setHasIsMe:(BOOL)a3;
- (void)setHasSearchProvider:(BOOL)a3;
- (void)setHasSuggestionType:(BOOL)a3;
- (void)setLastName:(id)a3;
- (void)setMiddleName:(id)a3;
- (void)setNamePrefix:(id)a3;
- (void)setNameSuffix:(id)a3;
- (void)setNickName:(id)a3;
- (void)setPhonemeData:(id)a3;
- (void)setPhoneticFirstName:(id)a3;
- (void)setPhoneticLastName:(id)a3;
- (void)setPhoneticMiddleName:(id)a3;
- (void)setPhoneticNamePrefix:(id)a3;
- (void)setPhoneticNameSuffix:(id)a3;
- (void)setRelationship:(id)a3;
- (void)setSearchProvider:(int)a3;
- (void)setSuggestionType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBContactValue

- (id)dictionaryRepresentation
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_aliases count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
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

          v10 = [*(*(&v57 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v57 objects:v61 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"aliases"];
  }

  v11 = [(_INPBContactValue *)self contactHandle];
  v12 = [v11 dictionaryRepresentation];
  [v3 setObject:v12 forKeyedSubscript:@"contactHandle"];

  if (self->_customIdentifier)
  {
    v13 = [(_INPBContactValue *)self customIdentifier];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"customIdentifier"];
  }

  if (self->_firstName)
  {
    v15 = [(_INPBContactValue *)self firstName];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"firstName"];
  }

  if (self->_fullName)
  {
    v17 = [(_INPBContactValue *)self fullName];
    v18 = [v17 copy];
    [v3 setObject:v18 forKeyedSubscript:@"fullName"];
  }

  if (self->_handle)
  {
    v19 = [(_INPBContactValue *)self handle];
    v20 = [v19 copy];
    [v3 setObject:v20 forKeyedSubscript:@"handle"];
  }

  v21 = [(_INPBContactValue *)self image];
  v22 = [v21 dictionaryRepresentation];
  [v3 setObject:v22 forKeyedSubscript:@"image"];

  if ([(_INPBContactValue *)self hasIsContactSuggestion])
  {
    v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBContactValue isContactSuggestion](self, "isContactSuggestion")}];
    [v3 setObject:v23 forKeyedSubscript:@"isContactSuggestion"];
  }

  if ([(_INPBContactValue *)self hasIsMe])
  {
    v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBContactValue isMe](self, "isMe")}];
    [v3 setObject:v24 forKeyedSubscript:@"isMe"];
  }

  if (self->_lastName)
  {
    v25 = [(_INPBContactValue *)self lastName];
    v26 = [v25 copy];
    [v3 setObject:v26 forKeyedSubscript:@"lastName"];
  }

  if (self->_middleName)
  {
    v27 = [(_INPBContactValue *)self middleName];
    v28 = [v27 copy];
    [v3 setObject:v28 forKeyedSubscript:@"middleName"];
  }

  if (self->_namePrefix)
  {
    v29 = [(_INPBContactValue *)self namePrefix];
    v30 = [v29 copy];
    [v3 setObject:v30 forKeyedSubscript:@"namePrefix"];
  }

  if (self->_nameSuffix)
  {
    v31 = [(_INPBContactValue *)self nameSuffix];
    v32 = [v31 copy];
    [v3 setObject:v32 forKeyedSubscript:@"nameSuffix"];
  }

  if (self->_nickName)
  {
    v33 = [(_INPBContactValue *)self nickName];
    v34 = [v33 copy];
    [v3 setObject:v34 forKeyedSubscript:@"nickName"];
  }

  if (self->_phonemeData)
  {
    v35 = [(_INPBContactValue *)self phonemeData];
    v36 = [v35 copy];
    [v3 setObject:v36 forKeyedSubscript:@"phonemeData"];
  }

  if (self->_phoneticFirstName)
  {
    v37 = [(_INPBContactValue *)self phoneticFirstName];
    v38 = [v37 copy];
    [v3 setObject:v38 forKeyedSubscript:@"phoneticFirstName"];
  }

  if (self->_phoneticLastName)
  {
    v39 = [(_INPBContactValue *)self phoneticLastName];
    v40 = [v39 copy];
    [v3 setObject:v40 forKeyedSubscript:@"phoneticLastName"];
  }

  if (self->_phoneticMiddleName)
  {
    v41 = [(_INPBContactValue *)self phoneticMiddleName];
    v42 = [v41 copy];
    [v3 setObject:v42 forKeyedSubscript:@"phoneticMiddleName"];
  }

  if (self->_phoneticNamePrefix)
  {
    v43 = [(_INPBContactValue *)self phoneticNamePrefix];
    v44 = [v43 copy];
    [v3 setObject:v44 forKeyedSubscript:@"phoneticNamePrefix"];
  }

  if (self->_phoneticNameSuffix)
  {
    v45 = [(_INPBContactValue *)self phoneticNameSuffix];
    v46 = [v45 copy];
    [v3 setObject:v46 forKeyedSubscript:@"phoneticNameSuffix"];
  }

  if (self->_relationship)
  {
    v47 = [(_INPBContactValue *)self relationship];
    v48 = [v47 copy];
    [v3 setObject:v48 forKeyedSubscript:@"relationship"];
  }

  if ([(_INPBContactValue *)self hasSearchProvider])
  {
    v49 = [(_INPBContactValue *)self searchProvider];
    if (v49 >= 4)
    {
      v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v49];
    }

    else
    {
      v50 = off_1E727F808[v49];
    }

    [v3 setObject:v50 forKeyedSubscript:@"searchProvider"];
  }

  if ([(_INPBContactValue *)self hasSuggestionType])
  {
    v51 = [(_INPBContactValue *)self suggestionType];
    if (v51 >= 3)
    {
      v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v51];
    }

    else
    {
      v52 = off_1E727F828[v51];
    }

    [v3 setObject:v52 forKeyedSubscript:@"suggestionType"];
  }

  v53 = [(_INPBContactValue *)self valueMetadata];
  v54 = [v53 dictionaryRepresentation];
  [v3 setObject:v54 forKeyedSubscript:@"valueMetadata"];

  v55 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_118;
  }

  v5 = [(_INPBContactValue *)self aliases];
  v6 = [v4 aliases];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_117;
  }

  v7 = [(_INPBContactValue *)self aliases];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBContactValue *)self aliases];
    v10 = [v4 aliases];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactValue *)self contactHandle];
  v6 = [v4 contactHandle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_117;
  }

  v12 = [(_INPBContactValue *)self contactHandle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBContactValue *)self contactHandle];
    v15 = [v4 contactHandle];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactValue *)self customIdentifier];
  v6 = [v4 customIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_117;
  }

  v17 = [(_INPBContactValue *)self customIdentifier];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBContactValue *)self customIdentifier];
    v20 = [v4 customIdentifier];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactValue *)self firstName];
  v6 = [v4 firstName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_117;
  }

  v22 = [(_INPBContactValue *)self firstName];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBContactValue *)self firstName];
    v25 = [v4 firstName];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactValue *)self fullName];
  v6 = [v4 fullName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_117;
  }

  v27 = [(_INPBContactValue *)self fullName];
  if (v27)
  {
    v28 = v27;
    v29 = [(_INPBContactValue *)self fullName];
    v30 = [v4 fullName];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactValue *)self handle];
  v6 = [v4 handle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_117;
  }

  v32 = [(_INPBContactValue *)self handle];
  if (v32)
  {
    v33 = v32;
    v34 = [(_INPBContactValue *)self handle];
    v35 = [v4 handle];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactValue *)self image];
  v6 = [v4 image];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_117;
  }

  v37 = [(_INPBContactValue *)self image];
  if (v37)
  {
    v38 = v37;
    v39 = [(_INPBContactValue *)self image];
    v40 = [v4 image];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v42 = [(_INPBContactValue *)self hasIsContactSuggestion];
  if (v42 != [v4 hasIsContactSuggestion])
  {
    goto LABEL_118;
  }

  if ([(_INPBContactValue *)self hasIsContactSuggestion])
  {
    if ([v4 hasIsContactSuggestion])
    {
      isContactSuggestion = self->_isContactSuggestion;
      if (isContactSuggestion != [v4 isContactSuggestion])
      {
        goto LABEL_118;
      }
    }
  }

  v44 = [(_INPBContactValue *)self hasIsMe];
  if (v44 != [v4 hasIsMe])
  {
    goto LABEL_118;
  }

  if ([(_INPBContactValue *)self hasIsMe])
  {
    if ([v4 hasIsMe])
    {
      isMe = self->_isMe;
      if (isMe != [v4 isMe])
      {
        goto LABEL_118;
      }
    }
  }

  v5 = [(_INPBContactValue *)self lastName];
  v6 = [v4 lastName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_117;
  }

  v46 = [(_INPBContactValue *)self lastName];
  if (v46)
  {
    v47 = v46;
    v48 = [(_INPBContactValue *)self lastName];
    v49 = [v4 lastName];
    v50 = [v48 isEqual:v49];

    if (!v50)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactValue *)self middleName];
  v6 = [v4 middleName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_117;
  }

  v51 = [(_INPBContactValue *)self middleName];
  if (v51)
  {
    v52 = v51;
    v53 = [(_INPBContactValue *)self middleName];
    v54 = [v4 middleName];
    v55 = [v53 isEqual:v54];

    if (!v55)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactValue *)self namePrefix];
  v6 = [v4 namePrefix];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_117;
  }

  v56 = [(_INPBContactValue *)self namePrefix];
  if (v56)
  {
    v57 = v56;
    v58 = [(_INPBContactValue *)self namePrefix];
    v59 = [v4 namePrefix];
    v60 = [v58 isEqual:v59];

    if (!v60)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactValue *)self nameSuffix];
  v6 = [v4 nameSuffix];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_117;
  }

  v61 = [(_INPBContactValue *)self nameSuffix];
  if (v61)
  {
    v62 = v61;
    v63 = [(_INPBContactValue *)self nameSuffix];
    v64 = [v4 nameSuffix];
    v65 = [v63 isEqual:v64];

    if (!v65)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactValue *)self nickName];
  v6 = [v4 nickName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_117;
  }

  v66 = [(_INPBContactValue *)self nickName];
  if (v66)
  {
    v67 = v66;
    v68 = [(_INPBContactValue *)self nickName];
    v69 = [v4 nickName];
    v70 = [v68 isEqual:v69];

    if (!v70)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactValue *)self phonemeData];
  v6 = [v4 phonemeData];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_117;
  }

  v71 = [(_INPBContactValue *)self phonemeData];
  if (v71)
  {
    v72 = v71;
    v73 = [(_INPBContactValue *)self phonemeData];
    v74 = [v4 phonemeData];
    v75 = [v73 isEqual:v74];

    if (!v75)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactValue *)self phoneticFirstName];
  v6 = [v4 phoneticFirstName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_117;
  }

  v76 = [(_INPBContactValue *)self phoneticFirstName];
  if (v76)
  {
    v77 = v76;
    v78 = [(_INPBContactValue *)self phoneticFirstName];
    v79 = [v4 phoneticFirstName];
    v80 = [v78 isEqual:v79];

    if (!v80)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactValue *)self phoneticLastName];
  v6 = [v4 phoneticLastName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_117;
  }

  v81 = [(_INPBContactValue *)self phoneticLastName];
  if (v81)
  {
    v82 = v81;
    v83 = [(_INPBContactValue *)self phoneticLastName];
    v84 = [v4 phoneticLastName];
    v85 = [v83 isEqual:v84];

    if (!v85)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactValue *)self phoneticMiddleName];
  v6 = [v4 phoneticMiddleName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_117;
  }

  v86 = [(_INPBContactValue *)self phoneticMiddleName];
  if (v86)
  {
    v87 = v86;
    v88 = [(_INPBContactValue *)self phoneticMiddleName];
    v89 = [v4 phoneticMiddleName];
    v90 = [v88 isEqual:v89];

    if (!v90)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactValue *)self phoneticNamePrefix];
  v6 = [v4 phoneticNamePrefix];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_117;
  }

  v91 = [(_INPBContactValue *)self phoneticNamePrefix];
  if (v91)
  {
    v92 = v91;
    v93 = [(_INPBContactValue *)self phoneticNamePrefix];
    v94 = [v4 phoneticNamePrefix];
    v95 = [v93 isEqual:v94];

    if (!v95)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactValue *)self phoneticNameSuffix];
  v6 = [v4 phoneticNameSuffix];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_117;
  }

  v96 = [(_INPBContactValue *)self phoneticNameSuffix];
  if (v96)
  {
    v97 = v96;
    v98 = [(_INPBContactValue *)self phoneticNameSuffix];
    v99 = [v4 phoneticNameSuffix];
    v100 = [v98 isEqual:v99];

    if (!v100)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactValue *)self relationship];
  v6 = [v4 relationship];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_117;
  }

  v101 = [(_INPBContactValue *)self relationship];
  if (v101)
  {
    v102 = v101;
    v103 = [(_INPBContactValue *)self relationship];
    v104 = [v4 relationship];
    v105 = [v103 isEqual:v104];

    if (!v105)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v106 = [(_INPBContactValue *)self hasSearchProvider];
  if (v106 != [v4 hasSearchProvider])
  {
    goto LABEL_118;
  }

  if ([(_INPBContactValue *)self hasSearchProvider])
  {
    if ([v4 hasSearchProvider])
    {
      searchProvider = self->_searchProvider;
      if (searchProvider != [v4 searchProvider])
      {
        goto LABEL_118;
      }
    }
  }

  v108 = [(_INPBContactValue *)self hasSuggestionType];
  if (v108 != [v4 hasSuggestionType])
  {
    goto LABEL_118;
  }

  if ([(_INPBContactValue *)self hasSuggestionType])
  {
    if ([v4 hasSuggestionType])
    {
      suggestionType = self->_suggestionType;
      if (suggestionType != [v4 suggestionType])
      {
        goto LABEL_118;
      }
    }
  }

  v5 = [(_INPBContactValue *)self valueMetadata];
  v6 = [v4 valueMetadata];
  if ((v5 != 0) != (v6 == 0))
  {
    v110 = [(_INPBContactValue *)self valueMetadata];
    if (!v110)
    {

LABEL_121:
      v115 = 1;
      goto LABEL_119;
    }

    v111 = v110;
    v112 = [(_INPBContactValue *)self valueMetadata];
    v113 = [v4 valueMetadata];
    v114 = [v112 isEqual:v113];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBContactValue allocWithZone:](_INPBContactValue init];
  v6 = [(NSArray *)self->_aliases copyWithZone:a3];
  [(_INPBContactValue *)v5 setAliases:v6];

  v7 = [(_INPBContactHandle *)self->_contactHandle copyWithZone:a3];
  [(_INPBContactValue *)v5 setContactHandle:v7];

  v8 = [(NSString *)self->_customIdentifier copyWithZone:a3];
  [(_INPBContactValue *)v5 setCustomIdentifier:v8];

  v9 = [(NSString *)self->_firstName copyWithZone:a3];
  [(_INPBContactValue *)v5 setFirstName:v9];

  v10 = [(NSString *)self->_fullName copyWithZone:a3];
  [(_INPBContactValue *)v5 setFullName:v10];

  v11 = [(NSString *)self->_handle copyWithZone:a3];
  [(_INPBContactValue *)v5 setHandle:v11];

  v12 = [(_INPBImageValue *)self->_image copyWithZone:a3];
  [(_INPBContactValue *)v5 setImage:v12];

  if ([(_INPBContactValue *)self hasIsContactSuggestion])
  {
    [(_INPBContactValue *)v5 setIsContactSuggestion:[(_INPBContactValue *)self isContactSuggestion]];
  }

  if ([(_INPBContactValue *)self hasIsMe])
  {
    [(_INPBContactValue *)v5 setIsMe:[(_INPBContactValue *)self isMe]];
  }

  v13 = [(NSString *)self->_lastName copyWithZone:a3];
  [(_INPBContactValue *)v5 setLastName:v13];

  v14 = [(NSString *)self->_middleName copyWithZone:a3];
  [(_INPBContactValue *)v5 setMiddleName:v14];

  v15 = [(NSString *)self->_namePrefix copyWithZone:a3];
  [(_INPBContactValue *)v5 setNamePrefix:v15];

  v16 = [(NSString *)self->_nameSuffix copyWithZone:a3];
  [(_INPBContactValue *)v5 setNameSuffix:v16];

  v17 = [(NSString *)self->_nickName copyWithZone:a3];
  [(_INPBContactValue *)v5 setNickName:v17];

  v18 = [(NSString *)self->_phonemeData copyWithZone:a3];
  [(_INPBContactValue *)v5 setPhonemeData:v18];

  v19 = [(NSString *)self->_phoneticFirstName copyWithZone:a3];
  [(_INPBContactValue *)v5 setPhoneticFirstName:v19];

  v20 = [(NSString *)self->_phoneticLastName copyWithZone:a3];
  [(_INPBContactValue *)v5 setPhoneticLastName:v20];

  v21 = [(NSString *)self->_phoneticMiddleName copyWithZone:a3];
  [(_INPBContactValue *)v5 setPhoneticMiddleName:v21];

  v22 = [(NSString *)self->_phoneticNamePrefix copyWithZone:a3];
  [(_INPBContactValue *)v5 setPhoneticNamePrefix:v22];

  v23 = [(NSString *)self->_phoneticNameSuffix copyWithZone:a3];
  [(_INPBContactValue *)v5 setPhoneticNameSuffix:v23];

  v24 = [(NSString *)self->_relationship copyWithZone:a3];
  [(_INPBContactValue *)v5 setRelationship:v24];

  if ([(_INPBContactValue *)self hasSearchProvider])
  {
    [(_INPBContactValue *)v5 setSearchProvider:[(_INPBContactValue *)self searchProvider]];
  }

  if ([(_INPBContactValue *)self hasSuggestionType])
  {
    [(_INPBContactValue *)v5 setSuggestionType:[(_INPBContactValue *)self suggestionType]];
  }

  v25 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:a3];
  [(_INPBContactValue *)v5 setValueMetadata:v25];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBContactValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBContactValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBContactValue *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v11 = [(_INPBContactValue *)self contactHandle];

  if (v11)
  {
    v12 = [(_INPBContactValue *)self contactHandle];
    PBDataWriterWriteSubmessage();
  }

  v13 = [(_INPBContactValue *)self customIdentifier];

  if (v13)
  {
    customIdentifier = self->_customIdentifier;
    PBDataWriterWriteStringField();
  }

  v15 = [(_INPBContactValue *)self firstName];

  if (v15)
  {
    firstName = self->_firstName;
    PBDataWriterWriteStringField();
  }

  v17 = [(_INPBContactValue *)self fullName];

  if (v17)
  {
    fullName = self->_fullName;
    PBDataWriterWriteStringField();
  }

  v19 = [(_INPBContactValue *)self handle];

  if (v19)
  {
    handle = self->_handle;
    PBDataWriterWriteStringField();
  }

  v21 = [(_INPBContactValue *)self image];

  if (v21)
  {
    v22 = [(_INPBContactValue *)self image];
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

  v25 = [(_INPBContactValue *)self lastName];

  if (v25)
  {
    lastName = self->_lastName;
    PBDataWriterWriteStringField();
  }

  v27 = [(_INPBContactValue *)self middleName];

  if (v27)
  {
    middleName = self->_middleName;
    PBDataWriterWriteStringField();
  }

  v29 = [(_INPBContactValue *)self namePrefix];

  if (v29)
  {
    namePrefix = self->_namePrefix;
    PBDataWriterWriteStringField();
  }

  v31 = [(_INPBContactValue *)self nameSuffix];

  if (v31)
  {
    nameSuffix = self->_nameSuffix;
    PBDataWriterWriteStringField();
  }

  v33 = [(_INPBContactValue *)self nickName];

  if (v33)
  {
    nickName = self->_nickName;
    PBDataWriterWriteStringField();
  }

  v35 = [(_INPBContactValue *)self phonemeData];

  if (v35)
  {
    phonemeData = self->_phonemeData;
    PBDataWriterWriteStringField();
  }

  v37 = [(_INPBContactValue *)self phoneticFirstName];

  if (v37)
  {
    phoneticFirstName = self->_phoneticFirstName;
    PBDataWriterWriteStringField();
  }

  v39 = [(_INPBContactValue *)self phoneticLastName];

  if (v39)
  {
    phoneticLastName = self->_phoneticLastName;
    PBDataWriterWriteStringField();
  }

  v41 = [(_INPBContactValue *)self phoneticMiddleName];

  if (v41)
  {
    phoneticMiddleName = self->_phoneticMiddleName;
    PBDataWriterWriteStringField();
  }

  v43 = [(_INPBContactValue *)self phoneticNamePrefix];

  if (v43)
  {
    phoneticNamePrefix = self->_phoneticNamePrefix;
    PBDataWriterWriteStringField();
  }

  v45 = [(_INPBContactValue *)self phoneticNameSuffix];

  if (v45)
  {
    phoneticNameSuffix = self->_phoneticNameSuffix;
    PBDataWriterWriteStringField();
  }

  v47 = [(_INPBContactValue *)self relationship];

  if (v47)
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

  v51 = [(_INPBContactValue *)self valueMetadata];

  if (v51)
  {
    v52 = [(_INPBContactValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();
  }

  v53 = *MEMORY[0x1E69E9840];
}

- (int)StringAsSuggestionType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SocialProfile"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"InstantMessageAddress"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSuggestionType:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setSuggestionType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xF7;
  }

  else
  {
    *&self->_has = has | 8;
    self->_suggestionType = a3;
  }
}

- (int)StringAsSearchProvider:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Default"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"PLUS"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SRR"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SuggestedStore"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSearchProvider:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setSearchProvider:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFB;
  }

  else
  {
    *&self->_has = has | 4;
    self->_searchProvider = a3;
  }
}

- (void)setRelationship:(id)a3
{
  v4 = [a3 copy];
  relationship = self->_relationship;
  self->_relationship = v4;

  MEMORY[0x1EEE66BB8](v4, relationship);
}

- (void)setPhoneticNameSuffix:(id)a3
{
  v4 = [a3 copy];
  phoneticNameSuffix = self->_phoneticNameSuffix;
  self->_phoneticNameSuffix = v4;

  MEMORY[0x1EEE66BB8](v4, phoneticNameSuffix);
}

- (void)setPhoneticNamePrefix:(id)a3
{
  v4 = [a3 copy];
  phoneticNamePrefix = self->_phoneticNamePrefix;
  self->_phoneticNamePrefix = v4;

  MEMORY[0x1EEE66BB8](v4, phoneticNamePrefix);
}

- (void)setPhoneticMiddleName:(id)a3
{
  v4 = [a3 copy];
  phoneticMiddleName = self->_phoneticMiddleName;
  self->_phoneticMiddleName = v4;

  MEMORY[0x1EEE66BB8](v4, phoneticMiddleName);
}

- (void)setPhoneticLastName:(id)a3
{
  v4 = [a3 copy];
  phoneticLastName = self->_phoneticLastName;
  self->_phoneticLastName = v4;

  MEMORY[0x1EEE66BB8](v4, phoneticLastName);
}

- (void)setPhoneticFirstName:(id)a3
{
  v4 = [a3 copy];
  phoneticFirstName = self->_phoneticFirstName;
  self->_phoneticFirstName = v4;

  MEMORY[0x1EEE66BB8](v4, phoneticFirstName);
}

- (void)setPhonemeData:(id)a3
{
  v4 = [a3 copy];
  phonemeData = self->_phonemeData;
  self->_phonemeData = v4;

  MEMORY[0x1EEE66BB8](v4, phonemeData);
}

- (void)setNickName:(id)a3
{
  v4 = [a3 copy];
  nickName = self->_nickName;
  self->_nickName = v4;

  MEMORY[0x1EEE66BB8](v4, nickName);
}

- (void)setNameSuffix:(id)a3
{
  v4 = [a3 copy];
  nameSuffix = self->_nameSuffix;
  self->_nameSuffix = v4;

  MEMORY[0x1EEE66BB8](v4, nameSuffix);
}

- (void)setNamePrefix:(id)a3
{
  v4 = [a3 copy];
  namePrefix = self->_namePrefix;
  self->_namePrefix = v4;

  MEMORY[0x1EEE66BB8](v4, namePrefix);
}

- (void)setMiddleName:(id)a3
{
  v4 = [a3 copy];
  middleName = self->_middleName;
  self->_middleName = v4;

  MEMORY[0x1EEE66BB8](v4, middleName);
}

- (void)setLastName:(id)a3
{
  v4 = [a3 copy];
  lastName = self->_lastName;
  self->_lastName = v4;

  MEMORY[0x1EEE66BB8](v4, lastName);
}

- (void)setHasIsMe:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHandle:(id)a3
{
  v4 = [a3 copy];
  handle = self->_handle;
  self->_handle = v4;

  MEMORY[0x1EEE66BB8](v4, handle);
}

- (void)setFullName:(id)a3
{
  v4 = [a3 copy];
  fullName = self->_fullName;
  self->_fullName = v4;

  MEMORY[0x1EEE66BB8](v4, fullName);
}

- (void)setFirstName:(id)a3
{
  v4 = [a3 copy];
  firstName = self->_firstName;
  self->_firstName = v4;

  MEMORY[0x1EEE66BB8](v4, firstName);
}

- (void)setCustomIdentifier:(id)a3
{
  v4 = [a3 copy];
  customIdentifier = self->_customIdentifier;
  self->_customIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, customIdentifier);
}

- (void)addAliases:(id)a3
{
  v4 = a3;
  aliases = self->_aliases;
  v8 = v4;
  if (!aliases)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_aliases;
    self->_aliases = v6;

    v4 = v8;
    aliases = self->_aliases;
  }

  [(NSArray *)aliases addObject:v4];
}

- (void)setAliases:(id)a3
{
  v4 = [a3 mutableCopy];
  aliases = self->_aliases;
  self->_aliases = v4;

  MEMORY[0x1EEE66BB8](v4, aliases);
}

@end