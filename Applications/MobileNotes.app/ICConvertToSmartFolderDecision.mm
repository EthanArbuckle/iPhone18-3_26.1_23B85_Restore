@interface ICConvertToSmartFolderDecision
+ (BOOL)canShowConvertToSmartFolder:(id)a3;
- (ICConvertToSmartFolderDecision)initWithSourceFolder:(id)a3;
- (void)makeDecision;
@end

@implementation ICConvertToSmartFolderDecision

- (ICConvertToSmartFolderDecision)initWithSourceFolder:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICConvertToSmartFolderDecision;
  v6 = [(ICConvertToSmartFolderDecision *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceFolder, a3);
    [(ICConvertToSmartFolderDecision *)v7 makeDecision];
  }

  return v7;
}

- (void)makeDecision
{
  v3 = [(ICConvertToSmartFolderDecision *)self sourceFolder];
  v4 = [v3 isSystemFolder];

  v5 = self;
  if (v4 || (-[ICConvertToSmartFolderDecision sourceFolder](self, "sourceFolder"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isSmartFolder], v6, v5 = self, v7))
  {
    [(ICConvertToSmartFolderDecision *)v5 setType:1];
    v8 = self;
    v9 = 0;
LABEL_4:

    [(ICConvertToSmartFolderDecision *)v8 setAdditionalStep:v9];
    return;
  }

  v10 = [(ICConvertToSmartFolderDecision *)self sourceFolder];
  v11 = [v10 isSharedViaICloud];

  if (v11)
  {
    [(ICConvertToSmartFolderDecision *)self setType:2];
    v8 = self;
    v9 = 3;
    goto LABEL_4;
  }

  v12 = [(ICConvertToSmartFolderDecision *)self sourceFolder];
  v13 = [v12 visibleSubFolders];
  v14 = [v13 count];

  if (v14)
  {
    [(ICConvertToSmartFolderDecision *)self setType:2];
    v8 = self;
    v9 = 4;
    goto LABEL_4;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = [(ICConvertToSmartFolderDecision *)self sourceFolder];
  v16 = [v15 visibleNotesIncludingChildFolders];

  v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(v16);
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

      v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v23 = [(ICConvertToSmartFolderDecision *)self sourceFolder];
  v24 = [v23 parent];

  [(ICConvertToSmartFolderDecision *)self setType:0];
  if (v24)
  {
    v25 = 2;
  }

  else
  {
    v25 = 1;
  }

  [(ICConvertToSmartFolderDecision *)self setAdditionalStep:v25];
}

+ (BOOL)canShowConvertToSmartFolder:(id)a3
{
  v3 = a3;
  v4 = [[ICConvertToSmartFolderDecision alloc] initWithSourceFolder:v3];

  LOBYTE(v3) = [(ICConvertToSmartFolderDecision *)v4 type]!= 1;
  return v3;
}

@end