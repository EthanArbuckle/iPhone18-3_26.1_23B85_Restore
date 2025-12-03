@interface _HKClinicalContact
+ (id)clinicalContactWithContact:(id)contact property:(id)property;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSyncedContact:(id)contact;
- (_HKClinicalContact)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKClinicalContact

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  name = [(_HKClinicalContact *)self name];
  phoneNumber = [(_HKClinicalContact *)self phoneNumber];
  v6 = [v3 stringWithFormat:@"[%@]:%@", name, phoneNumber];

  return v6;
}

- (_HKClinicalContact)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_HKClinicalContact *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKClinicalContactNameKey"];
    [(_HKClinicalContact *)v5 setName:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKClinicalContactNameContactIdentifierKey"];
    [(_HKClinicalContact *)v5 setNameContactIdentifier:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKEClinicalContactPhoneNumberKey"];
    [(_HKClinicalContact *)v5 setPhoneNumber:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKClinicalContactPhoneNumberContactIdentifierKey"];
    [(_HKClinicalContact *)v5 setPhoneNumberContactIdentifier:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKClinicalContactPhoneNumberLabelKey"];
    [(_HKClinicalContact *)v5 setPhoneNumberLabel:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKClinicalContactRelationshipKey"];
    [(_HKClinicalContact *)v5 setRelationship:v11];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    name = [(_HKClinicalContact *)self name];
    name2 = [equalCopy name];
    if (name != name2)
    {
      name3 = [equalCopy name];
      if (!name3)
      {
        v11 = 0;
        goto LABEL_35;
      }

      v3 = name3;
      name4 = [(_HKClinicalContact *)self name];
      name5 = [equalCopy name];
      if (![name4 isEqualToString:name5])
      {
        v11 = 0;
LABEL_34:

        goto LABEL_35;
      }

      v74 = name5;
      v75 = name4;
    }

    nameContactIdentifier = [(_HKClinicalContact *)self nameContactIdentifier];
    nameContactIdentifier2 = [equalCopy nameContactIdentifier];
    if (nameContactIdentifier != nameContactIdentifier2)
    {
      nameContactIdentifier3 = [equalCopy nameContactIdentifier];
      if (!nameContactIdentifier3)
      {
        goto LABEL_31;
      }

      v15 = nameContactIdentifier3;
      nameContactIdentifier4 = [(_HKClinicalContact *)self nameContactIdentifier];
      nameContactIdentifier5 = [equalCopy nameContactIdentifier];
      if (([nameContactIdentifier4 isEqualToString:nameContactIdentifier5] & 1) == 0)
      {

        goto LABEL_31;
      }

      v67 = nameContactIdentifier5;
      v68 = nameContactIdentifier4;
      v69 = v15;
    }

    phoneNumber = [(_HKClinicalContact *)self phoneNumber];
    phoneNumber2 = [equalCopy phoneNumber];
    v20 = phoneNumber2;
    v73 = phoneNumber;
    if (phoneNumber == phoneNumber2)
    {
      v71 = nameContactIdentifier2;
      v23 = nameContactIdentifier;
      v24 = v3;
      v25 = phoneNumber2;
      goto LABEL_18;
    }

    phoneNumber3 = [equalCopy phoneNumber];
    if (phoneNumber3)
    {
      v66 = phoneNumber3;
      phoneNumber = [(_HKClinicalContact *)self phoneNumber];
      phoneNumber4 = [equalCopy phoneNumber];
      if ([phoneNumber isEqualToString:phoneNumber4])
      {
        v71 = nameContactIdentifier2;
        v23 = nameContactIdentifier;
        v24 = v3;
        v25 = v20;
        v63 = phoneNumber4;
LABEL_18:
        phoneNumberContactIdentifier = [(_HKClinicalContact *)self phoneNumberContactIdentifier];
        [equalCopy phoneNumberContactIdentifier];
        v70 = v72 = phoneNumberContactIdentifier;
        if (phoneNumberContactIdentifier == v70)
        {
          v65 = v25;
          v3 = v24;
LABEL_24:
          phoneNumberLabel = [(_HKClinicalContact *)self phoneNumberLabel];
          [equalCopy phoneNumberLabel];
          v62 = v61 = v23;
          v64 = phoneNumber;
          if (phoneNumberLabel == v62)
          {
            v59 = v3;
            v36 = v23;
            v35 = v71;
          }

          else
          {
            phoneNumberLabel2 = [equalCopy phoneNumberLabel];
            if (!phoneNumberLabel2)
            {
              v11 = 0;
              v50 = v63;
              v51 = v73;
              v35 = v71;
              goto LABEL_58;
            }

            v56 = phoneNumberLabel2;
            phoneNumberLabel3 = [(_HKClinicalContact *)self phoneNumberLabel];
            phoneNumberLabel4 = [equalCopy phoneNumberLabel];
            if (([phoneNumberLabel3 isEqualToString:phoneNumberLabel4] & 1) == 0)
            {

              v11 = 0;
              v45 = v72;
              v39 = v73;
              v46 = v70;
              v48 = v63;
              v47 = v58;
              v36 = v61;
              if (v72 != v70)
              {
LABEL_44:

                v28 = v65;
                v38 = v48;
LABEL_45:
                v49 = v71;

                if (v39 == v28)
                {
LABEL_47:

                  if (v36 != v49)
                  {
                  }

                  goto LABEL_33;
                }

LABEL_46:

                goto LABEL_47;
              }

LABEL_66:

              v28 = v65;
              v38 = v48;
              v49 = v71;
              if (v39 == v65)
              {
                goto LABEL_47;
              }

              goto LABEL_46;
            }

            v54 = phoneNumberLabel4;
            v55 = phoneNumberLabel3;
            v59 = v3;
            v35 = v71;
            v36 = v61;
          }

          relationship = [(_HKClinicalContact *)self relationship];
          relationship2 = [equalCopy relationship];
          v11 = relationship == relationship2;
          if (relationship != relationship2)
          {
            relationship3 = [equalCopy relationship];
            if (relationship3)
            {
              v71 = v35;
              v53 = relationship3;
              relationship4 = [(_HKClinicalContact *)self relationship];
              relationship5 = [equalCopy relationship];
              v11 = [relationship4 isEqualToString:relationship5];

              if (phoneNumberLabel != v62)
              {
              }

              v45 = v72;
              v39 = v73;
              v46 = v70;
              v47 = v58;
              v3 = v59;
              v48 = v63;
              if (v72 != v70)
              {
                goto LABEL_44;
              }

              goto LABEL_66;
            }
          }

          if (phoneNumberLabel == v62)
          {

            v51 = v73;
            v52 = v70;
            v3 = v59;
            v50 = v63;
            if (v72 == v70)
            {
              goto LABEL_60;
            }

            goto LABEL_59;
          }

          v3 = v59;
          v50 = v63;
          v51 = v73;
LABEL_58:

          v52 = v70;
          if (v72 == v70)
          {
LABEL_60:

            if (v51 != v65)
            {
            }

            if (v61 != v35)
            {
            }

LABEL_33:
            name5 = v74;
            name4 = v75;
            if (name != name2)
            {
              goto LABEL_34;
            }

LABEL_35:

            goto LABEL_36;
          }

LABEL_59:

          v52 = v70;
          goto LABEL_60;
        }

        phoneNumberContactIdentifier2 = [equalCopy phoneNumberContactIdentifier];
        v28 = v25;
        if (!phoneNumberContactIdentifier2)
        {
          v64 = phoneNumber;
          v11 = 0;
          v38 = v63;
          v39 = v73;
          v3 = v24;
          v36 = v23;
          goto LABEL_45;
        }

        v65 = v25;
        v60 = phoneNumberContactIdentifier2;
        phoneNumberContactIdentifier3 = [(_HKClinicalContact *)self phoneNumberContactIdentifier];
        phoneNumberContactIdentifier4 = [equalCopy phoneNumberContactIdentifier];
        v3 = v24;
        if ([phoneNumberContactIdentifier3 isEqualToString:phoneNumberContactIdentifier4])
        {
          v57 = phoneNumberContactIdentifier3;
          v58 = phoneNumberContactIdentifier4;
          goto LABEL_24;
        }

        if (v73 != v65)
        {
        }

        if (v23 != v71)
        {
        }

LABEL_32:
        v11 = 0;
        goto LABEL_33;
      }
    }

    if (nameContactIdentifier != nameContactIdentifier2)
    {
    }

LABEL_31:

    goto LABEL_32;
  }

  v11 = 0;
LABEL_36:

  return v11;
}

- (BOOL)isEqualToSyncedContact:(id)contact
{
  contactCopy = contact;
  name = [(_HKClinicalContact *)self name];
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
    name4 = [(_HKClinicalContact *)self name];
    name5 = [contactCopy name];
    if (![name4 isEqualToString:name5])
    {
      v12 = 0;
LABEL_38:

      goto LABEL_39;
    }
  }

  phoneNumber = [(_HKClinicalContact *)self phoneNumber];
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
    phoneNumber4 = [(_HKClinicalContact *)self phoneNumber];
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

  phoneNumberLabel = [(_HKClinicalContact *)self phoneNumberLabel];
  phoneNumberLabel2 = [contactCopy phoneNumberLabel];
  v42 = phoneNumberLabel;
  v40 = phoneNumber4;
  if (phoneNumberLabel == phoneNumberLabel2)
  {
    v38 = name4;
    v39 = phoneNumber2;
    v45 = name5;
    [(_HKClinicalContact *)self relationship];
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
    phoneNumberLabel4 = [(_HKClinicalContact *)self phoneNumberLabel];
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
    [(_HKClinicalContact *)self relationship];
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
      relationship3 = [(_HKClinicalContact *)self relationship];
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
  name = [(_HKClinicalContact *)self name];
  [coderCopy encodeObject:name forKey:@"HKClinicalContactNameKey"];

  nameContactIdentifier = [(_HKClinicalContact *)self nameContactIdentifier];
  [coderCopy encodeObject:nameContactIdentifier forKey:@"HKClinicalContactNameContactIdentifierKey"];

  phoneNumber = [(_HKClinicalContact *)self phoneNumber];
  [coderCopy encodeObject:phoneNumber forKey:@"HKEClinicalContactPhoneNumberKey"];

  phoneNumberContactIdentifier = [(_HKClinicalContact *)self phoneNumberContactIdentifier];
  [coderCopy encodeObject:phoneNumberContactIdentifier forKey:@"HKClinicalContactPhoneNumberContactIdentifierKey"];

  phoneNumberLabel = [(_HKClinicalContact *)self phoneNumberLabel];
  [coderCopy encodeObject:phoneNumberLabel forKey:@"HKClinicalContactPhoneNumberLabelKey"];

  relationship = [(_HKClinicalContact *)self relationship];
  [coderCopy encodeObject:relationship forKey:@"HKClinicalContactRelationshipKey"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_HKClinicalContact allocWithZone:?]];
  name = [(_HKClinicalContact *)self name];
  v6 = [name copy];
  [(_HKClinicalContact *)v4 setName:v6];

  nameContactIdentifier = [(_HKClinicalContact *)self nameContactIdentifier];
  v8 = [nameContactIdentifier copy];
  [(_HKClinicalContact *)v4 setNameContactIdentifier:v8];

  phoneNumber = [(_HKClinicalContact *)self phoneNumber];
  v10 = [phoneNumber copy];
  [(_HKClinicalContact *)v4 setPhoneNumber:v10];

  phoneNumberContactIdentifier = [(_HKClinicalContact *)self phoneNumberContactIdentifier];
  v12 = [phoneNumberContactIdentifier copy];
  [(_HKClinicalContact *)v4 setPhoneNumberContactIdentifier:v12];

  phoneNumberLabel = [(_HKClinicalContact *)self phoneNumberLabel];
  v14 = [phoneNumberLabel copy];
  [(_HKClinicalContact *)v4 setPhoneNumberLabel:v14];

  relationship = [(_HKClinicalContact *)self relationship];
  v16 = [relationship copy];
  [(_HKClinicalContact *)v4 setRelationship:v16];

  return v4;
}

+ (id)clinicalContactWithContact:(id)contact property:(id)property
{
  contactCopy = contact;
  propertyCopy = property;
  v7 = propertyCopy;
  if (propertyCopy)
  {
    contact = [propertyCopy contact];

    contactCopy = contact;
  }

  v9 = objc_alloc_init(_HKClinicalContact);
  v10 = _HKFormattedMedicalIDNameForContact(contactCopy);
  [(_HKClinicalContact *)v9 setName:v10];

  identifier = [contactCopy identifier];
  [(_HKClinicalContact *)v9 setNameContactIdentifier:identifier];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58___HKClinicalContact_clinicalContactWithContact_property___block_invoke;
  v14[3] = &unk_1E73818D0;
  v12 = v9;
  v15 = v12;
  _HKMedicalIDPhoneNumberForContact(contactCopy, v7, v14);

  return v12;
}

@end