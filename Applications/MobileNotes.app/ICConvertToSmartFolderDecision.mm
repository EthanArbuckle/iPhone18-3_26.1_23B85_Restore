@interface ICConvertToSmartFolderDecision
+ (BOOL)canShowConvertToSmartFolder:(id)folder;
- (ICConvertToSmartFolderDecision)initWithSourceFolder:(id)folder;
- (void)makeDecision;
@end

@implementation ICConvertToSmartFolderDecision

- (ICConvertToSmartFolderDecision)initWithSourceFolder:(id)folder
{
  folderCopy = folder;
  v9.receiver = self;
  v9.super_class = ICConvertToSmartFolderDecision;
  v6 = [(ICConvertToSmartFolderDecision *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceFolder, folder);
    [(ICConvertToSmartFolderDecision *)v7 makeDecision];
  }

  return v7;
}

- (void)makeDecision
{
  sourceFolder = [(ICConvertToSmartFolderDecision *)self sourceFolder];
  isSystemFolder = [sourceFolder isSystemFolder];

  selfCopy = self;
  if (isSystemFolder || (-[ICConvertToSmartFolderDecision sourceFolder](self, "sourceFolder"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isSmartFolder], v6, selfCopy = self, v7))
  {
    [(ICConvertToSmartFolderDecision *)selfCopy setType:1];
    selfCopy4 = self;
    v9 = 0;
LABEL_4:

    [(ICConvertToSmartFolderDecision *)selfCopy4 setAdditionalStep:v9];
    return;
  }

  sourceFolder2 = [(ICConvertToSmartFolderDecision *)self sourceFolder];
  isSharedViaICloud = [sourceFolder2 isSharedViaICloud];

  if (isSharedViaICloud)
  {
    [(ICConvertToSmartFolderDecision *)self setType:2];
    selfCopy4 = self;
    v9 = 3;
    goto LABEL_4;
  }

  sourceFolder3 = [(ICConvertToSmartFolderDecision *)self sourceFolder];
  visibleSubFolders = [sourceFolder3 visibleSubFolders];
  v14 = [visibleSubFolders count];

  if (v14)
  {
    [(ICConvertToSmartFolderDecision *)self setType:2];
    selfCopy4 = self;
    v9 = 4;
    goto LABEL_4;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  sourceFolder4 = [(ICConvertToSmartFolderDecision *)self sourceFolder];
  visibleNotesIncludingChildFolders = [sourceFolder4 visibleNotesIncludingChildFolders];

  v17 = [visibleNotesIncludingChildFolders countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    v20 = 6;
    while (2)
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(visibleNotesIncludingChildFolders);
        }

        v22 = *(*(&v26 + 1) + 8 * i);
        if ([v22 isPasswordProtected])
        {
          goto LABEL_23;
        }

        if ([v22 isSharedViaICloud])
        {
          v20 = 5;
LABEL_23:
          [(ICConvertToSmartFolderDecision *)self setType:2];
          [(ICConvertToSmartFolderDecision *)self setAdditionalStep:v20];

          return;
        }
      }

      v18 = [visibleNotesIncludingChildFolders countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  sourceFolder5 = [(ICConvertToSmartFolderDecision *)self sourceFolder];
  parent = [sourceFolder5 parent];

  [(ICConvertToSmartFolderDecision *)self setType:0];
  if (parent)
  {
    v25 = 2;
  }

  else
  {
    v25 = 1;
  }

  [(ICConvertToSmartFolderDecision *)self setAdditionalStep:v25];
}

+ (BOOL)canShowConvertToSmartFolder:(id)folder
{
  folderCopy = folder;
  v4 = [[ICConvertToSmartFolderDecision alloc] initWithSourceFolder:folderCopy];

  LOBYTE(folderCopy) = [(ICConvertToSmartFolderDecision *)v4 type]!= 1;
  return folderCopy;
}

@end