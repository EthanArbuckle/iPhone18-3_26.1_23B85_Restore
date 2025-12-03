@interface ICSETableViewItem
+ (void)configureTableViewNibs:(id)nibs;
- (BOOL)isChecked;
- (BOOL)isEqual:(id)equal;
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
    folderListItem = [(ICSETableViewItem *)self folderListItem];
    v6 = [folderListItem level] - 1;

    v3 = v6 * 33.0 + 53.0;
  }

  else
  {
    folder = [(ICSETableViewItem *)self folder];
    if (folder)
    {

      v3 = 53.0;
    }

    else
    {
      isAccountFolder = [(ICSETableViewItem *)self isAccountFolder];
      v3 = 53.0;
      if (!isAccountFolder)
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

  note = [(ICSETableViewItem *)self note];
  isPasswordProtected = [note isPasswordProtected];

  if (isPasswordProtected)
  {
    goto LABEL_8;
  }

  note2 = [(ICSETableViewItem *)self note];
  if (!note2)
  {
    goto LABEL_5;
  }

  v6 = note2;
  note3 = [(ICSETableViewItem *)self note];
  isEditable = [note3 isEditable];

  if (!isEditable)
  {
LABEL_8:
    isSystemFolder = 0;
  }

  else
  {
LABEL_5:
    folder = [(ICSETableViewItem *)self folder];
    if (folder)
    {
      v10 = folder;
      folder2 = [(ICSETableViewItem *)self folder];
      if ([folder2 canMoveAddOrDeleteContents])
      {
        isSystemFolder = 1;
      }

      else
      {
        folder3 = [(ICSETableViewItem *)self folder];
        isSystemFolder = [folder3 isSystemFolder];
      }
    }

    else
    {
      isSystemFolder = 1;
    }
  }

  return isSystemFolder & 1;
}

- (BOOL)isChecked
{
  note = [(ICSETableViewItem *)self note];
  selectedNote = [(ICSETableViewItem *)self selectedNote];
  selectedFolder = [(ICSETableViewItem *)self selectedFolder];
  account = [(ICSETableViewItem *)self account];
  if (selectedNote)
  {
    v7 = selectedNote;
  }

  else
  {
    v7 = selectedFolder;
  }

  account2 = [v7 account];
  note2 = [(ICSETableViewItem *)self note];

  if (note2)
  {
    v10 = note;
    v11 = selectedNote;
LABEL_6:
    LOBYTE(isAccountPicker) = [v10 isEqual:v11];
    goto LABEL_7;
  }

  account3 = [(ICSETableViewItem *)self account];
  if (!account3)
  {
    LOBYTE(isAccountPicker) = 0;
    goto LABEL_7;
  }

  v15 = account3;
  isAccountPicker = [(ICSETableViewItem *)self isAccountPicker];

  if (isAccountPicker)
  {
    v10 = account2;
    v11 = account;
    goto LABEL_6;
  }

LABEL_7:

  return isAccountPicker;
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

  note = [(ICSETableViewItem *)self note];
  isPasswordProtected = [note isPasswordProtected];

  if (isPasswordProtected)
  {
    v7 = @"lock.fill";
LABEL_7:
    v4 = [UIImage ic_smallSystemImageNamed:v7];
    goto LABEL_8;
  }

  note2 = [(ICSETableViewItem *)self note];
  if ([note2 isSharedViaICloud])
  {
    noteContainer = [(ICSETableViewItem *)self noteContainer];
    isSharedViaICloud = [noteContainer isSharedViaICloud];

    if ((isSharedViaICloud & 1) == 0)
    {
      v7 = @"person.crop.circle";
      goto LABEL_7;
    }
  }

  else
  {
  }

  folder = [(ICSETableViewItem *)self folder];
  if (folder)
  {

LABEL_19:
    folder2 = [(ICSETableViewItem *)self folder];
    systemImageName = [folder2 systemImageName];
    v15 = systemImageName;
    if (systemImageName)
    {
      v16 = systemImageName;
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
    note = [(ICSETableViewItem *)self note];

    if (note)
    {
      return @"SearchResultNoteCell";
    }

    folder = [(ICSETableViewItem *)self folder];
    if (folder || [(ICSETableViewItem *)self isSystemPaperFolder])
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    note = [v5 note];
    note2 = [(ICSETableViewItem *)self note];
    if (note == note2)
    {
      v10 = 1;
    }

    else
    {
      folder = [v5 folder];
      folder2 = [(ICSETableViewItem *)self folder];
      v10 = folder == folder2;
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
  note = [(ICSETableViewItem *)self note];
  v4 = [note hash];
  folder = [(ICSETableViewItem *)self folder];
  v6 = [folder hash];
  v14 = sub_1000111EC(v4, v7, v8, v9, v10, v11, v12, v13, v6);

  return v14;
}

+ (void)configureTableViewNibs:(id)nibs
{
  nibsCopy = nibs;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [UINib nibWithNibName:@"ICSETableViewCell" bundle:v4];

  [nibsCopy registerNib:v5 forCellReuseIdentifier:@"NoteCell"];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [UINib nibWithNibName:@"ICSEFolderSearchResultTableViewCell" bundle:v6];

  [nibsCopy registerNib:v7 forCellReuseIdentifier:@"SearchResultFolderCell"];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [UINib nibWithNibName:@"ICSENoteSearchResultTableViewCell" bundle:v8];

  [nibsCopy registerNib:v9 forCellReuseIdentifier:@"SearchResultNoteCell"];
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