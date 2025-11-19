@interface CNContactPickerContentViewController
+ (id)log;
- (BOOL)contactNavigationController:(id)a3 canSelectContact:(id)a4;
- (BOOL)contactNavigationController:(id)a3 presentViewController:(id)a4 animated:(BOOL)a5;
- (BOOL)contactNavigationController:(id)a3 shouldPerformDefaultActionForContactProperty:(id)a4;
- (BOOL)contactNavigationController:(id)a3 shouldSelectContact:(id)a4 atIndexPath:(id)a5;
- (BOOL)contactNavigationController:(id)a3 shouldShowCardForContact:(id)a4;
- (BOOL)contactNavigationControllerShouldAddNewContact:(id)a3;
- (BOOL)contactSuggestionViewController:(id)a3 shouldSelectContact:(id)a4 atIndexPath:(id)a5;
- (CNContactPickerContentDelegate)delegate;
- (CNContactPickerContentViewController)init;
- (UIBarButtonItem)addContactBarButtonItem;
- (UIScrollView)scrollView;
- (id)_validatePredicatesWithError:(id *)a3;
- (id)descriptorsForKeysRequiredByDelegate;
- (void)_selectedContact:(id)a3;
- (void)_selectedContacts:(id)a3;
- (void)_selectedProperties:(id)a3;
- (void)_selectedProperty:(id)a3;
- (void)_updatePromptWithViewSize:(CGSize)a3 transitionCoordinator:(id)a4;
- (void)contactNavigationController:(id)a3 didCompleteWithNewContact:(id)a4;
- (void)contactNavigationController:(id)a3 didUpdateLimitedAccessSelection:(id)a4;
- (void)contactNavigationControllerDidCancel:(id)a3;
- (void)contactNavigationControllerDidComplete:(id)a3;
- (void)contactNavigationControllerDidGoBack:(id)a3;
- (void)contactNavigationControllerShouldEditLimitedAccess:(id)a3;
- (void)invalidateSelectionAnimated:(BOOL)a3;
- (void)setBottomEdgesInset:(double)a3;
- (void)setupWithOptions:(id)a3 readyBlock:(id)a4;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CNContactPickerContentViewController

- (CNContactPickerContentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)contactNavigationControllerShouldEditLimitedAccess:(id)a3
{
  v4 = a3;
  v6 = [(CNContactPickerContentViewController *)self delegate];
  v5 = [v4 contactListViewController];

  [v6 contactListViewControllerShouldEditLimitedAccessSelection:v5];
}

- (void)contactNavigationController:(id)a3 didUpdateLimitedAccessSelection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(CNContactPickerContentViewController *)self delegate];
  v8 = [v7 contactListViewController];

  [v9 didUpdateLimitedAccessSelection:v6 contactListViewController:v8];
}

- (void)_selectedProperties:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v4;
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
        v11 = [(CNContactPickerContentViewController *)self dataSource];
        v12 = [v10 contact];
        v13 = [(CNContactPickerContentViewController *)self descriptorsForKeysRequiredByDelegate];
        v14 = [v11 completeContactFromContact:v12 fromMainStoreOnly:1 keysToFetch:v13];

        v15 = MEMORY[0x1E695CE08];
        v16 = [v10 key];
        v17 = [v10 identifier];
        v18 = [v15 contactPropertyWithContact:v14 propertyKey:v16 identifier:v17];

        [v5 addObject:v18];
        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v19 = [(CNContactPickerContentViewController *)self delegate];
  [v19 pickerDidSelectContacts:0 properties:v5];
}

- (void)_selectedContacts:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
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
        v12 = [(CNContactPickerContentViewController *)self dataSource];
        v13 = [(CNContactPickerContentViewController *)self descriptorsForKeysRequiredByDelegate];
        v14 = [v12 completeContactFromContact:v11 fromMainStoreOnly:1 keysToFetch:v13];

        [v5 addObject:v14];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v15 = [(CNContactPickerContentViewController *)self delegate];
  [v15 pickerDidSelectContacts:v5 properties:0];
}

- (void)_selectedProperty:(id)a3
{
  v4 = a3;
  v5 = [(CNContactPickerContentViewController *)self dataSource];
  v6 = [v4 contact];
  v7 = [(CNContactPickerContentViewController *)self descriptorsForKeysRequiredByDelegate];
  v13 = [v5 completeContactFromContact:v6 fromMainStoreOnly:1 keysToFetch:v7];

  v8 = MEMORY[0x1E695CE08];
  v9 = [v4 key];
  v10 = [v4 identifier];

  v11 = [v8 contactPropertyWithContact:v13 propertyKey:v9 identifier:v10];

  v12 = [(CNContactPickerContentViewController *)self delegate];
  [v12 pickerDidSelectContact:0 property:v11];
}

- (void)_selectedContact:(id)a3
{
  v4 = a3;
  v5 = [(CNContactPickerContentViewController *)self dataSource];
  v6 = [(CNContactPickerContentViewController *)self descriptorsForKeysRequiredByDelegate];
  v8 = [v5 completeContactFromContact:v4 fromMainStoreOnly:1 keysToFetch:v6];

  v7 = [(CNContactPickerContentViewController *)self delegate];
  [v7 pickerDidSelectContact:v8 property:0];
}

- (id)descriptorsForKeysRequiredByDelegate
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = +[CNContactContentViewController descriptorForRequiredKeys];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (void)contactNavigationControllerDidGoBack:(id)a3
{
  v3 = [(CNContactPickerContentViewController *)self delegate];
  [v3 pickerDidGoBack];
}

- (void)contactNavigationControllerDidCancel:(id)a3
{
  v3 = [(CNContactPickerContentViewController *)self delegate];
  [v3 pickerDidCancel];
}

- (void)contactNavigationController:(id)a3 didCompleteWithNewContact:(id)a4
{
  v5 = a4;
  v6 = [(CNContactPickerContentViewController *)self delegate];
  [v6 pickerDidCompleteWithNewContact:v5];
}

- (void)contactNavigationControllerDidComplete:(id)a3
{
  if (self->_contactProperties)
  {
    contactProperties = self->_contactProperties;

    [(CNContactPickerContentViewController *)self _selectedProperties:contactProperties];
  }

  else
  {
    v8 = [a3 contactListViewController];
    if ([CNLimitedAccessPickerSupport isPickerLimitedAccess:[(CNContactPickerContentViewController *)self limitedAccessPickerType]])
    {
      v5 = [v8 limitedAccessTotalSelectedContacts];
      v6 = [v8 limitedAccessAppBundleId];
      v7 = [CNLimitedAccessPickerSupport contactsFromIdentifiers:v5 withBundleId:v6];
    }

    else
    {
      v7 = [v8 selectedContacts];
    }

    [(CNContactPickerContentViewController *)self _selectedContacts:v7];
  }
}

- (BOOL)contactNavigationController:(id)a3 presentViewController:(id)a4 animated:(BOOL)a5
{
  v6 = a4;
  objc_opt_class();
  v7 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [(CNContactPickerContentViewController *)self displayedPropertyKeys];
  [v9 setDisplayedPropertyKeys:v10];

  v11 = [(CNContactPickerContentViewController *)self prohibitedPropertyKeys];
  [v9 setProhibitedPropertyKeys:v11];

  [v9 setIgnoresParentalRestrictions:{-[CNContactPickerContentViewController ignoresParentalRestrictions](self, "ignoresParentalRestrictions")}];
  [v9 setAllowsNamePicking:{-[CNContactPickerContentViewController allowsNamePicking](self, "allowsNamePicking")}];
  [v9 setShowsInlineActions:{-[CNContactPickerContentViewController showsInlineActions](self, "showsInlineActions")}];
  [v9 setShowsSharedProfile:{-[CNContactPickerContentViewController showsSharedProfile](self, "showsSharedProfile")}];
  [v9 setShowsGroupMembership:{-[CNContactPickerContentViewController showsGroupMembership](self, "showsGroupMembership")}];
  v12 = [(CNContactPickerContentViewController *)self cardActions];
  v13 = [v9 contact];
  v14 = [v13 isSuggested];

  if (v14)
  {
    v12 |= 0x20uLL;
  }

  if ([(CNContactPickerContentViewController *)self allowsDeletion])
  {
    v15 = v12 | 0x100;
  }

  else
  {
    v15 = v12;
  }

  [v9 setActions:v15];

  return 0;
}

- (BOOL)contactNavigationController:(id)a3 shouldPerformDefaultActionForContactProperty:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (-[CNContactPickerContentViewController clientWantsSingleProperty](self, "clientWantsSingleProperty") && ((-[CNContactPickerContentViewController predicateForSelectionOfProperty](self, "predicateForSelectionOfProperty"), v8 = objc_claimAutoreleasedReturnValue(), v8, !v8) || (-[CNContactPickerContentViewController predicateForSelectionOfProperty](self, "predicateForSelectionOfProperty"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 evaluateWithObject:v7], v9, v10)))
  {
    [(CNContactPickerContentViewController *)self _selectedProperty:v7];
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)contactNavigationController:(id)a3 shouldShowCardForContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isSuggested] & 1) != 0 || (objc_msgSend(v7, "hasSuggestedProperties"))
  {
    goto LABEL_3;
  }

  if ([(CNContactPickerContentViewController *)self clientWantsMultipleContacts]|| [(CNContactPickerContentViewController *)self clientWantsMultipleProperties])
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  v9 = [(CNContactPickerContentViewController *)self predicateForSelectionOfContact];

  if (v9)
  {
    v10 = [(CNContactPickerContentViewController *)self predicateForSelectionOfContact];
    v11 = [v10 evaluateWithObject:v7];

    if (v11)
    {
      goto LABEL_10;
    }
  }

  else if ([(CNContactPickerContentViewController *)self clientWantsSingleContact])
  {
LABEL_10:
    [(CNContactPickerContentViewController *)self _selectedContact:v7];
    goto LABEL_11;
  }

LABEL_3:
  v8 = 1;
LABEL_12:

  return v8;
}

- (BOOL)contactNavigationController:(id)a3 shouldSelectContact:(id)a4 atIndexPath:(id)a5
{
  v80 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v62 = a5;
  if (([v9 isSuggested] & 1) == 0 && (-[CNContactPickerContentViewController predicateForSelectionOfProperty](self, "predicateForSelectionOfProperty"), (v10 = objc_claimAutoreleasedReturnValue()) != 0) && (v11 = v10, v12 = -[CNContactPickerContentViewController clientWantsMultipleProperties](self, "clientWantsMultipleProperties"), v11, v12))
  {
    v13 = [v8 contactListViewController];
    v14 = [v13 collectionView];

    v61 = v14;
    v15 = [v14 indexPathsForSelectedItems];
    LOBYTE(v14) = [v15 containsObject:v62];

    if (v14)
    {
      v16 = 1;
    }

    else
    {
      v18 = [MEMORY[0x1E695CD58] multiValuePropertiesSupportingPredicateValidation];
      v19 = [(CNContactPickerContentViewController *)self contactNavigationController];
      v20 = [v19 dataSource];
      v21 = [v20 completeContactFromContact:v9 fromMainStoreOnly:0 keysToFetch:v18];

      v22 = [(CNContactPickerContentViewController *)self predicateForSelectionOfProperty];
      v23 = [v21 validPropertiesByEvaluatingPredicate:v22 onMultiValueProperties:v18];

      if ([v23 count])
      {
        if (!self->_contactProperties)
        {
          v24 = [MEMORY[0x1E695DF70] array];
          [(CNContactPickerContentViewController *)self setContactProperties:v24];
        }

        if ([v23 count] == 1)
        {
          v25 = [v23 firstObject];
          [(NSMutableArray *)self->_contactProperties addObject:v25];

          v16 = 1;
        }

        else
        {
          v53 = v21;
          v54 = v18;
          v60 = self;
          v55 = v9;
          v56 = v8;
          v26 = [v61 cellForItemAtIndexPath:v62];
          v58 = [v26 backgroundColor];
          v27 = [MEMORY[0x1E69DC888] systemGray6Color];
          v59 = v26;
          [v26 setBackgroundColor:v27];

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
                v34 = [v33 label];
                if (v34)
                {
                  v35 = [MEMORY[0x1E695CEE0] localizedStringForLabel:v34];
                }

                else
                {
                  v36 = MEMORY[0x1E695CD58];
                  v37 = [v33 key];
                  v35 = [v36 localizedStringForKey:v37];
                }

                v38 = MEMORY[0x1E69DC648];
                v39 = [v33 value];
                v67[0] = MEMORY[0x1E69E9820];
                v67[1] = 3221225472;
                v67[2] = __100__CNContactPickerContentViewController_contactNavigationController_shouldSelectContact_atIndexPath___block_invoke;
                v67[3] = &unk_1E74E6570;
                v68 = v59;
                v69 = v58;
                v70 = v61;
                v71 = v62;
                v72 = v60;
                v73 = v33;
                v40 = v28;
                v74 = v40;
                v41 = [v38 _actionWithTitle:v39 descriptiveText:v35 image:0 style:0 handler:v67 shouldDismissHandler:&__block_literal_global_60_61029];
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
          v65 = v58;
          v45 = v28;
          v66 = v45;
          v46 = v58;
          v47 = v59;
          v48 = [v42 actionWithTitle:v44 style:1 handler:v63];
          [v45 addAction:v48];

          v49 = [v45 popoverPresentationController];
          v50 = v49;
          if (v49)
          {
            [v49 setSourceView:v61];
            v51 = [v61 layoutAttributesForItemAtIndexPath:v62];
            [v51 frame];
            [v50 setSourceRect:?];
          }

          [(CNContactPickerContentViewController *)v60 presentViewController:v45 animated:1 completion:0];

          v16 = 0;
          v9 = v55;
          v8 = v56;
          v21 = v53;
          v18 = v54;
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

- (BOOL)contactSuggestionViewController:(id)a3 shouldSelectContact:(id)a4 atIndexPath:(id)a5
{
  v86 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v72 = a5;
  v10 = [(CNContactPickerContentViewController *)self predicateForSelectionOfProperty];
  if (v10 && (v11 = v10, v12 = -[CNContactPickerContentViewController clientWantsMultipleProperties](self, "clientWantsMultipleProperties"), v11, v12) && ([v8 selectedContacts], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "containsObject:", v9), v13, (v14 & 1) == 0))
  {
    v71 = [v8 collectionView];
    v17 = [MEMORY[0x1E695CD58] multiValuePropertiesSupportingPredicateValidation];
    v18 = [(CNContactPickerContentViewController *)self contactNavigationController];
    v19 = [v18 dataSource];
    v20 = [v19 completeContactFromContact:v9 fromMainStoreOnly:0 keysToFetch:v17];

    v21 = [(CNContactPickerContentViewController *)self predicateForSelectionOfProperty];
    v22 = [v20 validPropertiesByEvaluatingPredicate:v21 onMultiValueProperties:v17];

    if ([v22 count])
    {
      if (!self->_contactProperties)
      {
        v23 = [MEMORY[0x1E695DF70] array];
        [(CNContactPickerContentViewController *)self setContactProperties:v23];
      }

      if ([v22 count] == 1)
      {
        v24 = [v22 firstObject];
        [(NSMutableArray *)self->_contactProperties addObject:v24];

        v15 = 1;
      }

      else
      {
        v65 = v20;
        v66 = v17;
        v70 = self;
        v67 = v9;
        v68 = v8;
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
              v31 = [v30 label];
              if (v31)
              {
                v32 = [MEMORY[0x1E695CEE0] localizedStringForLabel:v31];
              }

              else
              {
                v33 = MEMORY[0x1E695CD58];
                v34 = [v30 key];
                v32 = [v33 localizedStringForKey:v34];
              }

              v35 = MEMORY[0x1E69DC648];
              v36 = [v30 value];
              v75[0] = MEMORY[0x1E69E9820];
              v75[1] = 3221225472;
              v75[2] = __104__CNContactPickerContentViewController_contactSuggestionViewController_shouldSelectContact_atIndexPath___block_invoke;
              v75[3] = &unk_1E74E6528;
              v76 = v71;
              v77 = v72;
              v78 = v70;
              v79 = v30;
              v37 = v25;
              v80 = v37;
              v38 = [v35 _actionWithTitle:v36 descriptiveText:v32 image:0 style:0 handler:v75 shouldDismissHandler:&__block_literal_global_54_61041];
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

        v44 = [v42 popoverPresentationController];
        v45 = v44;
        v20 = v65;
        if (v44)
        {
          [v44 setSourceView:v71];
          v46 = [v71 layoutAttributesForItemAtIndexPath:v72];
          [v46 frame];
          v48 = v47;
          v50 = v49;
          v52 = v51;
          v54 = v53;
          v55 = [v71 superview];
          [v71 convertRect:v55 toView:{v48, v50, v52, v54}];
          v57 = v56;
          v59 = v58;
          v61 = v60;
          v63 = v62;

          [v45 setSourceRect:{v57, v59, v61, v63}];
        }

        [(CNContactPickerContentViewController *)v70 presentViewController:v42 animated:1 completion:0];

        v15 = 0;
        v9 = v67;
        v8 = v68;
        v17 = v66;
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

- (BOOL)contactNavigationController:(id)a3 canSelectContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNContactPickerContentViewController *)self dataSource];
  v9 = [v8 keysToFetch];
  v10 = [v7 areKeysAvailable:v9];

  if ((v10 & 1) == 0)
  {
    v11 = [(CNContactPickerContentViewController *)self contactNavigationController];
    v12 = [v11 dataSource];
    v13 = [(CNContactPickerContentViewController *)self dataSource];
    v14 = [v13 keysToFetch];
    v15 = [v12 completeContactFromContact:v7 fromMainStoreOnly:0 keysToFetch:v14];

    v7 = v15;
  }

  v16 = [(CNContactPickerContentViewController *)self predicateForEnablingContact];

  if (v16)
  {
    v17 = [(CNContactPickerContentViewController *)self predicateForEnablingContact];
    v18 = [v17 evaluateWithObject:v7];
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

- (BOOL)contactNavigationControllerShouldAddNewContact:(id)a3
{
  v4 = [(CNContactPickerContentViewController *)self familyMember];

  if (v4)
  {
    v5 = [(CNContactPickerContentViewController *)self delegate];
    [v5 pickerDidSelectAddNewContact];
  }

  return v4 == 0;
}

- (void)invalidateSelectionAnimated:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v4 = [(CNContactPickerContentViewController *)self contactNavigationController];
  v5 = [v4 contactListViewController];
  v6 = [v5 collectionView];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [v6 indexPathsForSelectedItems];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v7);
        }

        [v6 deselectItemAtIndexPath:*(*(&v12 + 1) + 8 * v11++) animated:v3];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)setBottomEdgesInset:(double)a3
{
  v5 = [(CNContactPickerContentViewController *)self contactNavigationController];
  v4 = [v5 contactListViewController];
  [v4 setBottomEdgesInset:a3];
}

- (UIScrollView)scrollView
{
  v2 = [(CNContactPickerContentViewController *)self contactNavigationController];
  v3 = [v2 contactListViewController];
  v4 = [v3 collectionView];

  return v4;
}

- (UIBarButtonItem)addContactBarButtonItem
{
  v2 = [(CNContactPickerContentViewController *)self contactNavigationController];
  v3 = [v2 addContactBarButtonItem];

  return v3;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v8.receiver = self;
  v8.super_class = CNContactPickerContentViewController;
  v7 = a4;
  [(CNContactPickerContentViewController *)&v8 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  [(CNContactPickerContentViewController *)self _updatePromptWithViewSize:v7 transitionCoordinator:width, height, v8.receiver, v8.super_class];
}

- (void)_updatePromptWithViewSize:(CGSize)a3 transitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = [(CNContactPickerContentViewController *)self prompt];

  if (v7 && (width <= height || ![(CNContactPickerContentViewController *)self hidesPromptInLandscape]))
  {
    v10 = [(CNContactPickerContentViewController *)self prompt];
  }

  else
  {
    v10 = 0;
  }

  v8 = [(CNContactNavigationController *)self->_contactNavigationController contactListViewController];
  v9 = [v8 navigationItem];
  [v9 setPrompt:v10];
}

- (id)_validatePredicatesWithError:(id *)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = objc_alloc_init(MEMORY[0x1E695CF70]);
  v7 = [objc_opt_class() descriptorForContactPropertiesSupportingPredicateEvaluation];
  v23[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  [v6 setAllowedKeys:v8];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__CNContactPickerContentViewController__validatePredicatesWithError___block_invoke;
  aBlock[3] = &unk_1E74E6500;
  aBlock[4] = self;
  v9 = v6;
  v19 = v9;
  v10 = v5;
  v20 = v10;
  v11 = _Block_copy(aBlock);
  v11[2](v11, @"predicateForEnablingContact");
  v11[2](v11, @"predicateForSelectionOfContact");
  v12 = [v9 usedKeys];
  [v9 setAllowedKeys:&unk_1F0D4BA90];
  v11[2](v11, @"predicateForSelectionOfProperty");
  v13 = [v10 count];
  if (a3 && v13)
  {
    v14 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E695C448];
    v21 = *MEMORY[0x1E695C450];
    v22 = v10;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    *a3 = [v14 errorWithDomain:v15 code:300 userInfo:v16];
  }

  return v12;
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

- (void)setupWithOptions:(id)a3 readyBlock:(id)a4
{
  v206 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v196 = a4;
  v7 = [objc_opt_class() log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v205 = v6;
    _os_log_debug_impl(&dword_199A75000, v7, OS_LOG_TYPE_DEBUG, "setupWithOptions: %@", buf, 0xCu);
  }

  v8 = [(NSString *)v6 objectForKeyedSubscript:@"Properties"];
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
  v16 = [(NSString *)v6 objectForKeyedSubscript:@"ClientWantsSingleContact"];
  -[CNContactPickerContentViewController setClientWantsSingleContact:](self, "setClientWantsSingleContact:", [v16 BOOLValue]);

  v17 = [(NSString *)v6 objectForKeyedSubscript:@"ClientWantsSingleProperty"];
  -[CNContactPickerContentViewController setClientWantsSingleProperty:](self, "setClientWantsSingleProperty:", [v17 BOOLValue]);

  v18 = [(NSString *)v6 objectForKeyedSubscript:@"ClientWantsMultipleContacts"];
  -[CNContactPickerContentViewController setClientWantsMultipleContacts:](self, "setClientWantsMultipleContacts:", [v18 BOOLValue]);

  v19 = [(NSString *)v6 objectForKeyedSubscript:@"ClientWantsMultipleProperties"];
  -[CNContactPickerContentViewController setClientWantsMultipleProperties:](self, "setClientWantsMultipleProperties:", [v19 BOOLValue]);

  v20 = [(NSString *)v6 objectForKeyedSubscript:@"ClientHasContactsAccess"];
  -[CNContactPickerContentViewController setClientHasContactsAccess:](self, "setClientHasContactsAccess:", [v20 BOOLValue]);

  v21 = [(NSString *)v6 objectForKeyedSubscript:@"familyMember"];
  [(CNContactPickerContentViewController *)self setFamilyMember:v21];

  v22 = [(NSString *)v6 objectForKeyedSubscript:@"parentContainer"];
  [(CNContactPickerContentViewController *)self setParentContainer:v22];

  v23 = [(NSString *)v6 objectForKeyedSubscript:@"ignoresParentalRestrictions"];
  -[CNContactPickerContentViewController setIgnoresParentalRestrictions:](self, "setIgnoresParentalRestrictions:", [v23 BOOLValue]);

  v24 = [(NSString *)v6 objectForKeyedSubscript:@"prohibitedPropertyKeys"];
  [(CNContactPickerContentViewController *)self setProhibitedPropertyKeys:v24];

  v25 = [(NSString *)v6 objectForKeyedSubscript:@"allowsDeletion"];
  -[CNContactPickerContentViewController setAllowsDeletion:](self, "setAllowsDeletion:", [v25 BOOLValue]);

  v26 = [(NSString *)v6 objectForKeyedSubscript:@"allowsNamePicking"];
  -[CNContactPickerContentViewController setAllowsNamePicking:](self, "setAllowsNamePicking:", [v26 BOOLValue]);

  v27 = [(NSString *)v6 objectForKeyedSubscript:@"hostIdiom"];
  -[CNContactPickerContentViewController setHostIdiom:](self, "setHostIdiom:", [v27 intValue]);

  [(CNContactPickerContentViewController *)self setShowsInlineActions:0];
  [(CNContactPickerContentViewController *)self setShowsSharedProfile:0];
  [(CNContactPickerContentViewController *)self setShowsGroupMembership:0];
  v28 = [(NSString *)v6 objectForKeyedSubscript:@"allowsSearchForMultiSelect"];
  -[CNContactPickerContentViewController setAllowsSearchForMultiSelect:](self, "setAllowsSearchForMultiSelect:", [v28 BOOLValue]);

  v29 = [(NSString *)v6 objectForKeyedSubscript:@"shouldDisplaySuggestionsController"];
  -[CNContactPickerContentViewController setShouldDisplaySuggestionsController:](self, "setShouldDisplaySuggestionsController:", [v29 BOOLValue]);

  v30 = [(NSString *)v6 objectForKeyedSubscript:@"suggestionsIgnoredContactIdentifiers"];
  [(CNContactPickerContentViewController *)self setSuggestionsIgnoredContactIdentifiers:v30];

  v31 = [(NSString *)v6 objectForKeyedSubscript:@"suggestionsInteractionDomains"];
  [(CNContactPickerContentViewController *)self setSuggestionsInteractionDomains:v31];

  v32 = [(NSString *)v6 objectForKeyedSubscript:@"suggestedContacts"];
  [(CNContactPickerContentViewController *)self setSuggestedContacts:v32];

  v33 = [(NSString *)v6 objectForKeyedSubscript:@"shouldDisplayAddNewContactRow"];
  -[CNContactPickerContentViewController setShouldDisplayAddNewContactRow:](self, "setShouldDisplayAddNewContactRow:", [v33 BOOLValue]);

  v34 = [(NSString *)v6 objectForKeyedSubscript:@"targetGroupIdentifier"];
  [(CNContactPickerContentViewController *)self setTargetGroupIdentifier:v34];

  v35 = [(NSString *)v6 objectForKeyedSubscript:@"shouldHideDuplicates"];
  -[CNContactPickerContentViewController setShouldHideDuplicates:](self, "setShouldHideDuplicates:", [v35 BOOLValue]);

  v36 = [MEMORY[0x1E69966E8] currentEnvironment];
  v37 = [v36 featureFlags];
  v38 = [v37 isFeatureEnabled:20];

  LOBYTE(v39) = 0;
  if (v38)
  {
    v40 = [(NSString *)v6 objectForKeyedSubscript:@"limitedAccessContactSelection"];
    [(CNContactPickerContentViewController *)self setLimitedAccessContactSelection:v40];

    v41 = [(NSString *)v6 objectForKeyedSubscript:@"limitedAccessPickerType"];
    -[CNContactPickerContentViewController setLimitedAccessPickerType:](self, "setLimitedAccessPickerType:", [v41 integerValue]);

    v39 = [CNLimitedAccessPickerSupport isPickerLimitedAccess:[(CNContactPickerContentViewController *)self limitedAccessPickerType]];
    v42 = [(NSString *)v6 objectForKeyedSubscript:@"limitedAccessAppName"];
    [(CNContactPickerContentViewController *)self setLimitedAccessAppName:v42];

    v43 = [(NSString *)v6 objectForKeyedSubscript:@"limitedAccessAppBundleId"];
    [(CNContactPickerContentViewController *)self setLimitedAccessAppBundleId:v43];

    v44 = [(NSString *)v6 objectForKeyedSubscript:@"hasPickerPrivacyUI"];
    -[CNContactPickerContentViewController setHasPickerPrivacyUI:](self, "setHasPickerPrivacyUI:", [v44 BOOLValue]);

    v45 = +[CNUIContactsEnvironment currentEnvironment];
    v46 = [v45 authorizationContext];

    if (!v39 && v46 && ([v46 isFullAccessGranted] & 1) == 0)
    {
      [(CNContactPickerContentViewController *)self setHasPickerPrivacyUI:1];
    }

    v47 = [(NSString *)v6 objectForKeyedSubscript:@"limitedAccessSearchQuery"];
    [(CNContactPickerContentViewController *)self setLimitedAccessInitialSearchQuery:v47];

    v48 = [(NSString *)v6 objectForKeyedSubscript:@"limitedAccessContactCaption"];
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
      v51 = [(CNContactPickerContentViewController *)self limitedAccessAppBundleId];
      v52 = [MEMORY[0x1E6996768] sharedConnection];
      v53 = [v50 initWithBundleIdentifier:v51 managedProfileConnection:v52];
      [(CNContactPickerContentViewController *)self setManagedConfiguration:v53];
    }
  }

  v54 = [(CNContactPickerContentViewController *)self clientWantsMultipleContacts]|| [(CNContactPickerContentViewController *)self clientWantsMultipleProperties];
  v55 = [(CNContactPickerContentViewController *)self contactNavigationController];

  if (!v55)
  {
    v193 = v54;
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

    v57 = [MEMORY[0x1E69966E8] currentEnvironment];
    v58 = [v57 featureFlags];
    v59 = [v58 isFeatureEnabled:19];

    if (v59)
    {
      v60 = v56 | 0x20;
    }

    else
    {
      v60 = v56;
    }

    v61 = [(CNContactPickerContentViewController *)self managedConfiguration];

    if (v61)
    {
      v62 = objc_alloc(MEMORY[0x1E695CE18]);
      v63 = [MEMORY[0x1E695CE38] currentEnvironment];
      v64 = [(CNContactPickerContentViewController *)self managedConfiguration];
      v65 = [v62 initWithEnvironment:v63 options:v60 managedConfiguration:v64];
    }

    else
    {
      v66 = [(CNContactPickerContentViewController *)self familyMember];

      v67 = MEMORY[0x1E695CE18];
      if (v66)
      {
        v68 = [(CNContactPickerContentViewController *)self familyMember];
        v65 = [v67 storeForFamilyMember:v68];
      }

      else
      {
        v65 = [MEMORY[0x1E695CE18] storeWithOptions:v60];
      }
    }

    v192 = v65;
    v69 = [[CNContactStoreDataSource alloc] initWithStore:v65];
    [(CNContactStoreDataSource *)v69 setKeysToFetch:v197];
    v70 = [(CNContactPickerContentViewController *)self managedConfiguration];
    [(CNContactStoreDataSource *)v69 setManagedConfiguration:v70];

    -[CNContactStoreDataSource setFetchUnified:](v69, "setFetchUnified:", ([v197 count] != 0) | v39);
    v71 = [[CNContactNavigationController alloc] initWithDataSource:v69];
    [(CNContactNavigationController *)v71 setDelegate:self];
    v72 = [(CNContactNavigationController *)v71 contactListViewController];
    [v72 setDisableContextMenus:1];

    v73 = [(CNContactPickerContentViewController *)self managedConfiguration];

    if (v73)
    {
      v74 = [(CNContactPickerContentViewController *)self managedConfiguration];
      [(CNContactNavigationController *)v71 setManagedConfiguration:v74];
    }

    v75 = [(CNContactPickerContentViewController *)self parentContainer];

    if (v75)
    {
      v76 = MEMORY[0x1E695DFD8];
      v77 = [(CNContactPickerContentViewController *)self parentContainer];
      v78 = [v77 identifier];
      v79 = [v76 setWithObject:v78];
      v80 = [(CNContactStoreDataSource *)v69 filter];
      [v80 setContainerIdentifiers:v79];
    }

    if (![CNLimitedAccessPickerSupport shouldLimitedAccessPickerNeedContactsFilter:[(CNContactPickerContentViewController *)self limitedAccessPickerType]])
    {
      goto LABEL_55;
    }

    v81 = [(CNContactPickerContentViewController *)self limitedAccessContactSelection];
    v82 = [(CNContactStoreDataSource *)v69 filter];
    [v82 setLimitedAccessIdentifiers:v81];

    if ([(CNContactPickerContentViewController *)self limitedAccessPickerType]== 5)
    {
      v83 = MEMORY[0x1E696AEC0];
      v84 = CNContactsUIBundle();
      v85 = [v84 localizedStringForKey:@"LIMITED_CONTACTS_SELECTED_TITLE-%@" value:&stru_1F0CE7398 table:@"Localized"];
      v86 = [(CNContactPickerContentViewController *)self limitedAccessAppName];
      v87 = v86;
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
      v87 = [(CNContactPickerContentViewController *)self limitedAccessContactSelection];
      v86 = [v87 count];
    }

    v88 = [v83 localizedStringWithFormat:v85, v86];
    v89 = [(CNContactStoreDataSource *)v69 filter];
    [v89 setCustomDisplayName:v88];

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

    v91 = [(CNContactStoreDataSource *)v69 filter];
    [v91 setLimitedAccessFilterMode:v90];

LABEL_55:
    v92 = [(CNContactStoreDataSource *)v69 filter];
    v93 = [v92 copy];
    v94 = [(CNContactNavigationController *)v71 contactListViewController];
    v95 = [v94 dataSource];
    [v95 setFilter:v93];

    v96 = [(CNContactNavigationController *)v71 contactListViewController];
    [v96 setShouldAllowDrags:0];

    v97 = [(CNContactNavigationController *)v71 contactListViewController];
    [v97 setShouldAllowDrops:0];

    v98 = [(CNContactPickerContentViewController *)self allowsSearchForMultiSelect];
    v99 = [(CNContactNavigationController *)v71 contactListViewController];
    [v99 setShouldAllowSearchForMultiSelect:v98];

    v100 = [(CNContactPickerContentViewController *)self prohibitedPropertyKeys];
    [(CNContactNavigationController *)v71 setProhibitedPropertyKeys:v100];

    [(CNContactNavigationController *)v71 setIgnoresMapsData:1];
    [(CNContactNavigationController *)v71 setHideMailToGroupButton:1];
    v101 = [(CNContactPickerContentViewController *)self familyMember];
    if (v101)
    {
      [(CNContactNavigationController *)v71 setHideGroupsButton:1];
      v54 = v193;
    }

    else
    {
      v102 = [(CNContactPickerContentViewController *)self parentContainer];
      v54 = v193;
      if (v102)
      {
        v103 = 1;
      }

      else
      {
        v103 = [CNLimitedAccessPickerSupport isPickerLimitedAccessSummary:[(CNContactPickerContentViewController *)self limitedAccessPickerType]];
      }

      [(CNContactNavigationController *)v71 setHideGroupsButton:v103];
    }

    v104 = [(CNContactPickerContentViewController *)self targetGroupIdentifier];
    [(CNContactNavigationController *)v71 setContactPickerTargetGroupIdentifier:v104];

    v105 = [(CNContactNavigationController *)v71 contactListViewController];
    [v105 setShouldDisplayGroupsGrid:0];

    v106 = [(CNContactPickerContentViewController *)self suggestedContacts];
    v107 = [(CNContactNavigationController *)v71 contactListViewController];
    [v107 setSuggestedContacts:v106];

    v108 = [(CNContactPickerContentViewController *)self suggestionsIgnoredContactIdentifiers];
    v109 = [(CNContactNavigationController *)v71 contactListViewController];
    [v109 setSuggestionsIgnoredContactIdentifiers:v108];

    v110 = [(CNContactPickerContentViewController *)self suggestionsInteractionDomains];
    v111 = [(CNContactNavigationController *)v71 contactListViewController];
    [v111 setSuggestionsInteractionDomains:v110];

    v112 = [(CNContactPickerContentViewController *)self shouldDisplaySuggestionsController];
    v113 = [(CNContactNavigationController *)v71 contactListViewController];
    [v113 setShouldDisplaySuggestionsController:v112];

    v114 = [(CNContactNavigationController *)v71 contactListViewController];
    [v114 setAllowsEditingActions:0];

    v115 = [(CNContactNavigationController *)v71 contactListViewController];
    [v115 setAllowsListEditing:0];

    v116 = [(CNContactPickerContentViewController *)self shouldDisplayAddNewContactRow];
    v117 = [(CNContactNavigationController *)v71 contactListViewController];
    [v117 setShouldDisplayAddNewContactRow:v116];

    v118 = [(CNContactPickerContentViewController *)self shouldHideDuplicates];
    v119 = [(CNContactNavigationController *)v71 contactListViewController];
    [v119 setShouldHideDuplicates:v118];

    v120 = [(CNContactPickerContentViewController *)self limitedAccessContactSelection];
    v121 = [(CNContactNavigationController *)v71 contactListViewController];
    [v121 setLimitedAccessContactSelection:v120];

    v122 = [(CNContactPickerContentViewController *)self limitedAccessPickerType];
    v123 = [(CNContactNavigationController *)v71 contactListViewController];
    [v123 setLimitedAccessPickerType:v122];

    v124 = [(CNContactPickerContentViewController *)self limitedAccessAppName];
    v125 = [(CNContactNavigationController *)v71 contactListViewController];
    [v125 setLimitedAccessAppName:v124];

    v126 = [(CNContactPickerContentViewController *)self limitedAccessAppBundleId];
    v127 = [(CNContactNavigationController *)v71 contactListViewController];
    [v127 setLimitedAccessAppBundleId:v126];

    v128 = [(CNContactPickerContentViewController *)self hasPickerPrivacyUI];
    v129 = [(CNContactNavigationController *)v71 contactListViewController];
    [v129 setHasPickerPrivacyUI:v128];

    v130 = [(CNContactPickerContentViewController *)self limitedAccessContactCaption];
    v131 = [(CNContactNavigationController *)v71 contactListViewController];
    [v131 setLimitedAccessContactCaption:v130];

    [(CNContactNavigationController *)v71 setHostIdiom:[(CNContactPickerContentViewController *)self hostIdiom]];
    v132 = [(CNContactPickerContentViewController *)self parentContainer];

    if (!v132)
    {
      v133 = [(CNContactNavigationController *)v71 accountsAndGroupsViewController];
      [v133 selectAllContacts];

      v134 = [(CNContactNavigationController *)v71 contactListViewController];
      [v134 reloadTitle];
    }

    [(CNContactPickerContentViewController *)self setDataSource:v69];
    [(CNContactPickerContentViewController *)self setContactNavigationController:v71];
  }

  v135 = [(CNContactPickerContentViewController *)self allowsCancel];
  v136 = [(CNContactPickerContentViewController *)self contactNavigationController];
  [v136 setAllowsCanceling:v135];

  v137 = [(CNContactPickerContentViewController *)self allowsEditing];
  v138 = [(CNContactPickerContentViewController *)self contactNavigationController];
  [v138 setAllowsCardEditing:v137];

  v139 = [(CNContactPickerContentViewController *)self hidesSearchableSources];
  v140 = [(CNContactPickerContentViewController *)self contactNavigationController];
  [v140 setHidesSearchableSources:v139];

  v141 = [(CNContactPickerContentViewController *)self limitedAccessPickerType];
  v142 = [(CNContactPickerContentViewController *)self contactNavigationController];
  [v142 setLimitedAccessPickerType:v141];

  v143 = [(CNContactPickerContentViewController *)self limitedAccessContactCaption];
  v144 = [(CNContactPickerContentViewController *)self contactNavigationController];
  [v144 setLimitedAccessContactCaption:v143];

  if ([(CNContactPickerContentViewController *)self limitedAccessPickerType]== 6)
  {
    v145 = [(CNContactPickerContentViewController *)self limitedAccessInitialSearchQuery];
    if (v145)
    {
      v146 = v145;
      v147 = [(CNContactPickerContentViewController *)self limitedAccessInitialSearchQuery];
      v148 = [v147 length];

      if (v148)
      {
        v149 = [(CNContactPickerContentViewController *)self contactNavigationController];
        v150 = [(CNContactPickerContentViewController *)self limitedAccessInitialSearchQuery];
        [v149 searchForString:v150 makeSearchBarFirstResponder:0];
      }
    }
  }

  if (v54)
  {
    if ([(CNContactPickerContentViewController *)self limitedAccessPickerType]== 1)
    {
      [(CNContactPickerContentViewController *)self setAllowsDone:0];
      v151 = [(CNContactPickerContentViewController *)self contactNavigationController];
      v152 = [v151 accountsAndGroupsViewController];
      [v152 setIsLimitedAccessOnboarding:1];
    }

    else
    {
      [(CNContactPickerContentViewController *)self setAllowsDone:1];
    }

    v153 = [(CNContactPickerContentViewController *)self contactNavigationController];
    v154 = [v153 contactListViewController];
    [v154 setupForMultiSelection];
  }

  v155 = [(CNContactPickerContentViewController *)self allowsDone];
  v156 = [(CNContactPickerContentViewController *)self contactNavigationController];
  [v156 setAllowsDone:v155];

  v157 = [(CNContactPickerContentViewController *)self allowsDone];
  v158 = [(CNContactPickerContentViewController *)self contactNavigationController];
  v159 = [v158 accountsAndGroupsViewController];
  [v159 setAllowsDone:v157];

  v160 = [(CNContactPickerContentViewController *)self allowsCancel];
  v161 = [(CNContactPickerContentViewController *)self contactNavigationController];
  v162 = [v161 accountsAndGroupsViewController];
  [v162 setAllowsCanceling:v160];

  v163 = [(CNContactPickerContentViewController *)self contactNavigationController];
  v164 = [v163 accountsAndGroupsViewController];
  [v164 setAllowsEditing:0];

  v165 = [(CNContactPickerContentViewController *)self childViewControllers];
  v166 = [(CNContactPickerContentViewController *)self contactNavigationController];
  LOBYTE(v162) = [v165 containsObject:v166];

  if ((v162 & 1) == 0)
  {
    [(UIViewController *)self cnui_addChildViewController:self->_contactNavigationController];
  }

  v167 = [(CNContactPickerContentViewController *)self view];
  [v167 bounds];
  [(CNContactPickerContentViewController *)self _updatePromptWithViewSize:0 transitionCoordinator:v168, v169];

  v170 = [(NSString *)v6 objectForKeyedSubscript:@"ScrollContact"];
  if (v170)
  {
    v171 = [(CNContactNavigationController *)self->_contactNavigationController dataSource];
    v172 = [v171 store];
    if (v172)
    {
      v194 = v171;
      v173 = [(CNContactPickerContentViewController *)self contactNavigationController];
      v174 = [v173 contactListViewController];
      v175 = [v174 contactFormatter];

      v191 = v175;
      v176 = [v175 stringFromContact:v170];
      if ([v176 length])
      {
        v177 = [MEMORY[0x1E695CD58] predicateForContactsMatchingName:v176];
        v178 = [v172 unifiedContactsMatchingPredicate:v177 keysToFetch:MEMORY[0x1E695E0F0] error:0];
      }

      else
      {
        v177 = 0;
        v178 = 0;
      }

      if (![v178 count])
      {
        v179 = [v170 familyName];
        v180 = [v179 length];

        if (v180)
        {
          v181 = MEMORY[0x1E695CD58];
          v182 = [v170 familyName];
          v183 = [v181 predicateForContactsMatchingName:v182];

          v184 = [v172 unifiedContactsMatchingPredicate:v183 keysToFetch:MEMORY[0x1E695E0F0] error:0];

          v177 = v183;
          v178 = v184;
        }
      }

      if ([v178 count])
      {
        v185 = [v178 firstObject];
        v186 = [v194 indexPathForContact:v185];
      }

      else
      {
        v186 = 0;
      }

      v171 = v194;
      if (v186)
      {
        v187 = [(CNContactNavigationController *)self->_contactNavigationController contactListViewController];
        v188 = [v187 collectionView];
        [v188 scrollToItemAtIndexPath:v186 atScrollPosition:2 animated:0];
      }
    }
  }

  v189 = [(CNContactPickerContentViewController *)self navigationItem];
  [v189 setLargeTitleDisplayMode:2];

  if (v196)
  {
    v196[2](v196, v195);
  }
}

- (CNContactPickerContentViewController)init
{
  v5.receiver = self;
  v5.super_class = CNContactPickerContentViewController;
  v2 = [(CNContactPickerContentViewController *)&v5 init];
  v3 = [(CNContactPickerContentViewController *)v2 view];
  [v3 setFrame:{0.0, 0.0, 100.0, 100.0}];

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