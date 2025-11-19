@interface HKSignedClinicalDataSubject
+ (HKSignedClinicalDataSubject)subjectWithFullName:(id)a3 birthDate:(id)a4 gender:(id)a5 emailAddresses:(id)a6 phoneNumbers:(id)a7;
+ (HKSignedClinicalDataSubject)subjectWithFullName:(id)a3 birthDate:(id)a4 gender:(id)a5 emailAddresses:(id)a6 phoneNumbers:(id)a7 identifiers:(id)a8 addresses:(id)a9 maritalStatus:(id)a10 race:(id)a11 ethnicity:(id)a12 birthSex:(id)a13;
- (BOOL)isEqual:(id)a3;
- (HKSignedClinicalDataSubject)initWithCoder:(id)a3;
- (HKSignedClinicalDataSubject)initWithFullName:(id)a3 birthDate:(id)a4 gender:(id)a5 emailAddresses:(id)a6 phoneNumbers:(id)a7 identifiers:(id)a8 addresses:(id)a9 maritalStatus:(id)a10 race:(id)a11 ethnicity:(id)a12 birthSex:(id)a13;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSignedClinicalDataSubject

- (HKSignedClinicalDataSubject)initWithFullName:(id)a3 birthDate:(id)a4 gender:(id)a5 emailAddresses:(id)a6 phoneNumbers:(id)a7 identifiers:(id)a8 addresses:(id)a9 maritalStatus:(id)a10 race:(id)a11 ethnicity:(id)a12 birthSex:(id)a13
{
  v18 = a3;
  v19 = a4;
  v53 = a5;
  v52 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v26 = a13;
  v54.receiver = self;
  v54.super_class = HKSignedClinicalDataSubject;
  v27 = [(HKSignedClinicalDataSubject *)&v54 init];
  if (v27)
  {
    v28 = [v18 copy];
    fullName = v27->_fullName;
    v27->_fullName = v28;

    v30 = [v19 copy];
    birthDate = v27->_birthDate;
    v27->_birthDate = v30;

    v32 = [v53 copy];
    gender = v27->_gender;
    v27->_gender = v32;

    v34 = [v52 copy];
    emailAddresses = v27->_emailAddresses;
    v27->_emailAddresses = v34;

    v36 = [v20 copy];
    phoneNumbers = v27->_phoneNumbers;
    v27->_phoneNumbers = v36;

    v38 = [v21 copy];
    identifiers = v27->_identifiers;
    v27->_identifiers = v38;

    v40 = [v22 copy];
    addresses = v27->_addresses;
    v27->_addresses = v40;

    v42 = [v23 copy];
    maritalStatus = v27->_maritalStatus;
    v27->_maritalStatus = v42;

    v44 = [v24 copy];
    race = v27->_race;
    v27->_race = v44;

    v46 = [v25 copy];
    ethnicity = v27->_ethnicity;
    v27->_ethnicity = v46;

    v48 = [v26 copy];
    birthSex = v27->_birthSex;
    v27->_birthSex = v48;
  }

  return v27;
}

+ (HKSignedClinicalDataSubject)subjectWithFullName:(id)a3 birthDate:(id)a4 gender:(id)a5 emailAddresses:(id)a6 phoneNumbers:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[a1 alloc] initWithFullName:v16 birthDate:v15 gender:v14 emailAddresses:v13 phoneNumbers:v12 identifiers:0 addresses:0 maritalStatus:0 race:0 ethnicity:0 birthSex:0];

  return v17;
}

+ (HKSignedClinicalDataSubject)subjectWithFullName:(id)a3 birthDate:(id)a4 gender:(id)a5 emailAddresses:(id)a6 phoneNumbers:(id)a7 identifiers:(id)a8 addresses:(id)a9 maritalStatus:(id)a10 race:(id)a11 ethnicity:(id)a12 birthSex:(id)a13
{
  v29 = a13;
  v28 = a12;
  v27 = a11;
  v18 = a10;
  v19 = a9;
  v26 = a8;
  v20 = a7;
  v21 = a6;
  v25 = a5;
  v22 = a4;
  v23 = a3;
  v32 = [[a1 alloc] initWithFullName:v23 birthDate:v22 gender:v25 emailAddresses:v21 phoneNumbers:v20 identifiers:v26 addresses:v19 maritalStatus:v18 race:v27 ethnicity:v28 birthSex:v29];

  return v32;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_fullName hash];
  v4 = [(HKMedicalDate *)self->_birthDate hash]^ v3;
  v5 = [(NSString *)self->_gender hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_emailAddresses hash];
  v7 = [(NSArray *)self->_phoneNumbers hash];
  v8 = v7 ^ [(NSArray *)self->_identifiers hash];
  v9 = v6 ^ v8 ^ [(NSArray *)self->_addresses hash];
  v10 = [(NSString *)self->_maritalStatus hash];
  v11 = v10 ^ [(NSString *)self->_race hash];
  v12 = v11 ^ [(NSString *)self->_ethnicity hash];
  return v9 ^ v12 ^ [(NSString *)self->_birthSex hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      identifiers = self->_identifiers;
      v7 = [(HKSignedClinicalDataSubject *)v5 identifiers];

      if (identifiers)
      {
        if (!v7)
        {
LABEL_20:
          v15 = 0;
LABEL_21:
          fullName = self->_fullName;
          v17 = [(HKSignedClinicalDataSubject *)v5 fullName];
          if (fullName != v17)
          {
            identifiers = [(HKSignedClinicalDataSubject *)v5 fullName];
            if (!identifiers)
            {
              v8 = 0;
LABEL_144:

              goto LABEL_145;
            }

            v18 = self->_fullName;
            v19 = [(HKSignedClinicalDataSubject *)v5 fullName];
            if (![(NSString *)v18 isEqualToString:v19])
            {
              v8 = 0;
LABEL_73:

              goto LABEL_144;
            }

            v104 = v19;
          }

          birthDate = self->_birthDate;
          v21 = [(HKSignedClinicalDataSubject *)v5 birthDate];
          v102 = birthDate != v21;
          if (birthDate != v21)
          {
            v22 = [(HKSignedClinicalDataSubject *)v5 birthDate];
            if (!v22)
            {

              v8 = 0;
              v19 = v104;
              if (fullName == v17)
              {
LABEL_143:
                if (fullName != v17)
                {
                  goto LABEL_144;
                }

                goto LABEL_145;
              }

LABEL_142:

              goto LABEL_143;
            }

            v98 = v22;
            v23 = self->_birthDate;
            v100 = [(HKSignedClinicalDataSubject *)v5 birthDate];
            if (![(HKMedicalDate *)v23 isEqual:?])
            {
              v8 = 0;
              v19 = v104;
              goto LABEL_72;
            }
          }

          gender = self->_gender;
          v101 = [(HKSignedClinicalDataSubject *)v5 gender];
          v99 = gender;
          v97 = gender != v101;
          if (gender != v101)
          {
            v25 = [(HKSignedClinicalDataSubject *)v5 gender];
            if (!v25)
            {

              v8 = 0;
              if (birthDate != v21)
              {
                LOBYTE(v34) = 1;
                v19 = v104;
                goto LABEL_139;
              }

              v34 = 0;
              v19 = v104;
LABEL_147:
              if (!v34)
              {
                goto LABEL_141;
              }

LABEL_140:

              goto LABEL_141;
            }

            v93 = v25;
            v26 = self->_gender;
            v95 = [(HKSignedClinicalDataSubject *)v5 gender];
            if (![(NSString *)v26 isEqualToString:?])
            {
              v8 = 0;
              v27 = v101;
              goto LABEL_71;
            }
          }

          emailAddresses = self->_emailAddresses;
          v96 = [(HKSignedClinicalDataSubject *)v5 emailAddresses];
          v94 = emailAddresses;
          v29 = emailAddresses == v96;
          v30 = emailAddresses != v96;
          if (v29)
          {
            v91 = v30;
          }

          else
          {
            v31 = [(HKSignedClinicalDataSubject *)v5 emailAddresses];
            if (!v31)
            {

              v8 = 0;
              v27 = v101;
              if (v99 != v101)
              {
                LOBYTE(v39) = 1;
                goto LABEL_136;
              }

              v39 = 0;
LABEL_149:
              if (!v39)
              {
                goto LABEL_138;
              }

LABEL_137:

              goto LABEL_138;
            }

            v91 = v30;
            v88 = v31;
            v32 = self->_emailAddresses;
            v90 = [(HKSignedClinicalDataSubject *)v5 emailAddresses];
            if (![(NSArray *)v32 isEqualToArray:?])
            {
              v8 = 0;
              v27 = v101;
              v33 = v96;
              goto LABEL_70;
            }
          }

          phoneNumbers = self->_phoneNumbers;
          v36 = [(HKSignedClinicalDataSubject *)v5 phoneNumbers];
          v89 = phoneNumbers;
          v87 = phoneNumbers != v36;
          v92 = v36;
          if (phoneNumbers != v36)
          {
            v37 = [(HKSignedClinicalDataSubject *)v5 phoneNumbers];
            if (!v37)
            {

              v8 = 0;
              v33 = v96;
              v27 = v101;
              if (v94 != v96)
              {
                LOBYTE(v91) = 1;
                goto LABEL_133;
              }

              v91 = 0;
LABEL_151:
              if (!v91)
              {
                goto LABEL_135;
              }

LABEL_134:

              goto LABEL_135;
            }

            v85 = v37;
            v38 = self->_phoneNumbers;
            v86 = [(HKSignedClinicalDataSubject *)v5 phoneNumbers];
            if (![(NSArray *)v38 isEqualToArray:?])
            {
              v8 = 0;
              v27 = v101;
              v33 = v96;
              goto LABEL_69;
            }

            v36 = v92;
          }

          if (!v15)
          {
            v8 = 0;
            v27 = v101;
            v33 = v96;
            if (v89 != v36)
            {
              goto LABEL_130;
            }

            goto LABEL_153;
          }

          addresses = self->_addresses;
          v41 = [(HKSignedClinicalDataSubject *)v5 addresses];
          v42 = v41;
          v81 = addresses;
          v82 = addresses != v41;
          if (addresses == v41)
          {
            v84 = v41;
          }

          else
          {
            v43 = [(HKSignedClinicalDataSubject *)v5 addresses];
            if (!v43)
            {

              v8 = 0;
              v27 = v101;
              v33 = v96;
              if (v89 != v92)
              {
                LOBYTE(v87) = 1;
                goto LABEL_130;
              }

              v87 = 0;
LABEL_153:
              if (!v87)
              {
                goto LABEL_132;
              }

LABEL_131:

              goto LABEL_132;
            }

            v78 = v43;
            v44 = self->_addresses;
            v79 = [(HKSignedClinicalDataSubject *)v5 addresses];
            v84 = v42;
            if (![(NSArray *)v44 isEqualToArray:?])
            {
              v8 = 0;
              v27 = v101;
              v33 = v96;
              goto LABEL_68;
            }
          }

          maritalStatus = self->_maritalStatus;
          v80 = [(HKSignedClinicalDataSubject *)v5 maritalStatus];
          v77 = maritalStatus;
          v46 = maritalStatus != v80;
          if (maritalStatus != v80)
          {
            v47 = [(HKSignedClinicalDataSubject *)v5 maritalStatus];
            if (!v47)
            {

              v8 = 0;
              v27 = v101;
              v33 = v96;
              if (v81 != v84)
              {
                LOBYTE(v53) = 1;
                goto LABEL_127;
              }

              v53 = 0;
LABEL_155:
              if (!v53)
              {
                goto LABEL_129;
              }

LABEL_128:

              goto LABEL_129;
            }

            v74 = v47;
            v48 = self->_maritalStatus;
            v75 = [(HKSignedClinicalDataSubject *)v5 maritalStatus];
            if (![(NSString *)v48 isEqualToString:?])
            {
              v8 = 0;
              v27 = v101;
              goto LABEL_67;
            }
          }

          race = self->_race;
          v76 = [(HKSignedClinicalDataSubject *)v5 race];
          v73 = race;
          if (race != v76)
          {
            v50 = [(HKSignedClinicalDataSubject *)v5 race];
            if (!v50)
            {

              v8 = 0;
              v27 = v101;
              if (v77 != v80)
              {
                goto LABEL_121;
              }

              goto LABEL_124;
            }

            v71 = v50;
            v51 = self->_race;
            v70 = [(HKSignedClinicalDataSubject *)v5 race];
            if (![(NSString *)v51 isEqualToString:?])
            {
              v8 = 0;
              v27 = v101;
              v52 = v76;
LABEL_119:

              if (v77 != v80)
              {
                LOBYTE(v46) = 1;
LABEL_121:

                if (!v46)
                {
                  goto LABEL_126;
                }

LABEL_125:

                goto LABEL_126;
              }

              v46 = 0;
LABEL_124:
              if (!v46)
              {
                goto LABEL_126;
              }

              goto LABEL_125;
            }
          }

          ethnicity = self->_ethnicity;
          v72 = [(HKSignedClinicalDataSubject *)v5 ethnicity];
          if (ethnicity != v72)
          {
            v55 = [(HKSignedClinicalDataSubject *)v5 ethnicity];
            if (!v55)
            {
              v8 = 0;
              v27 = v101;
              v65 = v72;
              goto LABEL_118;
            }

            v69 = v55;
            v56 = self->_ethnicity;
            v57 = [(HKSignedClinicalDataSubject *)v5 ethnicity];
            v58 = v56;
            v59 = v57;
            if (![(NSString *)v58 isEqualToString:v57])
            {

              v8 = 0;
              goto LABEL_99;
            }

            v67 = v59;
          }

          birthSex = self->_birthSex;
          v61 = [(HKSignedClinicalDataSubject *)v5 birthSex];
          v8 = birthSex == v61;
          if (v8)
          {
          }

          else
          {
            v68 = v61;
            v62 = [(HKSignedClinicalDataSubject *)v5 birthSex];
            if (v62)
            {
              v63 = self->_birthSex;
              v103 = v62;
              v64 = [(HKSignedClinicalDataSubject *)v5 birthSex];
              v8 = [(NSString *)v63 isEqualToString:v64];

              if (ethnicity != v72)
              {
              }

LABEL_99:
              if (v73 != v76)
              {
              }

              if (v77 != v80)
              {
              }

              if (v81 != v84)
              {
              }

              if (v89 != v92)
              {
              }

              if (v94 != v96)
              {
              }

              if (v99 != v101)
              {
              }

              if (birthDate != v21)
              {
              }

              v19 = v104;
              if (fullName == v17)
              {
                goto LABEL_145;
              }

              goto LABEL_73;
            }
          }

          v29 = ethnicity == v72;
          v65 = v72;
          if (v29)
          {

            v52 = v76;
            v27 = v101;
            if (v73 != v76)
            {
              goto LABEL_119;
            }

            goto LABEL_158;
          }

          v27 = v101;
LABEL_118:

          v52 = v76;
          if (v73 != v76)
          {
            goto LABEL_119;
          }

LABEL_158:

          if (v77 != v80)
          {
LABEL_67:

            v33 = v96;
            if (v81 != v84)
            {
LABEL_68:

              if (v89 != v92)
              {
LABEL_69:

                if (v94 != v33)
                {
LABEL_70:

                  if (v99 != v27)
                  {
LABEL_71:

                    v29 = birthDate == v21;
                    v19 = v104;
                    if (!v29)
                    {
LABEL_72:

                      if (fullName != v17)
                      {
                        goto LABEL_73;
                      }

LABEL_145:

                      goto LABEL_146;
                    }

LABEL_141:

                    if (fullName == v17)
                    {
                      goto LABEL_143;
                    }

                    goto LABEL_142;
                  }

LABEL_138:

                  v29 = birthDate == v21;
                  v19 = v104;
                  v34 = v102;
                  if (!v29)
                  {
LABEL_139:

                    if (!v34)
                    {
                      goto LABEL_141;
                    }

                    goto LABEL_140;
                  }

                  goto LABEL_147;
                }

LABEL_135:

                v39 = v97;
                if (v99 != v27)
                {
LABEL_136:

                  if (!v39)
                  {
                    goto LABEL_138;
                  }

                  goto LABEL_137;
                }

                goto LABEL_149;
              }

LABEL_132:

              if (v94 != v33)
              {
LABEL_133:

                if (!v91)
                {
                  goto LABEL_135;
                }

                goto LABEL_134;
              }

              goto LABEL_151;
            }

LABEL_129:

            if (v89 != v92)
            {
LABEL_130:

              if (!v87)
              {
                goto LABEL_132;
              }

              goto LABEL_131;
            }

            goto LABEL_153;
          }

LABEL_126:

          v33 = v96;
          v53 = v82;
          if (v81 != v84)
          {
LABEL_127:
            v83 = v53;

            if (!v83)
            {
              goto LABEL_129;
            }

            goto LABEL_128;
          }

          goto LABEL_155;
        }
      }

      else if (v7)
      {
        goto LABEL_20;
      }

      v9 = [(NSArray *)self->_identifiers count];
      identifiers = [(HKSignedClinicalDataSubject *)v5 identifiers];
      v10 = [identifiers count];

      if (v9 != v10)
      {
        goto LABEL_20;
      }

      if ([(NSArray *)self->_identifiers count])
      {
        for (i = 0; [(NSArray *)self->_identifiers count]> i; ++i)
        {
          identifiers = [(NSArray *)self->_identifiers objectAtIndexedSubscript:i];
          v12 = [(HKSignedClinicalDataSubject *)v5 identifiers];
          v13 = [v12 objectAtIndexedSubscript:i];

          if (identifiers == v13)
          {
          }

          else
          {
            if (!v13)
            {

              goto LABEL_20;
            }

            v14 = [identifiers isEqualToArray:v13];

            if (!v14)
            {
              goto LABEL_20;
            }
          }
        }
      }

      v15 = 1;
      goto LABEL_21;
    }

    v8 = 0;
  }

LABEL_146:

  return v8;
}

- (id)debugDescription
{
  v3 = [(NSArray *)self->_identifiers hk_map:&__block_literal_global_96];
  v4 = [v3 componentsJoinedByString:@" "];;

  v5 = MEMORY[0x1E696AEC0];
  fullName = self->_fullName;
  v7 = [(HKMedicalDate *)self->_birthDate description];
  gender = self->_gender;
  v9 = [(NSArray *)self->_emailAddresses componentsJoinedByString:@", "];
  v10 = [(NSArray *)self->_phoneNumbers componentsJoinedByString:@", "];
  v11 = [(NSArray *)self->_addresses componentsJoinedByString:@", "];
  v12 = [v5 stringWithFormat:@"Full Name: %@, Birth Date: %@, Gender: %@, Email Addresses: %@, Phone Numbers: %@, Identifiers: %@, Addresses: %@, Marital Status: %@, Race: %@, Ethnicity: %@, Birth Sex: %@", fullName, v7, gender, v9, v10, v4, v11, self->_maritalStatus, self->_race, self->_ethnicity, self->_birthSex];

  return v12;
}

- (HKSignedClinicalDataSubject)initWithCoder:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = HKSignedClinicalDataSubject;
  v5 = [(HKSignedClinicalDataSubject *)&v32 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fullName"];
    fullName = v5->_fullName;
    v5->_fullName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"birthDate"];
    birthDate = v5->_birthDate;
    v5->_birthDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gender"];
    gender = v5->_gender;
    v5->_gender = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"emailAddresses"];
    emailAddresses = v5->_emailAddresses;
    v5->_emailAddresses = v15;

    v17 = [v4 decodeObjectOfClasses:v14 forKey:@"phoneNumbers"];
    phoneNumbers = v5->_phoneNumbers;
    v5->_phoneNumbers = v17;

    v19 = [v4 decodeObjectOfClasses:v14 forKey:@"identifiersNumbers"];
    identifiers = v5->_identifiers;
    v5->_identifiers = v19;

    v21 = [v4 decodeObjectOfClasses:v14 forKey:@"addressesNumbers"];
    addresses = v5->_addresses;
    v5->_addresses = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maritalStatusNumbers"];
    maritalStatus = v5->_maritalStatus;
    v5->_maritalStatus = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"raceNumbers"];
    race = v5->_race;
    v5->_race = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ethnicityNumbers"];
    ethnicity = v5->_ethnicity;
    v5->_ethnicity = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"birthSexNumbers"];
    birthSex = v5->_birthSex;
    v5->_birthSex = v29;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  fullName = self->_fullName;
  v5 = a3;
  [v5 encodeObject:fullName forKey:@"fullName"];
  [v5 encodeObject:self->_birthDate forKey:@"birthDate"];
  [v5 encodeObject:self->_gender forKey:@"gender"];
  [v5 encodeObject:self->_emailAddresses forKey:@"emailAddresses"];
  [v5 encodeObject:self->_phoneNumbers forKey:@"phoneNumbers"];
  [v5 encodeObject:self->_identifiers forKey:@"identifiersNumbers"];
  [v5 encodeObject:self->_addresses forKey:@"addressesNumbers"];
  [v5 encodeObject:self->_maritalStatus forKey:@"maritalStatusNumbers"];
  [v5 encodeObject:self->_race forKey:@"raceNumbers"];
  [v5 encodeObject:self->_ethnicity forKey:@"ethnicityNumbers"];
  [v5 encodeObject:self->_birthSex forKey:@"birthSexNumbers"];
}

@end