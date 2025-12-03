@interface _HKEmergencyContact
+ (id)emergencyContactUsingSimCardNumberWithContact:(id)contact property:(id)property;
+ (id)emergencyContactWithContact:(id)contact property:(id)property;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSyncedContact:(id)contact;
- (_HKEmergencyContact)init;
- (_HKEmergencyContact)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKEmergencyContact

- (_HKEmergencyContact)init
{
  v7.receiver = self;
  v7.super_class = _HKEmergencyContact;
  v2 = [(_HKEmergencyContact *)&v7 init];
  v3 = v2;
  if (v2)
  {
    nameRecordID = v2->_nameRecordID;
    v2->_nameRecordID = &unk_1F0684938;

    phoneNumberPropertyID = v3->_phoneNumberPropertyID;
    v3->_phoneNumberPropertyID = &unk_1F0684938;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  name = [(_HKEmergencyContact *)self name];
  phoneNumber = [(_HKEmergencyContact *)self phoneNumber];
  v6 = [v3 stringWithFormat:@"[%@]:%@", name, phoneNumber];

  return v6;
}

- (_HKEmergencyContact)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_HKEmergencyContact *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKEmergencyContactNameKey"];
    [(_HKEmergencyContact *)v5 setName:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKEmergencyContactPhoneNumberKey"];
    [(_HKEmergencyContact *)v5 setPhoneNumber:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKEmergencyContactRelationshipKey"];
    [(_HKEmergencyContact *)v5 setRelationship:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKEmergencyContactNameRecordIDKey"];
    [(_HKEmergencyContact *)v5 setNameRecordID:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKEmergencyContactPhoneNumberPropertyIDKey"];
    [(_HKEmergencyContact *)v5 setPhoneNumberPropertyID:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKEmergencyContactNameContactIdentifierKey"];
    [(_HKEmergencyContact *)v5 setNameContactIdentifier:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKEmergencyContactPhoneNumberContactIdentifierKey"];
    [(_HKEmergencyContact *)v5 setPhoneNumberContactIdentifier:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKEmergencyContactPhoneNumberLabelKey"];
    [(_HKEmergencyContact *)v5 setPhoneNumberLabel:v13];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    name = [(_HKEmergencyContact *)self name];
    name2 = [equalCopy name];
    if (name != name2)
    {
      name3 = [equalCopy name];
      if (!name3)
      {
        v11 = 0;
LABEL_99:

        goto LABEL_100;
      }

      name4 = [(_HKEmergencyContact *)self name];
      name5 = [equalCopy name];
      if (![name4 isEqualToString:name5])
      {
        v11 = 0;
LABEL_45:

        goto LABEL_99;
      }

      v88 = name5;
      v89 = name4;
    }

    phoneNumber = [(_HKEmergencyContact *)self phoneNumber];
    phoneNumber2 = [equalCopy phoneNumber];
    if (phoneNumber == phoneNumber2)
    {
      v84 = 0;
    }

    else
    {
      phoneNumber3 = [equalCopy phoneNumber];
      if (!phoneNumber3)
      {

        v11 = 0;
        goto LABEL_97;
      }

      v15 = phoneNumber3;
      phoneNumber4 = [(_HKEmergencyContact *)self phoneNumber];
      phoneNumber5 = [equalCopy phoneNumber];
      if (![phoneNumber4 isEqualToString:?])
      {
        v11 = 0;
LABEL_43:

        goto LABEL_44;
      }

      v84 = phoneNumber != phoneNumber2;
      v82 = v15;
    }

    relationship = [(_HKEmergencyContact *)self relationship];
    [equalCopy relationship];
    v91 = v90 = relationship;
    v17 = relationship != v91;
    if (relationship != v91)
    {
      relationship2 = [equalCopy relationship];
      if (!relationship2)
      {

        v11 = 0;
        if (phoneNumber != phoneNumber2)
        {
          LOBYTE(v26) = 1;
          v27 = v82;
          goto LABEL_94;
        }

        v26 = 0;
        v27 = v82;
LABEL_102:
        if (!v26)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      }

      v78 = relationship2;
      relationship3 = [(_HKEmergencyContact *)self relationship];
      [equalCopy relationship];
      v79 = v80 = relationship3;
      if (![relationship3 isEqualToString:?])
      {
        v86 = phoneNumber;
        v11 = 0;
        v21 = v90;
        v20 = v91;
        goto LABEL_42;
      }
    }

    nameRecordID = [(_HKEmergencyContact *)self nameRecordID];
    nameRecordID2 = [equalCopy nameRecordID];
    v75 = nameRecordID != nameRecordID2;
    v86 = phoneNumber;
    if (nameRecordID == nameRecordID2)
    {
      v74 = phoneNumber4;
    }

    else
    {
      nameRecordID3 = [equalCopy nameRecordID];
      if (!nameRecordID3)
      {

        v11 = 0;
        v21 = v90;
        v20 = v91;
        if (v90 != v91)
        {
          LOBYTE(v34) = 1;
          goto LABEL_91;
        }

        v34 = 0;
        goto LABEL_104;
      }

      v24 = v17;
      v70 = nameRecordID3;
      nameRecordID4 = [(_HKEmergencyContact *)self nameRecordID];
      nameRecordID5 = [equalCopy nameRecordID];
      v73 = nameRecordID4;
      if (![nameRecordID4 isEqual:?])
      {
        v81 = nameRecordID;
        v11 = 0;
        v21 = v90;
        v20 = v91;
        goto LABEL_41;
      }

      v74 = phoneNumber4;
      v17 = v24;
      phoneNumber = v86;
    }

    phoneNumberPropertyID = [(_HKEmergencyContact *)self phoneNumberPropertyID];
    [equalCopy phoneNumberPropertyID];
    v77 = v76 = phoneNumberPropertyID;
    v29 = phoneNumberPropertyID == v77;
    v30 = phoneNumberPropertyID != v77;
    v81 = nameRecordID;
    if (v29)
    {
      v66 = v30;
    }

    else
    {
      phoneNumberPropertyID2 = [equalCopy phoneNumberPropertyID];
      if (!phoneNumberPropertyID2)
      {
        v71 = v17;

        v40 = nameRecordID;
        v11 = 0;
        phoneNumber4 = v74;
        v21 = v90;
        v20 = v91;
        if (v40 != nameRecordID2)
        {
          LOBYTE(v41) = 1;
          goto LABEL_88;
        }

        v41 = 0;
LABEL_106:
        if (!v41)
        {
LABEL_90:

          v34 = v71;
          if (v21 != v20)
          {
LABEL_91:

            if (!v34)
            {
              goto LABEL_93;
            }

            goto LABEL_92;
          }

LABEL_104:
          if (v34)
          {
LABEL_92:
          }

LABEL_93:

          phoneNumber = v86;
          v27 = v82;
          v26 = v84;
          if (v86 != phoneNumber2)
          {
LABEL_94:

            if (!v26)
            {
LABEL_96:

LABEL_97:
              if (name != name2)
              {

                goto LABEL_99;
              }

              goto LABEL_100;
            }

LABEL_95:

            goto LABEL_96;
          }

          goto LABEL_102;
        }

LABEL_89:

        goto LABEL_90;
      }

      v66 = v30;
      v63 = phoneNumberPropertyID2;
      phoneNumberPropertyID3 = [(_HKEmergencyContact *)self phoneNumberPropertyID];
      phoneNumberPropertyID4 = [equalCopy phoneNumberPropertyID];
      v65 = phoneNumberPropertyID3;
      if (![phoneNumberPropertyID3 isEqual:?])
      {
        v71 = v17;
        v11 = 0;
        v21 = v90;
        v20 = v91;
        v33 = v76;
        goto LABEL_31;
      }
    }

    nameContactIdentifier = [(_HKEmergencyContact *)self nameContactIdentifier];
    nameContactIdentifier2 = [equalCopy nameContactIdentifier];
    v69 = nameContactIdentifier;
    if (nameContactIdentifier != nameContactIdentifier2)
    {
      nameContactIdentifier3 = [equalCopy nameContactIdentifier];
      v37 = v66;
      if (!nameContactIdentifier3)
      {
        v71 = v17;

        v11 = 0;
        v33 = v76;
        v21 = v90;
        v20 = v91;
        if (v76 != v77)
        {
          goto LABEL_82;
        }

        goto LABEL_85;
      }

      v61 = nameContactIdentifier3;
      nameContactIdentifier4 = [(_HKEmergencyContact *)self nameContactIdentifier];
      nameContactIdentifier5 = [equalCopy nameContactIdentifier];
      v60 = nameContactIdentifier4;
      if (![nameContactIdentifier4 isEqualToString:?])
      {
        v71 = v17;
        v11 = 0;
        v21 = v90;
        v20 = v91;
        v39 = nameContactIdentifier2;
LABEL_80:

        if (v76 != v77)
        {
          LOBYTE(v37) = 1;
          v33 = v76;
LABEL_82:

          if (!v37)
          {
            goto LABEL_87;
          }

LABEL_86:

          goto LABEL_87;
        }

        v37 = 0;
        v33 = v76;
LABEL_85:
        if (!v37)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      }
    }

    phoneNumberContactIdentifier = [(_HKEmergencyContact *)self phoneNumberContactIdentifier];
    phoneNumberContactIdentifier2 = [equalCopy phoneNumberContactIdentifier];
    v62 = phoneNumberContactIdentifier;
    if (phoneNumberContactIdentifier == phoneNumberContactIdentifier2)
    {
      [(_HKEmergencyContact *)self phoneNumberLabel];
    }

    else
    {
      phoneNumberContactIdentifier3 = [equalCopy phoneNumberContactIdentifier];
      if (!phoneNumberContactIdentifier3)
      {
        v71 = v17;
        v11 = 0;
        goto LABEL_79;
      }

      v58 = phoneNumberContactIdentifier3;
      phoneNumberContactIdentifier4 = [(_HKEmergencyContact *)self phoneNumberContactIdentifier];
      phoneNumberContactIdentifier5 = [equalCopy phoneNumberContactIdentifier];
      v57 = phoneNumberContactIdentifier4;
      v46 = phoneNumberContactIdentifier4;
      v47 = phoneNumberContactIdentifier5;
      if (([v46 isEqualToString:phoneNumberContactIdentifier5] & 1) == 0)
      {

        v11 = 0;
LABEL_66:
        if (v69 != nameContactIdentifier2)
        {
        }

        if (v76 != v77)
        {
        }

        if (v81 != nameRecordID2)
        {
        }

        if (v90 != v91)
        {
        }

        if (phoneNumber != phoneNumber2)
        {
        }

LABEL_44:

        name5 = v88;
        name4 = v89;
        if (name != name2)
        {
          goto LABEL_45;
        }

LABEL_100:

        goto LABEL_101;
      }

      [(_HKEmergencyContact *)self phoneNumberLabel];
    }
    v48 = ;
    phoneNumberLabel = [equalCopy phoneNumberLabel];
    v11 = v48 == phoneNumberLabel;
    if (v48 == phoneNumberLabel)
    {
      v71 = v17;
    }

    else
    {
      v56 = phoneNumberLabel;
      phoneNumberLabel2 = [equalCopy phoneNumberLabel];
      if (phoneNumberLabel2)
      {
        v85 = phoneNumberLabel2;
        phoneNumberLabel3 = [(_HKEmergencyContact *)self phoneNumberLabel];
        phoneNumberLabel4 = [equalCopy phoneNumberLabel];
        v11 = [phoneNumberLabel3 isEqualToString:phoneNumberLabel4];

        if (v62 != phoneNumberContactIdentifier2)
        {
        }

        goto LABEL_66;
      }

      v71 = v17;
    }

    if (v62 == phoneNumberContactIdentifier2)
    {

      v39 = nameContactIdentifier2;
      v21 = v90;
      v20 = v91;
      if (v69 != nameContactIdentifier2)
      {
        goto LABEL_80;
      }

      goto LABEL_109;
    }

LABEL_79:
    v21 = v90;
    v20 = v91;

    v39 = nameContactIdentifier2;
    if (v69 != nameContactIdentifier2)
    {
      goto LABEL_80;
    }

LABEL_109:

    v33 = v76;
    if (v76 != v77)
    {
LABEL_31:

      phoneNumber4 = v74;
      if (v81 == nameRecordID2)
      {
        goto LABEL_90;
      }

LABEL_41:

      if (v21 != v20)
      {
LABEL_42:

        phoneNumber = v86;
        v15 = v82;
        if (v86 != phoneNumber2)
        {
          goto LABEL_43;
        }

        goto LABEL_96;
      }

      goto LABEL_93;
    }

LABEL_87:

    phoneNumber4 = v74;
    v41 = v75;
    if (v81 != nameRecordID2)
    {
LABEL_88:

      if (!v41)
      {
        goto LABEL_90;
      }

      goto LABEL_89;
    }

    goto LABEL_106;
  }

  v11 = 0;
LABEL_101:

  return v11;
}

- (BOOL)isEqualToSyncedContact:(id)contact
{
  contactCopy = contact;
  name = [(_HKEmergencyContact *)self name];
  name2 = [contactCopy name];
  if (name != name2)
  {
    name3 = [contactCopy name];
    if (!name3)
    {
      v12 = 0;
      goto LABEL_39;
    }

    v5 = name3;
    name4 = [(_HKEmergencyContact *)self name];
    name5 = [contactCopy name];
    if (![name4 isEqualToString:name5])
    {
      v12 = 0;
LABEL_38:

      goto LABEL_39;
    }
  }

  phoneNumber = [(_HKEmergencyContact *)self phoneNumber];
  phoneNumber2 = [contactCopy phoneNumber];
  if (phoneNumber == phoneNumber2)
  {
    v43 = phoneNumber;
  }

  else
  {
    phoneNumber3 = [contactCopy phoneNumber];
    if (!phoneNumber3)
    {
      v12 = 0;
LABEL_31:

      goto LABEL_37;
    }

    v44 = name5;
    v16 = name4;
    v17 = v5;
    v41 = phoneNumber3;
    phoneNumber4 = [(_HKEmergencyContact *)self phoneNumber];
    phoneNumber5 = [contactCopy phoneNumber];
    if (([phoneNumber4 isEqualToString:phoneNumber5] & 1) == 0)
    {

      v12 = 0;
      v5 = v17;
      name4 = v16;
      name5 = v44;
      if (name == name2)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    v37 = phoneNumber5;
    v43 = phoneNumber;
    v5 = v17;
    name4 = v16;
    name5 = v44;
  }

  phoneNumberLabel = [(_HKEmergencyContact *)self phoneNumberLabel];
  phoneNumberLabel2 = [contactCopy phoneNumberLabel];
  v42 = phoneNumberLabel;
  v40 = phoneNumber4;
  if (phoneNumberLabel == phoneNumberLabel2)
  {
    v38 = name4;
    v39 = phoneNumber2;
    v45 = name5;
    [(_HKEmergencyContact *)self relationship];
  }

  else
  {
    phoneNumberLabel3 = [contactCopy phoneNumberLabel];
    if (!phoneNumberLabel3)
    {
      v12 = 0;
      v30 = phoneNumberLabel;
      goto LABEL_27;
    }

    v39 = phoneNumber2;
    v36 = phoneNumberLabel3;
    phoneNumberLabel4 = [(_HKEmergencyContact *)self phoneNumberLabel];
    phoneNumber2 = [contactCopy phoneNumberLabel];
    if (([phoneNumberLabel4 isEqualToString:phoneNumber2] & 1) == 0)
    {

      v12 = 0;
      phoneNumber = v43;
      phoneNumber2 = v39;
      v29 = v43 == v39;
LABEL_29:
      if (!v29)
      {
      }

      goto LABEL_31;
    }

    v45 = name5;
    v38 = name4;
    [(_HKEmergencyContact *)self relationship];
  }
  v22 = ;
  relationship = [contactCopy relationship];
  v24 = relationship;
  v12 = v22 == relationship;
  if (v22 == relationship)
  {

    v30 = v42;
    if (v42 == phoneNumberLabel2)
    {
LABEL_33:

      v31 = v43;
      name5 = v45;
      name4 = v38;
      phoneNumber2 = v39;
      goto LABEL_34;
    }
  }

  else
  {
    v35 = v5;
    relationship2 = [contactCopy relationship];
    if (relationship2)
    {
      v26 = relationship2;
      relationship3 = [(_HKEmergencyContact *)self relationship];
      relationship4 = [contactCopy relationship];
      v12 = [relationship3 isEqualToString:relationship4];

      if (v42 != phoneNumberLabel2)
      {
      }

      phoneNumber = v43;
      name5 = v45;
      name4 = v38;
      phoneNumber2 = v39;
      v29 = v43 == v39;
      v5 = v35;
      goto LABEL_29;
    }

    v30 = v42;
    if (v42 == phoneNumberLabel2)
    {
      goto LABEL_33;
    }
  }

  name4 = v38;
  phoneNumber2 = v39;
  name5 = v45;
LABEL_27:

  v31 = v43;
LABEL_34:
  if (v31 != phoneNumber2)
  {
  }

LABEL_37:
  if (name != name2)
  {
    goto LABEL_38;
  }

LABEL_39:

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(_HKEmergencyContact *)self name];
  [coderCopy encodeObject:name forKey:@"HKEmergencyContactNameKey"];

  phoneNumber = [(_HKEmergencyContact *)self phoneNumber];
  [coderCopy encodeObject:phoneNumber forKey:@"HKEmergencyContactPhoneNumberKey"];

  relationship = [(_HKEmergencyContact *)self relationship];
  [coderCopy encodeObject:relationship forKey:@"HKEmergencyContactRelationshipKey"];

  nameRecordID = [(_HKEmergencyContact *)self nameRecordID];
  [coderCopy encodeObject:nameRecordID forKey:@"HKEmergencyContactNameRecordIDKey"];

  phoneNumberPropertyID = [(_HKEmergencyContact *)self phoneNumberPropertyID];
  [coderCopy encodeObject:phoneNumberPropertyID forKey:@"HKEmergencyContactPhoneNumberPropertyIDKey"];

  nameContactIdentifier = [(_HKEmergencyContact *)self nameContactIdentifier];
  [coderCopy encodeObject:nameContactIdentifier forKey:@"HKEmergencyContactNameContactIdentifierKey"];

  phoneNumberContactIdentifier = [(_HKEmergencyContact *)self phoneNumberContactIdentifier];
  [coderCopy encodeObject:phoneNumberContactIdentifier forKey:@"HKEmergencyContactPhoneNumberContactIdentifierKey"];

  phoneNumberLabel = [(_HKEmergencyContact *)self phoneNumberLabel];
  [coderCopy encodeObject:phoneNumberLabel forKey:@"HKEmergencyContactPhoneNumberLabelKey"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_HKEmergencyContact allocWithZone:?]];
  name = [(_HKEmergencyContact *)self name];
  v6 = [name copy];
  [(_HKEmergencyContact *)v4 setName:v6];

  phoneNumber = [(_HKEmergencyContact *)self phoneNumber];
  v8 = [phoneNumber copy];
  [(_HKEmergencyContact *)v4 setPhoneNumber:v8];

  relationship = [(_HKEmergencyContact *)self relationship];
  v10 = [relationship copy];
  [(_HKEmergencyContact *)v4 setRelationship:v10];

  nameRecordID = [(_HKEmergencyContact *)self nameRecordID];
  v12 = [nameRecordID copy];
  [(_HKEmergencyContact *)v4 setNameRecordID:v12];

  phoneNumberPropertyID = [(_HKEmergencyContact *)self phoneNumberPropertyID];
  v14 = [phoneNumberPropertyID copy];
  [(_HKEmergencyContact *)v4 setPhoneNumberPropertyID:v14];

  nameContactIdentifier = [(_HKEmergencyContact *)self nameContactIdentifier];
  v16 = [nameContactIdentifier copy];
  [(_HKEmergencyContact *)v4 setNameContactIdentifier:v16];

  phoneNumberContactIdentifier = [(_HKEmergencyContact *)self phoneNumberContactIdentifier];
  v18 = [phoneNumberContactIdentifier copy];
  [(_HKEmergencyContact *)v4 setPhoneNumberContactIdentifier:v18];

  phoneNumberLabel = [(_HKEmergencyContact *)self phoneNumberLabel];
  v20 = [phoneNumberLabel copy];
  [(_HKEmergencyContact *)v4 setPhoneNumberLabel:v20];

  return v4;
}

+ (id)emergencyContactWithContact:(id)contact property:(id)property
{
  contactCopy = contact;
  propertyCopy = property;
  v7 = propertyCopy;
  if (propertyCopy)
  {
    contact = [propertyCopy contact];

    contactCopy = contact;
  }

  v9 = objc_alloc_init(_HKEmergencyContact);
  v10 = _HKFormattedMedicalIDNameForContact(contactCopy);
  [(_HKEmergencyContact *)v9 setName:v10];

  identifier = [contactCopy identifier];
  [(_HKEmergencyContact *)v9 setNameContactIdentifier:identifier];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60___HKEmergencyContact_emergencyContactWithContact_property___block_invoke;
  v14[3] = &unk_1E73818D0;
  v12 = v9;
  v15 = v12;
  _HKMedicalIDPhoneNumberForContact(contactCopy, v7, v14);

  return v12;
}

+ (id)emergencyContactUsingSimCardNumberWithContact:(id)contact property:(id)property
{
  contactCopy = contact;
  v6 = [_HKEmergencyContact emergencyContactWithContact:contactCopy property:property];
  v7 = _HKMedicalIDSimNumberForContact(contactCopy);

  if (v7)
  {
    [v6 setPhoneNumber:v7];
  }

  return v6;
}

@end