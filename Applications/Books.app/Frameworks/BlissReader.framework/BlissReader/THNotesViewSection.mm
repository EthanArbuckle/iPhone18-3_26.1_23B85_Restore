@interface THNotesViewSection
- (BOOL)isEqual:(id)equal;
- (void)dealloc;
@end

@implementation THNotesViewSection

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THNotesViewSection;
  [(THNotesViewSection *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = v4;
    mTitle = self->mTitle;
    if (mTitle == [v4 title] || (LODWORD(v4) = -[NSString isEqualToString:](self->mTitle, "isEqualToString:", objc_msgSend(v5, "title")), v4))
    {
      mChapterTitle = self->mChapterTitle;
      if (mChapterTitle == [v5 chapterTitle] || (LODWORD(v4) = -[NSString isEqualToString:](self->mChapterTitle, "isEqualToString:", objc_msgSend(v5, "chapterTitle")), v4))
      {
        mNotes = self->mNotes;
        if (mNotes == [v5 notes])
        {
          LOBYTE(v4) = 1;
        }

        else
        {
          v9 = self->mNotes;
          notes = [v5 notes];

          LOBYTE(v4) = [(NSArray *)v9 isEqualToArray:notes];
        }
      }
    }
  }

  return v4;
}

@end