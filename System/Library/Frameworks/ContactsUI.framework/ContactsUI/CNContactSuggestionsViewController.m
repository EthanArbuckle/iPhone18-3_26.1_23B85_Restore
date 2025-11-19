@interface CNContactSuggestionsViewController
+ (id)os_log;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (BOOL)useAccessibleLayout;
- (CGSize)avatarSize;
- (CNContactSuggestionsViewController)init;
- (CNContactSuggestionsViewControllerDelegate)delegate;
- (NSArray)selectedContacts;
- (NSDirectionalEdgeInsets)sectionInsets;
- (double)estimatedHeaderHeight;
- (double)estimatedHeight;
- (double)verticalSpacing;
- (id)compositionalLayout;
- (id)filterResults:(id)a3;
- (void)buildCollectionView;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)fetchContacts;
- (void)fetchContactsIfNeeded;
- (void)fetchIgnoredContactIdentifiersIfNeeded;
- (void)imageForContact:(id)a3 imageUpdateBlock:(id)a4;
- (void)setAllowsMultiSelection:(BOOL)a3;
- (void)setCellStateSelected:(BOOL)a3 forContact:(id)a4 animated:(BOOL)a5;
- (void)setContacts:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CNContactSuggestionsViewController

- (CNContactSuggestionsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(CNContactSuggestionsViewController *)self contacts];
  v7 = [v5 item];

  v9 = [v6 objectAtIndexedSubscript:v7];

  v8 = [(CNContactSuggestionsViewController *)self delegate];
  [v8 suggestionsController:self didDeselectContact:v9];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(CNContactSuggestionsViewController *)self contacts];
  v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v6, "item")}];

  v9 = [(CNContactSuggestionsViewController *)self delegate];
  [v9 suggestionsController:self didSelectContact:v8];

  if (![(CNContactSuggestionsViewController *)self allowsMultiSelection])
  {
    [v10 deselectItemAtIndexPath:v6 animated:1];
  }
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(CNContactSuggestionsViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CNContactSuggestionsViewController *)self contacts];
    v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v5, "item")}];

    v10 = [(CNContactSuggestionsViewController *)self delegate];
    v11 = [v10 suggestionsController:self shouldSelectContact:v9 atIndexPath:v5];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)setCellStateSelected:(BOOL)a3 forContact:(id)a4 animated:(BOOL)a5
{
  if (a4)
  {
    v5 = a5;
    v6 = a3;
    v8 = a4;
    v9 = [(CNContactSuggestionsViewController *)self identifiersToIndexPath];
    v10 = [v8 identifier];

    v13 = [v9 objectForKeyedSubscript:v10];

    if (v13)
    {
      v11 = [(CNContactSuggestionsViewController *)self collectionView];
      v12 = v11;
      if (v6)
      {
        [v11 selectItemAtIndexPath:v13 animated:v5 scrollPosition:0];
      }

      else
      {
        [v11 deselectItemAtIndexPath:v13 animated:v5];
      }
    }
  }
}

- (NSArray)selectedContacts
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(CNContactSuggestionsViewController *)self collectionView];
  v5 = [v4 indexPathsForSelectedItems];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(CNContactSuggestionsViewController *)self contacts];
        v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v10, "item")}];
        [v3 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v3;
}

- (void)imageForContact:(id)a3 imageUpdateBlock:(id)a4
{
  v27[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CNContactSuggestionsViewController *)self avatarRenderer];

  if (!v8)
  {
    v9 = [CNAvatarImageRenderer alloc];
    v10 = [CNAvatarImageRendererSettings defaultSettingsWithCacheSize:8];
    v11 = [(CNAvatarImageRenderer *)v9 initWithSettings:v10];
    [(CNContactSuggestionsViewController *)self setAvatarRenderer:v11];
  }

  [(CNContactSuggestionsViewController *)self avatarSize];
  v13 = v12;
  v15 = v14;
  v16 = [(CNContactSuggestionsViewController *)self traitCollection];
  v17 = [v16 layoutDirection] == 1;

  v18 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v18 scale];
  v20 = [CNAvatarImageRenderingScope scopeWithPointSize:v17 scale:0 rightToLeft:v13 style:v15, v19];

  v21 = [(CNContactSuggestionsViewController *)self avatarRenderer];
  v27[0] = v6;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __71__CNContactSuggestionsViewController_imageForContact_imageUpdateBlock___block_invoke;
  v25[3] = &unk_1E74E4E10;
  v26 = v7;
  v23 = v7;
  v24 = [v21 renderAvatarsForContacts:v22 scope:v20 imageHandler:v25];
}

void __71__CNContactSuggestionsViewController_imageForContact_imageUpdateBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E6996818] mainThreadScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__CNContactSuggestionsViewController_imageForContact_imageUpdateBlock___block_invoke_2;
  v7[3] = &unk_1E74E6DD0;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 performBlock:v7];
}

- (NSDirectionalEdgeInsets)sectionInsets
{
  v2 = 10.0;
  v3 = 10.0;
  v4 = 10.0;
  v5 = 20.0;
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (double)verticalSpacing
{
  if ([(CNContactSuggestionsViewController *)self useAccessibleLayout])
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 4.0;
  }

  v4 = [(CNContactSuggestionsViewController *)self contacts];
  v5 = ceil([v4 count] / v3);

  [(CNContactSuggestionsViewController *)self sectionInsets];
  v7 = v6;
  v9 = v8;
  if (v5 <= 1.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = (v5 + -1.0) * 20.0;
  }

  if ([(CNContactSuggestionsViewController *)self useAccessibleLayout])
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v10;
  }

  return v9 + v7 + v11;
}

- (double)estimatedHeaderHeight
{
  v2 = +[CNUIFontRepository contactSuggestionsHeaderTitleFont];
  [v2 lineHeight];
  v4 = ceil(v3);

  return v4 + 15.0 + 5.0;
}

- (CGSize)avatarSize
{
  v3 = +[CNUIFontRepository contactSuggestionsNameFont];
  [v3 lineHeight];
  v5 = ceil(v4 + v4) + 3.0;

  if ([(CNContactSuggestionsViewController *)self useAccessibleLayout])
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 4.0;
  }

  v7 = [(CNContactSuggestionsViewController *)self contacts];
  v8 = ceil([v7 count] / v6);

  LODWORD(v7) = [(CNContactSuggestionsViewController *)self useAccessibleLayout];
  v9 = [(CNContactSuggestionsViewController *)self view];
  [v9 bounds];
  Height = CGRectGetHeight(v27);
  v11 = -(v5 + 10.0);
  if (v7)
  {
    v11 = -44.0;
  }

  v12 = Height + v11 * v8;
  [(CNContactSuggestionsViewController *)self verticalSpacing];
  v14 = v12 - v13;
  [(CNContactSuggestionsViewController *)self estimatedHeaderHeight];
  v16 = (v14 - v15) / v8;

  v17 = 0.0;
  if (v6 <= 1.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = (v6 + -1.0) * 20.0;
  }

  if (![(CNContactSuggestionsViewController *)self useAccessibleLayout])
  {
    v17 = v18;
  }

  v19 = [(CNContactSuggestionsViewController *)self view];
  [v19 bounds];
  v20 = CGRectGetWidth(v28) - v17;
  [(CNContactSuggestionsViewController *)self horizontalSectionPadding];
  v22 = (v20 - v21) / v6;

  if (v22 >= v16)
  {
    v22 = v16;
  }

  v23 = [(CNContactSuggestionsViewController *)self useAccessibleLayout];
  v24 = 80.0;
  if (v23)
  {
    v24 = 60.0;
  }

  if (v22 < v24)
  {
    v24 = v22;
  }

  v25 = v24;
  result.height = v25;
  result.width = v24;
  return result;
}

- (double)estimatedHeight
{
  v3 = *MEMORY[0x1E6996530];
  v4 = [(CNContactSuggestionsViewController *)self contacts];
  LOBYTE(v3) = (*(v3 + 16))(v3, v4);

  result = 0.0;
  if ((v3 & 1) == 0)
  {
    if ([(CNContactSuggestionsViewController *)self useAccessibleLayout])
    {
      v6 = 1.0;
    }

    else
    {
      v6 = 4.0;
    }

    v7 = [(CNContactSuggestionsViewController *)self contacts];
    v8 = ceil([v7 count] / v6);

    v9 = +[CNUIFontRepository contactSuggestionsNameFont];
    [v9 lineHeight];
    v11 = ceil(v10 + v10) + 3.0;

    v12 = fmax(v11, 104.0);
    if (v6 <= 1.0)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = (v6 + -1.0) * 20.0;
    }

    v14 = [(CNContactSuggestionsViewController *)self view];
    [v14 bounds];
    v15 = CGRectGetWidth(v22) - v13;
    [(CNContactSuggestionsViewController *)self horizontalSectionPadding];
    v17 = (v15 - v16) / v6;

    v18 = v11 + fmin(v17, 80.0) + 10.0;
    if ([(CNContactSuggestionsViewController *)self useAccessibleLayout])
    {
      v18 = v12;
    }

    [(CNContactSuggestionsViewController *)self verticalSpacing];
    v20 = v19 + v18 * v8;
    [(CNContactSuggestionsViewController *)self estimatedHeaderHeight];
    return v21 + v20;
  }

  return result;
}

- (void)setContacts:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_contacts != v5)
  {
    objc_storeStrong(&self->_contacts, a3);
    v6 = [(CNContactSuggestionsViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(CNContactSuggestionsViewController *)self delegate];
      [(CNContactSuggestionsViewController *)self estimatedHeight];
      [v8 suggestionsController:self didChangeToHeight:?];
    }

    v9 = [(CNContactSuggestionsViewController *)self identifiersToIndexPath];
    [v9 removeAllObjects];

    if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0 && [(NSArray *)v5 count])
    {
      v10 = 0;
      do
      {
        v11 = [(NSArray *)v5 objectAtIndexedSubscript:v10];
        v12 = [MEMORY[0x1E696AC88] indexPathForRow:v10 inSection:0];
        v13 = [(CNContactSuggestionsViewController *)self identifiersToIndexPath];
        v14 = [v11 identifier];
        [v13 setObject:v12 forKeyedSubscript:v14];

        ++v10;
      }

      while (v10 < [(NSArray *)v5 count]);
    }

    v15 = objc_alloc_init(MEMORY[0x1E69955A0]);
    if ([(NSArray *)v5 count])
    {
      v19[0] = @"Main";
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
      [v15 appendSectionsWithIdentifiers:v16];

      v17 = [(CNContactSuggestionsViewController *)self contacts];
      [v15 appendItemsWithIdentifiers:v17];
    }

    v18 = [(CNContactSuggestionsViewController *)self diffableDataSource];
    [v18 applySnapshot:v15 animatingDifferences:1 completion:0];
  }
}

- (id)filterResults:(id)a3
{
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__CNContactSuggestionsViewController_filterResults___block_invoke;
  v13[3] = &unk_1E74E7880;
  v13[4] = self;
  v4 = [a3 _cn_filter:v13];
  [(CNContactSuggestionsViewController *)self fetchIgnoredContactIdentifiersIfNeeded];
  v5 = [(CNContactSuggestionsViewController *)self ignoredContactIdentifiers];
  if (v5)
  {
    v6 = v5;
    v7 = [(CNContactSuggestionsViewController *)self ignoredContactIdentifiers];
    v8 = [v7 count];

    if (v8)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __52__CNContactSuggestionsViewController_filterResults___block_invoke_2;
      v12[3] = &unk_1E74E7880;
      v12[4] = self;
      v9 = [v4 _cn_filter:v12];

      v4 = v9;
    }
  }

  v10 = [v4 _cn_take:8];

  return v10;
}

uint64_t __52__CNContactSuggestionsViewController_filterResults___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [*(a1 + 32) delegate];
    v7 = [v6 suggestionsController:*(a1 + 32) canSelectContact:v3];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

uint64_t __52__CNContactSuggestionsViewController_filterResults___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 ignoredContactIdentifiers];
  v5 = [v3 identifier];

  LODWORD(v3) = [v4 containsObject:v5];
  return v3 ^ 1;
}

- (void)fetchIgnoredContactIdentifiersIfNeeded
{
  v3 = [(CNContactSuggestionsViewController *)self ignoredContactIdentifiers];
  if (!v3 || (v4 = v3, -[CNContactSuggestionsViewController ignoredContactIdentifiers](self, "ignoredContactIdentifiers"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v4, !v6))
  {
    v7 = [(CNContactSuggestionsViewController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v10 = [(CNContactSuggestionsViewController *)self delegate];
      v9 = [v10 ignoredContactIdentifiersForSuggestionsController:self];
      [(CNContactSuggestionsViewController *)self setIgnoredContactIdentifiers:v9];
    }
  }
}

- (void)fetchContacts
{
  v3 = [(CNContactSuggestionsViewController *)self overrideSuggestedContacts];

  if (v3)
  {
    v15 = [(CNContactSuggestionsViewController *)self overrideSuggestedContacts];
    v4 = [(CNContactSuggestionsViewController *)self filterResults:v15];
    [(CNContactSuggestionsViewController *)self setContacts:v4];
  }

  else
  {
    [(CNContactSuggestionsViewController *)self fetchIgnoredContactIdentifiersIfNeeded];
    v5 = [(CNContactSuggestionsViewController *)self ignoredContactIdentifiers];
    if (v5)
    {
      v6 = [(CNContactSuggestionsViewController *)self ignoredContactIdentifiers];
      v7 = [v6 count];
    }

    else
    {
      v7 = 0;
    }

    v8 = self->_contactSuggester;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__29366;
    v25 = __Block_byref_object_dispose__29367;
    v26 = 0;
    v9 = [MEMORY[0x1E69966E8] currentEnvironment];
    v10 = [v9 schedulerProvider];
    v11 = [v10 immediateScheduler];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __51__CNContactSuggestionsViewController_fetchContacts__block_invoke;
    v16[3] = &unk_1E74E6120;
    v19 = &v21;
    v12 = v8;
    v20 = v7;
    v17 = v12;
    v18 = self;
    [v11 performBlock:v16 qualityOfService:4];

    if (v22[5])
    {
      v13 = v22[5];
    }

    else
    {
      v13 = MEMORY[0x1E695E0F0];
    }

    v14 = [(CNContactSuggestionsViewController *)self filterResults:v13];
    [(CNContactSuggestionsViewController *)self setContacts:v14];

    _Block_object_dispose(&v21, 8);
  }
}

void __51__CNContactSuggestionsViewController_fetchContacts__block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v6 = [*(a1 + 40) interactionDomains];
  v7 = [v2 contactSuggestionsWithMaxSuggestions:v3 + 20 contactKeysTofetch:v5 interactionDomains:v6 appleUsersOnly:0];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (void)fetchContactsIfNeeded
{
  v3 = [(CNContactSuggestionsViewController *)self contacts];

  if (!v3)
  {

    [(CNContactSuggestionsViewController *)self fetchContacts];
  }
}

- (void)setAllowsMultiSelection:(BOOL)a3
{
  if (self->_allowsMultiSelection != a3)
  {
    v3 = a3;
    self->_allowsMultiSelection = a3;
    v5 = [(CNContactSuggestionsViewController *)self collectionView];

    if (v5)
    {
      v6 = [(CNContactSuggestionsViewController *)self collectionView];
      [v6 setAllowsMultipleSelection:v3];
    }
  }
}

- (void)buildCollectionView
{
  v3 = [(CNContactSuggestionsViewController *)self compositionalLayout];
  [(CNContactSuggestionsViewController *)self setLayout:v3];

  v4 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v5 = [(CNContactSuggestionsViewController *)self view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(CNContactSuggestionsViewController *)self layout];
  v15 = [v4 initWithFrame:v14 collectionViewLayout:{v7, v9, v11, v13}];

  [v15 setDelegate:self];
  objc_initWeak(&location, self);
  v16 = objc_alloc(MEMORY[0x1E69DC820]);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __57__CNContactSuggestionsViewController_buildCollectionView__block_invoke;
  v25[3] = &unk_1E74E3D18;
  objc_copyWeak(&v26, &location);
  v17 = [v16 initWithCollectionView:v15 cellProvider:v25];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __57__CNContactSuggestionsViewController_buildCollectionView__block_invoke_3;
  v24[3] = &unk_1E74E3D40;
  v24[4] = self;
  [v17 setSupplementaryViewProvider:v24];
  [(CNContactSuggestionsViewController *)self setDiffableDataSource:v17];
  [v15 setDataSource:v17];
  [v15 setClipsToBounds:0];
  v18 = objc_opt_class();
  v19 = +[CNContactSuggestionsCollectionViewCell cellIdentifier];
  [v15 registerClass:v18 forCellWithReuseIdentifier:v19];

  v20 = objc_opt_class();
  v21 = +[CNContactSuggestionsViewSectionHeader reuseIdentifier];
  [v15 registerClass:v20 forSupplementaryViewOfKind:*MEMORY[0x1E69DDC08] withReuseIdentifier:v21];

  v22 = +[CNUIColorRepository contactSuggestionsBackgroundColor];
  [v15 setBackgroundColor:v22];

  [v15 setScrollEnabled:0];
  [v15 setAllowsMultipleSelection:{-[CNContactSuggestionsViewController allowsMultiSelection](self, "allowsMultiSelection")}];
  v23 = [(CNContactSuggestionsViewController *)self view];
  [v23 addSubview:v15];

  [v15 setAutoresizingMask:18];
  [(CNContactSuggestionsViewController *)self setCollectionView:v15];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

id __57__CNContactSuggestionsViewController_buildCollectionView__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = +[CNContactSuggestionsCollectionViewCell cellIdentifier];
  v9 = [v6 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v5];

  v10 = [WeakRetained contacts];
  v11 = [v5 item];

  v12 = [v10 objectAtIndexedSubscript:v11];

  v13 = [MEMORY[0x1E695CD80] stringFromContact:v12 style:0];
  [v9 setDisplayString:v13];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __57__CNContactSuggestionsViewController_buildCollectionView__block_invoke_2;
  v16[3] = &unk_1E74E3CF0;
  v14 = v9;
  v17 = v14;
  [WeakRetained imageForContact:v12 imageUpdateBlock:v16];

  return v14;
}

id __57__CNContactSuggestionsViewController_buildCollectionView__block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*MEMORY[0x1E69DDC08] == v8)
  {
    v11 = +[CNContactSuggestionsViewSectionHeader reuseIdentifier];
    v10 = [v7 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:v11 forIndexPath:v9];

    v12 = [*(a1 + 32) suggestionsHeaderTitle];
    v13 = [v10 titleLabel];
    [v13 setText:v12];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E69DC7E8]);
  }

  return v10;
}

- (id)compositionalLayout
{
  v27[1] = *MEMORY[0x1E69E9840];
  if ([(CNContactSuggestionsViewController *)self useAccessibleLayout])
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.25;
  }

  if ([(CNContactSuggestionsViewController *)self useAccessibleLayout])
  {
    v4 = 96.0;
  }

  else
  {
    v4 = 140.0;
  }

  v5 = MEMORY[0x1E6995588];
  v6 = [MEMORY[0x1E6995558] fractionalWidthDimension:v3];
  v7 = [MEMORY[0x1E6995558] estimatedDimension:v4];
  v8 = [v5 sizeWithWidthDimension:v6 heightDimension:v7];

  v9 = MEMORY[0x1E6995588];
  v10 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v11 = [MEMORY[0x1E6995558] estimatedDimension:v4];
  v12 = [v9 sizeWithWidthDimension:v10 heightDimension:v11];

  v13 = [MEMORY[0x1E6995578] itemWithLayoutSize:v8];
  [v13 setContentInsets:{10.0, 5.0, 10.0, 5.0}];
  v14 = MEMORY[0x1E6995568];
  v27[0] = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v16 = [v14 horizontalGroupWithLayoutSize:v12 subitems:v15];

  v17 = [MEMORY[0x1E6995580] sectionWithGroup:v16];
  [(CNContactSuggestionsViewController *)self sectionInsets];
  [v17 setContentInsets:?];
  v18 = MEMORY[0x1E6995588];
  v19 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v20 = [MEMORY[0x1E6995558] estimatedDimension:44.0];
  v21 = [v18 sizeWithWidthDimension:v19 heightDimension:v20];

  v22 = [MEMORY[0x1E6995548] boundarySupplementaryItemWithLayoutSize:v21 elementKind:*MEMORY[0x1E69DDC08] alignment:1];
  [v22 setContentInsets:{0.0, 3.0, 0.0, 3.0}];
  v26 = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  [v17 setBoundarySupplementaryItems:v23];

  v24 = [objc_alloc(MEMORY[0x1E69DC808]) initWithSection:v17];

  return v24;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = CNContactSuggestionsViewController;
  v7 = a4;
  [(CNContactSuggestionsViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__CNContactSuggestionsViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E74E3CC8;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

void __89__CNContactSuggestionsViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    v5 = *(a1 + 32);
    v6 = [v5 view];
    [v6 bounds];
    [v4 suggestionsController:v5 didChangeToHeight:CGRectGetHeight(v9)];
  }

  v7 = [*(a1 + 32) collectionView];
  [v7 reloadData];
}

- (void)traitCollectionDidChange:(id)a3
{
  v16.receiver = self;
  v16.super_class = CNContactSuggestionsViewController;
  v4 = a3;
  [(CNContactSuggestionsViewController *)&v16 traitCollectionDidChange:v4];
  v5 = [(CNContactSuggestionsViewController *)self traitCollection:v16.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  if (v6 != v7)
  {
    v8 = [(CNContactSuggestionsViewController *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(CNContactSuggestionsViewController *)self delegate];
      [(CNContactSuggestionsViewController *)self estimatedHeight];
      [v10 suggestionsController:self didChangeToHeight:?];
    }

    v11 = [(CNContactSuggestionsViewController *)self compositionalLayout];
    [(CNContactSuggestionsViewController *)self setLayout:v11];

    v12 = [(CNContactSuggestionsViewController *)self collectionView];
    v13 = [(CNContactSuggestionsViewController *)self layout];
    [v12 setCollectionViewLayout:v13 animated:1];

    v14 = [(CNContactSuggestionsViewController *)self collectionView];
    [v14 setContentOffset:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];

    v15 = [(CNContactSuggestionsViewController *)self collectionView];
    [v15 reloadData];
  }
}

- (BOOL)useAccessibleLayout
{
  v9[5] = *MEMORY[0x1E69E9840];
  v2 = [(CNContactSuggestionsViewController *)self traitCollection];
  v3 = *MEMORY[0x1E69DDC38];
  v9[0] = *MEMORY[0x1E69DDC40];
  v9[1] = v3;
  v4 = *MEMORY[0x1E69DDC28];
  v9[2] = *MEMORY[0x1E69DDC30];
  v9[3] = v4;
  v9[4] = *MEMORY[0x1E69DDC20];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:5];
  v6 = [v2 preferredContentSizeCategory];
  v7 = [v5 containsObject:v6];

  return v7;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = CNContactSuggestionsViewController;
  [(CNContactSuggestionsViewController *)&v8 viewDidLoad];
  v3 = +[CNUIColorRepository contactSuggestionsBackgroundColor];
  v4 = [(CNContactSuggestionsViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(CNContactSuggestionsViewController *)self view];
  [v5 setInsetsLayoutMarginsFromSafeArea:0];

  v6 = [(CNContactSuggestionsViewController *)self view];
  [v6 setClipsToBounds:1];

  v7 = [(CNContactSuggestionsViewController *)self view];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(CNContactSuggestionsViewController *)self buildCollectionView];
  [(CNContactSuggestionsViewController *)self fetchContactsIfNeeded];
}

- (CNContactSuggestionsViewController)init
{
  v9.receiver = self;
  v9.super_class = CNContactSuggestionsViewController;
  v2 = [(CNContactSuggestionsViewController *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(get_PSContactSuggesterClass[0]());
    contactSuggester = v2->_contactSuggester;
    v2->_contactSuggester = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    identifiersToIndexPath = v2->_identifiersToIndexPath;
    v2->_identifiersToIndexPath = v5;

    v7 = v2;
  }

  return v2;
}

+ (id)os_log
{
  if (os_log_cn_once_token_2 != -1)
  {
    dispatch_once(&os_log_cn_once_token_2, &__block_literal_global_29397);
  }

  v3 = os_log_cn_once_object_2;

  return v3;
}

uint64_t __44__CNContactSuggestionsViewController_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "SuggestionsViewController");
  v1 = os_log_cn_once_object_2;
  os_log_cn_once_object_2 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end