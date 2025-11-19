@interface _INPBContactCard
- (BOOL)isEqual:(id)a3;
- (_INPBContactCard)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addContactRelations:(id)a3;
- (void)addDates:(id)a3;
- (void)addEmailAddresses:(id)a3;
- (void)addInstantMessageAddresses:(id)a3;
- (void)addPhoneNumbers:(id)a3;
- (void)addPostalAddresses:(id)a3;
- (void)addUrlAddresses:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setContactIdentifier:(id)a3;
- (void)setContactRelations:(id)a3;
- (void)setDates:(id)a3;
- (void)setDepartmentName:(id)a3;
- (void)setEmailAddresses:(id)a3;
- (void)setFirstName:(id)a3;
- (void)setFullName:(id)a3;
- (void)setInstantMessageAddresses:(id)a3;
- (void)setJobTitle:(id)a3;
- (void)setLastName:(id)a3;
- (void)setMiddleName:(id)a3;
- (void)setNamePrefix:(id)a3;
- (void)setNameSuffix:(id)a3;
- (void)setNickName:(id)a3;
- (void)setOrganizationName:(id)a3;
- (void)setPhoneNumbers:(id)a3;
- (void)setPhoneticFirstName:(id)a3;
- (void)setPhoneticLastName:(id)a3;
- (void)setPhoneticMiddleName:(id)a3;
- (void)setPhoneticNamePrefix:(id)a3;
- (void)setPhoneticNameSuffix:(id)a3;
- (void)setPhoneticNickName:(id)a3;
- (void)setPostalAddresses:(id)a3;
- (void)setUrlAddresses:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBContactCard

- (id)dictionaryRepresentation
{
  v132 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBContactCard *)self birthday];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"birthday"];

  if (self->_contactIdentifier)
  {
    v6 = [(_INPBContactCard *)self contactIdentifier];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"contactIdentifier"];
  }

  if ([(NSArray *)self->_contactRelations count])
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v9 = self->_contactRelations;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v121 objects:v131 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v122;
      do
      {
        v13 = 0;
        do
        {
          if (*v122 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v121 + 1) + 8 * v13) dictionaryRepresentation];
          [v8 addObject:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v121 objects:v131 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKeyedSubscript:@"contactRelations"];
  }

  if ([(NSArray *)self->_dates count])
  {
    v15 = [MEMORY[0x1E695DF70] array];
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v16 = self->_dates;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v117 objects:v130 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v118;
      do
      {
        v20 = 0;
        do
        {
          if (*v118 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v117 + 1) + 8 * v20) dictionaryRepresentation];
          [v15 addObject:v21];

          ++v20;
        }

        while (v18 != v20);
        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v117 objects:v130 count:16];
      }

      while (v18);
    }

    [v3 setObject:v15 forKeyedSubscript:@"dates"];
  }

  if (self->_departmentName)
  {
    v22 = [(_INPBContactCard *)self departmentName];
    v23 = [v22 copy];
    [v3 setObject:v23 forKeyedSubscript:@"departmentName"];
  }

  if ([(NSArray *)self->_emailAddresses count])
  {
    v24 = [MEMORY[0x1E695DF70] array];
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v25 = self->_emailAddresses;
    v26 = [(NSArray *)v25 countByEnumeratingWithState:&v113 objects:v129 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v114;
      do
      {
        v29 = 0;
        do
        {
          if (*v114 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = [*(*(&v113 + 1) + 8 * v29) dictionaryRepresentation];
          [v24 addObject:v30];

          ++v29;
        }

        while (v27 != v29);
        v27 = [(NSArray *)v25 countByEnumeratingWithState:&v113 objects:v129 count:16];
      }

      while (v27);
    }

    [v3 setObject:v24 forKeyedSubscript:@"emailAddresses"];
  }

  if (self->_firstName)
  {
    v31 = [(_INPBContactCard *)self firstName];
    v32 = [v31 copy];
    [v3 setObject:v32 forKeyedSubscript:@"firstName"];
  }

  if (self->_fullName)
  {
    v33 = [(_INPBContactCard *)self fullName];
    v34 = [v33 copy];
    [v3 setObject:v34 forKeyedSubscript:@"fullName"];
  }

  v35 = [(_INPBContactCard *)self image];
  v36 = [v35 dictionaryRepresentation];
  [v3 setObject:v36 forKeyedSubscript:@"image"];

  if ([(NSArray *)self->_instantMessageAddresses count])
  {
    v37 = [MEMORY[0x1E695DF70] array];
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v38 = self->_instantMessageAddresses;
    v39 = [(NSArray *)v38 countByEnumeratingWithState:&v109 objects:v128 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v110;
      do
      {
        v42 = 0;
        do
        {
          if (*v110 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = [*(*(&v109 + 1) + 8 * v42) dictionaryRepresentation];
          [v37 addObject:v43];

          ++v42;
        }

        while (v40 != v42);
        v40 = [(NSArray *)v38 countByEnumeratingWithState:&v109 objects:v128 count:16];
      }

      while (v40);
    }

    [v3 setObject:v37 forKeyedSubscript:@"instantMessageAddresses"];
  }

  if ([(_INPBContactCard *)self hasIsMe])
  {
    v44 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBContactCard isMe](self, "isMe")}];
    [v3 setObject:v44 forKeyedSubscript:@"isMe"];
  }

  if (self->_jobTitle)
  {
    v45 = [(_INPBContactCard *)self jobTitle];
    v46 = [v45 copy];
    [v3 setObject:v46 forKeyedSubscript:@"jobTitle"];
  }

  if (self->_lastName)
  {
    v47 = [(_INPBContactCard *)self lastName];
    v48 = [v47 copy];
    [v3 setObject:v48 forKeyedSubscript:@"lastName"];
  }

  if (self->_middleName)
  {
    v49 = [(_INPBContactCard *)self middleName];
    v50 = [v49 copy];
    [v3 setObject:v50 forKeyedSubscript:@"middleName"];
  }

  if (self->_namePrefix)
  {
    v51 = [(_INPBContactCard *)self namePrefix];
    v52 = [v51 copy];
    [v3 setObject:v52 forKeyedSubscript:@"namePrefix"];
  }

  if (self->_nameSuffix)
  {
    v53 = [(_INPBContactCard *)self nameSuffix];
    v54 = [v53 copy];
    [v3 setObject:v54 forKeyedSubscript:@"nameSuffix"];
  }

  if (self->_nickName)
  {
    v55 = [(_INPBContactCard *)self nickName];
    v56 = [v55 copy];
    [v3 setObject:v56 forKeyedSubscript:@"nickName"];
  }

  v57 = [(_INPBContactCard *)self nonGregorianBirthday];
  v58 = [v57 dictionaryRepresentation];
  [v3 setObject:v58 forKeyedSubscript:@"nonGregorianBirthday"];

  if (self->_organizationName)
  {
    v59 = [(_INPBContactCard *)self organizationName];
    v60 = [v59 copy];
    [v3 setObject:v60 forKeyedSubscript:@"organizationName"];
  }

  if ([(NSArray *)self->_phoneNumbers count])
  {
    v61 = [MEMORY[0x1E695DF70] array];
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v62 = self->_phoneNumbers;
    v63 = [(NSArray *)v62 countByEnumeratingWithState:&v105 objects:v127 count:16];
    if (v63)
    {
      v64 = v63;
      v65 = *v106;
      do
      {
        v66 = 0;
        do
        {
          if (*v106 != v65)
          {
            objc_enumerationMutation(v62);
          }

          v67 = [*(*(&v105 + 1) + 8 * v66) dictionaryRepresentation];
          [v61 addObject:v67];

          ++v66;
        }

        while (v64 != v66);
        v64 = [(NSArray *)v62 countByEnumeratingWithState:&v105 objects:v127 count:16];
      }

      while (v64);
    }

    [v3 setObject:v61 forKeyedSubscript:@"phoneNumbers"];
  }

  if (self->_phoneticFirstName)
  {
    v68 = [(_INPBContactCard *)self phoneticFirstName];
    v69 = [v68 copy];
    [v3 setObject:v69 forKeyedSubscript:@"phoneticFirstName"];
  }

  if (self->_phoneticLastName)
  {
    v70 = [(_INPBContactCard *)self phoneticLastName];
    v71 = [v70 copy];
    [v3 setObject:v71 forKeyedSubscript:@"phoneticLastName"];
  }

  if (self->_phoneticMiddleName)
  {
    v72 = [(_INPBContactCard *)self phoneticMiddleName];
    v73 = [v72 copy];
    [v3 setObject:v73 forKeyedSubscript:@"phoneticMiddleName"];
  }

  if (self->_phoneticNamePrefix)
  {
    v74 = [(_INPBContactCard *)self phoneticNamePrefix];
    v75 = [v74 copy];
    [v3 setObject:v75 forKeyedSubscript:@"phoneticNamePrefix"];
  }

  if (self->_phoneticNameSuffix)
  {
    v76 = [(_INPBContactCard *)self phoneticNameSuffix];
    v77 = [v76 copy];
    [v3 setObject:v77 forKeyedSubscript:@"phoneticNameSuffix"];
  }

  if (self->_phoneticNickName)
  {
    v78 = [(_INPBContactCard *)self phoneticNickName];
    v79 = [v78 copy];
    [v3 setObject:v79 forKeyedSubscript:@"phoneticNickName"];
  }

  if ([(NSArray *)self->_postalAddresses count])
  {
    v80 = [MEMORY[0x1E695DF70] array];
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v81 = self->_postalAddresses;
    v82 = [(NSArray *)v81 countByEnumeratingWithState:&v101 objects:v126 count:16];
    if (v82)
    {
      v83 = v82;
      v84 = *v102;
      do
      {
        v85 = 0;
        do
        {
          if (*v102 != v84)
          {
            objc_enumerationMutation(v81);
          }

          v86 = [*(*(&v101 + 1) + 8 * v85) dictionaryRepresentation];
          [v80 addObject:v86];

          ++v85;
        }

        while (v83 != v85);
        v83 = [(NSArray *)v81 countByEnumeratingWithState:&v101 objects:v126 count:16];
      }

      while (v83);
    }

    [v3 setObject:v80 forKeyedSubscript:@"postalAddresses"];
  }

  if ([(NSArray *)self->_urlAddresses count])
  {
    v87 = [MEMORY[0x1E695DF70] array];
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v88 = self->_urlAddresses;
    v89 = [(NSArray *)v88 countByEnumeratingWithState:&v97 objects:v125 count:16];
    if (v89)
    {
      v90 = v89;
      v91 = *v98;
      do
      {
        v92 = 0;
        do
        {
          if (*v98 != v91)
          {
            objc_enumerationMutation(v88);
          }

          v93 = [*(*(&v97 + 1) + 8 * v92) dictionaryRepresentation];
          [v87 addObject:v93];

          ++v92;
        }

        while (v90 != v92);
        v90 = [(NSArray *)v88 countByEnumeratingWithState:&v97 objects:v125 count:16];
      }

      while (v90);
    }

    [v3 setObject:v87 forKeyedSubscript:@"urlAddresses"];
  }

  v94 = v3;

  v95 = *MEMORY[0x1E69E9840];
  return v3;
}

- (unint64_t)hash
{
  v31 = [(_INPBDateTimeRangeValue *)self->_birthday hash];
  v3 = [(NSString *)self->_contactIdentifier hash];
  v4 = [(NSArray *)self->_contactRelations hash];
  v5 = [(NSArray *)self->_dates hash];
  v6 = [(NSString *)self->_departmentName hash];
  v7 = [(NSArray *)self->_emailAddresses hash];
  v8 = [(NSString *)self->_firstName hash];
  v9 = [(NSString *)self->_fullName hash];
  v10 = [(_INPBImageValue *)self->_image hash];
  v11 = [(NSArray *)self->_instantMessageAddresses hash];
  if ([(_INPBContactCard *)self hasIsMe])
  {
    v12 = 2654435761 * self->_isMe;
  }

  else
  {
    v12 = 0;
  }

  v13 = v3 ^ v31 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  v14 = [(NSString *)self->_jobTitle hash];
  v15 = v14 ^ [(NSString *)self->_lastName hash];
  v16 = v15 ^ [(NSString *)self->_middleName hash];
  v17 = v16 ^ [(NSString *)self->_namePrefix hash];
  v18 = v13 ^ v17 ^ [(NSString *)self->_nameSuffix hash];
  v19 = [(NSString *)self->_nickName hash];
  v20 = v19 ^ [(_INPBDateTimeRangeValue *)self->_nonGregorianBirthday hash];
  v21 = v20 ^ [(NSString *)self->_organizationName hash];
  v22 = v21 ^ [(NSArray *)self->_phoneNumbers hash];
  v23 = v22 ^ [(NSString *)self->_phoneticFirstName hash];
  v24 = v18 ^ v23 ^ [(NSString *)self->_phoneticLastName hash];
  v25 = [(NSString *)self->_phoneticMiddleName hash];
  v26 = v25 ^ [(NSString *)self->_phoneticNamePrefix hash];
  v27 = v26 ^ [(NSString *)self->_phoneticNameSuffix hash];
  v28 = v27 ^ [(NSString *)self->_phoneticNickName hash];
  v29 = v28 ^ [(NSArray *)self->_postalAddresses hash];
  return v24 ^ v29 ^ [(NSArray *)self->_urlAddresses hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_141;
  }

  v5 = [(_INPBContactCard *)self birthday];
  v6 = [v4 birthday];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_140;
  }

  v7 = [(_INPBContactCard *)self birthday];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBContactCard *)self birthday];
    v10 = [v4 birthday];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactCard *)self contactIdentifier];
  v6 = [v4 contactIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_140;
  }

  v12 = [(_INPBContactCard *)self contactIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBContactCard *)self contactIdentifier];
    v15 = [v4 contactIdentifier];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactCard *)self contactRelations];
  v6 = [v4 contactRelations];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_140;
  }

  v17 = [(_INPBContactCard *)self contactRelations];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBContactCard *)self contactRelations];
    v20 = [v4 contactRelations];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactCard *)self dates];
  v6 = [v4 dates];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_140;
  }

  v22 = [(_INPBContactCard *)self dates];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBContactCard *)self dates];
    v25 = [v4 dates];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactCard *)self departmentName];
  v6 = [v4 departmentName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_140;
  }

  v27 = [(_INPBContactCard *)self departmentName];
  if (v27)
  {
    v28 = v27;
    v29 = [(_INPBContactCard *)self departmentName];
    v30 = [v4 departmentName];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactCard *)self emailAddresses];
  v6 = [v4 emailAddresses];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_140;
  }

  v32 = [(_INPBContactCard *)self emailAddresses];
  if (v32)
  {
    v33 = v32;
    v34 = [(_INPBContactCard *)self emailAddresses];
    v35 = [v4 emailAddresses];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactCard *)self firstName];
  v6 = [v4 firstName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_140;
  }

  v37 = [(_INPBContactCard *)self firstName];
  if (v37)
  {
    v38 = v37;
    v39 = [(_INPBContactCard *)self firstName];
    v40 = [v4 firstName];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactCard *)self fullName];
  v6 = [v4 fullName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_140;
  }

  v42 = [(_INPBContactCard *)self fullName];
  if (v42)
  {
    v43 = v42;
    v44 = [(_INPBContactCard *)self fullName];
    v45 = [v4 fullName];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactCard *)self image];
  v6 = [v4 image];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_140;
  }

  v47 = [(_INPBContactCard *)self image];
  if (v47)
  {
    v48 = v47;
    v49 = [(_INPBContactCard *)self image];
    v50 = [v4 image];
    v51 = [v49 isEqual:v50];

    if (!v51)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactCard *)self instantMessageAddresses];
  v6 = [v4 instantMessageAddresses];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_140;
  }

  v52 = [(_INPBContactCard *)self instantMessageAddresses];
  if (v52)
  {
    v53 = v52;
    v54 = [(_INPBContactCard *)self instantMessageAddresses];
    v55 = [v4 instantMessageAddresses];
    v56 = [v54 isEqual:v55];

    if (!v56)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  v57 = [(_INPBContactCard *)self hasIsMe];
  if (v57 != [v4 hasIsMe])
  {
    goto LABEL_141;
  }

  if ([(_INPBContactCard *)self hasIsMe])
  {
    if ([v4 hasIsMe])
    {
      isMe = self->_isMe;
      if (isMe != [v4 isMe])
      {
        goto LABEL_141;
      }
    }
  }

  v5 = [(_INPBContactCard *)self jobTitle];
  v6 = [v4 jobTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_140;
  }

  v59 = [(_INPBContactCard *)self jobTitle];
  if (v59)
  {
    v60 = v59;
    v61 = [(_INPBContactCard *)self jobTitle];
    v62 = [v4 jobTitle];
    v63 = [v61 isEqual:v62];

    if (!v63)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactCard *)self lastName];
  v6 = [v4 lastName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_140;
  }

  v64 = [(_INPBContactCard *)self lastName];
  if (v64)
  {
    v65 = v64;
    v66 = [(_INPBContactCard *)self lastName];
    v67 = [v4 lastName];
    v68 = [v66 isEqual:v67];

    if (!v68)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactCard *)self middleName];
  v6 = [v4 middleName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_140;
  }

  v69 = [(_INPBContactCard *)self middleName];
  if (v69)
  {
    v70 = v69;
    v71 = [(_INPBContactCard *)self middleName];
    v72 = [v4 middleName];
    v73 = [v71 isEqual:v72];

    if (!v73)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactCard *)self namePrefix];
  v6 = [v4 namePrefix];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_140;
  }

  v74 = [(_INPBContactCard *)self namePrefix];
  if (v74)
  {
    v75 = v74;
    v76 = [(_INPBContactCard *)self namePrefix];
    v77 = [v4 namePrefix];
    v78 = [v76 isEqual:v77];

    if (!v78)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactCard *)self nameSuffix];
  v6 = [v4 nameSuffix];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_140;
  }

  v79 = [(_INPBContactCard *)self nameSuffix];
  if (v79)
  {
    v80 = v79;
    v81 = [(_INPBContactCard *)self nameSuffix];
    v82 = [v4 nameSuffix];
    v83 = [v81 isEqual:v82];

    if (!v83)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactCard *)self nickName];
  v6 = [v4 nickName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_140;
  }

  v84 = [(_INPBContactCard *)self nickName];
  if (v84)
  {
    v85 = v84;
    v86 = [(_INPBContactCard *)self nickName];
    v87 = [v4 nickName];
    v88 = [v86 isEqual:v87];

    if (!v88)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactCard *)self nonGregorianBirthday];
  v6 = [v4 nonGregorianBirthday];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_140;
  }

  v89 = [(_INPBContactCard *)self nonGregorianBirthday];
  if (v89)
  {
    v90 = v89;
    v91 = [(_INPBContactCard *)self nonGregorianBirthday];
    v92 = [v4 nonGregorianBirthday];
    v93 = [v91 isEqual:v92];

    if (!v93)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactCard *)self organizationName];
  v6 = [v4 organizationName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_140;
  }

  v94 = [(_INPBContactCard *)self organizationName];
  if (v94)
  {
    v95 = v94;
    v96 = [(_INPBContactCard *)self organizationName];
    v97 = [v4 organizationName];
    v98 = [v96 isEqual:v97];

    if (!v98)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactCard *)self phoneNumbers];
  v6 = [v4 phoneNumbers];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_140;
  }

  v99 = [(_INPBContactCard *)self phoneNumbers];
  if (v99)
  {
    v100 = v99;
    v101 = [(_INPBContactCard *)self phoneNumbers];
    v102 = [v4 phoneNumbers];
    v103 = [v101 isEqual:v102];

    if (!v103)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactCard *)self phoneticFirstName];
  v6 = [v4 phoneticFirstName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_140;
  }

  v104 = [(_INPBContactCard *)self phoneticFirstName];
  if (v104)
  {
    v105 = v104;
    v106 = [(_INPBContactCard *)self phoneticFirstName];
    v107 = [v4 phoneticFirstName];
    v108 = [v106 isEqual:v107];

    if (!v108)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactCard *)self phoneticLastName];
  v6 = [v4 phoneticLastName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_140;
  }

  v109 = [(_INPBContactCard *)self phoneticLastName];
  if (v109)
  {
    v110 = v109;
    v111 = [(_INPBContactCard *)self phoneticLastName];
    v112 = [v4 phoneticLastName];
    v113 = [v111 isEqual:v112];

    if (!v113)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactCard *)self phoneticMiddleName];
  v6 = [v4 phoneticMiddleName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_140;
  }

  v114 = [(_INPBContactCard *)self phoneticMiddleName];
  if (v114)
  {
    v115 = v114;
    v116 = [(_INPBContactCard *)self phoneticMiddleName];
    v117 = [v4 phoneticMiddleName];
    v118 = [v116 isEqual:v117];

    if (!v118)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactCard *)self phoneticNamePrefix];
  v6 = [v4 phoneticNamePrefix];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_140;
  }

  v119 = [(_INPBContactCard *)self phoneticNamePrefix];
  if (v119)
  {
    v120 = v119;
    v121 = [(_INPBContactCard *)self phoneticNamePrefix];
    v122 = [v4 phoneticNamePrefix];
    v123 = [v121 isEqual:v122];

    if (!v123)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactCard *)self phoneticNameSuffix];
  v6 = [v4 phoneticNameSuffix];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_140;
  }

  v124 = [(_INPBContactCard *)self phoneticNameSuffix];
  if (v124)
  {
    v125 = v124;
    v126 = [(_INPBContactCard *)self phoneticNameSuffix];
    v127 = [v4 phoneticNameSuffix];
    v128 = [v126 isEqual:v127];

    if (!v128)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactCard *)self phoneticNickName];
  v6 = [v4 phoneticNickName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_140;
  }

  v129 = [(_INPBContactCard *)self phoneticNickName];
  if (v129)
  {
    v130 = v129;
    v131 = [(_INPBContactCard *)self phoneticNickName];
    v132 = [v4 phoneticNickName];
    v133 = [v131 isEqual:v132];

    if (!v133)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactCard *)self postalAddresses];
  v6 = [v4 postalAddresses];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_140;
  }

  v134 = [(_INPBContactCard *)self postalAddresses];
  if (v134)
  {
    v135 = v134;
    v136 = [(_INPBContactCard *)self postalAddresses];
    v137 = [v4 postalAddresses];
    v138 = [v136 isEqual:v137];

    if (!v138)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactCard *)self urlAddresses];
  v6 = [v4 urlAddresses];
  if ((v5 != 0) != (v6 == 0))
  {
    v139 = [(_INPBContactCard *)self urlAddresses];
    if (!v139)
    {

LABEL_144:
      v144 = 1;
      goto LABEL_142;
    }

    v140 = v139;
    v141 = [(_INPBContactCard *)self urlAddresses];
    v142 = [v4 urlAddresses];
    v143 = [v141 isEqual:v142];

    if (v143)
    {
      goto LABEL_144;
    }
  }

  else
  {
LABEL_140:
  }

LABEL_141:
  v144 = 0;
LABEL_142:

  return v144;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBContactCard allocWithZone:](_INPBContactCard init];
  v6 = [(_INPBDateTimeRangeValue *)self->_birthday copyWithZone:a3];
  [(_INPBContactCard *)v5 setBirthday:v6];

  v7 = [(NSString *)self->_contactIdentifier copyWithZone:a3];
  [(_INPBContactCard *)v5 setContactIdentifier:v7];

  v8 = [(NSArray *)self->_contactRelations copyWithZone:a3];
  [(_INPBContactCard *)v5 setContactRelations:v8];

  v9 = [(NSArray *)self->_dates copyWithZone:a3];
  [(_INPBContactCard *)v5 setDates:v9];

  v10 = [(NSString *)self->_departmentName copyWithZone:a3];
  [(_INPBContactCard *)v5 setDepartmentName:v10];

  v11 = [(NSArray *)self->_emailAddresses copyWithZone:a3];
  [(_INPBContactCard *)v5 setEmailAddresses:v11];

  v12 = [(NSString *)self->_firstName copyWithZone:a3];
  [(_INPBContactCard *)v5 setFirstName:v12];

  v13 = [(NSString *)self->_fullName copyWithZone:a3];
  [(_INPBContactCard *)v5 setFullName:v13];

  v14 = [(_INPBImageValue *)self->_image copyWithZone:a3];
  [(_INPBContactCard *)v5 setImage:v14];

  v15 = [(NSArray *)self->_instantMessageAddresses copyWithZone:a3];
  [(_INPBContactCard *)v5 setInstantMessageAddresses:v15];

  if ([(_INPBContactCard *)self hasIsMe])
  {
    [(_INPBContactCard *)v5 setIsMe:[(_INPBContactCard *)self isMe]];
  }

  v16 = [(NSString *)self->_jobTitle copyWithZone:a3];
  [(_INPBContactCard *)v5 setJobTitle:v16];

  v17 = [(NSString *)self->_lastName copyWithZone:a3];
  [(_INPBContactCard *)v5 setLastName:v17];

  v18 = [(NSString *)self->_middleName copyWithZone:a3];
  [(_INPBContactCard *)v5 setMiddleName:v18];

  v19 = [(NSString *)self->_namePrefix copyWithZone:a3];
  [(_INPBContactCard *)v5 setNamePrefix:v19];

  v20 = [(NSString *)self->_nameSuffix copyWithZone:a3];
  [(_INPBContactCard *)v5 setNameSuffix:v20];

  v21 = [(NSString *)self->_nickName copyWithZone:a3];
  [(_INPBContactCard *)v5 setNickName:v21];

  v22 = [(_INPBDateTimeRangeValue *)self->_nonGregorianBirthday copyWithZone:a3];
  [(_INPBContactCard *)v5 setNonGregorianBirthday:v22];

  v23 = [(NSString *)self->_organizationName copyWithZone:a3];
  [(_INPBContactCard *)v5 setOrganizationName:v23];

  v24 = [(NSArray *)self->_phoneNumbers copyWithZone:a3];
  [(_INPBContactCard *)v5 setPhoneNumbers:v24];

  v25 = [(NSString *)self->_phoneticFirstName copyWithZone:a3];
  [(_INPBContactCard *)v5 setPhoneticFirstName:v25];

  v26 = [(NSString *)self->_phoneticLastName copyWithZone:a3];
  [(_INPBContactCard *)v5 setPhoneticLastName:v26];

  v27 = [(NSString *)self->_phoneticMiddleName copyWithZone:a3];
  [(_INPBContactCard *)v5 setPhoneticMiddleName:v27];

  v28 = [(NSString *)self->_phoneticNamePrefix copyWithZone:a3];
  [(_INPBContactCard *)v5 setPhoneticNamePrefix:v28];

  v29 = [(NSString *)self->_phoneticNameSuffix copyWithZone:a3];
  [(_INPBContactCard *)v5 setPhoneticNameSuffix:v29];

  v30 = [(NSString *)self->_phoneticNickName copyWithZone:a3];
  [(_INPBContactCard *)v5 setPhoneticNickName:v30];

  v31 = [(NSArray *)self->_postalAddresses copyWithZone:a3];
  [(_INPBContactCard *)v5 setPostalAddresses:v31];

  v32 = [(NSArray *)self->_urlAddresses copyWithZone:a3];
  [(_INPBContactCard *)v5 setUrlAddresses:v32];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBContactCard *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBContactCard)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBContactCard *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v124 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBContactCard *)self birthday];

  if (v5)
  {
    v6 = [(_INPBContactCard *)self birthday];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_INPBContactCard *)self contactIdentifier];

  if (v7)
  {
    contactIdentifier = self->_contactIdentifier;
    PBDataWriterWriteStringField();
  }

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v9 = self->_contactRelations;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v113 objects:v123 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v114;
    do
    {
      v13 = 0;
      do
      {
        if (*v114 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v113 + 1) + 8 * v13);
        PBDataWriterWriteSubmessage();
        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v113 objects:v123 count:16];
    }

    while (v11);
  }

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v15 = self->_dates;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v109 objects:v122 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v110;
    do
    {
      v19 = 0;
      do
      {
        if (*v110 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v109 + 1) + 8 * v19);
        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v109 objects:v122 count:16];
    }

    while (v17);
  }

  v21 = [(_INPBContactCard *)self departmentName];

  if (v21)
  {
    departmentName = self->_departmentName;
    PBDataWriterWriteStringField();
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v23 = self->_emailAddresses;
  v24 = [(NSArray *)v23 countByEnumeratingWithState:&v105 objects:v121 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v106;
    do
    {
      v27 = 0;
      do
      {
        if (*v106 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v105 + 1) + 8 * v27);
        PBDataWriterWriteSubmessage();
        ++v27;
      }

      while (v25 != v27);
      v25 = [(NSArray *)v23 countByEnumeratingWithState:&v105 objects:v121 count:16];
    }

    while (v25);
  }

  v29 = [(_INPBContactCard *)self firstName];

  if (v29)
  {
    firstName = self->_firstName;
    PBDataWriterWriteStringField();
  }

  v31 = [(_INPBContactCard *)self fullName];

  if (v31)
  {
    fullName = self->_fullName;
    PBDataWriterWriteStringField();
  }

  v33 = [(_INPBContactCard *)self image];

  if (v33)
  {
    v34 = [(_INPBContactCard *)self image];
    PBDataWriterWriteSubmessage();
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v35 = self->_instantMessageAddresses;
  v36 = [(NSArray *)v35 countByEnumeratingWithState:&v101 objects:v120 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v102;
    do
    {
      v39 = 0;
      do
      {
        if (*v102 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v101 + 1) + 8 * v39);
        PBDataWriterWriteSubmessage();
        ++v39;
      }

      while (v37 != v39);
      v37 = [(NSArray *)v35 countByEnumeratingWithState:&v101 objects:v120 count:16];
    }

    while (v37);
  }

  if ([(_INPBContactCard *)self hasIsMe])
  {
    isMe = self->_isMe;
    PBDataWriterWriteBOOLField();
  }

  v42 = [(_INPBContactCard *)self jobTitle];

  if (v42)
  {
    jobTitle = self->_jobTitle;
    PBDataWriterWriteStringField();
  }

  v44 = [(_INPBContactCard *)self lastName];

  if (v44)
  {
    lastName = self->_lastName;
    PBDataWriterWriteStringField();
  }

  v46 = [(_INPBContactCard *)self middleName];

  if (v46)
  {
    middleName = self->_middleName;
    PBDataWriterWriteStringField();
  }

  v48 = [(_INPBContactCard *)self namePrefix];

  if (v48)
  {
    namePrefix = self->_namePrefix;
    PBDataWriterWriteStringField();
  }

  v50 = [(_INPBContactCard *)self nameSuffix];

  if (v50)
  {
    nameSuffix = self->_nameSuffix;
    PBDataWriterWriteStringField();
  }

  v52 = [(_INPBContactCard *)self nickName];

  if (v52)
  {
    nickName = self->_nickName;
    PBDataWriterWriteStringField();
  }

  v54 = [(_INPBContactCard *)self nonGregorianBirthday];

  if (v54)
  {
    v55 = [(_INPBContactCard *)self nonGregorianBirthday];
    PBDataWriterWriteSubmessage();
  }

  v56 = [(_INPBContactCard *)self organizationName];

  if (v56)
  {
    organizationName = self->_organizationName;
    PBDataWriterWriteStringField();
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v58 = self->_phoneNumbers;
  v59 = [(NSArray *)v58 countByEnumeratingWithState:&v97 objects:v119 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v98;
    do
    {
      v62 = 0;
      do
      {
        if (*v98 != v61)
        {
          objc_enumerationMutation(v58);
        }

        v63 = *(*(&v97 + 1) + 8 * v62);
        PBDataWriterWriteSubmessage();
        ++v62;
      }

      while (v60 != v62);
      v60 = [(NSArray *)v58 countByEnumeratingWithState:&v97 objects:v119 count:16];
    }

    while (v60);
  }

  v64 = [(_INPBContactCard *)self phoneticFirstName];

  if (v64)
  {
    phoneticFirstName = self->_phoneticFirstName;
    PBDataWriterWriteStringField();
  }

  v66 = [(_INPBContactCard *)self phoneticLastName];

  if (v66)
  {
    phoneticLastName = self->_phoneticLastName;
    PBDataWriterWriteStringField();
  }

  v68 = [(_INPBContactCard *)self phoneticMiddleName];

  if (v68)
  {
    phoneticMiddleName = self->_phoneticMiddleName;
    PBDataWriterWriteStringField();
  }

  v70 = [(_INPBContactCard *)self phoneticNamePrefix];

  if (v70)
  {
    phoneticNamePrefix = self->_phoneticNamePrefix;
    PBDataWriterWriteStringField();
  }

  v72 = [(_INPBContactCard *)self phoneticNameSuffix];

  if (v72)
  {
    phoneticNameSuffix = self->_phoneticNameSuffix;
    PBDataWriterWriteStringField();
  }

  v74 = [(_INPBContactCard *)self phoneticNickName];

  if (v74)
  {
    phoneticNickName = self->_phoneticNickName;
    PBDataWriterWriteStringField();
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v76 = self->_postalAddresses;
  v77 = [(NSArray *)v76 countByEnumeratingWithState:&v93 objects:v118 count:16];
  if (v77)
  {
    v78 = v77;
    v79 = *v94;
    do
    {
      v80 = 0;
      do
      {
        if (*v94 != v79)
        {
          objc_enumerationMutation(v76);
        }

        v81 = *(*(&v93 + 1) + 8 * v80);
        PBDataWriterWriteSubmessage();
        ++v80;
      }

      while (v78 != v80);
      v78 = [(NSArray *)v76 countByEnumeratingWithState:&v93 objects:v118 count:16];
    }

    while (v78);
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v82 = self->_urlAddresses;
  v83 = [(NSArray *)v82 countByEnumeratingWithState:&v89 objects:v117 count:16];
  if (v83)
  {
    v84 = v83;
    v85 = *v90;
    do
    {
      v86 = 0;
      do
      {
        if (*v90 != v85)
        {
          objc_enumerationMutation(v82);
        }

        v87 = *(*(&v89 + 1) + 8 * v86);
        PBDataWriterWriteSubmessage();
        ++v86;
      }

      while (v84 != v86);
      v84 = [(NSArray *)v82 countByEnumeratingWithState:&v89 objects:v117 count:16];
    }

    while (v84);
  }

  v88 = *MEMORY[0x1E69E9840];
}

- (void)addUrlAddresses:(id)a3
{
  v4 = a3;
  urlAddresses = self->_urlAddresses;
  v8 = v4;
  if (!urlAddresses)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_urlAddresses;
    self->_urlAddresses = v6;

    v4 = v8;
    urlAddresses = self->_urlAddresses;
  }

  [(NSArray *)urlAddresses addObject:v4];
}

- (void)setUrlAddresses:(id)a3
{
  v4 = [a3 mutableCopy];
  urlAddresses = self->_urlAddresses;
  self->_urlAddresses = v4;

  MEMORY[0x1EEE66BB8](v4, urlAddresses);
}

- (void)addPostalAddresses:(id)a3
{
  v4 = a3;
  postalAddresses = self->_postalAddresses;
  v8 = v4;
  if (!postalAddresses)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_postalAddresses;
    self->_postalAddresses = v6;

    v4 = v8;
    postalAddresses = self->_postalAddresses;
  }

  [(NSArray *)postalAddresses addObject:v4];
}

- (void)setPostalAddresses:(id)a3
{
  v4 = [a3 mutableCopy];
  postalAddresses = self->_postalAddresses;
  self->_postalAddresses = v4;

  MEMORY[0x1EEE66BB8](v4, postalAddresses);
}

- (void)setPhoneticNickName:(id)a3
{
  v4 = [a3 copy];
  phoneticNickName = self->_phoneticNickName;
  self->_phoneticNickName = v4;

  MEMORY[0x1EEE66BB8](v4, phoneticNickName);
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

- (void)addPhoneNumbers:(id)a3
{
  v4 = a3;
  phoneNumbers = self->_phoneNumbers;
  v8 = v4;
  if (!phoneNumbers)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_phoneNumbers;
    self->_phoneNumbers = v6;

    v4 = v8;
    phoneNumbers = self->_phoneNumbers;
  }

  [(NSArray *)phoneNumbers addObject:v4];
}

- (void)setPhoneNumbers:(id)a3
{
  v4 = [a3 mutableCopy];
  phoneNumbers = self->_phoneNumbers;
  self->_phoneNumbers = v4;

  MEMORY[0x1EEE66BB8](v4, phoneNumbers);
}

- (void)setOrganizationName:(id)a3
{
  v4 = [a3 copy];
  organizationName = self->_organizationName;
  self->_organizationName = v4;

  MEMORY[0x1EEE66BB8](v4, organizationName);
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

- (void)setJobTitle:(id)a3
{
  v4 = [a3 copy];
  jobTitle = self->_jobTitle;
  self->_jobTitle = v4;

  MEMORY[0x1EEE66BB8](v4, jobTitle);
}

- (void)addInstantMessageAddresses:(id)a3
{
  v4 = a3;
  instantMessageAddresses = self->_instantMessageAddresses;
  v8 = v4;
  if (!instantMessageAddresses)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_instantMessageAddresses;
    self->_instantMessageAddresses = v6;

    v4 = v8;
    instantMessageAddresses = self->_instantMessageAddresses;
  }

  [(NSArray *)instantMessageAddresses addObject:v4];
}

- (void)setInstantMessageAddresses:(id)a3
{
  v4 = [a3 mutableCopy];
  instantMessageAddresses = self->_instantMessageAddresses;
  self->_instantMessageAddresses = v4;

  MEMORY[0x1EEE66BB8](v4, instantMessageAddresses);
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

- (void)addEmailAddresses:(id)a3
{
  v4 = a3;
  emailAddresses = self->_emailAddresses;
  v8 = v4;
  if (!emailAddresses)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_emailAddresses;
    self->_emailAddresses = v6;

    v4 = v8;
    emailAddresses = self->_emailAddresses;
  }

  [(NSArray *)emailAddresses addObject:v4];
}

- (void)setEmailAddresses:(id)a3
{
  v4 = [a3 mutableCopy];
  emailAddresses = self->_emailAddresses;
  self->_emailAddresses = v4;

  MEMORY[0x1EEE66BB8](v4, emailAddresses);
}

- (void)setDepartmentName:(id)a3
{
  v4 = [a3 copy];
  departmentName = self->_departmentName;
  self->_departmentName = v4;

  MEMORY[0x1EEE66BB8](v4, departmentName);
}

- (void)addDates:(id)a3
{
  v4 = a3;
  dates = self->_dates;
  v8 = v4;
  if (!dates)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_dates;
    self->_dates = v6;

    v4 = v8;
    dates = self->_dates;
  }

  [(NSArray *)dates addObject:v4];
}

- (void)setDates:(id)a3
{
  v4 = [a3 mutableCopy];
  dates = self->_dates;
  self->_dates = v4;

  MEMORY[0x1EEE66BB8](v4, dates);
}

- (void)addContactRelations:(id)a3
{
  v4 = a3;
  contactRelations = self->_contactRelations;
  v8 = v4;
  if (!contactRelations)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_contactRelations;
    self->_contactRelations = v6;

    v4 = v8;
    contactRelations = self->_contactRelations;
  }

  [(NSArray *)contactRelations addObject:v4];
}

- (void)setContactRelations:(id)a3
{
  v4 = [a3 mutableCopy];
  contactRelations = self->_contactRelations;
  self->_contactRelations = v4;

  MEMORY[0x1EEE66BB8](v4, contactRelations);
}

- (void)setContactIdentifier:(id)a3
{
  v4 = [a3 copy];
  contactIdentifier = self->_contactIdentifier;
  self->_contactIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, contactIdentifier);
}

@end