@interface CNAssistantDisambiguationProvider
- (CNAssistantDisambiguationProvider)initWithContactStore:(id)a3;
- (CNContactFormatter)contactFormatter;
- (CNFavorites)favorites;
- (id)disambiguationForEmail:(id)a3 contactIdentifier:(id)a4;
- (id)disambiguationForPerson:(id)a3;
- (id)disambiguationForPhone:(id)a3 contactIdentifier:(id)a4;
- (id)disambiguationForPostalAddress:(id)a3;
- (id)disambiguationForRelatedName:(id)a3;
- (id)disambiguationItemForListItem:(id)a3;
- (id)localizedLabel:(id)a3 forPropertyKey:(id)a4;
- (id)valueForLabel:(id)a3 propertyKey:(id)a4 contactIdentifier:(id)a5;
@end

@implementation CNAssistantDisambiguationProvider

- (CNAssistantDisambiguationProvider)initWithContactStore:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNAssistantDisambiguationProvider;
  v6 = [(CNAssistantDisambiguationProvider *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, a3);
    v8 = v7;
  }

  return v7;
}

- (id)disambiguationItemForListItem:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = [v4 object];
  if (isKindOfClass)
  {
    v8 = [(CNAssistantDisambiguationProvider *)self disambiguationForPerson:v7];
LABEL_11:
    v13 = v8;
    goto LABEL_12;
  }

  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  v7 = [v4 object];
  if (v9)
  {
    v8 = [(CNAssistantDisambiguationProvider *)self disambiguationForPhone:v7];
    goto LABEL_11;
  }

  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  v7 = [v4 object];
  if (v10)
  {
    v8 = [(CNAssistantDisambiguationProvider *)self disambiguationForEmail:v7];
    goto LABEL_11;
  }

  objc_opt_class();
  v11 = objc_opt_isKindOfClass();

  v7 = [v4 object];
  if (v11)
  {
    v8 = [(CNAssistantDisambiguationProvider *)self disambiguationForPostalAddress:v7];
    goto LABEL_11;
  }

  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  v7 = [v4 object];
  if (v12)
  {
    v8 = [(CNAssistantDisambiguationProvider *)self disambiguationForRelatedName:v7];
    goto LABEL_11;
  }

  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if (v15)
  {
    v16 = [v4 object];
    v7 = [v16 object];

    if (!v7)
    {
      v13 = 0;
      goto LABEL_12;
    }

    v17 = [v7 identifier];
    v18 = [CNAssistantID contactIDFromAssistantID:v17];

    v19 = [v7 phones];
    if (v19 && (v20 = v19, [v7 phones], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "count"), v21, v20, v22))
    {
      v23 = [v7 phones];
      v24 = [v23 objectAtIndexedSubscript:0];
      v25 = [(CNAssistantDisambiguationProvider *)self disambiguationForPhone:v24 contactIdentifier:v18];
    }

    else
    {
      v26 = [v7 emails];
      if (!v26 || (v27 = v26, [v7 emails], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "count"), v28, v27, !v29))
      {
        v13 = 0;
        goto LABEL_30;
      }

      v23 = [v7 emails];
      v24 = [v23 objectAtIndexedSubscript:0];
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
    sub_3FF4(v4);
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

- (id)disambiguationForPerson:(id)a3
{
  v4 = a3;
  v5 = [(CNAssistantDisambiguationProvider *)self contactStore];

  if (v5)
  {
    v6 = [v4 identifier];
    v7 = [CNAssistantID contactIDFromAssistantID:v6];

    v8 = [(CNAssistantDisambiguationProvider *)self contactFormatter];
    v9 = [v8 descriptorForRequiredKeys];
    v39 = v9;
    v10 = [NSArray arrayWithObjects:&v39 count:1];

    v11 = [(CNAssistantDisambiguationProvider *)self contactStore];
    v34 = 0;
    v12 = [v11 unifiedContactWithIdentifier:v7 keysToFetch:v10 error:&v34];
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
      v14 = [v4 firstName];

      if (v14)
      {
        v15 = [v4 firstName];
        [v12 setGivenName:v15];
      }

      v16 = [v4 lastName];

      if (v16)
      {
        v17 = [v4 lastName];
        [v12 setFamilyName:v17];
      }

      v18 = [v4 nickName];

      if (v18)
      {
        v19 = [v4 nickName];
        [v12 setNickname:v19];
      }

      v20 = [v4 company];

      if (v20)
      {
        v21 = [v4 company];
        [v12 setOrganizationName:v21];
      }

      v22 = [v4 emails];
      if ([v22 count])
      {
        v23 = [v4 firstName];
        if (v23 || ([v4 lastName], (v23 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v4, "nickName"), (v23 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v24 = v23;
        }

        else
        {
          v32 = [v4 company];

          if (v32)
          {
            goto LABEL_22;
          }

          v33 = [v4 emails];
          v22 = [v33 objectAtIndex:0];

          v24 = [v22 emailAddress];
          [v12 setGivenName:v24];
        }
      }
    }

LABEL_22:
    v25 = [(CNAssistantDisambiguationProvider *)self contactFormatter];
    v26 = [v25 stringFromContact:v12];

    v27 = [(CNAssistantDisambiguationProvider *)self favorites];
    v28 = [v27 entriesForContact:v12];

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

- (id)valueForLabel:(id)a3 propertyKey:(id)a4 contactIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = [(CNAssistantDisambiguationProvider *)self contactStore];

  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = [(CNAssistantDisambiguationProvider *)self propertyKey];
  v13 = v12;
  if (v12 == v9)
  {
    v14 = [(CNAssistantDisambiguationProvider *)self contactIdentifier];

    if (v14 == v10)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  [(CNAssistantDisambiguationProvider *)self setPropertyKey:v9];
  [(CNAssistantDisambiguationProvider *)self setContactIdentifier:v10];
  [(CNAssistantDisambiguationProvider *)self setLabeledValues:0];
  v15 = [(CNAssistantDisambiguationProvider *)self contactStore];
  v37 = v9;
  v16 = [NSArray arrayWithObjects:&v37 count:1];
  v32 = 0;
  v17 = [v15 unifiedContactWithIdentifier:v10 keysToFetch:v16 error:&v32];
  v18 = v32;

  if (v17)
  {
    v19 = +[CN contactPropertiesByKey];
    v20 = [v19 objectForKeyedSubscript:v9];

    v21 = [v20 CNValueForContact:v17];
    [(CNAssistantDisambiguationProvider *)self setLabeledValues:v21];
  }

  else if (v18 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v34 = v10;
    v35 = 2112;
    v36 = v18;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to fetch contact with identifier %@, error = %@", buf, 0x16u);
  }

LABEL_9:
  v22 = [(CNAssistantDisambiguationProvider *)self labeledValues];

  if (v22)
  {
    v23 = [(CNAssistantDisambiguationProvider *)self labeledValues];
    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_1BF8;
    v30 = &unk_C368;
    v31 = v8;
    v24 = [v23 _cn_firstObjectPassingTest:&v27];
    v25 = [v24 value];

    goto LABEL_12;
  }

LABEL_11:
  v25 = 0;
LABEL_12:

  return v25;
}

- (id)localizedLabel:(id)a3 forPropertyKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [CNLocalization localizedStringForString:v6 class:objc_opt_class() returningNilIfNotFound:0];

  if ((*(CNIsStringEmpty + 16))(CNIsStringEmpty, v7))
  {
    v8 = [CNContact localizedStringForKey:v5];
    v9 = [v8 lowercaseString];

    v7 = v9;
  }

  return v7;
}

- (id)disambiguationForPhone:(id)a3 contactIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 label];
  v9 = [(CNAssistantDisambiguationProvider *)self localizedLabel:v8 forPropertyKey:CNContactPhoneNumbersKey];

  v10 = [v6 number];
  if (v10)
  {
    v11 = [v6 number];
    [CNPhoneNumber phoneNumberWithStringValue:v11];
  }

  else
  {
    v11 = [v6 label];
    [(CNAssistantDisambiguationProvider *)self valueForLabel:v11 propertyKey:CNContactPhoneNumbersKey contactIdentifier:v7];
  }
  v12 = ;

  v13 = [v12 formattedStringValue];
  v14 = +[SiriUIDisambiguationItem disambiguationItem];
  v15 = v14;
  v16 = v9;
  if (v13)
  {
    [v14 setHeadingText:v9];
    v14 = v15;
    v16 = v13;
  }

  [v14 setTitle:v16];
  v17 = [v6 favoriteVoice];
  if ([v17 BOOLValue])
  {
    [v15 setShowsFavoriteStar:1];
  }

  else
  {
    v18 = [v6 favoriteFacetime];
    if ([v18 BOOLValue])
    {
      [v15 setShowsFavoriteStar:1];
    }

    else
    {
      v19 = [v6 favoriteFacetimeAudio];
      [v15 setShowsFavoriteStar:{objc_msgSend(v19, "BOOLValue")}];
    }
  }

  return v15;
}

- (id)disambiguationForEmail:(id)a3 contactIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 label];
  v9 = [(CNAssistantDisambiguationProvider *)self localizedLabel:v8 forPropertyKey:CNContactEmailAddressesKey];

  v10 = [v6 emailAddress];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = [v6 label];
    v12 = [(CNAssistantDisambiguationProvider *)self valueForLabel:v13 propertyKey:CNContactEmailAddressesKey contactIdentifier:v7];
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
  v17 = [v6 favoriteFacetime];
  if ([v17 BOOLValue])
  {
    [v15 setShowsFavoriteStar:1];
  }

  else
  {
    v18 = [v6 favoriteFacetimeAudio];
    [v15 setShowsFavoriteStar:{objc_msgSend(v18, "BOOLValue")}];
  }

  return v15;
}

- (id)disambiguationForPostalAddress:(id)a3
{
  v4 = a3;
  v5 = [v4 label];
  v6 = [(CNAssistantDisambiguationProvider *)self localizedLabel:v5 forPropertyKey:CNContactPostalAddressesKey];

  v7 = objc_alloc_init(CNMutablePostalAddress);
  v8 = [v4 street];
  [v7 setStreet:v8];

  v9 = [v4 subLocality];
  [v7 setSubLocality:v9];

  v10 = [v4 city];
  [v7 setCity:v10];

  v11 = [v4 subAdministrativeArea];
  [v7 setSubAdministrativeArea:v11];

  v12 = [v4 street];
  if ([v12 length])
  {
    [v7 setState:&stru_C3C8];
  }

  else
  {
    v13 = [v4 stateCode];
    [v7 setState:v13];
  }

  v14 = [v4 countryCode];
  [v7 setISOCountryCode:v14];

  v15 = [CNPostalAddressFormatter singleLineStringFromPostalAddress:v7 addCountryName:0];
  v16 = +[SiriUIDisambiguationItem disambiguationItem];
  [v16 setHeadingText:v6];
  [v16 setTitle:v15];

  return v16;
}

- (id)disambiguationForRelatedName:(id)a3
{
  v4 = a3;
  v5 = [v4 label];
  v6 = [(CNAssistantDisambiguationProvider *)self localizedLabel:v5 forPropertyKey:CNContactRelationsKey];

  v7 = +[SiriUIDisambiguationItem disambiguationItem];
  [v7 setHeadingText:v6];
  v8 = [v4 name];

  [v7 setTitle:v8];

  return v7;
}

@end