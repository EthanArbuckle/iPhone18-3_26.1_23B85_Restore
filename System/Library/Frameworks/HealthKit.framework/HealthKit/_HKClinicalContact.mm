@interface _HKClinicalContact
+ (id)clinicalContactWithContact:(id)a3 property:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSyncedContact:(id)a3;
- (_HKClinicalContact)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKClinicalContact

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(_HKClinicalContact *)self name];
  v5 = [(_HKClinicalContact *)self phoneNumber];
  v6 = [v3 stringWithFormat:@"[%@]:%@", v4, v5];

  return v6;
}

- (_HKClinicalContact)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_HKClinicalContact *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKClinicalContactNameKey"];
    [(_HKClinicalContact *)v5 setName:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKClinicalContactNameContactIdentifierKey"];
    [(_HKClinicalContact *)v5 setNameContactIdentifier:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKEClinicalContactPhoneNumberKey"];
    [(_HKClinicalContact *)v5 setPhoneNumber:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKClinicalContactPhoneNumberContactIdentifierKey"];
    [(_HKClinicalContact *)v5 setPhoneNumberContactIdentifier:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKClinicalContactPhoneNumberLabelKey"];
    [(_HKClinicalContact *)v5 setPhoneNumberLabel:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKClinicalContactRelationshipKey"];
    [(_HKClinicalContact *)v5 setRelationship:v11];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(_HKClinicalContact *)self name];
    v7 = [v5 name];
    if (v6 != v7)
    {
      v8 = [v5 name];
      if (!v8)
      {
        v11 = 0;
        goto LABEL_35;
      }

      v3 = v8;
      v9 = [(_HKClinicalContact *)self name];
      v10 = [v5 name];
      if (![v9 isEqualToString:v10])
      {
        v11 = 0;
LABEL_34:

        goto LABEL_35;
      }

      v74 = v10;
      v75 = v9;
    }

    v12 = [(_HKClinicalContact *)self nameContactIdentifier];
    v13 = [v5 nameContactIdentifier];
    if (v12 != v13)
    {
      v14 = [v5 nameContactIdentifier];
      if (!v14)
      {
        goto LABEL_31;
      }

      v15 = v14;
      v16 = [(_HKClinicalContact *)self nameContactIdentifier];
      v17 = [v5 nameContactIdentifier];
      if (([v16 isEqualToString:v17] & 1) == 0)
      {

        goto LABEL_31;
      }

      v67 = v17;
      v68 = v16;
      v69 = v15;
    }

    v18 = [(_HKClinicalContact *)self phoneNumber];
    v19 = [v5 phoneNumber];
    v20 = v19;
    v73 = v18;
    if (v18 == v19)
    {
      v71 = v13;
      v23 = v12;
      v24 = v3;
      v25 = v19;
      goto LABEL_18;
    }

    v21 = [v5 phoneNumber];
    if (v21)
    {
      v66 = v21;
      v18 = [(_HKClinicalContact *)self phoneNumber];
      v22 = [v5 phoneNumber];
      if ([v18 isEqualToString:v22])
      {
        v71 = v13;
        v23 = v12;
        v24 = v3;
        v25 = v20;
        v63 = v22;
LABEL_18:
        v26 = [(_HKClinicalContact *)self phoneNumberContactIdentifier];
        [v5 phoneNumberContactIdentifier];
        v70 = v72 = v26;
        if (v26 == v70)
        {
          v65 = v25;
          v3 = v24;
LABEL_24:
          v31 = [(_HKClinicalContact *)self phoneNumberLabel];
          [v5 phoneNumberLabel];
          v62 = v61 = v23;
          v64 = v18;
          if (v31 == v62)
          {
            v59 = v3;
            v36 = v23;
            v35 = v71;
          }

          else
          {
            v32 = [v5 phoneNumberLabel];
            if (!v32)
            {
              v11 = 0;
              v50 = v63;
              v51 = v73;
              v35 = v71;
              goto LABEL_58;
            }

            v56 = v32;
            v33 = [(_HKClinicalContact *)self phoneNumberLabel];
            v34 = [v5 phoneNumberLabel];
            if (([v33 isEqualToString:v34] & 1) == 0)
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

            v54 = v34;
            v55 = v33;
            v59 = v3;
            v35 = v71;
            v36 = v61;
          }

          v40 = [(_HKClinicalContact *)self relationship];
          v41 = [v5 relationship];
          v11 = v40 == v41;
          if (v40 != v41)
          {
            v42 = [v5 relationship];
            if (v42)
            {
              v71 = v35;
              v53 = v42;
              v43 = [(_HKClinicalContact *)self relationship];
              v44 = [v5 relationship];
              v11 = [v43 isEqualToString:v44];

              if (v31 != v62)
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

          if (v31 == v62)
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
            v10 = v74;
            v9 = v75;
            if (v6 != v7)
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

        v27 = [v5 phoneNumberContactIdentifier];
        v28 = v25;
        if (!v27)
        {
          v64 = v18;
          v11 = 0;
          v38 = v63;
          v39 = v73;
          v3 = v24;
          v36 = v23;
          goto LABEL_45;
        }

        v65 = v25;
        v60 = v27;
        v29 = [(_HKClinicalContact *)self phoneNumberContactIdentifier];
        v30 = [v5 phoneNumberContactIdentifier];
        v3 = v24;
        if ([v29 isEqualToString:v30])
        {
          v57 = v29;
          v58 = v30;
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

    if (v12 != v13)
    {
    }

LABEL_31:

    goto LABEL_32;
  }

  v11 = 0;
LABEL_36:

  return v11;
}

- (BOOL)isEqualToSyncedContact:(id)a3
{
  v8 = a3;
  v9 = [(_HKClinicalContact *)self name];
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
    v3 = [(_HKClinicalContact *)self name];
    v4 = [v8 name];
    if (![v3 isEqualToString:v4])
    {
      v12 = 0;
LABEL_38:

      goto LABEL_39;
    }
  }

  v13 = [(_HKClinicalContact *)self phoneNumber];
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
    v6 = [(_HKClinicalContact *)self phoneNumber];
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

  v19 = [(_HKClinicalContact *)self phoneNumberLabel];
  v46 = [v8 phoneNumberLabel];
  v42 = v19;
  v40 = v6;
  if (v19 == v46)
  {
    v38 = v3;
    v39 = v14;
    v45 = v4;
    [(_HKClinicalContact *)self relationship];
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
    v21 = [(_HKClinicalContact *)self phoneNumberLabel];
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
    [(_HKClinicalContact *)self relationship];
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
      v27 = [(_HKClinicalContact *)self relationship];
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
  v5 = [(_HKClinicalContact *)self name];
  [v4 encodeObject:v5 forKey:@"HKClinicalContactNameKey"];

  v6 = [(_HKClinicalContact *)self nameContactIdentifier];
  [v4 encodeObject:v6 forKey:@"HKClinicalContactNameContactIdentifierKey"];

  v7 = [(_HKClinicalContact *)self phoneNumber];
  [v4 encodeObject:v7 forKey:@"HKEClinicalContactPhoneNumberKey"];

  v8 = [(_HKClinicalContact *)self phoneNumberContactIdentifier];
  [v4 encodeObject:v8 forKey:@"HKClinicalContactPhoneNumberContactIdentifierKey"];

  v9 = [(_HKClinicalContact *)self phoneNumberLabel];
  [v4 encodeObject:v9 forKey:@"HKClinicalContactPhoneNumberLabelKey"];

  v10 = [(_HKClinicalContact *)self relationship];
  [v4 encodeObject:v10 forKey:@"HKClinicalContactRelationshipKey"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[_HKClinicalContact allocWithZone:?]];
  v5 = [(_HKClinicalContact *)self name];
  v6 = [v5 copy];
  [(_HKClinicalContact *)v4 setName:v6];

  v7 = [(_HKClinicalContact *)self nameContactIdentifier];
  v8 = [v7 copy];
  [(_HKClinicalContact *)v4 setNameContactIdentifier:v8];

  v9 = [(_HKClinicalContact *)self phoneNumber];
  v10 = [v9 copy];
  [(_HKClinicalContact *)v4 setPhoneNumber:v10];

  v11 = [(_HKClinicalContact *)self phoneNumberContactIdentifier];
  v12 = [v11 copy];
  [(_HKClinicalContact *)v4 setPhoneNumberContactIdentifier:v12];

  v13 = [(_HKClinicalContact *)self phoneNumberLabel];
  v14 = [v13 copy];
  [(_HKClinicalContact *)v4 setPhoneNumberLabel:v14];

  v15 = [(_HKClinicalContact *)self relationship];
  v16 = [v15 copy];
  [(_HKClinicalContact *)v4 setRelationship:v16];

  return v4;
}

+ (id)clinicalContactWithContact:(id)a3 property:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 contact];

    v5 = v8;
  }

  v9 = objc_alloc_init(_HKClinicalContact);
  v10 = _HKFormattedMedicalIDNameForContact(v5);
  [(_HKClinicalContact *)v9 setName:v10];

  v11 = [v5 identifier];
  [(_HKClinicalContact *)v9 setNameContactIdentifier:v11];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58___HKClinicalContact_clinicalContactWithContact_property___block_invoke;
  v14[3] = &unk_1E73818D0;
  v12 = v9;
  v15 = v12;
  _HKMedicalIDPhoneNumberForContact(v5, v7, v14);

  return v12;
}

@end