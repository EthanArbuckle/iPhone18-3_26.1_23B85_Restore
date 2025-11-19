@interface NotesAssistantSnippetController
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (NotesAssistantSnippetController)initWithAceObject:(id)a3 error:(id *)a4;
- (double)desiredHeightForWidth:(double)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)sashItem;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)loadView;
@end

@implementation NotesAssistantSnippetController

- (NotesAssistantSnippetController)initWithAceObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(UICollectionViewFlowLayout);
  [v7 setMinimumLineSpacing:0.0];
  [v7 setMinimumInteritemSpacing:0.0];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v7 setSectionInset:{UIEdgeInsetsZero.top, left, bottom, right}];
  v41.receiver = self;
  v41.super_class = NotesAssistantSnippetController;
  v11 = [(NotesAssistantSnippetController *)&v41 initWithCollectionViewLayout:v7];
  v12 = v11;
  if (v11)
  {
    v34 = a4;
    [(NotesAssistantSnippetController *)v11 setDefaultViewInsets:UIEdgeInsetsZero.top, left, bottom, right];
    v13 = [[NoteContext alloc] initForMainContext];
    htmlContext = v12->_htmlContext;
    v12->_htmlContext = v13;

    v15 = objc_alloc_init(NSMutableArray);
    notes = v12->_notes;
    v12->_notes = v15;

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = v6;
    obj = [v6 notes];
    v17 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v38;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v37 + 1) + 8 * i);
          v22 = +[ICNoteContext sharedContext];
          v23 = [v22 managedObjectContext];
          v24 = [(NoteContext *)v12->_htmlContext managedObjectContext];
          v25 = [NotesAssistantUtilities searchIndexableNoteForObject:v21 modernNoteContext:v23 htmlNoteContext:v24];

          if (v25)
          {
            [(NSMutableArray *)v12->_notes addObject:v25];
          }
        }

        v18 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v18);
    }

    if ([(NSMutableArray *)v12->_notes count])
    {
      if ([(NSMutableArray *)v12->_notes count]== &dword_0 + 1)
      {
        v26 = [(NSMutableArray *)v12->_notes objectAtIndexedSubscript:0];
        v27 = [ICNoteListSortUtilities dateForCurrentSortTypeForNote:v26 folderNoteSortType:0];
        v28 = [v27 ic_briefFormattedDate];
        [(NotesAssistantSnippetController *)v12 setSubtitle:v28];

        v29 = [[NotesAssistantSingleNoteViewCell alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
        viewCell = v12->_viewCell;
        v12->_viewCell = v29;
      }

      else
      {
        v31 = [[NotesAssistantNotesListViewCellWithImage alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
        v32 = v12->_viewCell;
        v12->_viewCell = v31;
      }
    }

    else
    {

      if (v34)
      {
        [NSError errorWithDomain:SiriUISnippetPluginErrorDomain code:101 userInfo:0];
        *v34 = v12 = 0;
      }

      else
      {
        v12 = 0;
      }
    }

    v6 = v35;
  }

  return v12;
}

- (void)loadView
{
  v9.receiver = self;
  v9.super_class = NotesAssistantSnippetController;
  [(NotesAssistantSnippetController *)&v9 loadView];
  v3 = [(NotesAssistantSnippetController *)self collectionView];
  v4 = +[UIColor clearColor];
  [v3 setBackgroundColor:v4];

  [v3 setScrollEnabled:0];
  v5 = objc_opt_class();
  v6 = +[NotesAssistantSingleNoteViewCell reuseIdentifier];
  [v3 registerClass:v5 forCellWithReuseIdentifier:v6];

  v7 = objc_opt_class();
  v8 = +[NotesAssistantNotesListViewCellWithImage reuseIdentifier];
  [v3 registerClass:v7 forCellWithReuseIdentifier:v8];
}

- (double)desiredHeightForWidth:(double)a3
{
  [(NotesAssistantSnippetController *)self loadViewIfNeeded];
  v4 = [(NotesAssistantSnippetController *)self collectionView];
  v5 = [v4 collectionViewLayout];
  [v5 collectionViewContentSize];
  v7 = v6;

  return v7;
}

- (id)sashItem
{
  v2 = [SiriUISashItem alloc];
  v3 = ICNotesAppBundleIdentifier();
  v4 = [v2 initWithApplicationBundleIdentifier:v3];

  return v4;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = [(NotesAssistantSnippetController *)self delegate];
  [v7 siriViewControllerExpectedWidth:self];
  width = v8;

  v10 = [v6 row];
  if (v10 >= [(NSMutableArray *)self->_notes count])
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else
  {
    viewCell = self->_viewCell;
    v12 = ICProtocolCast();
    v13 = -[NSMutableArray objectAtIndexedSubscript:](self->_notes, "objectAtIndexedSubscript:", [v6 row]);
    [v12 setNote:v13];

    if ([(NSMutableArray *)self->_notes count]== &dword_0 + 1)
    {
      [(SiriUIContentCollectionViewCell *)self->_viewCell sizeThatFits:width, 1.79769313e308];
      width = v14;
      height = v15;
    }

    else
    {
      height = 64.0;
    }
  }

  v17 = width;
  v18 = height;
  result.height = v18;
  result.width = v17;
  return result;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = -[NSMutableArray objectAtIndexedSubscript:](self->_notes, "objectAtIndexedSubscript:", [v5 row]);
  v7 = [(NSMutableArray *)self->_notes count];
  v8 = [(NotesAssistantSnippetController *)self collectionView];
  v9 = &off_18260;
  if (v7 != &dword_0 + 1)
  {
    v9 = off_18258;
  }

  v10 = [(__objc2_class *)*v9 reuseIdentifier];
  v11 = [v8 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:v5];

  [v11 setNote:v6];
  [v11 setKeylineType:{4 * (objc_msgSend(v5, "row") != -[NSMutableArray count](self->_notes, "count") - 1)}];

  return v11;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v16 = a4;
  v5 = [v16 row];
  v6 = v5 >= [(NSMutableArray *)self->_notes count];
  v7 = v16;
  if (!v6)
  {
    v8 = -[NSMutableArray objectAtIndexedSubscript:](self->_notes, "objectAtIndexedSubscript:", [v16 row]);
    v9 = ICProtocolCast();

    if (!v9)
    {
LABEL_10:

      v7 = v16;
      goto LABEL_11;
    }

    objc_opt_class();
    v10 = ICDynamicCast();
    objc_opt_class();
    v11 = ICDynamicCast();
    v12 = v11;
    if (v10)
    {
      v13 = [ICAppURLUtilities appURLForNote:v10];
    }

    else
    {
      if (!v11)
      {
LABEL_9:

        goto LABEL_10;
      }

      v13 = NotesAppURLForNote();
    }

    v14 = v13;
    if (v13)
    {
      v15 = [(NotesAssistantSnippetController *)self delegate];
      [v15 siriViewController:self openURL:v14 completion:0];
    }

    goto LABEL_9;
  }

LABEL_11:
}

@end