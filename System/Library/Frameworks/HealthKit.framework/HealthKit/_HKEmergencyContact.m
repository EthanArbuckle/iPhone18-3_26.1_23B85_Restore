@interface _HKEmergencyContact
+ (id)emergencyContactUsingSimCardNumberWithContact:(id)a3 property:(id)a4;
+ (id)emergencyContactWithContact:(id)a3 property:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSyncedContact:(id)a3;
- (_HKEmergencyContact)init;
- (_HKEmergencyContact)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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
  v4 = [(_HKEmergencyContact *)self name];
  v5 = [(_HKEmergencyContact *)self phoneNumber];
  v6 = [v3 stringWithFormat:@"[%@]:%@", v4, v5];

  return v6;
}

- (_HKEmergencyContact)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_HKEmergencyContact *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKEmergencyContactNameKey"];
    [(_HKEmergencyContact *)v5 setName:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKEmergencyContactPhoneNumberKey"];
    [(_HKEmergencyContact *)v5 setPhoneNumber:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKEmergencyContactRelationshipKey"];
    [(_HKEmergencyContact *)v5 setRelationship:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKEmergencyContactNameRecordIDKey"];
    [(_HKEmergencyContact *)v5 setNameRecordID:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKEmergencyContactPhoneNumberPropertyIDKey"];
    [(_HKEmergencyContact *)v5 setPhoneNumberPropertyID:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKEmergencyContactNameContactIdentifierKey"];
    [(_HKEmergencyContact *)v5 setNameContactIdentifier:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKEmergencyContactPhoneNumberContactIdentifierKey"];
    [(_HKEmergencyContact *)v5 setPhoneNumberContactIdentifier:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKEmergencyContactPhoneNumberLabelKey"];
    [(_HKEmergencyContact *)v5 setPhoneNumberLabel:v13];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(_HKEmergencyContact *)self name];
    v8 = [v6 name];
    if (v7 != v8)
    {
      v3 = [v6 name];
      if (!v3)
      {
        v11 = 0;
LABEL_99:

        goto LABEL_100;
      }

      v9 = [(_HKEmergencyContact *)self name];
      v10 = [v6 name];
      if (![v9 isEqualToString:v10])
      {
        v11 = 0;
LABEL_45:

        goto LABEL_99;
      }

      v88 = v10;
      v89 = v9;
    }

    v12 = [(_HKEmergencyContact *)self phoneNumber];
    v13 = [v6 phoneNumber];
    if (v12 == v13)
    {
      v84 = 0;
    }

    else
    {
      v14 = [v6 phoneNumber];
      if (!v14)
      {

        v11 = 0;
        goto LABEL_97;
      }

      v15 = v14;
      v4 = [(_HKEmergencyContact *)self phoneNumber];
      v87 = [v6 phoneNumber];
      if (![v4 isEqualToString:?])
      {
        v11 = 0;
LABEL_43:

        goto LABEL_44;
      }

      v84 = v12 != v13;
      v82 = v15;
    }

    v16 = [(_HKEmergencyContact *)self relationship];
    [v6 relationship];
    v91 = v90 = v16;
    v17 = v16 != v91;
    if (v16 != v91)
    {
      v18 = [v6 relationship];
      if (!v18)
      {

        v11 = 0;
        if (v12 != v13)
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

      v78 = v18;
      v19 = [(_HKEmergencyContact *)self relationship];
      [v6 relationship];
      v79 = v80 = v19;
      if (![v19 isEqualToString:?])
      {
        v86 = v12;
        v11 = 0;
        v21 = v90;
        v20 = v91;
        goto LABEL_42;
      }
    }

    v22 = [(_HKEmergencyContact *)self nameRecordID];
    v83 = [v6 nameRecordID];
    v75 = v22 != v83;
    v86 = v12;
    if (v22 == v83)
    {
      v74 = v4;
    }

    else
    {
      v23 = [v6 nameRecordID];
      if (!v23)
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
      v70 = v23;
      v25 = [(_HKEmergencyContact *)self nameRecordID];
      v72 = [v6 nameRecordID];
      v73 = v25;
      if (![v25 isEqual:?])
      {
        v81 = v22;
        v11 = 0;
        v21 = v90;
        v20 = v91;
        goto LABEL_41;
      }

      v74 = v4;
      v17 = v24;
      v12 = v86;
    }

    v28 = [(_HKEmergencyContact *)self phoneNumberPropertyID];
    [v6 phoneNumberPropertyID];
    v77 = v76 = v28;
    v29 = v28 == v77;
    v30 = v28 != v77;
    v81 = v22;
    if (v29)
    {
      v66 = v30;
    }

    else
    {
      v31 = [v6 phoneNumberPropertyID];
      if (!v31)
      {
        v71 = v17;

        v40 = v22;
        v11 = 0;
        v4 = v74;
        v21 = v90;
        v20 = v91;
        if (v40 != v83)
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

          v12 = v86;
          v27 = v82;
          v26 = v84;
          if (v86 != v13)
          {
LABEL_94:

            if (!v26)
            {
LABEL_96:

LABEL_97:
              if (v7 != v8)
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
      v63 = v31;
      v32 = [(_HKEmergencyContact *)self phoneNumberPropertyID];
      v64 = [v6 phoneNumberPropertyID];
      v65 = v32;
      if (![v32 isEqual:?])
      {
        v71 = v17;
        v11 = 0;
        v21 = v90;
        v20 = v91;
        v33 = v76;
        goto LABEL_31;
      }
    }

    v35 = [(_HKEmergencyContact *)self nameContactIdentifier];
    v68 = [v6 nameContactIdentifier];
    v69 = v35;
    if (v35 != v68)
    {
      v36 = [v6 nameContactIdentifier];
      v37 = v66;
      if (!v36)
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

      v61 = v36;
      v38 = [(_HKEmergencyContact *)self nameContactIdentifier];
      v59 = [v6 nameContactIdentifier];
      v60 = v38;
      if (![v38 isEqualToString:?])
      {
        v71 = v17;
        v11 = 0;
        v21 = v90;
        v20 = v91;
        v39 = v68;
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

    v42 = [(_HKEmergencyContact *)self phoneNumberContactIdentifier];
    v67 = [v6 phoneNumberContactIdentifier];
    v62 = v42;
    if (v42 == v67)
    {
      [(_HKEmergencyContact *)self phoneNumberLabel];
    }

    else
    {
      v43 = [v6 phoneNumberContactIdentifier];
      if (!v43)
      {
        v71 = v17;
        v11 = 0;
        goto LABEL_79;
      }

      v58 = v43;
      v44 = [(_HKEmergencyContact *)self phoneNumberContactIdentifier];
      v45 = [v6 phoneNumberContactIdentifier];
      v57 = v44;
      v46 = v44;
      v47 = v45;
      if (([v46 isEqualToString:v45] & 1) == 0)
      {

        v11 = 0;
LABEL_66:
        if (v69 != v68)
        {
        }

        if (v76 != v77)
        {
        }

        if (v81 != v83)
        {
        }

        if (v90 != v91)
        {
        }

        if (v12 != v13)
        {
        }

LABEL_44:

        v10 = v88;
        v9 = v89;
        if (v7 != v8)
        {
          goto LABEL_45;
        }

LABEL_100:

        goto LABEL_101;
      }

      [(_HKEmergencyContact *)self phoneNumberLabel];
    }
    v48 = ;
    v49 = [v6 phoneNumberLabel];
    v11 = v48 == v49;
    if (v48 == v49)
    {
      v71 = v17;
    }

    else
    {
      v56 = v49;
      v50 = [v6 phoneNumberLabel];
      if (v50)
      {
        v85 = v50;
        v51 = [(_HKEmergencyContact *)self phoneNumberLabel];
        v52 = [v6 phoneNumberLabel];
        v11 = [v51 isEqualToString:v52];

        if (v62 != v67)
        {
        }

        goto LABEL_66;
      }

      v71 = v17;
    }

    if (v62 == v67)
    {

      v39 = v68;
      v21 = v90;
      v20 = v91;
      if (v69 != v68)
      {
        goto LABEL_80;
      }

      goto LABEL_109;
    }

LABEL_79:
    v21 = v90;
    v20 = v91;

    v39 = v68;
    if (v69 != v68)
    {
      goto LABEL_80;
    }

LABEL_109:

    v33 = v76;
    if (v76 != v77)
    {
LABEL_31:

      v4 = v74;
      if (v81 == v83)
      {
        goto LABEL_90;
      }

LABEL_41:

      if (v21 != v20)
      {
LABEL_42:

        v12 = v86;
        v15 = v82;
        if (v86 != v13)
        {
          goto LABEL_43;
        }

        goto LABEL_96;
      }

      goto LABEL_93;
    }

LABEL_87:

    v4 = v74;
    v41 = v75;
    if (v81 != v83)
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

- (BOOL)isEqualToSyncedContact:(id)a3
{
  v8 = a3;
  v9 = [(_HKEmergencyContact *)self name];
  v10 = [v8 name];
  if (v9 != v10)
  {
    v11 = [v8 name];
    if (!v11)
    {
      v12 = 0;
      goto LABEL_39;
    }

    v5 = v11;
    v3 = [(_HKEmergencyContact *)self name];
    v4 = [v8 name];
    if (![v3 isEqualToString:v4])
    {
      v12 = 0;
LABEL_38:

      goto LABEL_39;
    }
  }

  v13 = [(_HKEmergencyContact *)self phoneNumber];
  v14 = [v8 phoneNumber];
  if (v13 == v14)
  {
    v43 = v13;
  }

  else
  {
    v15 = [v8 phoneNumber];
    if (!v15)
    {
      v12 = 0;
LABEL_31:

      goto LABEL_37;
    }

    v44 = v4;
    v16 = v3;
    v17 = v5;
    v41 = v15;
    v6 = [(_HKEmergencyContact *)self phoneNumber];
    v18 = [v8 phoneNumber];
    if (([v6 isEqualToString:v18] & 1) == 0)
    {

      v12 = 0;
      v5 = v17;
      v3 = v16;
      v4 = v44;
      if (v9 == v10)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    v37 = v18;
    v43 = v13;
    v5 = v17;
    v3 = v16;
    v4 = v44;
  }

  v19 = [(_HKEmergencyContact *)self phoneNumberLabel];
  v46 = [v8 phoneNumberLabel];
  v42 = v19;
  v40 = v6;
  if (v19 == v46)
  {
    v38 = v3;
    v39 = v14;
    v45 = v4;
    [(_HKEmergencyContact *)self relationship];
  }

  else
  {
    v20 = [v8 phoneNumberLabel];
    if (!v20)
    {
      v12 = 0;
      v30 = v19;
      goto LABEL_27;
    }

    v39 = v14;
    v36 = v20;
    v21 = [(_HKEmergencyContact *)self phoneNumberLabel];
    v14 = [v8 phoneNumberLabel];
    if (([v21 isEqualToString:v14] & 1) == 0)
    {

      v12 = 0;
      v13 = v43;
      v14 = v39;
      v29 = v43 == v39;
LABEL_29:
      if (!v29)
      {
      }

      goto LABEL_31;
    }

    v45 = v4;
    v38 = v3;
    [(_HKEmergencyContact *)self relationship];
  }
  v22 = ;
  v23 = [v8 relationship];
  v24 = v23;
  v12 = v22 == v23;
  if (v22 == v23)
  {

    v30 = v42;
    if (v42 == v46)
    {
LABEL_33:

      v31 = v43;
      v4 = v45;
      v3 = v38;
      v14 = v39;
      goto LABEL_34;
    }
  }

  else
  {
    v35 = v5;
    v25 = [v8 relationship];
    if (v25)
    {
      v26 = v25;
      v27 = [(_HKEmergencyContact *)self relationship];
      v28 = [v8 relationship];
      v12 = [v27 isEqualToString:v28];

      if (v42 != v46)
      {
      }

      v13 = v43;
      v4 = v45;
      v3 = v38;
      v14 = v39;
      v29 = v43 == v39;
      v5 = v35;
      goto LABEL_29;
    }

    v30 = v42;
    if (v42 == v46)
    {
      goto LABEL_33;
    }
  }

  v3 = v38;
  v14 = v39;
  v4 = v45;
LABEL_27:

  v31 = v43;
LABEL_34:
  if (v31 != v14)
  {
  }

LABEL_37:
  if (v9 != v10)
  {
    goto LABEL_38;
  }

LABEL_39:

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_HKEmergencyContact *)self name];
  [v4 encodeObject:v5 forKey:@"HKEmergencyContactNameKey"];

  v6 = [(_HKEmergencyContact *)self phoneNumber];
  [v4 encodeObject:v6 forKey:@"HKEmergencyContactPhoneNumberKey"];

  v7 = [(_HKEmergencyContact *)self relationship];
  [v4 encodeObject:v7 forKey:@"HKEmergencyContactRelationshipKey"];

  v8 = [(_HKEmergencyContact *)self nameRecordID];
  [v4 encodeObject:v8 forKey:@"HKEmergencyContactNameRecordIDKey"];

  v9 = [(_HKEmergencyContact *)self phoneNumberPropertyID];
  [v4 encodeObject:v9 forKey:@"HKEmergencyContactPhoneNumberPropertyIDKey"];

  v10 = [(_HKEmergencyContact *)self nameContactIdentifier];
  [v4 encodeObject:v10 forKey:@"HKEmergencyContactNameContactIdentifierKey"];

  v11 = [(_HKEmergencyContact *)self phoneNumberContactIdentifier];
  [v4 encodeObject:v11 forKey:@"HKEmergencyContactPhoneNumberContactIdentifierKey"];

  v12 = [(_HKEmergencyContact *)self phoneNumberLabel];
  [v4 encodeObject:v12 forKey:@"HKEmergencyContactPhoneNumberLabelKey"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[_HKEmergencyContact allocWithZone:?]];
  v5 = [(_HKEmergencyContact *)self name];
  v6 = [v5 copy];
  [(_HKEmergencyContact *)v4 setName:v6];

  v7 = [(_HKEmergencyContact *)self phoneNumber];
  v8 = [v7 copy];
  [(_HKEmergencyContact *)v4 setPhoneNumber:v8];

  v9 = [(_HKEmergencyContact *)self relationship];
  v10 = [v9 copy];
  [(_HKEmergencyContact *)v4 setRelationship:v10];

  v11 = [(_HKEmergencyContact *)self nameRecordID];
  v12 = [v11 copy];
  [(_HKEmergencyContact *)v4 setNameRecordID:v12];

  v13 = [(_HKEmergencyContact *)self phoneNumberPropertyID];
  v14 = [v13 copy];
  [(_HKEmergencyContact *)v4 setPhoneNumberPropertyID:v14];

  v15 = [(_HKEmergencyContact *)self nameContactIdentifier];
  v16 = [v15 copy];
  [(_HKEmergencyContact *)v4 setNameContactIdentifier:v16];

  v17 = [(_HKEmergencyContact *)self phoneNumberContactIdentifier];
  v18 = [v17 copy];
  [(_HKEmergencyContact *)v4 setPhoneNumberContactIdentifier:v18];

  v19 = [(_HKEmergencyContact *)self phoneNumberLabel];
  v20 = [v19 copy];
  [(_HKEmergencyContact *)v4 setPhoneNumberLabel:v20];

  return v4;
}

+ (id)emergencyContactWithContact:(id)a3 property:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 contact];

    v5 = v8;
  }

  v9 = objc_alloc_init(_HKEmergencyContact);
  v10 = _HKFormattedMedicalIDNameForContact(v5);
  [(_HKEmergencyContact *)v9 setName:v10];

  v11 = [v5 identifier];
  [(_HKEmergencyContact *)v9 setNameContactIdentifier:v11];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60___HKEmergencyContact_emergencyContactWithContact_property___block_invoke;
  v14[3] = &unk_1E73818D0;
  v12 = v9;
  v15 = v12;
  _HKMedicalIDPhoneNumberForContact(v5, v7, v14);

  return v12;
}

+ (id)emergencyContactUsingSimCardNumberWithContact:(id)a3 property:(id)a4
{
  v5 = a3;
  v6 = [_HKEmergencyContact emergencyContactWithContact:v5 property:a4];
  v7 = _HKMedicalIDSimNumberForContact(v5);

  if (v7)
  {
    [v6 setPhoneNumber:v7];
  }

  return v6;
}

@end