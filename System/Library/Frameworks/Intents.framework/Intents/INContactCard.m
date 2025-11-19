@interface INContactCard
- (BOOL)isEqual:(id)a3;
- (INContactCard)initWithCoder:(id)a3;
- (INContactCard)initWithContactIdentifier:(id)a3 nameComponents:(id)a4 isMe:(BOOL)a5 image:(id)a6 organizationName:(id)a7 departmentName:(id)a8 jobTitle:(id)a9 phoneNumbers:(id)a10 emailAddresses:(id)a11 postalAddresses:(id)a12 urlAddresses:(id)a13 contactRelations:(id)a14 instantMessageAddresses:(id)a15 birthday:(id)a16 dates:(id)a17;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INContactCard

- (INContactCard)initWithCoder:(id)a3
{
  v75[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v60.receiver = self;
  v60.super_class = INContactCard;
  v5 = [(INContactCard *)&v60 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nameComponents"];
    nameComponents = v5->_nameComponents;
    v5->_nameComponents = v8;

    v5->_isMe = [v4 decodeBoolForKey:@"isMe"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    image = v5->_image;
    v5->_image = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"organizationName"];
    organizationName = v5->_organizationName;
    v5->_organizationName = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"departmentName"];
    departmentName = v5->_departmentName;
    v5->_departmentName = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"jobTitle"];
    jobTitle = v5->_jobTitle;
    v5->_jobTitle = v16;

    v18 = MEMORY[0x1E695DFD8];
    v75[0] = objc_opt_class();
    v75[1] = getCNLabeledValueClass_60871();
    v66 = 0;
    v67 = &v66;
    v68 = 0x2050000000;
    v19 = getCNPhoneNumberClass_softClass;
    v69 = getCNPhoneNumberClass_softClass;
    if (!getCNPhoneNumberClass_softClass)
    {
      v61 = MEMORY[0x1E69E9820];
      v62 = 3221225472;
      v63 = __getCNPhoneNumberClass_block_invoke;
      v64 = &unk_1E72888B8;
      v65 = &v66;
      __getCNPhoneNumberClass_block_invoke(&v61);
      v19 = v67[3];
    }

    v20 = v19;
    _Block_object_dispose(&v66, 8);
    v75[2] = v19;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:3];
    v22 = [v18 setWithArray:v21];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"phoneNumbers"];
    phoneNumbers = v5->_phoneNumbers;
    v5->_phoneNumbers = v23;

    v25 = MEMORY[0x1E695DFD8];
    v74[0] = objc_opt_class();
    v74[1] = getCNLabeledValueClass_60871();
    v66 = 0;
    v67 = &v66;
    v68 = 0x2050000000;
    v26 = getCNPostalAddressClass_softClass;
    v69 = getCNPostalAddressClass_softClass;
    if (!getCNPostalAddressClass_softClass)
    {
      v61 = MEMORY[0x1E69E9820];
      v62 = 3221225472;
      v63 = __getCNPostalAddressClass_block_invoke;
      v64 = &unk_1E72888B8;
      v65 = &v66;
      __getCNPostalAddressClass_block_invoke(&v61);
      v26 = v67[3];
    }

    v27 = v26;
    _Block_object_dispose(&v66, 8);
    v74[2] = v26;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:3];
    v29 = [v25 setWithArray:v28];
    v30 = [v4 decodeObjectOfClasses:v29 forKey:@"postalAddresses"];
    postalAddresses = v5->_postalAddresses;
    v5->_postalAddresses = v30;

    v32 = MEMORY[0x1E695DFD8];
    v73[0] = objc_opt_class();
    v73[1] = getCNLabeledValueClass_60871();
    v73[2] = objc_opt_class();
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:3];
    v34 = [v32 setWithArray:v33];
    v35 = [v4 decodeObjectOfClasses:v34 forKey:@"urlAddresses"];
    urlAddresses = v5->_urlAddresses;
    v5->_urlAddresses = v35;

    v37 = MEMORY[0x1E695DFD8];
    v72[0] = objc_opt_class();
    v72[1] = getCNLabeledValueClass_60871();
    v66 = 0;
    v67 = &v66;
    v68 = 0x2050000000;
    v38 = getCNContactRelationClass_softClass;
    v69 = getCNContactRelationClass_softClass;
    if (!getCNContactRelationClass_softClass)
    {
      v61 = MEMORY[0x1E69E9820];
      v62 = 3221225472;
      v63 = __getCNContactRelationClass_block_invoke;
      v64 = &unk_1E72888B8;
      v65 = &v66;
      __getCNContactRelationClass_block_invoke(&v61);
      v38 = v67[3];
    }

    v39 = v38;
    _Block_object_dispose(&v66, 8);
    v72[2] = v38;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:3];
    v41 = [v37 setWithArray:v40];
    v42 = [v4 decodeObjectOfClasses:v41 forKey:@"contactRelations"];
    contactRelations = v5->_contactRelations;
    v5->_contactRelations = v42;

    v44 = MEMORY[0x1E695DFD8];
    v71[0] = objc_opt_class();
    v71[1] = getCNLabeledValueClass_60871();
    v66 = 0;
    v67 = &v66;
    v68 = 0x2050000000;
    v45 = getCNInstantMessageAddressClass_softClass;
    v69 = getCNInstantMessageAddressClass_softClass;
    if (!getCNInstantMessageAddressClass_softClass)
    {
      v61 = MEMORY[0x1E69E9820];
      v62 = 3221225472;
      v63 = __getCNInstantMessageAddressClass_block_invoke;
      v64 = &unk_1E72888B8;
      v65 = &v66;
      __getCNInstantMessageAddressClass_block_invoke(&v61);
      v45 = v67[3];
    }

    v46 = v45;
    _Block_object_dispose(&v66, 8);
    v71[2] = v45;
    v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:3];
    v48 = [v44 setWithArray:v47];
    v49 = [v4 decodeObjectOfClasses:v48 forKey:@"instantMessageAddresses"];
    instantMessageAddresses = v5->_instantMessageAddresses;
    v5->_instantMessageAddresses = v49;

    v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"birthday"];
    birthday = v5->_birthday;
    v5->_birthday = v51;

    v53 = MEMORY[0x1E695DFD8];
    v70[0] = objc_opt_class();
    v70[1] = getCNLabeledValueClass_60871();
    v70[2] = objc_opt_class();
    v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:3];
    v55 = [v53 setWithArray:v54];
    v56 = [v4 decodeObjectOfClasses:v55 forKey:@"dates"];
    dates = v5->_dates;
    v5->_dates = v56;
  }

  v58 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  contactIdentifier = self->_contactIdentifier;
  v5 = a3;
  [v5 encodeObject:contactIdentifier forKey:@"contactIdentifier"];
  [v5 encodeObject:self->_nameComponents forKey:@"nameComponents"];
  [v5 encodeBool:self->_isMe forKey:@"isMe"];
  [v5 encodeObject:self->_image forKey:@"image"];
  [v5 encodeObject:self->_organizationName forKey:@"organizationName"];
  [v5 encodeObject:self->_departmentName forKey:@"departmentName"];
  [v5 encodeObject:self->_jobTitle forKey:@"jobTitle"];
  [v5 encodeObject:self->_phoneNumbers forKey:@"phoneNumbers"];
  [v5 encodeObject:self->_emailAddresses forKey:@"emailAddresses"];
  [v5 encodeObject:self->_postalAddresses forKey:@"postalAddresses"];
  [v5 encodeObject:self->_urlAddresses forKey:@"urlAddresses"];
  [v5 encodeObject:self->_contactRelations forKey:@"contactRelations"];
  [v5 encodeObject:self->_instantMessageAddresses forKey:@"instantMessageAddresses"];
  [v5 encodeObject:self->_birthday forKey:@"birthday"];
  [v5 encodeObject:self->_dates forKey:@"dates"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    contactIdentifier = self->_contactIdentifier;
    if (contactIdentifier && v5[1] && ([(NSString *)contactIdentifier isEqual:?]& 1) != 0)
    {
      goto LABEL_5;
    }

    nameComponents = self->_nameComponents;
    if (nameComponents != v5[2] && ![(NSPersonNameComponents *)nameComponents isEqual:?])
    {
      goto LABEL_34;
    }

    if (self->_isMe != *(v5 + 24))
    {
      goto LABEL_34;
    }

    image = self->_image;
    if (image != v5[4] && ![(INImage *)image isEqual:?])
    {
      goto LABEL_34;
    }

    organizationName = self->_organizationName;
    if (organizationName != v5[5] && ![(NSString *)organizationName isEqual:?])
    {
      goto LABEL_34;
    }

    departmentName = self->_departmentName;
    if (departmentName != v5[6] && ![(NSString *)departmentName isEqual:?])
    {
      goto LABEL_34;
    }

    jobTitle = self->_jobTitle;
    if (jobTitle != v5[7] && ![(NSString *)jobTitle isEqual:?])
    {
      goto LABEL_34;
    }

    phoneNumbers = self->_phoneNumbers;
    if (phoneNumbers != v5[8] && ![(NSArray *)phoneNumbers isEqual:?])
    {
      goto LABEL_34;
    }

    if (((emailAddresses = self->_emailAddresses, emailAddresses == v5[9]) || [(NSArray *)emailAddresses isEqual:?]) && ((postalAddresses = self->_postalAddresses, postalAddresses == v5[10]) || [(NSArray *)postalAddresses isEqual:?]) && ((urlAddresses = self->_urlAddresses, urlAddresses == v5[11]) || [(NSArray *)urlAddresses isEqual:?]) && ((contactRelations = self->_contactRelations, contactRelations == v5[12]) || [(NSArray *)contactRelations isEqual:?]) && ((instantMessageAddresses = self->_instantMessageAddresses, instantMessageAddresses == v5[13]) || [(NSArray *)instantMessageAddresses isEqual:?]) && ((birthday = self->_birthday, birthday == v5[14]) || [(NSDateComponents *)birthday isEqual:?]) && ((dates = self->_dates, dates == v5[15]) || [(NSArray *)dates isEqual:?]))
    {
LABEL_5:
      v7 = 1;
    }

    else
    {
LABEL_34:
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_contactIdentifier hash];
  v4 = [(NSPersonNameComponents *)self->_nameComponents hash]^ v3;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isMe];
  v6 = [v5 hash];
  v7 = v4 ^ [(INImage *)self->_image hash]^ v6;
  v8 = [(NSString *)self->_organizationName hash];
  v9 = v8 ^ [(NSString *)self->_departmentName hash];
  v10 = v9 ^ [(NSString *)self->_jobTitle hash];
  v11 = v7 ^ v10 ^ [(NSArray *)self->_phoneNumbers hash];
  v12 = [(NSArray *)self->_emailAddresses hash];
  v13 = v12 ^ [(NSArray *)self->_postalAddresses hash];
  v14 = v13 ^ [(NSArray *)self->_urlAddresses hash];
  v15 = v14 ^ [(NSArray *)self->_contactRelations hash];
  v16 = v11 ^ v15 ^ [(NSArray *)self->_instantMessageAddresses hash];
  v17 = [(NSDateComponents *)self->_birthday hash];
  v18 = v17 ^ [(NSArray *)self->_dates hash];

  return v16 ^ v18;
}

- (INContactCard)initWithContactIdentifier:(id)a3 nameComponents:(id)a4 isMe:(BOOL)a5 image:(id)a6 organizationName:(id)a7 departmentName:(id)a8 jobTitle:(id)a9 phoneNumbers:(id)a10 emailAddresses:(id)a11 postalAddresses:(id)a12 urlAddresses:(id)a13 contactRelations:(id)a14 instantMessageAddresses:(id)a15 birthday:(id)a16 dates:(id)a17
{
  v21 = a3;
  v22 = a4;
  v23 = a6;
  v24 = a7;
  v69 = a8;
  v25 = v24;
  v68 = a9;
  v26 = v23;
  v67 = a10;
  v27 = v22;
  v66 = a11;
  v65 = a12;
  v28 = a13;
  v29 = a14;
  v30 = a15;
  v31 = a16;
  v32 = a17;
  v70.receiver = self;
  v70.super_class = INContactCard;
  v33 = [(INContactCard *)&v70 init];
  if (v33)
  {
    v34 = [v21 copy];
    contactIdentifier = v33->_contactIdentifier;
    v33->_contactIdentifier = v34;

    v36 = [v27 copy];
    nameComponents = v33->_nameComponents;
    v33->_nameComponents = v36;

    v33->_isMe = a5;
    v38 = [v26 copy];
    image = v33->_image;
    v33->_image = v38;

    v40 = [v25 copy];
    organizationName = v33->_organizationName;
    v33->_organizationName = v40;

    v42 = [v69 copy];
    departmentName = v33->_departmentName;
    v33->_departmentName = v42;

    v44 = [v68 copy];
    jobTitle = v33->_jobTitle;
    v33->_jobTitle = v44;

    v46 = [v67 copy];
    phoneNumbers = v33->_phoneNumbers;
    v33->_phoneNumbers = v46;

    v48 = [v66 copy];
    emailAddresses = v33->_emailAddresses;
    v33->_emailAddresses = v48;

    v50 = [v65 copy];
    postalAddresses = v33->_postalAddresses;
    v33->_postalAddresses = v50;

    v52 = [v28 copy];
    urlAddresses = v33->_urlAddresses;
    v33->_urlAddresses = v52;

    v54 = [v29 copy];
    contactRelations = v33->_contactRelations;
    v33->_contactRelations = v54;

    v56 = [v30 copy];
    instantMessageAddresses = v33->_instantMessageAddresses;
    v33->_instantMessageAddresses = v56;

    v58 = [v31 copy];
    birthday = v33->_birthday;
    v33->_birthday = v58;

    v60 = [v32 copy];
    dates = v33->_dates;
    v33->_dates = v60;
  }

  return v33;
}

@end