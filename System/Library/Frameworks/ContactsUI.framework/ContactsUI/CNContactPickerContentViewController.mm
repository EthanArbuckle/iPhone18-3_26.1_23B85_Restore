@interface CNContactPickerContentViewController
+ (id)log;
- (BOOL)contactNavigationController:(id)controller canSelectContact:(id)contact;
- (BOOL)contactNavigationController:(id)controller presentViewController:(id)viewController animated:(BOOL)animated;
- (BOOL)contactNavigationController:(id)controller shouldPerformDefaultActionForContactProperty:(id)property;
- (BOOL)contactNavigationController:(id)controller shouldSelectContact:(id)contact atIndexPath:(id)path;
- (BOOL)contactNavigationController:(id)controller shouldShowCardForContact:(id)contact;
- (BOOL)contactNavigationControllerShouldAddNewContact:(id)contact;
- (BOOL)contactSuggestionViewController:(id)controller shouldSelectContact:(id)contact atIndexPath:(id)path;
- (CNContactPickerContentDelegate)delegate;
- (CNContactPickerContentViewController)init;
- (UIBarButtonItem)addContactBarButtonItem;
- (UIScrollView)scrollView;
- (id)_validatePredicatesWithError:(id *)error;
- (id)descriptorsForKeysRequiredByDelegate;
- (void)_selectedContact:(id)contact;
- (void)_selectedContacts:(id)contacts;
- (void)_selectedProperties:(id)properties;
- (void)_selectedProperty:(id)property;
- (void)_updatePromptWithViewSize:(CGSize)size transitionCoordinator:(id)coordinator;
- (void)contactNavigationController:(id)controller didCompleteWithNewContact:(id)contact;
- (void)contactNavigationController:(id)controller didUpdateLimitedAccessSelection:(id)selection;
- (void)contactNavigationControllerDidCancel:(id)cancel;
- (void)contactNavigationControllerDidComplete:(id)complete;
- (void)contactNavigationControllerDidGoBack:(id)back;
- (void)contactNavigationControllerShouldEditLimitedAccess:(id)access;
- (void)invalidateSelectionAnimated:(BOOL)animated;
- (void)setBottomEdgesInset:(double)inset;
- (void)setupWithOptions:(id)options readyBlock:(id)block;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CNContactPickerContentViewController

- (CNContactPickerContentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)contactNavigationControllerShouldEditLimitedAccess:(id)access
{
  accessCopy = access;
  delegate = [(CNContactPickerContentViewController *)self delegate];
  contactListViewController = [accessCopy contactListViewController];

  [delegate contactListViewControllerShouldEditLimitedAccessSelection:contactListViewController];
}

- (void)contactNavigationController:(id)controller didUpdateLimitedAccessSelection:(id)selection
{
  selectionCopy = selection;
  controllerCopy = controller;
  delegate = [(CNContactPickerContentViewController *)self delegate];
  contactListViewController = [controllerCopy contactListViewController];

  [delegate didUpdateLimitedAccessSelection:selectionCopy contactListViewController:contactListViewController];
}

- (void)_selectedProperties:(id)properties
{
  v26 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(propertiesCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = propertiesCopy;
  v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        dataSource = [(CNContactPickerContentViewController *)self dataSource];
        contact = [v10 contact];
        descriptorsForKeysRequiredByDelegate = [(CNContactPickerContentViewController *)self descriptorsForKeysRequiredByDelegate];
        v14 = [dataSource completeContactFromContact:contact fromMainStoreOnly:1 keysToFetch:descriptorsForKeysRequiredByDelegate];

        v15 = MEMORY[0x1E695CE08];
        v16 = [v10 key];
        identifier = [v10 identifier];
        v18 = [v15 contactPropertyWithContact:v14 propertyKey:v16 identifier:identifier];

        [v5 addObject:v18];
        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  delegate = [(CNContactPickerContentViewController *)self delegate];
  [delegate pickerDidSelectContacts:0 properties:v5];
}

- (void)_selectedContacts:(id)contacts
{
  v21 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(contactsCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = contactsCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        dataSource = [(CNContactPickerContentViewController *)self dataSource];
        descriptorsForKeysRequiredByDelegate = [(CNContactPickerContentViewController *)self descriptorsForKeysRequiredByDelegate];
        v14 = [dataSource completeContactFromContact:v11 fromMainStoreOnly:1 keysToFetch:descriptorsForKeysRequiredByDelegate];

        [v5 addObject:v14];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  delegate = [(CNContactPickerContentViewController *)self delegate];
  [delegate pickerDidSelectContacts:v5 properties:0];
}

- (void)_selectedProperty:(id)property
{
  propertyCopy = property;
  dataSource = [(CNContactPickerContentViewController *)self dataSource];
  contact = [propertyCopy contact];
  descriptorsForKeysRequiredByDelegate = [(CNContactPickerContentViewController *)self descriptorsForKeysRequiredByDelegate];
  v13 = [dataSource completeContactFromContact:contact fromMainStoreOnly:1 keysToFetch:descriptorsForKeysRequiredByDelegate];

  v8 = MEMORY[0x1E695CE08];
  v9 = [propertyCopy key];
  identifier = [propertyCopy identifier];

  v11 = [v8 contactPropertyWithContact:v13 propertyKey:v9 identifier:identifier];

  delegate = [(CNContactPickerContentViewController *)self delegate];
  [delegate pickerDidSelectContact:0 property:v11];
}

- (void)_selectedContact:(id)contact
{
  contactCopy = contact;
  dataSource = [(CNContactPickerContentViewController *)self dataSource];
  descriptorsForKeysRequiredByDelegate = [(CNContactPickerContentViewController *)self descriptorsForKeysRequiredByDelegate];
  v8 = [dataSource completeContactFromContact:contactCopy fromMainStoreOnly:1 keysToFetch:descriptorsForKeysRequiredByDelegate];

  delegate = [(CNContactPickerContentViewController *)self delegate];
  [delegate pickerDidSelectContact:v8 property:0];
}

- (id)descriptorsForKeysRequiredByDelegate
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = +[CNContactContentViewController descriptorForRequiredKeys];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (void)contactNavigationControllerDidGoBack:(id)back
{
  delegate = [(CNContactPickerContentViewController *)self delegate];
  [delegate pickerDidGoBack];
}

- (void)contactNavigationControllerDidCancel:(id)cancel
{
  delegate = [(CNContactPickerContentViewController *)self delegate];
  [delegate pickerDidCancel];
}

- (void)contactNavigationController:(id)controller didCompleteWithNewContact:(id)contact
{
  contactCopy = contact;
  delegate = [(CNContactPickerContentViewController *)self delegate];
  [delegate pickerDidCompleteWithNewContact:contactCopy];
}

- (void)contactNavigationControllerDidComplete:(id)complete
{
  if (self->_contactProperties)
  {
    contactProperties = self->_contactProperties;

    [(CNContactPickerContentViewController *)self _selectedProperties:contactProperties];
  }

  else
  {
    contactListViewController = [complete contactListViewController];
    if ([CNLimitedAccessPickerSupport isPickerLimitedAccess:[(CNContactPickerContentViewController *)self limitedAccessPickerType]])
    {
      limitedAccessTotalSelectedContacts = [contactListViewController limitedAccessTotalSelectedContacts];
      limitedAccessAppBundleId = [contactListViewController limitedAccessAppBundleId];
      selectedContacts = [CNLimitedAccessPickerSupport contactsFromIdentifiers:limitedAccessTotalSelectedContacts withBundleId:limitedAccessAppBundleId];
    }

    else
    {
      selectedContacts = [contactListViewController selectedContacts];
    }

    [(CNContactPickerContentViewController *)self _selectedContacts:selectedContacts];
  }
}

- (BOOL)contactNavigationController:(id)controller presentViewController:(id)viewController animated:(BOOL)animated
{
  viewControllerCopy = viewController;
  objc_opt_class();
  v7 = viewControllerCopy;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  displayedPropertyKeys = [(CNContactPickerContentViewController *)self displayedPropertyKeys];
  [v9 setDisplayedPropertyKeys:displayedPropertyKeys];

  prohibitedPropertyKeys = [(CNContactPickerContentViewController *)self prohibitedPropertyKeys];
  [v9 setProhibitedPropertyKeys:prohibitedPropertyKeys];

  [v9 setIgnoresParentalRestrictions:{-[CNContactPickerContentViewController ignoresParentalRestrictions](self, "ignoresParentalRestrictions")}];
  [v9 setAllowsNamePicking:{-[CNContactPickerContentViewController allowsNamePicking](self, "allowsNamePicking")}];
  [v9 setShowsInlineActions:{-[CNContactPickerContentViewController showsInlineActions](self, "showsInlineActions")}];
  [v9 setShowsSharedProfile:{-[CNContactPickerContentViewController showsSharedProfile](self, "showsSharedProfile")}];
  [v9 setShowsGroupMembership:{-[CNContactPickerContentViewController showsGroupMembership](self, "showsGroupMembership")}];
  cardActions = [(CNContactPickerContentViewController *)self cardActions];
  contact = [v9 contact];
  isSuggested = [contact isSuggested];

  if (isSuggested)
  {
    cardActions |= 0x20uLL;
  }

  if ([(CNContactPickerContentViewController *)self allowsDeletion])
  {
    v15 = cardActions | 0x100;
  }

  else
  {
    v15 = cardActions;
  }

  [v9 setActions:v15];

  return 0;
}

- (BOOL)contactNavigationController:(id)controller shouldPerformDefaultActionForContactProperty:(id)property
{
  controllerCopy = controller;
  propertyCopy = property;
  if (-[CNContactPickerContentViewController clientWantsSingleProperty](self, "clientWantsSingleProperty") && ((-[CNContactPickerContentViewController predicateForSelectionOfProperty](self, "predicateForSelectionOfProperty"), v8 = objc_claimAutoreleasedReturnValue(), v8, !v8) || (-[CNContactPickerContentViewController predicateForSelectionOfProperty](self, "predicateForSelectionOfProperty"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 evaluateWithObject:propertyCopy], v9, v10)))
  {
    [(CNContactPickerContentViewController *)self _selectedProperty:propertyCopy];
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)contactNavigationController:(id)controller shouldShowCardForContact:(id)contact
{
  controllerCopy = controller;
  contactCopy = contact;
  if ([contactCopy isSuggested] & 1) != 0 || (objc_msgSend(contactCopy, "hasSuggestedProperties"))
  {
    goto LABEL_3;
  }

  if ([(CNContactPickerContentViewController *)self clientWantsMultipleContacts]|| [(CNContactPickerContentViewController *)self clientWantsMultipleProperties])
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  predicateForSelectionOfContact = [(CNContactPickerContentViewController *)self predicateForSelectionOfContact];

  if (predicateForSelectionOfContact)
  {
    predicateForSelectionOfContact2 = [(CNContactPickerContentViewController *)self predicateForSelectionOfContact];
    v11 = [predicateForSelectionOfContact2 evaluateWithObject:contactCopy];

    if (v11)
    {
      goto LABEL_10;
    }
  }

  else if ([(CNContactPickerContentViewController *)self clientWantsSingleContact])
  {
LABEL_10:
    [(CNContactPickerContentViewController *)self _selectedContact:contactCopy];
    goto LABEL_11;
  }

LABEL_3:
  v8 = 1;
LABEL_12:

  return v8;
}

- (BOOL)contactNavigationController:(id)controller shouldSelectContact:(id)contact atIndexPath:(id)path
{
  v80 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  contactCopy = contact;
  pathCopy = path;
  if (([contactCopy isSuggested] & 1) == 0 && (-[CNContactPickerContentViewController predicateForSelectionOfProperty](self, "predicateForSelectionOfProperty"), (v10 = objc_claimAutoreleasedReturnValue()) != 0) && (v11 = v10, v12 = -[CNContactPickerContentViewController clientWantsMultipleProperties](self, "clientWantsMultipleProperties"), v11, v12))
  {
    contactListViewController = [controllerCopy contactListViewController];
    collectionView = [contactListViewController collectionView];

    v61 = collectionView;
    indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
    LOBYTE(collectionView) = [indexPathsForSelectedItems containsObject:pathCopy];

    if (collectionView)
    {
      v16 = 1;
    }

    else
    {
      multiValuePropertiesSupportingPredicateValidation = [MEMORY[0x1E695CD58] multiValuePropertiesSupportingPredicateValidation];
      contactNavigationController = [(CNContactPickerContentViewController *)self contactNavigationController];
      dataSource = [contactNavigationController dataSource];
      v21 = [dataSource completeContactFromContact:contactCopy fromMainStoreOnly:0 keysToFetch:multiValuePropertiesSupportingPredicateValidation];

      predicateForSelectionOfProperty = [(CNContactPickerContentViewController *)self predicateForSelectionOfProperty];
      v23 = [v21 validPropertiesByEvaluatingPredicate:predicateForSelectionOfProperty onMultiValueProperties:multiValuePropertiesSupportingPredicateValidation];

      if ([v23 count])
      {
        if (!self->_contactProperties)
        {
          array = [MEMORY[0x1E695DF70] array];
          [(CNContactPickerContentViewController *)self setContactProperties:array];
        }

        if ([v23 count] == 1)
        {
          firstObject = [v23 firstObject];
          [(NSMutableArray *)self->_contactProperties addObject:firstObject];

          v16 = 1;
        }

        else
        {
          v53 = v21;
          v54 = multiValuePropertiesSupportingPredicateValidation;
          selfCopy = self;
          v55 = contactCopy;
          v56 = controllerCopy;
          v26 = [v61 cellForItemAtIndexPath:pathCopy];
          backgroundColor = [v26 backgroundColor];
          systemGray6Color = [MEMORY[0x1E69DC888] systemGray6Color];
          v59 = v26;
          [v26 setBackgroundColor:systemGray6Color];

          v28 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
          v75 = 0u;
          v76 = 0u;
          v77 = 0u;
          v78 = 0u;
          v52 = v23;
          obj = v23;
          v29 = [obj countByEnumeratingWithState:&v75 objects:v79 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v76;
            do
            {
              for (i = 0; i != v30; ++i)
              {
                if (*v76 != v31)
                {
                  objc_enumerationMutation(obj);
                }

                v33 = *(*(&v75 + 1) + 8 * i);
                label = [v33 label];
                if (label)
                {
                  v35 = [MEMORY[0x1E695CEE0] localizedStringForLabel:label];
                }

                else
                {
                  v36 = MEMORY[0x1E695CD58];
                  v37 = [v33 key];
                  v35 = [v36 localizedStringForKey:v37];
                }

                v38 = MEMORY[0x1E69DC648];
                value = [v33 value];
                v67[0] = MEMORY[0x1E69E9820];
                v67[1] = 3221225472;
                v67[2] = __100__CNContactPickerContentViewController_contactNavigationController_shouldSelectContact_atIndexPath___block_invoke;
                v67[3] = &unk_1E74E6570;
                v68 = v59;
                v69 = backgroundColor;
                v70 = v61;
                v71 = pathCopy;
                v72 = selfCopy;
                v73 = v33;
                v40 = v28;
                v74 = v40;
                v41 = [v38 _actionWithTitle:value descriptiveText:v35 image:0 style:0 handler:v67 shouldDismissHandler:&__block_literal_global_60_61029];
                [v40 addAction:v41];
              }

              v30 = [obj countByEnumeratingWithState:&v75 objects:v79 count:16];
            }

            while (v30);
          }

          v42 = MEMORY[0x1E69DC648];
          v43 = CNContactsUIBundle();
          v44 = [v43 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
          v63[0] = MEMORY[0x1E69E9820];
          v63[1] = 3221225472;
          v63[2] = __100__CNContactPickerContentViewController_contactNavigationController_shouldSelectContact_atIndexPath___block_invoke_3;
          v63[3] = &unk_1E74E6E20;
          v64 = v59;
          v65 = backgroundColor;
          v45 = v28;
          v66 = v45;
          v46 = backgroundColor;
          v47 = v59;
          v48 = [v42 actionWithTitle:v44 style:1 handler:v63];
          [v45 addAction:v48];

          popoverPresentationController = [v45 popoverPresentationController];
          v50 = popoverPresentationController;
          if (popoverPresentationController)
          {
            [popoverPresentationController setSourceView:v61];
            v51 = [v61 layoutAttributesForItemAtIndexPath:pathCopy];
            [v51 frame];
            [v50 setSourceRect:?];
          }

          [(CNContactPickerContentViewController *)selfCopy presentViewController:v45 animated:1 completion:0];

          v16 = 0;
          contactCopy = v55;
          controllerCopy = v56;
          v21 = v53;
          multiValuePropertiesSupportingPredicateValidation = v54;
          v23 = v52;
        }
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

uint64_t __100__CNContactPickerContentViewController_contactNavigationController_shouldSelectContact_atIndexPath___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBackgroundColor:*(a1 + 40)];
  [*(a1 + 48) selectItemAtIndexPath:*(a1 + 56) animated:0 scrollPosition:0];
  [*(*(a1 + 64) + 1048) addObject:*(a1 + 72)];
  v2 = *(a1 + 80);

  return [v2 dismissViewControllerAnimated:1 completion:0];
}

uint64_t __100__CNContactPickerContentViewController_contactNavigationController_shouldSelectContact_atIndexPath___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setBackgroundColor:*(a1 + 40)];
  v2 = *(a1 + 48);

  return [v2 dismissViewControllerAnimated:1 completion:0];
}

- (BOOL)contactSuggestionViewController:(id)controller shouldSelectContact:(id)contact atIndexPath:(id)path
{
  v86 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  contactCopy = contact;
  pathCopy = path;
  predicateForSelectionOfProperty = [(CNContactPickerContentViewController *)self predicateForSelectionOfProperty];
  if (predicateForSelectionOfProperty && (v11 = predicateForSelectionOfProperty, v12 = -[CNContactPickerContentViewController clientWantsMultipleProperties](self, "clientWantsMultipleProperties"), v11, v12) && ([controllerCopy selectedContacts], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "containsObject:", contactCopy), v13, (v14 & 1) == 0))
  {
    collectionView = [controllerCopy collectionView];
    multiValuePropertiesSupportingPredicateValidation = [MEMORY[0x1E695CD58] multiValuePropertiesSupportingPredicateValidation];
    contactNavigationController = [(CNContactPickerContentViewController *)self contactNavigationController];
    dataSource = [contactNavigationController dataSource];
    v20 = [dataSource completeContactFromContact:contactCopy fromMainStoreOnly:0 keysToFetch:multiValuePropertiesSupportingPredicateValidation];

    predicateForSelectionOfProperty2 = [(CNContactPickerContentViewController *)self predicateForSelectionOfProperty];
    v22 = [v20 validPropertiesByEvaluatingPredicate:predicateForSelectionOfProperty2 onMultiValueProperties:multiValuePropertiesSupportingPredicateValidation];

    if ([v22 count])
    {
      if (!self->_contactProperties)
      {
        array = [MEMORY[0x1E695DF70] array];
        [(CNContactPickerContentViewController *)self setContactProperties:array];
      }

      if ([v22 count] == 1)
      {
        firstObject = [v22 firstObject];
        [(NSMutableArray *)self->_contactProperties addObject:firstObject];

        v15 = 1;
      }

      else
      {
        v65 = v20;
        v66 = multiValuePropertiesSupportingPredicateValidation;
        selfCopy = self;
        v67 = contactCopy;
        v68 = controllerCopy;
        v25 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v64 = v22;
        obj = v22;
        v26 = [obj countByEnumeratingWithState:&v81 objects:v85 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v82;
          do
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v82 != v28)
              {
                objc_enumerationMutation(obj);
              }

              v30 = *(*(&v81 + 1) + 8 * i);
              label = [v30 label];
              if (label)
              {
                v32 = [MEMORY[0x1E695CEE0] localizedStringForLabel:label];
              }

              else
              {
                v33 = MEMORY[0x1E695CD58];
                v34 = [v30 key];
                v32 = [v33 localizedStringForKey:v34];
              }

              v35 = MEMORY[0x1E69DC648];
              value = [v30 value];
              v75[0] = MEMORY[0x1E69E9820];
              v75[1] = 3221225472;
              v75[2] = __104__CNContactPickerContentViewController_contactSuggestionViewController_shouldSelectContact_atIndexPath___block_invoke;
              v75[3] = &unk_1E74E6528;
              v76 = collectionView;
              v77 = pathCopy;
              v78 = selfCopy;
              v79 = v30;
              v37 = v25;
              v80 = v37;
              v38 = [v35 _actionWithTitle:value descriptiveText:v32 image:0 style:0 handler:v75 shouldDismissHandler:&__block_literal_global_54_61041];
              [v37 addAction:v38];
            }

            v27 = [obj countByEnumeratingWithState:&v81 objects:v85 count:16];
          }

          while (v27);
        }

        v39 = MEMORY[0x1E69DC648];
        v40 = CNContactsUIBundle();
        v41 = [v40 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
        v73[0] = MEMORY[0x1E69E9820];
        v73[1] = 3221225472;
        v73[2] = __104__CNContactPickerContentViewController_contactSuggestionViewController_shouldSelectContact_atIndexPath___block_invoke_3;
        v73[3] = &unk_1E74E6C28;
        v42 = v25;
        v74 = v42;
        v43 = [v39 actionWithTitle:v41 style:1 handler:v73];
        [v42 addAction:v43];

        popoverPresentationController = [v42 popoverPresentationController];
        v45 = popoverPresentationController;
        v20 = v65;
        if (popoverPresentationController)
        {
          [popoverPresentationController setSourceView:collectionView];
          v46 = [collectionView layoutAttributesForItemAtIndexPath:pathCopy];
          [v46 frame];
          v48 = v47;
          v50 = v49;
          v52 = v51;
          v54 = v53;
          superview = [collectionView superview];
          [collectionView convertRect:superview toView:{v48, v50, v52, v54}];
          v57 = v56;
          v59 = v58;
          v61 = v60;
          v63 = v62;

          [v45 setSourceRect:{v57, v59, v61, v63}];
        }

        [(CNContactPickerContentViewController *)selfCopy presentViewController:v42 animated:1 completion:0];

        v15 = 0;
        contactCopy = v67;
        controllerCopy = v68;
        multiValuePropertiesSupportingPredicateValidation = v66;
        v22 = v64;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

uint64_t __104__CNContactPickerContentViewController_contactSuggestionViewController_shouldSelectContact_atIndexPath___block_invoke(uint64_t a1)
{
  [*(a1 + 32) selectItemAtIndexPath:*(a1 + 40) animated:0 scrollPosition:0];
  [*(*(a1 + 48) + 1048) addObject:*(a1 + 56)];
  v2 = *(a1 + 64);

  return [v2 dismissViewControllerAnimated:1 completion:0];
}

- (BOOL)contactNavigationController:(id)controller canSelectContact:(id)contact
{
  controllerCopy = controller;
  contactCopy = contact;
  dataSource = [(CNContactPickerContentViewController *)self dataSource];
  keysToFetch = [dataSource keysToFetch];
  v10 = [contactCopy areKeysAvailable:keysToFetch];

  if ((v10 & 1) == 0)
  {
    contactNavigationController = [(CNContactPickerContentViewController *)self contactNavigationController];
    dataSource2 = [contactNavigationController dataSource];
    dataSource3 = [(CNContactPickerContentViewController *)self dataSource];
    keysToFetch2 = [dataSource3 keysToFetch];
    v15 = [dataSource2 completeContactFromContact:contactCopy fromMainStoreOnly:0 keysToFetch:keysToFetch2];

    contactCopy = v15;
  }

  predicateForEnablingContact = [(CNContactPickerContentViewController *)self predicateForEnablingContact];

  if (predicateForEnablingContact)
  {
    predicateForEnablingContact2 = [(CNContactPickerContentViewController *)self predicateForEnablingContact];
    v18 = [predicateForEnablingContact2 evaluateWithObject:contactCopy];
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

- (BOOL)contactNavigationControllerShouldAddNewContact:(id)contact
{
  familyMember = [(CNContactPickerContentViewController *)self familyMember];

  if (familyMember)
  {
    delegate = [(CNContactPickerContentViewController *)self delegate];
    [delegate pickerDidSelectAddNewContact];
  }

  return familyMember == 0;
}

- (void)invalidateSelectionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v17 = *MEMORY[0x1E69E9840];
  contactNavigationController = [(CNContactPickerContentViewController *)self contactNavigationController];
  contactListViewController = [contactNavigationController contactListViewController];
  collectionView = [contactListViewController collectionView];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v8 = [indexPathsForSelectedItems countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        [collectionView deselectItemAtIndexPath:*(*(&v12 + 1) + 8 * v11++) animated:animatedCopy];
      }

      while (v9 != v11);
      v9 = [indexPathsForSelectedItems countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)setBottomEdgesInset:(double)inset
{
  contactNavigationController = [(CNContactPickerContentViewController *)self contactNavigationController];
  contactListViewController = [contactNavigationController contactListViewController];
  [contactListViewController setBottomEdgesInset:inset];
}

- (UIScrollView)scrollView
{
  contactNavigationController = [(CNContactPickerContentViewController *)self contactNavigationController];
  contactListViewController = [contactNavigationController contactListViewController];
  collectionView = [contactListViewController collectionView];

  return collectionView;
}

- (UIBarButtonItem)addContactBarButtonItem
{
  contactNavigationController = [(CNContactPickerContentViewController *)self contactNavigationController];
  addContactBarButtonItem = [contactNavigationController addContactBarButtonItem];

  return addContactBarButtonItem;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = CNContactPickerContentViewController;
  coordinatorCopy = coordinator;
  [(CNContactPickerContentViewController *)&v8 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  [(CNContactPickerContentViewController *)self _updatePromptWithViewSize:coordinatorCopy transitionCoordinator:width, height, v8.receiver, v8.super_class];
}

- (void)_updatePromptWithViewSize:(CGSize)size transitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  prompt = [(CNContactPickerContentViewController *)self prompt];

  if (prompt && (width <= height || ![(CNContactPickerContentViewController *)self hidesPromptInLandscape]))
  {
    prompt2 = [(CNContactPickerContentViewController *)self prompt];
  }

  else
  {
    prompt2 = 0;
  }

  contactListViewController = [(CNContactNavigationController *)self->_contactNavigationController contactListViewController];
  navigationItem = [contactListViewController navigationItem];
  [navigationItem setPrompt:prompt2];
}

- (id)_validatePredicatesWithError:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v6 = objc_alloc_init(MEMORY[0x1E695CF70]);
  descriptorForContactPropertiesSupportingPredicateEvaluation = [objc_opt_class() descriptorForContactPropertiesSupportingPredicateEvaluation];
  v23[0] = descriptorForContactPropertiesSupportingPredicateEvaluation;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  [v6 setAllowedKeys:v8];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__CNContactPickerContentViewController__validatePredicatesWithError___block_invoke;
  aBlock[3] = &unk_1E74E6500;
  aBlock[4] = self;
  v9 = v6;
  v19 = v9;
  v10 = array;
  v20 = v10;
  v11 = _Block_copy(aBlock);
  v11[2](v11, @"predicateForEnablingContact");
  v11[2](v11, @"predicateForSelectionOfContact");
  usedKeys = [v9 usedKeys];
  [v9 setAllowedKeys:&unk_1F0D4BA90];
  v11[2](v11, @"predicateForSelectionOfProperty");
  v13 = [v10 count];
  if (error && v13)
  {
    v14 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E695C448];
    v21 = *MEMORY[0x1E695C450];
    v22 = v10;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    *error = [v14 errorWithDomain:v15 code:300 userInfo:v16];
  }

  return usedKeys;
}

void __69__CNContactPickerContentViewController__validatePredicatesWithError___block_invoke(id *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [a1[4] valueForKey:v3];
  if (v4)
  {
    [a1[5] setPredicate:v4];
    v5 = a1[5];
    v9 = 0;
    v6 = [v5 validateWithError:&v9];
    v7 = v9;
    if (v6)
    {
      [v4 allowEvaluation];
    }

    else
    {
      v8 = [objc_opt_class() log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v11 = v3;
        v12 = 2112;
        v13 = v7;
        _os_log_error_impl(&dword_199A75000, v8, OS_LOG_TYPE_ERROR, "Invalid %@: %@, removing it.", buf, 0x16u);
      }

      if (v7)
      {
        [a1[6] addObject:v7];
      }

      [a1[4] setValue:0 forKey:v3];
    }
  }
}

- (void)setupWithOptions:(id)options readyBlock:(id)block
{
  v206 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  blockCopy = block;
  v7 = [objc_opt_class() log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v205 = optionsCopy;
    _os_log_debug_impl(&dword_199A75000, v7, OS_LOG_TYPE_DEBUG, "setupWithOptions: %@", buf, 0xCu);
  }

  v8 = [(NSString *)optionsCopy objectForKeyedSubscript:@"Properties"];
  v199 = 0u;
  v200 = 0u;
  v201 = 0u;
  v202 = 0u;
  v9 = [MEMORY[0x1E695DFD8] setWithObjects:{@"predicateForEnablingContact", @"predicateForSelectionOfContact", @"predicateForSelectionOfProperty", @"displayedPropertyKeys", @"cardActions", @"hidesSearchableSources", @"onlyRealContacts", @"allowsEditing", @"allowsCancel", @"allowsDone", @"allowsNamePicking", @"prompt", @"hidesPromptInLandscape", @"bannerTitle", @"bannerValue", 0}];
  v10 = [v9 countByEnumeratingWithState:&v199 objects:v203 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v200;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v200 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v199 + 1) + 8 * i);
        v15 = [v8 objectForKeyedSubscript:v14];
        if (v15)
        {
          [(CNContactPickerContentViewController *)self setValue:v15 forKey:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v199 objects:v203 count:16];
    }

    while (v11);
  }

  v198 = 0;
  v197 = [(CNContactPickerContentViewController *)self _validatePredicatesWithError:&v198];
  v195 = v198;
  v16 = [(NSString *)optionsCopy objectForKeyedSubscript:@"ClientWantsSingleContact"];
  -[CNContactPickerContentViewController setClientWantsSingleContact:](self, "setClientWantsSingleContact:", [v16 BOOLValue]);

  v17 = [(NSString *)optionsCopy objectForKeyedSubscript:@"ClientWantsSingleProperty"];
  -[CNContactPickerContentViewController setClientWantsSingleProperty:](self, "setClientWantsSingleProperty:", [v17 BOOLValue]);

  v18 = [(NSString *)optionsCopy objectForKeyedSubscript:@"ClientWantsMultipleContacts"];
  -[CNContactPickerContentViewController setClientWantsMultipleContacts:](self, "setClientWantsMultipleContacts:", [v18 BOOLValue]);

  v19 = [(NSString *)optionsCopy objectForKeyedSubscript:@"ClientWantsMultipleProperties"];
  -[CNContactPickerContentViewController setClientWantsMultipleProperties:](self, "setClientWantsMultipleProperties:", [v19 BOOLValue]);

  v20 = [(NSString *)optionsCopy objectForKeyedSubscript:@"ClientHasContactsAccess"];
  -[CNContactPickerContentViewController setClientHasContactsAccess:](self, "setClientHasContactsAccess:", [v20 BOOLValue]);

  v21 = [(NSString *)optionsCopy objectForKeyedSubscript:@"familyMember"];
  [(CNContactPickerContentViewController *)self setFamilyMember:v21];

  v22 = [(NSString *)optionsCopy objectForKeyedSubscript:@"parentContainer"];
  [(CNContactPickerContentViewController *)self setParentContainer:v22];

  v23 = [(NSString *)optionsCopy objectForKeyedSubscript:@"ignoresParentalRestrictions"];
  -[CNContactPickerContentViewController setIgnoresParentalRestrictions:](self, "setIgnoresParentalRestrictions:", [v23 BOOLValue]);

  v24 = [(NSString *)optionsCopy objectForKeyedSubscript:@"prohibitedPropertyKeys"];
  [(CNContactPickerContentViewController *)self setProhibitedPropertyKeys:v24];

  v25 = [(NSString *)optionsCopy objectForKeyedSubscript:@"allowsDeletion"];
  -[CNContactPickerContentViewController setAllowsDeletion:](self, "setAllowsDeletion:", [v25 BOOLValue]);

  v26 = [(NSString *)optionsCopy objectForKeyedSubscript:@"allowsNamePicking"];
  -[CNContactPickerContentViewController setAllowsNamePicking:](self, "setAllowsNamePicking:", [v26 BOOLValue]);

  v27 = [(NSString *)optionsCopy objectForKeyedSubscript:@"hostIdiom"];
  -[CNContactPickerContentViewController setHostIdiom:](self, "setHostIdiom:", [v27 intValue]);

  [(CNContactPickerContentViewController *)self setShowsInlineActions:0];
  [(CNContactPickerContentViewController *)self setShowsSharedProfile:0];
  [(CNContactPickerContentViewController *)self setShowsGroupMembership:0];
  v28 = [(NSString *)optionsCopy objectForKeyedSubscript:@"allowsSearchForMultiSelect"];
  -[CNContactPickerContentViewController setAllowsSearchForMultiSelect:](self, "setAllowsSearchForMultiSelect:", [v28 BOOLValue]);

  v29 = [(NSString *)optionsCopy objectForKeyedSubscript:@"shouldDisplaySuggestionsController"];
  -[CNContactPickerContentViewController setShouldDisplaySuggestionsController:](self, "setShouldDisplaySuggestionsController:", [v29 BOOLValue]);

  v30 = [(NSString *)optionsCopy objectForKeyedSubscript:@"suggestionsIgnoredContactIdentifiers"];
  [(CNContactPickerContentViewController *)self setSuggestionsIgnoredContactIdentifiers:v30];

  v31 = [(NSString *)optionsCopy objectForKeyedSubscript:@"suggestionsInteractionDomains"];
  [(CNContactPickerContentViewController *)self setSuggestionsInteractionDomains:v31];

  v32 = [(NSString *)optionsCopy objectForKeyedSubscript:@"suggestedContacts"];
  [(CNContactPickerContentViewController *)self setSuggestedContacts:v32];

  v33 = [(NSString *)optionsCopy objectForKeyedSubscript:@"shouldDisplayAddNewContactRow"];
  -[CNContactPickerContentViewController setShouldDisplayAddNewContactRow:](self, "setShouldDisplayAddNewContactRow:", [v33 BOOLValue]);

  v34 = [(NSString *)optionsCopy objectForKeyedSubscript:@"targetGroupIdentifier"];
  [(CNContactPickerContentViewController *)self setTargetGroupIdentifier:v34];

  v35 = [(NSString *)optionsCopy objectForKeyedSubscript:@"shouldHideDuplicates"];
  -[CNContactPickerContentViewController setShouldHideDuplicates:](self, "setShouldHideDuplicates:", [v35 BOOLValue]);

  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v38 = [featureFlags isFeatureEnabled:20];

  LOBYTE(v39) = 0;
  if (v38)
  {
    v40 = [(NSString *)optionsCopy objectForKeyedSubscript:@"limitedAccessContactSelection"];
    [(CNContactPickerContentViewController *)self setLimitedAccessContactSelection:v40];

    v41 = [(NSString *)optionsCopy objectForKeyedSubscript:@"limitedAccessPickerType"];
    -[CNContactPickerContentViewController setLimitedAccessPickerType:](self, "setLimitedAccessPickerType:", [v41 integerValue]);

    v39 = [CNLimitedAccessPickerSupport isPickerLimitedAccess:[(CNContactPickerContentViewController *)self limitedAccessPickerType]];
    v42 = [(NSString *)optionsCopy objectForKeyedSubscript:@"limitedAccessAppName"];
    [(CNContactPickerContentViewController *)self setLimitedAccessAppName:v42];

    v43 = [(NSString *)optionsCopy objectForKeyedSubscript:@"limitedAccessAppBundleId"];
    [(CNContactPickerContentViewController *)self setLimitedAccessAppBundleId:v43];

    v44 = [(NSString *)optionsCopy objectForKeyedSubscript:@"hasPickerPrivacyUI"];
    -[CNContactPickerContentViewController setHasPickerPrivacyUI:](self, "setHasPickerPrivacyUI:", [v44 BOOLValue]);

    v45 = +[CNUIContactsEnvironment currentEnvironment];
    authorizationContext = [v45 authorizationContext];

    if (!v39 && authorizationContext && ([authorizationContext isFullAccessGranted] & 1) == 0)
    {
      [(CNContactPickerContentViewController *)self setHasPickerPrivacyUI:1];
    }

    v47 = [(NSString *)optionsCopy objectForKeyedSubscript:@"limitedAccessSearchQuery"];
    [(CNContactPickerContentViewController *)self setLimitedAccessInitialSearchQuery:v47];

    v48 = [(NSString *)optionsCopy objectForKeyedSubscript:@"limitedAccessContactCaption"];
    -[CNContactPickerContentViewController setLimitedAccessContactCaption:](self, "setLimitedAccessContactCaption:", [v48 integerValue]);

    if (v39)
    {
      v49 = [objc_opt_class() log];
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        limitedAccessAppBundleId = self->_limitedAccessAppBundleId;
        *buf = 138412290;
        v205 = limitedAccessAppBundleId;
        _os_log_debug_impl(&dword_199A75000, v49, OS_LOG_TYPE_DEBUG, "[Contact Picker Content View Controller] Bundle ID: %@", buf, 0xCu);
      }

      v50 = objc_alloc(MEMORY[0x1E6996760]);
      limitedAccessAppBundleId = [(CNContactPickerContentViewController *)self limitedAccessAppBundleId];
      mEMORY[0x1E6996768] = [MEMORY[0x1E6996768] sharedConnection];
      v53 = [v50 initWithBundleIdentifier:limitedAccessAppBundleId managedProfileConnection:mEMORY[0x1E6996768]];
      [(CNContactPickerContentViewController *)self setManagedConfiguration:v53];
    }
  }

  clientWantsMultipleProperties = [(CNContactPickerContentViewController *)self clientWantsMultipleContacts]|| [(CNContactPickerContentViewController *)self clientWantsMultipleProperties];
  contactNavigationController = [(CNContactPickerContentViewController *)self contactNavigationController];

  if (!contactNavigationController)
  {
    v193 = clientWantsMultipleProperties;
    if ([MEMORY[0x1E695CD58] suggestionsEnabled])
    {
      if ([(CNContactPickerContentViewController *)self onlyRealContacts])
      {
        v56 = 1;
      }

      else
      {
        v56 = 3;
      }
    }

    else
    {
      v56 = 1;
    }

    currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
    featureFlags2 = [currentEnvironment2 featureFlags];
    v59 = [featureFlags2 isFeatureEnabled:19];

    if (v59)
    {
      v60 = v56 | 0x20;
    }

    else
    {
      v60 = v56;
    }

    managedConfiguration = [(CNContactPickerContentViewController *)self managedConfiguration];

    if (managedConfiguration)
    {
      v62 = objc_alloc(MEMORY[0x1E695CE18]);
      currentEnvironment3 = [MEMORY[0x1E695CE38] currentEnvironment];
      managedConfiguration2 = [(CNContactPickerContentViewController *)self managedConfiguration];
      v65 = [v62 initWithEnvironment:currentEnvironment3 options:v60 managedConfiguration:managedConfiguration2];
    }

    else
    {
      familyMember = [(CNContactPickerContentViewController *)self familyMember];

      v67 = MEMORY[0x1E695CE18];
      if (familyMember)
      {
        familyMember2 = [(CNContactPickerContentViewController *)self familyMember];
        v65 = [v67 storeForFamilyMember:familyMember2];
      }

      else
      {
        v65 = [MEMORY[0x1E695CE18] storeWithOptions:v60];
      }
    }

    v192 = v65;
    v69 = [[CNContactStoreDataSource alloc] initWithStore:v65];
    [(CNContactStoreDataSource *)v69 setKeysToFetch:v197];
    managedConfiguration3 = [(CNContactPickerContentViewController *)self managedConfiguration];
    [(CNContactStoreDataSource *)v69 setManagedConfiguration:managedConfiguration3];

    -[CNContactStoreDataSource setFetchUnified:](v69, "setFetchUnified:", ([v197 count] != 0) | v39);
    v71 = [[CNContactNavigationController alloc] initWithDataSource:v69];
    [(CNContactNavigationController *)v71 setDelegate:self];
    contactListViewController = [(CNContactNavigationController *)v71 contactListViewController];
    [contactListViewController setDisableContextMenus:1];

    managedConfiguration4 = [(CNContactPickerContentViewController *)self managedConfiguration];

    if (managedConfiguration4)
    {
      managedConfiguration5 = [(CNContactPickerContentViewController *)self managedConfiguration];
      [(CNContactNavigationController *)v71 setManagedConfiguration:managedConfiguration5];
    }

    parentContainer = [(CNContactPickerContentViewController *)self parentContainer];

    if (parentContainer)
    {
      v76 = MEMORY[0x1E695DFD8];
      parentContainer2 = [(CNContactPickerContentViewController *)self parentContainer];
      identifier = [parentContainer2 identifier];
      v79 = [v76 setWithObject:identifier];
      filter = [(CNContactStoreDataSource *)v69 filter];
      [filter setContainerIdentifiers:v79];
    }

    if (![CNLimitedAccessPickerSupport shouldLimitedAccessPickerNeedContactsFilter:[(CNContactPickerContentViewController *)self limitedAccessPickerType]])
    {
      goto LABEL_55;
    }

    limitedAccessContactSelection = [(CNContactPickerContentViewController *)self limitedAccessContactSelection];
    filter2 = [(CNContactStoreDataSource *)v69 filter];
    [filter2 setLimitedAccessIdentifiers:limitedAccessContactSelection];

    if ([(CNContactPickerContentViewController *)self limitedAccessPickerType]== 5)
    {
      v83 = MEMORY[0x1E696AEC0];
      v84 = CNContactsUIBundle();
      v85 = [v84 localizedStringForKey:@"LIMITED_CONTACTS_SELECTED_TITLE-%@" value:&stru_1F0CE7398 table:@"Localized"];
      limitedAccessAppName = [(CNContactPickerContentViewController *)self limitedAccessAppName];
      limitedAccessContactSelection2 = limitedAccessAppName;
    }

    else
    {
      if ([(CNContactPickerContentViewController *)self limitedAccessPickerType]!= 2)
      {
        goto LABEL_49;
      }

      v83 = MEMORY[0x1E696AEC0];
      v84 = CNContactsUIBundle();
      v85 = [v84 localizedStringForKey:@"SELECTED_COUNT" value:&stru_1F0CE7398 table:@"Localized"];
      limitedAccessContactSelection2 = [(CNContactPickerContentViewController *)self limitedAccessContactSelection];
      limitedAccessAppName = [limitedAccessContactSelection2 count];
    }

    v88 = [v83 localizedStringWithFormat:v85, limitedAccessAppName];
    filter3 = [(CNContactStoreDataSource *)v69 filter];
    [filter3 setCustomDisplayName:v88];

LABEL_49:
    if ([(CNContactPickerContentViewController *)self limitedAccessPickerType]== 6)
    {
      v90 = 2;
    }

    else
    {
      if ([(CNContactPickerContentViewController *)self limitedAccessPickerType]!= 2 && [(CNContactPickerContentViewController *)self limitedAccessPickerType]!= 5)
      {
        goto LABEL_55;
      }

      v90 = 1;
    }

    filter4 = [(CNContactStoreDataSource *)v69 filter];
    [filter4 setLimitedAccessFilterMode:v90];

LABEL_55:
    filter5 = [(CNContactStoreDataSource *)v69 filter];
    v93 = [filter5 copy];
    contactListViewController2 = [(CNContactNavigationController *)v71 contactListViewController];
    dataSource = [contactListViewController2 dataSource];
    [dataSource setFilter:v93];

    contactListViewController3 = [(CNContactNavigationController *)v71 contactListViewController];
    [contactListViewController3 setShouldAllowDrags:0];

    contactListViewController4 = [(CNContactNavigationController *)v71 contactListViewController];
    [contactListViewController4 setShouldAllowDrops:0];

    allowsSearchForMultiSelect = [(CNContactPickerContentViewController *)self allowsSearchForMultiSelect];
    contactListViewController5 = [(CNContactNavigationController *)v71 contactListViewController];
    [contactListViewController5 setShouldAllowSearchForMultiSelect:allowsSearchForMultiSelect];

    prohibitedPropertyKeys = [(CNContactPickerContentViewController *)self prohibitedPropertyKeys];
    [(CNContactNavigationController *)v71 setProhibitedPropertyKeys:prohibitedPropertyKeys];

    [(CNContactNavigationController *)v71 setIgnoresMapsData:1];
    [(CNContactNavigationController *)v71 setHideMailToGroupButton:1];
    familyMember3 = [(CNContactPickerContentViewController *)self familyMember];
    if (familyMember3)
    {
      [(CNContactNavigationController *)v71 setHideGroupsButton:1];
      clientWantsMultipleProperties = v193;
    }

    else
    {
      parentContainer3 = [(CNContactPickerContentViewController *)self parentContainer];
      clientWantsMultipleProperties = v193;
      if (parentContainer3)
      {
        v103 = 1;
      }

      else
      {
        v103 = [CNLimitedAccessPickerSupport isPickerLimitedAccessSummary:[(CNContactPickerContentViewController *)self limitedAccessPickerType]];
      }

      [(CNContactNavigationController *)v71 setHideGroupsButton:v103];
    }

    targetGroupIdentifier = [(CNContactPickerContentViewController *)self targetGroupIdentifier];
    [(CNContactNavigationController *)v71 setContactPickerTargetGroupIdentifier:targetGroupIdentifier];

    contactListViewController6 = [(CNContactNavigationController *)v71 contactListViewController];
    [contactListViewController6 setShouldDisplayGroupsGrid:0];

    suggestedContacts = [(CNContactPickerContentViewController *)self suggestedContacts];
    contactListViewController7 = [(CNContactNavigationController *)v71 contactListViewController];
    [contactListViewController7 setSuggestedContacts:suggestedContacts];

    suggestionsIgnoredContactIdentifiers = [(CNContactPickerContentViewController *)self suggestionsIgnoredContactIdentifiers];
    contactListViewController8 = [(CNContactNavigationController *)v71 contactListViewController];
    [contactListViewController8 setSuggestionsIgnoredContactIdentifiers:suggestionsIgnoredContactIdentifiers];

    suggestionsInteractionDomains = [(CNContactPickerContentViewController *)self suggestionsInteractionDomains];
    contactListViewController9 = [(CNContactNavigationController *)v71 contactListViewController];
    [contactListViewController9 setSuggestionsInteractionDomains:suggestionsInteractionDomains];

    shouldDisplaySuggestionsController = [(CNContactPickerContentViewController *)self shouldDisplaySuggestionsController];
    contactListViewController10 = [(CNContactNavigationController *)v71 contactListViewController];
    [contactListViewController10 setShouldDisplaySuggestionsController:shouldDisplaySuggestionsController];

    contactListViewController11 = [(CNContactNavigationController *)v71 contactListViewController];
    [contactListViewController11 setAllowsEditingActions:0];

    contactListViewController12 = [(CNContactNavigationController *)v71 contactListViewController];
    [contactListViewController12 setAllowsListEditing:0];

    shouldDisplayAddNewContactRow = [(CNContactPickerContentViewController *)self shouldDisplayAddNewContactRow];
    contactListViewController13 = [(CNContactNavigationController *)v71 contactListViewController];
    [contactListViewController13 setShouldDisplayAddNewContactRow:shouldDisplayAddNewContactRow];

    shouldHideDuplicates = [(CNContactPickerContentViewController *)self shouldHideDuplicates];
    contactListViewController14 = [(CNContactNavigationController *)v71 contactListViewController];
    [contactListViewController14 setShouldHideDuplicates:shouldHideDuplicates];

    limitedAccessContactSelection3 = [(CNContactPickerContentViewController *)self limitedAccessContactSelection];
    contactListViewController15 = [(CNContactNavigationController *)v71 contactListViewController];
    [contactListViewController15 setLimitedAccessContactSelection:limitedAccessContactSelection3];

    limitedAccessPickerType = [(CNContactPickerContentViewController *)self limitedAccessPickerType];
    contactListViewController16 = [(CNContactNavigationController *)v71 contactListViewController];
    [contactListViewController16 setLimitedAccessPickerType:limitedAccessPickerType];

    limitedAccessAppName2 = [(CNContactPickerContentViewController *)self limitedAccessAppName];
    contactListViewController17 = [(CNContactNavigationController *)v71 contactListViewController];
    [contactListViewController17 setLimitedAccessAppName:limitedAccessAppName2];

    limitedAccessAppBundleId2 = [(CNContactPickerContentViewController *)self limitedAccessAppBundleId];
    contactListViewController18 = [(CNContactNavigationController *)v71 contactListViewController];
    [contactListViewController18 setLimitedAccessAppBundleId:limitedAccessAppBundleId2];

    hasPickerPrivacyUI = [(CNContactPickerContentViewController *)self hasPickerPrivacyUI];
    contactListViewController19 = [(CNContactNavigationController *)v71 contactListViewController];
    [contactListViewController19 setHasPickerPrivacyUI:hasPickerPrivacyUI];

    limitedAccessContactCaption = [(CNContactPickerContentViewController *)self limitedAccessContactCaption];
    contactListViewController20 = [(CNContactNavigationController *)v71 contactListViewController];
    [contactListViewController20 setLimitedAccessContactCaption:limitedAccessContactCaption];

    [(CNContactNavigationController *)v71 setHostIdiom:[(CNContactPickerContentViewController *)self hostIdiom]];
    parentContainer4 = [(CNContactPickerContentViewController *)self parentContainer];

    if (!parentContainer4)
    {
      accountsAndGroupsViewController = [(CNContactNavigationController *)v71 accountsAndGroupsViewController];
      [accountsAndGroupsViewController selectAllContacts];

      contactListViewController21 = [(CNContactNavigationController *)v71 contactListViewController];
      [contactListViewController21 reloadTitle];
    }

    [(CNContactPickerContentViewController *)self setDataSource:v69];
    [(CNContactPickerContentViewController *)self setContactNavigationController:v71];
  }

  allowsCancel = [(CNContactPickerContentViewController *)self allowsCancel];
  contactNavigationController2 = [(CNContactPickerContentViewController *)self contactNavigationController];
  [contactNavigationController2 setAllowsCanceling:allowsCancel];

  allowsEditing = [(CNContactPickerContentViewController *)self allowsEditing];
  contactNavigationController3 = [(CNContactPickerContentViewController *)self contactNavigationController];
  [contactNavigationController3 setAllowsCardEditing:allowsEditing];

  hidesSearchableSources = [(CNContactPickerContentViewController *)self hidesSearchableSources];
  contactNavigationController4 = [(CNContactPickerContentViewController *)self contactNavigationController];
  [contactNavigationController4 setHidesSearchableSources:hidesSearchableSources];

  limitedAccessPickerType2 = [(CNContactPickerContentViewController *)self limitedAccessPickerType];
  contactNavigationController5 = [(CNContactPickerContentViewController *)self contactNavigationController];
  [contactNavigationController5 setLimitedAccessPickerType:limitedAccessPickerType2];

  limitedAccessContactCaption2 = [(CNContactPickerContentViewController *)self limitedAccessContactCaption];
  contactNavigationController6 = [(CNContactPickerContentViewController *)self contactNavigationController];
  [contactNavigationController6 setLimitedAccessContactCaption:limitedAccessContactCaption2];

  if ([(CNContactPickerContentViewController *)self limitedAccessPickerType]== 6)
  {
    limitedAccessInitialSearchQuery = [(CNContactPickerContentViewController *)self limitedAccessInitialSearchQuery];
    if (limitedAccessInitialSearchQuery)
    {
      v146 = limitedAccessInitialSearchQuery;
      limitedAccessInitialSearchQuery2 = [(CNContactPickerContentViewController *)self limitedAccessInitialSearchQuery];
      v148 = [limitedAccessInitialSearchQuery2 length];

      if (v148)
      {
        contactNavigationController7 = [(CNContactPickerContentViewController *)self contactNavigationController];
        limitedAccessInitialSearchQuery3 = [(CNContactPickerContentViewController *)self limitedAccessInitialSearchQuery];
        [contactNavigationController7 searchForString:limitedAccessInitialSearchQuery3 makeSearchBarFirstResponder:0];
      }
    }
  }

  if (clientWantsMultipleProperties)
  {
    if ([(CNContactPickerContentViewController *)self limitedAccessPickerType]== 1)
    {
      [(CNContactPickerContentViewController *)self setAllowsDone:0];
      contactNavigationController8 = [(CNContactPickerContentViewController *)self contactNavigationController];
      accountsAndGroupsViewController2 = [contactNavigationController8 accountsAndGroupsViewController];
      [accountsAndGroupsViewController2 setIsLimitedAccessOnboarding:1];
    }

    else
    {
      [(CNContactPickerContentViewController *)self setAllowsDone:1];
    }

    contactNavigationController9 = [(CNContactPickerContentViewController *)self contactNavigationController];
    contactListViewController22 = [contactNavigationController9 contactListViewController];
    [contactListViewController22 setupForMultiSelection];
  }

  allowsDone = [(CNContactPickerContentViewController *)self allowsDone];
  contactNavigationController10 = [(CNContactPickerContentViewController *)self contactNavigationController];
  [contactNavigationController10 setAllowsDone:allowsDone];

  allowsDone2 = [(CNContactPickerContentViewController *)self allowsDone];
  contactNavigationController11 = [(CNContactPickerContentViewController *)self contactNavigationController];
  accountsAndGroupsViewController3 = [contactNavigationController11 accountsAndGroupsViewController];
  [accountsAndGroupsViewController3 setAllowsDone:allowsDone2];

  allowsCancel2 = [(CNContactPickerContentViewController *)self allowsCancel];
  contactNavigationController12 = [(CNContactPickerContentViewController *)self contactNavigationController];
  accountsAndGroupsViewController4 = [contactNavigationController12 accountsAndGroupsViewController];
  [accountsAndGroupsViewController4 setAllowsCanceling:allowsCancel2];

  contactNavigationController13 = [(CNContactPickerContentViewController *)self contactNavigationController];
  accountsAndGroupsViewController5 = [contactNavigationController13 accountsAndGroupsViewController];
  [accountsAndGroupsViewController5 setAllowsEditing:0];

  childViewControllers = [(CNContactPickerContentViewController *)self childViewControllers];
  contactNavigationController14 = [(CNContactPickerContentViewController *)self contactNavigationController];
  LOBYTE(accountsAndGroupsViewController4) = [childViewControllers containsObject:contactNavigationController14];

  if ((accountsAndGroupsViewController4 & 1) == 0)
  {
    [(UIViewController *)self cnui_addChildViewController:self->_contactNavigationController];
  }

  view = [(CNContactPickerContentViewController *)self view];
  [view bounds];
  [(CNContactPickerContentViewController *)self _updatePromptWithViewSize:0 transitionCoordinator:v168, v169];

  v170 = [(NSString *)optionsCopy objectForKeyedSubscript:@"ScrollContact"];
  if (v170)
  {
    dataSource2 = [(CNContactNavigationController *)self->_contactNavigationController dataSource];
    store = [dataSource2 store];
    if (store)
    {
      v194 = dataSource2;
      contactNavigationController15 = [(CNContactPickerContentViewController *)self contactNavigationController];
      contactListViewController23 = [contactNavigationController15 contactListViewController];
      contactFormatter = [contactListViewController23 contactFormatter];

      v191 = contactFormatter;
      v176 = [contactFormatter stringFromContact:v170];
      if ([v176 length])
      {
        v177 = [MEMORY[0x1E695CD58] predicateForContactsMatchingName:v176];
        v178 = [store unifiedContactsMatchingPredicate:v177 keysToFetch:MEMORY[0x1E695E0F0] error:0];
      }

      else
      {
        v177 = 0;
        v178 = 0;
      }

      if (![v178 count])
      {
        familyName = [v170 familyName];
        v180 = [familyName length];

        if (v180)
        {
          v181 = MEMORY[0x1E695CD58];
          familyName2 = [v170 familyName];
          v183 = [v181 predicateForContactsMatchingName:familyName2];

          v184 = [store unifiedContactsMatchingPredicate:v183 keysToFetch:MEMORY[0x1E695E0F0] error:0];

          v177 = v183;
          v178 = v184;
        }
      }

      if ([v178 count])
      {
        firstObject = [v178 firstObject];
        v186 = [v194 indexPathForContact:firstObject];
      }

      else
      {
        v186 = 0;
      }

      dataSource2 = v194;
      if (v186)
      {
        contactListViewController24 = [(CNContactNavigationController *)self->_contactNavigationController contactListViewController];
        collectionView = [contactListViewController24 collectionView];
        [collectionView scrollToItemAtIndexPath:v186 atScrollPosition:2 animated:0];
      }
    }
  }

  navigationItem = [(CNContactPickerContentViewController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  if (blockCopy)
  {
    blockCopy[2](blockCopy, v195);
  }
}

- (CNContactPickerContentViewController)init
{
  v5.receiver = self;
  v5.super_class = CNContactPickerContentViewController;
  v2 = [(CNContactPickerContentViewController *)&v5 init];
  view = [(CNContactPickerContentViewController *)v2 view];
  [view setFrame:{0.0, 0.0, 100.0, 100.0}];

  return v2;
}

+ (id)log
{
  if (log_cn_once_token_1_61094 != -1)
  {
    dispatch_once(&log_cn_once_token_1_61094, &__block_literal_global_61095);
  }

  v3 = log_cn_once_object_1_61096;

  return v3;
}

uint64_t __43__CNContactPickerContentViewController_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.ui", "CNContactPickerContentViewController");
  v1 = log_cn_once_object_1_61096;
  log_cn_once_object_1_61096 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end