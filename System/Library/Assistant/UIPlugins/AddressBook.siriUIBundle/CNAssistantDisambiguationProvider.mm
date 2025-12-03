@interface CNAssistantDisambiguationProvider
- (CNAssistantDisambiguationProvider)initWithContactStore:(id)store;
- (CNContactFormatter)contactFormatter;
- (CNFavorites)favorites;
- (id)disambiguationForEmail:(id)email contactIdentifier:(id)identifier;
- (id)disambiguationForPerson:(id)person;
- (id)disambiguationForPhone:(id)phone contactIdentifier:(id)identifier;
- (id)disambiguationForPostalAddress:(id)address;
- (id)disambiguationForRelatedName:(id)name;
- (id)disambiguationItemForListItem:(id)item;
- (id)localizedLabel:(id)label forPropertyKey:(id)key;
- (id)valueForLabel:(id)label propertyKey:(id)key contactIdentifier:(id)identifier;
@end

@implementation CNAssistantDisambiguationProvider

- (CNAssistantDisambiguationProvider)initWithContactStore:(id)store
{
  storeCopy = store;
  v10.receiver = self;
  v10.super_class = CNAssistantDisambiguationProvider;
  v6 = [(CNAssistantDisambiguationProvider *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, store);
    v8 = v7;
  }

  return v7;
}

- (id)disambiguationItemForListItem:(id)item
{
  itemCopy = item;
  object = [itemCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  object2 = [itemCopy object];
  if (isKindOfClass)
  {
    v8 = [(CNAssistantDisambiguationProvider *)self disambiguationForPerson:object2];
LABEL_11:
    v13 = v8;
    goto LABEL_12;
  }

  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  object2 = [itemCopy object];
  if (v9)
  {
    v8 = [(CNAssistantDisambiguationProvider *)self disambiguationForPhone:object2];
    goto LABEL_11;
  }

  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  object2 = [itemCopy object];
  if (v10)
  {
    v8 = [(CNAssistantDisambiguationProvider *)self disambiguationForEmail:object2];
    goto LABEL_11;
  }

  objc_opt_class();
  v11 = objc_opt_isKindOfClass();

  object2 = [itemCopy object];
  if (v11)
  {
    v8 = [(CNAssistantDisambiguationProvider *)self disambiguationForPostalAddress:object2];
    goto LABEL_11;
  }

  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  object2 = [itemCopy object];
  if (v12)
  {
    v8 = [(CNAssistantDisambiguationProvider *)self disambiguationForRelatedName:object2];
    goto LABEL_11;
  }

  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if (v15)
  {
    object3 = [itemCopy object];
    object2 = [object3 object];

    if (!object2)
    {
      v13 = 0;
      goto LABEL_12;
    }

    identifier = [object2 identifier];
    v18 = [CNAssistantID contactIDFromAssistantID:identifier];

    phones = [object2 phones];
    if (phones && (v20 = phones, [object2 phones], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "count"), v21, v20, v22))
    {
      phones2 = [object2 phones];
      v24 = [phones2 objectAtIndexedSubscript:0];
      v25 = [(CNAssistantDisambiguationProvider *)self disambiguationForPhone:v24 contactIdentifier:v18];
    }

    else
    {
      emails = [object2 emails];
      if (!emails || (v27 = emails, [object2 emails], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "count"), v28, v27, !v29))
      {
        v13 = 0;
        goto LABEL_30;
      }

      phones2 = [object2 emails];
      v24 = [phones2 objectAtIndexedSubscript:0];
      v25 = [(CNAssistantDisambiguationProvider *)self disambiguationForEmail:v24 contactIdentifier:v18];
    }

    v13 = v25;

LABEL_30:
LABEL_12:

    if (v13)
    {
      goto LABEL_16;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_3FF4(itemCopy);
  }

  v13 = 0;
LABEL_16:

  return v13;
}

- (CNContactFormatter)contactFormatter
{
  contactFormatter = self->_contactFormatter;
  if (!contactFormatter)
  {
    v4 = objc_alloc_init(CNContactFormatter);
    v5 = self->_contactFormatter;
    self->_contactFormatter = v4;

    [(CNContactFormatter *)self->_contactFormatter setStyle:0];
    [(CNContactFormatter *)self->_contactFormatter setFallbackStyle:-1];
    contactFormatter = self->_contactFormatter;
  }

  return contactFormatter;
}

- (CNFavorites)favorites
{
  favorites = self->_favorites;
  if (!favorites)
  {
    v4 = [[CNFavorites alloc] initWithContactStore:self->_contactStore];
    v5 = self->_favorites;
    self->_favorites = v4;

    favorites = self->_favorites;
  }

  return favorites;
}

- (id)disambiguationForPerson:(id)person
{
  personCopy = person;
  contactStore = [(CNAssistantDisambiguationProvider *)self contactStore];

  if (contactStore)
  {
    identifier = [personCopy identifier];
    v7 = [CNAssistantID contactIDFromAssistantID:identifier];

    contactFormatter = [(CNAssistantDisambiguationProvider *)self contactFormatter];
    descriptorForRequiredKeys = [contactFormatter descriptorForRequiredKeys];
    v39 = descriptorForRequiredKeys;
    v10 = [NSArray arrayWithObjects:&v39 count:1];

    contactStore2 = [(CNAssistantDisambiguationProvider *)self contactStore];
    v34 = 0;
    v12 = [contactStore2 unifiedContactWithIdentifier:v7 keysToFetch:v10 error:&v34];
    v13 = v34;

    if (!v12)
    {
      if (v13 && [v13 code] != stru_B8.segname && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v36 = v7;
        v37 = 2112;
        v38 = v13;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to fetch contact with identifier %@, error = %@", buf, 0x16u);
      }

      v12 = objc_alloc_init(CNMutableContact);
      firstName = [personCopy firstName];

      if (firstName)
      {
        firstName2 = [personCopy firstName];
        [v12 setGivenName:firstName2];
      }

      lastName = [personCopy lastName];

      if (lastName)
      {
        lastName2 = [personCopy lastName];
        [v12 setFamilyName:lastName2];
      }

      nickName = [personCopy nickName];

      if (nickName)
      {
        nickName2 = [personCopy nickName];
        [v12 setNickname:nickName2];
      }

      company = [personCopy company];

      if (company)
      {
        company2 = [personCopy company];
        [v12 setOrganizationName:company2];
      }

      emails = [personCopy emails];
      if ([emails count])
      {
        firstName3 = [personCopy firstName];
        if (firstName3 || ([personCopy lastName], (firstName3 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(personCopy, "nickName"), (firstName3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          emailAddress = firstName3;
        }

        else
        {
          company3 = [personCopy company];

          if (company3)
          {
            goto LABEL_22;
          }

          emails2 = [personCopy emails];
          emails = [emails2 objectAtIndex:0];

          emailAddress = [emails emailAddress];
          [v12 setGivenName:emailAddress];
        }
      }
    }

LABEL_22:
    contactFormatter2 = [(CNAssistantDisambiguationProvider *)self contactFormatter];
    v26 = [contactFormatter2 stringFromContact:v12];

    favorites = [(CNAssistantDisambiguationProvider *)self favorites];
    v28 = [favorites entriesForContact:v12];

    v29 = [v28 count] != 0;
    goto LABEL_24;
  }

  v29 = 0;
  v26 = 0;
LABEL_24:
  v30 = +[SiriUIDisambiguationItem disambiguationItem];
  [v30 setTitle:v26];
  [v30 setShowsFavoriteStar:v29];

  return v30;
}

- (id)valueForLabel:(id)label propertyKey:(id)key contactIdentifier:(id)identifier
{
  labelCopy = label;
  keyCopy = key;
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    goto LABEL_11;
  }

  contactStore = [(CNAssistantDisambiguationProvider *)self contactStore];

  if (!contactStore)
  {
    goto LABEL_11;
  }

  propertyKey = [(CNAssistantDisambiguationProvider *)self propertyKey];
  v13 = propertyKey;
  if (propertyKey == keyCopy)
  {
    contactIdentifier = [(CNAssistantDisambiguationProvider *)self contactIdentifier];

    if (contactIdentifier == identifierCopy)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  [(CNAssistantDisambiguationProvider *)self setPropertyKey:keyCopy];
  [(CNAssistantDisambiguationProvider *)self setContactIdentifier:identifierCopy];
  [(CNAssistantDisambiguationProvider *)self setLabeledValues:0];
  contactStore2 = [(CNAssistantDisambiguationProvider *)self contactStore];
  v37 = keyCopy;
  v16 = [NSArray arrayWithObjects:&v37 count:1];
  v32 = 0;
  v17 = [contactStore2 unifiedContactWithIdentifier:identifierCopy keysToFetch:v16 error:&v32];
  v18 = v32;

  if (v17)
  {
    v19 = +[CN contactPropertiesByKey];
    v20 = [v19 objectForKeyedSubscript:keyCopy];

    v21 = [v20 CNValueForContact:v17];
    [(CNAssistantDisambiguationProvider *)self setLabeledValues:v21];
  }

  else if (v18 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v34 = identifierCopy;
    v35 = 2112;
    v36 = v18;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to fetch contact with identifier %@, error = %@", buf, 0x16u);
  }

LABEL_9:
  labeledValues = [(CNAssistantDisambiguationProvider *)self labeledValues];

  if (labeledValues)
  {
    labeledValues2 = [(CNAssistantDisambiguationProvider *)self labeledValues];
    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_1BF8;
    v30 = &unk_C368;
    v31 = labelCopy;
    v24 = [labeledValues2 _cn_firstObjectPassingTest:&v27];
    value = [v24 value];

    goto LABEL_12;
  }

LABEL_11:
  value = 0;
LABEL_12:

  return value;
}

- (id)localizedLabel:(id)label forPropertyKey:(id)key
{
  keyCopy = key;
  labelCopy = label;
  v7 = [CNLocalization localizedStringForString:labelCopy class:objc_opt_class() returningNilIfNotFound:0];

  if ((*(CNIsStringEmpty + 16))(CNIsStringEmpty, v7))
  {
    v8 = [CNContact localizedStringForKey:keyCopy];
    lowercaseString = [v8 lowercaseString];

    v7 = lowercaseString;
  }

  return v7;
}

- (id)disambiguationForPhone:(id)phone contactIdentifier:(id)identifier
{
  phoneCopy = phone;
  identifierCopy = identifier;
  label = [phoneCopy label];
  v9 = [(CNAssistantDisambiguationProvider *)self localizedLabel:label forPropertyKey:CNContactPhoneNumbersKey];

  number = [phoneCopy number];
  if (number)
  {
    number2 = [phoneCopy number];
    [CNPhoneNumber phoneNumberWithStringValue:number2];
  }

  else
  {
    number2 = [phoneCopy label];
    [(CNAssistantDisambiguationProvider *)self valueForLabel:number2 propertyKey:CNContactPhoneNumbersKey contactIdentifier:identifierCopy];
  }
  v12 = ;

  formattedStringValue = [v12 formattedStringValue];
  v14 = +[SiriUIDisambiguationItem disambiguationItem];
  v15 = v14;
  v16 = v9;
  if (formattedStringValue)
  {
    [v14 setHeadingText:v9];
    v14 = v15;
    v16 = formattedStringValue;
  }

  [v14 setTitle:v16];
  favoriteVoice = [phoneCopy favoriteVoice];
  if ([favoriteVoice BOOLValue])
  {
    [v15 setShowsFavoriteStar:1];
  }

  else
  {
    favoriteFacetime = [phoneCopy favoriteFacetime];
    if ([favoriteFacetime BOOLValue])
    {
      [v15 setShowsFavoriteStar:1];
    }

    else
    {
      favoriteFacetimeAudio = [phoneCopy favoriteFacetimeAudio];
      [v15 setShowsFavoriteStar:{objc_msgSend(favoriteFacetimeAudio, "BOOLValue")}];
    }
  }

  return v15;
}

- (id)disambiguationForEmail:(id)email contactIdentifier:(id)identifier
{
  emailCopy = email;
  identifierCopy = identifier;
  label = [emailCopy label];
  v9 = [(CNAssistantDisambiguationProvider *)self localizedLabel:label forPropertyKey:CNContactEmailAddressesKey];

  emailAddress = [emailCopy emailAddress];
  v11 = emailAddress;
  if (emailAddress)
  {
    v12 = emailAddress;
  }

  else
  {
    label2 = [emailCopy label];
    v12 = [(CNAssistantDisambiguationProvider *)self valueForLabel:label2 propertyKey:CNContactEmailAddressesKey contactIdentifier:identifierCopy];
  }

  v14 = +[SiriUIDisambiguationItem disambiguationItem];
  v15 = v14;
  v16 = v9;
  if (v12)
  {
    [v14 setHeadingText:v9];
    v14 = v15;
    v16 = v12;
  }

  [v14 setTitle:v16];
  favoriteFacetime = [emailCopy favoriteFacetime];
  if ([favoriteFacetime BOOLValue])
  {
    [v15 setShowsFavoriteStar:1];
  }

  else
  {
    favoriteFacetimeAudio = [emailCopy favoriteFacetimeAudio];
    [v15 setShowsFavoriteStar:{objc_msgSend(favoriteFacetimeAudio, "BOOLValue")}];
  }

  return v15;
}

- (id)disambiguationForPostalAddress:(id)address
{
  addressCopy = address;
  label = [addressCopy label];
  v6 = [(CNAssistantDisambiguationProvider *)self localizedLabel:label forPropertyKey:CNContactPostalAddressesKey];

  v7 = objc_alloc_init(CNMutablePostalAddress);
  street = [addressCopy street];
  [v7 setStreet:street];

  subLocality = [addressCopy subLocality];
  [v7 setSubLocality:subLocality];

  city = [addressCopy city];
  [v7 setCity:city];

  subAdministrativeArea = [addressCopy subAdministrativeArea];
  [v7 setSubAdministrativeArea:subAdministrativeArea];

  street2 = [addressCopy street];
  if ([street2 length])
  {
    [v7 setState:&stru_C3C8];
  }

  else
  {
    stateCode = [addressCopy stateCode];
    [v7 setState:stateCode];
  }

  countryCode = [addressCopy countryCode];
  [v7 setISOCountryCode:countryCode];

  v15 = [CNPostalAddressFormatter singleLineStringFromPostalAddress:v7 addCountryName:0];
  v16 = +[SiriUIDisambiguationItem disambiguationItem];
  [v16 setHeadingText:v6];
  [v16 setTitle:v15];

  return v16;
}

- (id)disambiguationForRelatedName:(id)name
{
  nameCopy = name;
  label = [nameCopy label];
  v6 = [(CNAssistantDisambiguationProvider *)self localizedLabel:label forPropertyKey:CNContactRelationsKey];

  v7 = +[SiriUIDisambiguationItem disambiguationItem];
  [v7 setHeadingText:v6];
  name = [nameCopy name];

  [v7 setTitle:name];

  return v7;
}

@end