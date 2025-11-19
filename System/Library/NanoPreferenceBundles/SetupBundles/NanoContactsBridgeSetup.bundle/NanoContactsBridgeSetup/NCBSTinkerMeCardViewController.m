@interface NCBSTinkerMeCardViewController
- (BOOL)_addSatellitePhoneNumberToContactIfNotPresent:(id)a3;
- (BOOL)hasMeCard;
- (NCBSBridgeSetupControllerDelegate)miniFlowDelegate;
- (NCBSTinkerMeCardViewController)init;
- (id)_activeSatellitePhoneNumber;
- (id)_newMeContactForFamilyMember:(id)a3;
- (id)_updatedContactForFamilyMember:(id)a3 originalContact:(id)a4;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)familyMemberScopedContactStore;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)_addFamilyMemberContactToGuardianStore:(id)a3;
- (void)_setFamilyMemberMeContact:(id)a3;
- (void)_visitMeCard;
- (void)alternateButtonPressed:(id)a3;
- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4;
@end

@implementation NCBSTinkerMeCardViewController

- (NCBSTinkerMeCardViewController)init
{
  v5.receiver = self;
  v5.super_class = NCBSTinkerMeCardViewController;
  v2 = [(NCBSTinkerMeCardViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NCBSTinkerMeCardViewController *)v2 setStyle:10];
  }

  return v3;
}

- (id)titleString
{
  v2 = self;
  v3 = [(NCBSTinkerMeCardViewController *)self miniFlowDelegate];
  v4 = [v3 familyMemberFirstName];

  LODWORD(v2) = [(NCBSTinkerMeCardViewController *)v2 hasMeCard];
  v5 = NanoContactsBridgeSetupBundle();
  v6 = v5;
  if (v2)
  {
    v7 = @"TK_CONTACTS_TINKERUSER_ME_TITLE_UPDATE";
  }

  else
  {
    v7 = @"TK_CONTACTS_TINKERUSER_ME_TITLE_CREATE";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_1C900 table:@"NanoContactsBridgeSetup"];
  v9 = [NSString stringWithFormat:v8, v4];

  return v9;
}

- (id)detailString
{
  v2 = [(NCBSTinkerMeCardViewController *)self miniFlowDelegate];
  v3 = [v2 familyMemberFirstName];

  v4 = NanoContactsBridgeSetupBundle();
  v5 = [v4 localizedStringForKey:@"TK_CONTACTS_TINKERUSER_ME_DETAIL" value:&stru_1C900 table:@"NanoContactsBridgeSetup"];
  v6 = [NSString stringWithFormat:v5, v3];

  return v6;
}

- (id)suggestedButtonTitle
{
  v2 = [(NCBSTinkerMeCardViewController *)self hasMeCard];
  v3 = NanoContactsBridgeSetupBundle();
  v4 = v3;
  if (v2)
  {
    v5 = @"TK_CONTACTS_TINKERUSER_ME_BUTTON_UPDATE";
  }

  else
  {
    v5 = @"TK_CONTACTS_TINKERUSER_ME_BUTTON_CREATE";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_1C900 table:@"NanoContactsBridgeSetup"];

  return v6;
}

- (id)alternateButtonTitle
{
  v2 = NanoContactsBridgeSetupBundle();
  v3 = [v2 localizedStringForKey:@"TK_CONTACTS_TINKERUSER_ME_BUTTON_LATER" value:&stru_1C900 table:@"NanoContactsBridgeSetup"];

  return v3;
}

- (void)alternateButtonPressed:(id)a3
{
  v4 = [(NCBSTinkerMeCardViewController *)self miniFlowDelegate];
  [v4 miniFlowStepComplete:self];
}

- (id)familyMemberScopedContactStore
{
  v3 = NCBS_Tinker_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    familyMemberScopedContactStore = self->_familyMemberScopedContactStore;
    *buf = 136446466;
    v20 = "[NCBSTinkerMeCardViewController familyMemberScopedContactStore]";
    v21 = 2112;
    v22 = familyMemberScopedContactStore;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%{public}s - _familyMemberScopedContactStore: %@", buf, 0x16u);
  }

  v5 = self->_familyMemberScopedContactStore;
  if (!v5)
  {
    v6 = [(NCBSTinkerMeCardViewController *)self miniFlowDelegate];
    v7 = [v6 familyMember];

    if (v7)
    {
      v8 = [CNContactStore storeForFamilyMember:v7];
      v9 = self->_familyMemberScopedContactStore;
      self->_familyMemberScopedContactStore = v8;

      v10 = self->_familyMemberScopedContactStore;
      if (v10)
      {
        v11 = +[CNContactViewController descriptorForRequiredKeys];
        v29 = v11;
        v12 = [NSArray arrayWithObjects:&v29 count:1];
        v18 = 0;
        v13 = [(CNContactStore *)v10 _ios_meContactWithKeysToFetch:v12 error:&v18];
        v10 = v18;

        self->_hasMeCard = v13 != 0;
      }

      v14 = NCBS_Tinker_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = self->_familyMemberScopedContactStore;
        hasMeCard = self->_hasMeCard;
        *buf = 136447234;
        v20 = "[NCBSTinkerMeCardViewController familyMemberScopedContactStore]";
        v21 = 2112;
        v22 = v7;
        v23 = 2112;
        v24 = v15;
        v25 = 1024;
        v26 = hasMeCard;
        v27 = 2114;
        v28 = v10;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}s - familyMember: %@; OPENED familyMemberScopedContactStore: %@, hasMeCard: %d (error: %{public}@)", buf, 0x30u);
      }
    }

    v5 = self->_familyMemberScopedContactStore;
  }

  return v5;
}

- (BOOL)hasMeCard
{
  if (self->_hasMeCard)
  {
    return 1;
  }

  else if (self->_familyMemberScopedContactStore)
  {
    return 0;
  }

  else
  {
    v4 = [(NCBSTinkerMeCardViewController *)self familyMemberScopedContactStore];
    return self->_hasMeCard;
  }
}

- (id)_newMeContactForFamilyMember:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 firstName];
  [v5 setGivenName:v6];

  v7 = [v4 lastName];
  [v5 setFamilyName:v7];

  v8 = [v4 appleID];

  if (v8)
  {
    v9 = [CNLabeledValue labeledValueWithLabel:CNLabelEmailiCloud value:v8];
    v13 = v9;
    v10 = [NSArray arrayWithObjects:&v13 count:1];
    [v5 setEmailAddresses:v10];
  }

  [(NCBSTinkerMeCardViewController *)self _addSatellitePhoneNumberToContactIfNotPresent:v5];
  v11 = [v5 copy];

  return v11;
}

- (id)_updatedContactForFamilyMember:(id)a3 originalContact:(id)a4
{
  v5 = [a4 mutableCopy];
  [(NCBSTinkerMeCardViewController *)self _addSatellitePhoneNumberToContactIfNotPresent:v5];
  v6 = [v5 copy];

  return v6;
}

- (void)_visitMeCard
{
  v3 = [(NCBSTinkerMeCardViewController *)self miniFlowDelegate];
  v4 = [v3 familyMember];

  v5 = NCBS_Tinker_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NCBSTinkerMeCardViewController *)self familyMemberScopedContactStore];
    *buf = 136446722;
    v26 = "[NCBSTinkerMeCardViewController _visitMeCard]";
    v27 = 2112;
    v28 = v6;
    v29 = 2112;
    v30 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s - familyMemberScopedContactStore: %@, familyMember: %@", buf, 0x20u);
  }

  v7 = [(NCBSTinkerMeCardViewController *)self familyMemberScopedContactStore];
  v8 = +[CNContactViewController descriptorForRequiredKeys];
  v24 = v8;
  v9 = [NSArray arrayWithObjects:&v24 count:1];
  v23 = 0;
  v10 = [v7 _ios_meContactWithKeysToFetch:v9 error:&v23];
  v11 = v23;

  v12 = NCBS_Tinker_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v26 = "[NCBSTinkerMeCardViewController _visitMeCard]";
    v27 = 2112;
    v28 = v10;
    v29 = 2114;
    v30 = v11;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}s - _ios_meContactWithKeysToFetch result: %@, error: %{public}@", buf, 0x20u);
  }

  if (v10)
  {
    v13 = [(NCBSTinkerMeCardViewController *)self _updatedContactForFamilyMember:v4 originalContact:v10];
    [CNContactViewController viewControllerForUpdatingContact:v13 withPropertiesFromContact:0];
  }

  else
  {
    v13 = [(NCBSTinkerMeCardViewController *)self _newMeContactForFamilyMember:v4];
    [CNContactViewController viewControllerForNewContact:v13];
  }
  v14 = ;

  v15 = [(NCBSTinkerMeCardViewController *)self familyMemberScopedContactStore];
  [v14 setContactStore:v15];

  [v14 setDisplayMode:2];
  [v14 setDelegate:self];
  v16 = +[CNUICoreFamilyMemberContactsController propertyKeysContainingSenstiveData];
  [v14 setProhibitedPropertyKeys:v16];

  v17 = NCBS_Tinker_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v14 prohibitedPropertyKeys];
    *buf = 136446466;
    v26 = "[NCBSTinkerMeCardViewController _visitMeCard]";
    v27 = 2114;
    v28 = v18;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%{public}s - prohibitedPropertyKeys: %{public}@", buf, 0x16u);
  }

  v19 = [[UINavigationController alloc] initWithRootViewController:v14];
  v20 = [(NCBSTinkerMeCardViewController *)self view];
  v21 = [v20 tintColor];
  v22 = [v19 view];
  [v22 setTintColor:v21];

  [(NCBSTinkerMeCardViewController *)self presentViewController:v19 animated:1 completion:0];
}

- (void)_setFamilyMemberMeContact:(id)a3
{
  v4 = a3;
  v5 = [(NCBSTinkerMeCardViewController *)self familyMemberScopedContactStore];
  v9 = 0;
  v6 = [v5 setMeContact:v4 error:&v9];
  v7 = v9;

  self->_hasMeCard |= v6;
  v8 = NCBS_Tinker_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v11 = "[NCBSTinkerMeCardViewController _setFamilyMemberMeContact:]";
    v12 = 1024;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}s - setMeContact result: %d, error: %{public}@, contact: %@", buf, 0x26u);
  }
}

- (void)_addFamilyMemberContactToGuardianStore:(id)a3
{
  v3 = a3;
  v4 = [v3 copyWithDistinctIdentifier];
  v5 = objc_alloc_init(CNSaveRequest);
  v6 = [v4 mutableCopy];
  [v5 addContact:v6 toContainerWithIdentifier:0];

  v7 = objc_alloc_init(CNContactStore);
  v12 = 0;
  v8 = [v7 executeSaveRequest:v5 error:&v12];
  v9 = v12;
  v10 = NCBS_Tinker_log();
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v14 = "[NCBSTinkerMeCardViewController _addFamilyMemberContactToGuardianStore:]";
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}s - saved, contact: %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v14 = "[NCBSTinkerMeCardViewController _addFamilyMemberContactToGuardianStore:]";
    v15 = 2114;
    v16 = v9;
    v17 = 2112;
    v18 = v3;
    v19 = 2112;
    v20 = v4;
    _os_log_error_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%{public}s - save failed, error: %{public}@, contact in: %@, contact to save: %@", buf, 0x2Au);
  }
}

- (id)_activeSatellitePhoneNumber
{
  v2 = +[NPHCellularBridgeUIManager sharedInstance];
  v3 = [v2 selectedCellularPlan];
  v4 = [v3 phoneNumber];

  v5 = NCBS_Tinker_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[NCBSTinkerMeCardViewController _activeSatellitePhoneNumber]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s - phoneNumber:%@", &v7, 0x16u);
  }

  return v4;
}

- (BOOL)_addSatellitePhoneNumberToContactIfNotPresent:(id)a3
{
  v4 = a3;
  v5 = [(NCBSTinkerMeCardViewController *)self _activeSatellitePhoneNumber];
  if ([v5 length])
  {
    v6 = [CNPhoneNumber phoneNumberWithStringValue:v5];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = [v4 phoneNumbers];
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v13 = [v12 value];
          v14 = [v13 isLikePhoneNumber:v6];

          if (v14)
          {
            v17 = NCBS_Tinker_log();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = [v12 value];
              *buf = 136446722;
              v27 = "[NCBSTinkerMeCardViewController _addSatellitePhoneNumberToContactIfNotPresent:]";
              v28 = 2112;
              v29 = v18;
              v30 = 2112;
              v31 = v4;
              _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%{public}s - contact already has device number:%@; contact: %@", buf, 0x20u);
            }

            goto LABEL_17;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v32 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v15 = [v4 phoneNumbers];
    if (v15)
    {
      v16 = [v4 phoneNumbers];
      v7 = [v16 mutableCopy];
    }

    else
    {
      v7 = +[NSMutableArray array];
    }

    v19 = [CNLabeledValue labeledValueWithLabel:CNLabelPhoneNumberAppleWatch value:v6];
    [v7 addObject:v19];

    v20 = [v7 copy];
    [v4 setPhoneNumbers:v20];

    v17 = NCBS_Tinker_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v27 = "[NCBSTinkerMeCardViewController _addSatellitePhoneNumberToContactIfNotPresent:]";
      v28 = 2112;
      v29 = v6;
      v30 = 2112;
      v31 = v4;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%{public}s - added device number:%@; contact: %@", buf, 0x20u);
    }

LABEL_17:
  }

  return 0;
}

- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4
{
  v5 = a4;
  [(NCBSTinkerMeCardViewController *)self dismissViewControllerAnimated:1 completion:0];
  if (v5)
  {
    [(NCBSTinkerMeCardViewController *)self _setFamilyMemberMeContact:v5];
    [(NCBSTinkerMeCardViewController *)self _addFamilyMemberContactToGuardianStore:v5];
    v6 = [(NCBSTinkerMeCardViewController *)self miniFlowDelegate];
    [v6 miniFlowStepComplete:self];
  }

  else
  {
    v7 = NCBS_Tinker_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136446210;
      v9 = "[NCBSTinkerMeCardViewController contactViewController:didCompleteWithContact:]";
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}s - setMeContact canceled (no contact)", &v8, 0xCu);
    }
  }
}

- (NCBSBridgeSetupControllerDelegate)miniFlowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->miniFlowDelegate);

  return WeakRetained;
}

@end