@interface ICSETableViewItem
+ (void)configureTableViewNibs:(id)a3;
- (BOOL)isChecked;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSelectable;
- (ICFolder)selectedFolder;
- (ICNote)selectedNote;
- (ICNoteContainer)noteContainer;
- (NSString)cellIdentifier;
- (UIEdgeInsets)seperatorInsets;
- (UIImage)image;
- (double)cellHeight;
- (unint64_t)hash;
@end

@implementation ICSETableViewItem

- (double)cellHeight
{
  v3 = sub_1000032EC();
  if ([(ICSETableViewItem *)self isSearchResult]|| ICAccessibilityAccessibilityLargerTextSizesEnabled())
  {
    return UITableViewAutomaticDimension;
  }

  return v3;
}

- (UIEdgeInsets)seperatorInsets
{
  if ([(ICSETableViewItem *)self isSearchResult])
  {
    v3 = 52.0;
  }

  else if ([(ICSETableViewItem *)self isInFolderList]&& ([(ICSETableViewItem *)self folderListItem], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [(ICSETableViewItem *)self folderListItem];
    v6 = [v5 level] - 1;

    v3 = v6 * 33.0 + 53.0;
  }

  else
  {
    v7 = [(ICSETableViewItem *)self folder];
    if (v7)
    {

      v3 = 53.0;
    }

    else
    {
      v8 = [(ICSETableViewItem *)self isAccountFolder];
      v3 = 53.0;
      if (!v8)
      {
        v3 = 41.0;
      }
    }
  }

  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  result.right = v11;
  result.bottom = v10;
  result.left = v3;
  result.top = v9;
  return result;
}

- (BOOL)isSelectable
{
  if ([(ICSETableViewItem *)self isHeader])
  {
    goto LABEL_8;
  }

  v3 = [(ICSETableViewItem *)self note];
  v4 = [v3 isPasswordProtected];

  if (v4)
  {
    goto LABEL_8;
  }

  v5 = [(ICSETableViewItem *)self note];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v5;
  v7 = [(ICSETableViewItem *)self note];
  v8 = [v7 isEditable];

  if (!v8)
  {
LABEL_8:
    v12 = 0;
  }

  else
  {
LABEL_5:
    v9 = [(ICSETableViewItem *)self folder];
    if (v9)
    {
      v10 = v9;
      v11 = [(ICSETableViewItem *)self folder];
      if ([v11 canMoveAddOrDeleteContents])
      {
        v12 = 1;
      }

      else
      {
        v14 = [(ICSETableViewItem *)self folder];
        v12 = [v14 isSystemFolder];
      }
    }

    else
    {
      v12 = 1;
    }
  }

  return v12 & 1;
}

- (BOOL)isChecked
{
  v3 = [(ICSETableViewItem *)self note];
  v4 = [(ICSETableViewItem *)self selectedNote];
  v5 = [(ICSETableViewItem *)self selectedFolder];
  v6 = [(ICSETableViewItem *)self account];
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  v8 = [v7 account];
  v9 = [(ICSETableViewItem *)self note];

  if (v9)
  {
    v10 = v3;
    v11 = v4;
LABEL_6:
    LOBYTE(v12) = [v10 isEqual:v11];
    goto LABEL_7;
  }

  v14 = [(ICSETableViewItem *)self account];
  if (!v14)
  {
    LOBYTE(v12) = 0;
    goto LABEL_7;
  }

  v15 = v14;
  v12 = [(ICSETableViewItem *)self isAccountPicker];

  if (v12)
  {
    v10 = v8;
    v11 = v6;
    goto LABEL_6;
  }

LABEL_7:

  return v12;
}

- (UIImage)image
{
  if ([(ICSETableViewItem *)self isHeader])
  {
    goto LABEL_2;
  }

  if ([(ICSETableViewItem *)self isChecked])
  {
    v4 = [UIImage systemImageNamed:@"checkmark"];
    goto LABEL_8;
  }

  v5 = [(ICSETableViewItem *)self note];
  v6 = [v5 isPasswordProtected];

  if (v6)
  {
    v7 = @"lock.fill";
LABEL_7:
    v4 = [UIImage ic_smallSystemImageNamed:v7];
    goto LABEL_8;
  }

  v9 = [(ICSETableViewItem *)self note];
  if ([v9 isSharedViaICloud])
  {
    v10 = [(ICSETableViewItem *)self noteContainer];
    v11 = [v10 isSharedViaICloud];

    if ((v11 & 1) == 0)
    {
      v7 = @"person.crop.circle";
      goto LABEL_7;
    }
  }

  else
  {
  }

  v12 = [(ICSETableViewItem *)self folder];
  if (v12)
  {

LABEL_19:
    v13 = [(ICSETableViewItem *)self folder];
    v14 = [v13 systemImageName];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = +[ICFolder defaultSystemImageName];
    }

    v17 = v16;

    v3 = [UIImage ic_systemImageNamed:v17];

    goto LABEL_9;
  }

  if ([(ICSETableViewItem *)self isAccountFolder])
  {
    goto LABEL_19;
  }

  if (![(ICSETableViewItem *)self isSystemPaperFolder])
  {
LABEL_2:
    v3 = 0;
    goto LABEL_9;
  }

  v4 = [UIImage ic_systemImageNamed:@"quicknote"];
LABEL_8:
  v3 = v4;
LABEL_9:

  return v3;
}

- (NSString)cellIdentifier
{
  if ([(ICSETableViewItem *)self isSearchResult])
  {
    v3 = [(ICSETableViewItem *)self note];

    if (v3)
    {
      return @"SearchResultNoteCell";
    }

    v5 = [(ICSETableViewItem *)self folder];
    if (v5 || [(ICSETableViewItem *)self isSystemPaperFolder])
    {

      return @"SearchResultFolderCell";
    }

    if ([(ICSETableViewItem *)self isAccountFolder])
    {
      return @"SearchResultFolderCell";
    }

    v6 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000B3A58(v6);
    }
  }

  return @"NoteCell";
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 note];
    v7 = [(ICSETableViewItem *)self note];
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      v8 = [v5 folder];
      v9 = [(ICSETableViewItem *)self folder];
      v10 = v8 == v9;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(ICSETableViewItem *)self note];
  v4 = [v3 hash];
  v5 = [(ICSETableViewItem *)self folder];
  v6 = [v5 hash];
  v14 = sub_1000111EC(v4, v7, v8, v9, v10, v11, v12, v13, v6);

  return v14;
}

+ (void)configureTableViewNibs:(id)a3
{
  v3 = a3;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [UINib nibWithNibName:@"ICSETableViewCell" bundle:v4];

  [v3 registerNib:v5 forCellReuseIdentifier:@"NoteCell"];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [UINib nibWithNibName:@"ICSEFolderSearchResultTableViewCell" bundle:v6];

  [v3 registerNib:v7 forCellReuseIdentifier:@"SearchResultFolderCell"];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [UINib nibWithNibName:@"ICSENoteSearchResultTableViewCell" bundle:v8];

  [v3 registerNib:v9 forCellReuseIdentifier:@"SearchResultNoteCell"];
}

- (ICNote)selectedNote
{
  WeakRetained = objc_loadWeakRetained(&self->_selectedNote);

  return WeakRetained;
}

- (ICFolder)selectedFolder
{
  WeakRetained = objc_loadWeakRetained(&self->_selectedFolder);

  return WeakRetained;
}

- (ICNoteContainer)noteContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_noteContainer);

  return WeakRetained;
}

@end