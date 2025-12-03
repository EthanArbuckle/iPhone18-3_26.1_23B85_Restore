@interface ICVirtualSmartFolderItemIdentifier
- (int64_t)enforcedNoteContainerViewMode;
- (int64_t)overrideNoteContainerViewMode;
- (void)setOverrideNoteContainerViewMode:(int64_t)mode;
@end

@implementation ICVirtualSmartFolderItemIdentifier

- (void)setOverrideNoteContainerViewMode:(int64_t)mode
{
  v4 = [NSNumber numberWithInteger:mode];
  objc_setAssociatedObject(self, &unk_100531B38, v4, 1);
}

- (int64_t)overrideNoteContainerViewMode
{
  v2 = objc_getAssociatedObject(self, &unk_100531B38);
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

- (int64_t)enforcedNoteContainerViewMode
{
  if ([(ICVirtualSmartFolderItemIdentifier *)self overrideNoteContainerViewMode]== -1)
  {
    type = [(ICVirtualSmartFolderItemIdentifier *)self type];
    v5 = [type isEqual:ICVirtualSmartFolderItemIdentifierTypeSystemPaper];

    if (v5)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  else
  {

    return [(ICVirtualSmartFolderItemIdentifier *)self overrideNoteContainerViewMode];
  }
}

@end