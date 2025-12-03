@interface HKSignedClinicalDataSubject
+ (HKSignedClinicalDataSubject)subjectWithFullName:(id)name birthDate:(id)date gender:(id)gender emailAddresses:(id)addresses phoneNumbers:(id)numbers;
+ (HKSignedClinicalDataSubject)subjectWithFullName:(id)name birthDate:(id)date gender:(id)gender emailAddresses:(id)addresses phoneNumbers:(id)numbers identifiers:(id)identifiers addresses:(id)a9 maritalStatus:(id)self0 race:(id)self1 ethnicity:(id)self2 birthSex:(id)self3;
- (BOOL)isEqual:(id)equal;
- (HKSignedClinicalDataSubject)initWithCoder:(id)coder;
- (HKSignedClinicalDataSubject)initWithFullName:(id)name birthDate:(id)date gender:(id)gender emailAddresses:(id)addresses phoneNumbers:(id)numbers identifiers:(id)identifiers addresses:(id)a9 maritalStatus:(id)self0 race:(id)self1 ethnicity:(id)self2 birthSex:(id)self3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSignedClinicalDataSubject

- (HKSignedClinicalDataSubject)initWithFullName:(id)name birthDate:(id)date gender:(id)gender emailAddresses:(id)addresses phoneNumbers:(id)numbers identifiers:(id)identifiers addresses:(id)a9 maritalStatus:(id)self0 race:(id)self1 ethnicity:(id)self2 birthSex:(id)self3
{
  nameCopy = name;
  dateCopy = date;
  genderCopy = gender;
  addressesCopy = addresses;
  numbersCopy = numbers;
  identifiersCopy = identifiers;
  v22 = a9;
  statusCopy = status;
  raceCopy = race;
  ethnicityCopy = ethnicity;
  sexCopy = sex;
  v54.receiver = self;
  v54.super_class = HKSignedClinicalDataSubject;
  v27 = [(HKSignedClinicalDataSubject *)&v54 init];
  if (v27)
  {
    v28 = [nameCopy copy];
    fullName = v27->_fullName;
    v27->_fullName = v28;

    v30 = [dateCopy copy];
    birthDate = v27->_birthDate;
    v27->_birthDate = v30;

    v32 = [genderCopy copy];
    gender = v27->_gender;
    v27->_gender = v32;

    v34 = [addressesCopy copy];
    emailAddresses = v27->_emailAddresses;
    v27->_emailAddresses = v34;

    v36 = [numbersCopy copy];
    phoneNumbers = v27->_phoneNumbers;
    v27->_phoneNumbers = v36;

    v38 = [identifiersCopy copy];
    identifiers = v27->_identifiers;
    v27->_identifiers = v38;

    v40 = [v22 copy];
    addresses = v27->_addresses;
    v27->_addresses = v40;

    v42 = [statusCopy copy];
    maritalStatus = v27->_maritalStatus;
    v27->_maritalStatus = v42;

    v44 = [raceCopy copy];
    race = v27->_race;
    v27->_race = v44;

    v46 = [ethnicityCopy copy];
    ethnicity = v27->_ethnicity;
    v27->_ethnicity = v46;

    v48 = [sexCopy copy];
    birthSex = v27->_birthSex;
    v27->_birthSex = v48;
  }

  return v27;
}

+ (HKSignedClinicalDataSubject)subjectWithFullName:(id)name birthDate:(id)date gender:(id)gender emailAddresses:(id)addresses phoneNumbers:(id)numbers
{
  numbersCopy = numbers;
  addressesCopy = addresses;
  genderCopy = gender;
  dateCopy = date;
  nameCopy = name;
  v17 = [[self alloc] initWithFullName:nameCopy birthDate:dateCopy gender:genderCopy emailAddresses:addressesCopy phoneNumbers:numbersCopy identifiers:0 addresses:0 maritalStatus:0 race:0 ethnicity:0 birthSex:0];

  return v17;
}

+ (HKSignedClinicalDataSubject)subjectWithFullName:(id)name birthDate:(id)date gender:(id)gender emailAddresses:(id)addresses phoneNumbers:(id)numbers identifiers:(id)identifiers addresses:(id)a9 maritalStatus:(id)self0 race:(id)self1 ethnicity:(id)self2 birthSex:(id)self3
{
  sexCopy = sex;
  ethnicityCopy = ethnicity;
  raceCopy = race;
  statusCopy = status;
  v19 = a9;
  identifiersCopy = identifiers;
  numbersCopy = numbers;
  addressesCopy = addresses;
  genderCopy = gender;
  dateCopy = date;
  nameCopy = name;
  v32 = [[self alloc] initWithFullName:nameCopy birthDate:dateCopy gender:genderCopy emailAddresses:addressesCopy phoneNumbers:numbersCopy identifiers:identifiersCopy addresses:v19 maritalStatus:statusCopy race:raceCopy ethnicity:ethnicityCopy birthSex:sexCopy];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifiers = self->_identifiers;
      identifiers = [(HKSignedClinicalDataSubject *)v5 identifiers];

      if (identifiers)
      {
        if (!identifiers)
        {
LABEL_20:
          v15 = 0;
LABEL_21:
          fullName = self->_fullName;
          fullName = [(HKSignedClinicalDataSubject *)v5 fullName];
          if (fullName != fullName)
          {
            identifiers = [(HKSignedClinicalDataSubject *)v5 fullName];
            if (!identifiers)
            {
              v8 = 0;
LABEL_144:

              goto LABEL_145;
            }

            v18 = self->_fullName;
            fullName2 = [(HKSignedClinicalDataSubject *)v5 fullName];
            if (![(NSString *)v18 isEqualToString:fullName2])
            {
              v8 = 0;
LABEL_73:

              goto LABEL_144;
            }

            v104 = fullName2;
          }

          birthDate = self->_birthDate;
          birthDate = [(HKSignedClinicalDataSubject *)v5 birthDate];
          v102 = birthDate != birthDate;
          if (birthDate != birthDate)
          {
            birthDate2 = [(HKSignedClinicalDataSubject *)v5 birthDate];
            if (!birthDate2)
            {

              v8 = 0;
              fullName2 = v104;
              if (fullName == fullName)
              {
LABEL_143:
                if (fullName != fullName)
                {
                  goto LABEL_144;
                }

                goto LABEL_145;
              }

LABEL_142:

              goto LABEL_143;
            }

            v98 = birthDate2;
            v23 = self->_birthDate;
            birthDate3 = [(HKSignedClinicalDataSubject *)v5 birthDate];
            if (![(HKMedicalDate *)v23 isEqual:?])
            {
              v8 = 0;
              fullName2 = v104;
              goto LABEL_72;
            }
          }

          gender = self->_gender;
          gender = [(HKSignedClinicalDataSubject *)v5 gender];
          v99 = gender;
          v97 = gender != gender;
          if (gender != gender)
          {
            gender2 = [(HKSignedClinicalDataSubject *)v5 gender];
            if (!gender2)
            {

              v8 = 0;
              if (birthDate != birthDate)
              {
                LOBYTE(v34) = 1;
                fullName2 = v104;
                goto LABEL_139;
              }

              v34 = 0;
              fullName2 = v104;
LABEL_147:
              if (!v34)
              {
                goto LABEL_141;
              }

LABEL_140:

              goto LABEL_141;
            }

            v93 = gender2;
            v26 = self->_gender;
            gender3 = [(HKSignedClinicalDataSubject *)v5 gender];
            if (![(NSString *)v26 isEqualToString:?])
            {
              v8 = 0;
              v27 = gender;
              goto LABEL_71;
            }
          }

          emailAddresses = self->_emailAddresses;
          emailAddresses = [(HKSignedClinicalDataSubject *)v5 emailAddresses];
          v94 = emailAddresses;
          v29 = emailAddresses == emailAddresses;
          v30 = emailAddresses != emailAddresses;
          if (v29)
          {
            v91 = v30;
          }

          else
          {
            emailAddresses2 = [(HKSignedClinicalDataSubject *)v5 emailAddresses];
            if (!emailAddresses2)
            {

              v8 = 0;
              v27 = gender;
              if (v99 != gender)
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
            v88 = emailAddresses2;
            v32 = self->_emailAddresses;
            emailAddresses3 = [(HKSignedClinicalDataSubject *)v5 emailAddresses];
            if (![(NSArray *)v32 isEqualToArray:?])
            {
              v8 = 0;
              v27 = gender;
              v33 = emailAddresses;
              goto LABEL_70;
            }
          }

          phoneNumbers = self->_phoneNumbers;
          phoneNumbers = [(HKSignedClinicalDataSubject *)v5 phoneNumbers];
          v89 = phoneNumbers;
          v87 = phoneNumbers != phoneNumbers;
          v92 = phoneNumbers;
          if (phoneNumbers != phoneNumbers)
          {
            phoneNumbers2 = [(HKSignedClinicalDataSubject *)v5 phoneNumbers];
            if (!phoneNumbers2)
            {

              v8 = 0;
              v33 = emailAddresses;
              v27 = gender;
              if (v94 != emailAddresses)
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

            v85 = phoneNumbers2;
            v38 = self->_phoneNumbers;
            phoneNumbers3 = [(HKSignedClinicalDataSubject *)v5 phoneNumbers];
            if (![(NSArray *)v38 isEqualToArray:?])
            {
              v8 = 0;
              v27 = gender;
              v33 = emailAddresses;
              goto LABEL_69;
            }

            phoneNumbers = v92;
          }

          if (!v15)
          {
            v8 = 0;
            v27 = gender;
            v33 = emailAddresses;
            if (v89 != phoneNumbers)
            {
              goto LABEL_130;
            }

            goto LABEL_153;
          }

          addresses = self->_addresses;
          addresses = [(HKSignedClinicalDataSubject *)v5 addresses];
          v42 = addresses;
          v81 = addresses;
          v82 = addresses != addresses;
          if (addresses == addresses)
          {
            v84 = addresses;
          }

          else
          {
            addresses2 = [(HKSignedClinicalDataSubject *)v5 addresses];
            if (!addresses2)
            {

              v8 = 0;
              v27 = gender;
              v33 = emailAddresses;
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

            v78 = addresses2;
            v44 = self->_addresses;
            addresses3 = [(HKSignedClinicalDataSubject *)v5 addresses];
            v84 = v42;
            if (![(NSArray *)v44 isEqualToArray:?])
            {
              v8 = 0;
              v27 = gender;
              v33 = emailAddresses;
              goto LABEL_68;
            }
          }

          maritalStatus = self->_maritalStatus;
          maritalStatus = [(HKSignedClinicalDataSubject *)v5 maritalStatus];
          v77 = maritalStatus;
          v46 = maritalStatus != maritalStatus;
          if (maritalStatus != maritalStatus)
          {
            maritalStatus2 = [(HKSignedClinicalDataSubject *)v5 maritalStatus];
            if (!maritalStatus2)
            {

              v8 = 0;
              v27 = gender;
              v33 = emailAddresses;
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

            v74 = maritalStatus2;
            v48 = self->_maritalStatus;
            maritalStatus3 = [(HKSignedClinicalDataSubject *)v5 maritalStatus];
            if (![(NSString *)v48 isEqualToString:?])
            {
              v8 = 0;
              v27 = gender;
              goto LABEL_67;
            }
          }

          race = self->_race;
          race = [(HKSignedClinicalDataSubject *)v5 race];
          v73 = race;
          if (race != race)
          {
            race2 = [(HKSignedClinicalDataSubject *)v5 race];
            if (!race2)
            {

              v8 = 0;
              v27 = gender;
              if (v77 != maritalStatus)
              {
                goto LABEL_121;
              }

              goto LABEL_124;
            }

            v71 = race2;
            v51 = self->_race;
            race3 = [(HKSignedClinicalDataSubject *)v5 race];
            if (![(NSString *)v51 isEqualToString:?])
            {
              v8 = 0;
              v27 = gender;
              v52 = race;
LABEL_119:

              if (v77 != maritalStatus)
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
          ethnicity = [(HKSignedClinicalDataSubject *)v5 ethnicity];
          if (ethnicity != ethnicity)
          {
            ethnicity2 = [(HKSignedClinicalDataSubject *)v5 ethnicity];
            if (!ethnicity2)
            {
              v8 = 0;
              v27 = gender;
              v65 = ethnicity;
              goto LABEL_118;
            }

            v69 = ethnicity2;
            v56 = self->_ethnicity;
            ethnicity3 = [(HKSignedClinicalDataSubject *)v5 ethnicity];
            v58 = v56;
            v59 = ethnicity3;
            if (![(NSString *)v58 isEqualToString:ethnicity3])
            {

              v8 = 0;
              goto LABEL_99;
            }

            v67 = v59;
          }

          birthSex = self->_birthSex;
          birthSex = [(HKSignedClinicalDataSubject *)v5 birthSex];
          v8 = birthSex == birthSex;
          if (v8)
          {
          }

          else
          {
            v68 = birthSex;
            birthSex2 = [(HKSignedClinicalDataSubject *)v5 birthSex];
            if (birthSex2)
            {
              v63 = self->_birthSex;
              v103 = birthSex2;
              birthSex3 = [(HKSignedClinicalDataSubject *)v5 birthSex];
              v8 = [(NSString *)v63 isEqualToString:birthSex3];

              if (ethnicity != ethnicity)
              {
              }

LABEL_99:
              if (v73 != race)
              {
              }

              if (v77 != maritalStatus)
              {
              }

              if (v81 != v84)
              {
              }

              if (v89 != v92)
              {
              }

              if (v94 != emailAddresses)
              {
              }

              if (v99 != gender)
              {
              }

              if (birthDate != birthDate)
              {
              }

              fullName2 = v104;
              if (fullName == fullName)
              {
                goto LABEL_145;
              }

              goto LABEL_73;
            }
          }

          v29 = ethnicity == ethnicity;
          v65 = ethnicity;
          if (v29)
          {

            v52 = race;
            v27 = gender;
            if (v73 != race)
            {
              goto LABEL_119;
            }

            goto LABEL_158;
          }

          v27 = gender;
LABEL_118:

          v52 = race;
          if (v73 != race)
          {
            goto LABEL_119;
          }

LABEL_158:

          if (v77 != maritalStatus)
          {
LABEL_67:

            v33 = emailAddresses;
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

                    v29 = birthDate == birthDate;
                    fullName2 = v104;
                    if (!v29)
                    {
LABEL_72:

                      if (fullName != fullName)
                      {
                        goto LABEL_73;
                      }

LABEL_145:

                      goto LABEL_146;
                    }

LABEL_141:

                    if (fullName == fullName)
                    {
                      goto LABEL_143;
                    }

                    goto LABEL_142;
                  }

LABEL_138:

                  v29 = birthDate == birthDate;
                  fullName2 = v104;
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

          v33 = emailAddresses;
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

      else if (identifiers)
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
          identifiers2 = [(HKSignedClinicalDataSubject *)v5 identifiers];
          v13 = [identifiers2 objectAtIndexedSubscript:i];

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

- (HKSignedClinicalDataSubject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = HKSignedClinicalDataSubject;
  v5 = [(HKSignedClinicalDataSubject *)&v32 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullName"];
    fullName = v5->_fullName;
    v5->_fullName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"birthDate"];
    birthDate = v5->_birthDate;
    v5->_birthDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gender"];
    gender = v5->_gender;
    v5->_gender = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"emailAddresses"];
    emailAddresses = v5->_emailAddresses;
    v5->_emailAddresses = v15;

    v17 = [coderCopy decodeObjectOfClasses:v14 forKey:@"phoneNumbers"];
    phoneNumbers = v5->_phoneNumbers;
    v5->_phoneNumbers = v17;

    v19 = [coderCopy decodeObjectOfClasses:v14 forKey:@"identifiersNumbers"];
    identifiers = v5->_identifiers;
    v5->_identifiers = v19;

    v21 = [coderCopy decodeObjectOfClasses:v14 forKey:@"addressesNumbers"];
    addresses = v5->_addresses;
    v5->_addresses = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maritalStatusNumbers"];
    maritalStatus = v5->_maritalStatus;
    v5->_maritalStatus = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"raceNumbers"];
    race = v5->_race;
    v5->_race = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ethnicityNumbers"];
    ethnicity = v5->_ethnicity;
    v5->_ethnicity = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"birthSexNumbers"];
    birthSex = v5->_birthSex;
    v5->_birthSex = v29;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  fullName = self->_fullName;
  coderCopy = coder;
  [coderCopy encodeObject:fullName forKey:@"fullName"];
  [coderCopy encodeObject:self->_birthDate forKey:@"birthDate"];
  [coderCopy encodeObject:self->_gender forKey:@"gender"];
  [coderCopy encodeObject:self->_emailAddresses forKey:@"emailAddresses"];
  [coderCopy encodeObject:self->_phoneNumbers forKey:@"phoneNumbers"];
  [coderCopy encodeObject:self->_identifiers forKey:@"identifiersNumbers"];
  [coderCopy encodeObject:self->_addresses forKey:@"addressesNumbers"];
  [coderCopy encodeObject:self->_maritalStatus forKey:@"maritalStatusNumbers"];
  [coderCopy encodeObject:self->_race forKey:@"raceNumbers"];
  [coderCopy encodeObject:self->_ethnicity forKey:@"ethnicityNumbers"];
  [coderCopy encodeObject:self->_birthSex forKey:@"birthSexNumbers"];
}

@end