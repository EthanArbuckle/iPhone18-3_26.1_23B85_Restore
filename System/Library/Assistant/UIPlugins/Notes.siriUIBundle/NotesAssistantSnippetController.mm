@interface NotesAssistantSnippetController
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (NotesAssistantSnippetController)initWithAceObject:(id)object error:(id *)error;
- (double)desiredHeightForWidth:(double)width;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)sashItem;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)loadView;
@end

@implementation NotesAssistantSnippetController

- (NotesAssistantSnippetController)initWithAceObject:(id)object error:(id *)error
{
  objectCopy = object;
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
    errorCopy = error;
    [(NotesAssistantSnippetController *)v11 setDefaultViewInsets:UIEdgeInsetsZero.top, left, bottom, right];
    initForMainContext = [[NoteContext alloc] initForMainContext];
    htmlContext = v12->_htmlContext;
    v12->_htmlContext = initForMainContext;

    v15 = objc_alloc_init(NSMutableArray);
    notes = v12->_notes;
    v12->_notes = v15;

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = objectCopy;
    obj = [objectCopy notes];
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
          managedObjectContext = [v22 managedObjectContext];
          managedObjectContext2 = [(NoteContext *)v12->_htmlContext managedObjectContext];
          v25 = [NotesAssistantUtilities searchIndexableNoteForObject:v21 modernNoteContext:managedObjectContext htmlNoteContext:managedObjectContext2];

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
        ic_briefFormattedDate = [v27 ic_briefFormattedDate];
        [(NotesAssistantSnippetController *)v12 setSubtitle:ic_briefFormattedDate];

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

      if (errorCopy)
      {
        [NSError errorWithDomain:SiriUISnippetPluginErrorDomain code:101 userInfo:0];
        *errorCopy = v12 = 0;
      }

      else
      {
        v12 = 0;
      }
    }

    objectCopy = v35;
  }

  return v12;
}

- (void)loadView
{
  v9.receiver = self;
  v9.super_class = NotesAssistantSnippetController;
  [(NotesAssistantSnippetController *)&v9 loadView];
  collectionView = [(NotesAssistantSnippetController *)self collectionView];
  v4 = +[UIColor clearColor];
  [collectionView setBackgroundColor:v4];

  [collectionView setScrollEnabled:0];
  v5 = objc_opt_class();
  v6 = +[NotesAssistantSingleNoteViewCell reuseIdentifier];
  [collectionView registerClass:v5 forCellWithReuseIdentifier:v6];

  v7 = objc_opt_class();
  v8 = +[NotesAssistantNotesListViewCellWithImage reuseIdentifier];
  [collectionView registerClass:v7 forCellWithReuseIdentifier:v8];
}

- (double)desiredHeightForWidth:(double)width
{
  [(NotesAssistantSnippetController *)self loadViewIfNeeded];
  collectionView = [(NotesAssistantSnippetController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout collectionViewContentSize];
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

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(NotesAssistantSnippetController *)self delegate];
  [delegate siriViewControllerExpectedWidth:self];
  width = v8;

  v10 = [pathCopy row];
  if (v10 >= [(NSMutableArray *)self->_notes count])
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else
  {
    viewCell = self->_viewCell;
    v12 = ICProtocolCast();
    v13 = -[NSMutableArray objectAtIndexedSubscript:](self->_notes, "objectAtIndexedSubscript:", [pathCopy row]);
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

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[NSMutableArray objectAtIndexedSubscript:](self->_notes, "objectAtIndexedSubscript:", [pathCopy row]);
  v7 = [(NSMutableArray *)self->_notes count];
  collectionView = [(NotesAssistantSnippetController *)self collectionView];
  v9 = &off_18260;
  if (v7 != &dword_0 + 1)
  {
    v9 = off_18258;
  }

  reuseIdentifier = [(__objc2_class *)*v9 reuseIdentifier];
  v11 = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:pathCopy];

  [v11 setNote:v6];
  [v11 setKeylineType:{4 * (objc_msgSend(pathCopy, "row") != -[NSMutableArray count](self->_notes, "count") - 1)}];

  return v11;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  v6 = v5 >= [(NSMutableArray *)self->_notes count];
  v7 = pathCopy;
  if (!v6)
  {
    v8 = -[NSMutableArray objectAtIndexedSubscript:](self->_notes, "objectAtIndexedSubscript:", [pathCopy row]);
    v9 = ICProtocolCast();

    if (!v9)
    {
LABEL_10:

      v7 = pathCopy;
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
      delegate = [(NotesAssistantSnippetController *)self delegate];
      [delegate siriViewController:self openURL:v14 completion:0];
    }

    goto LABEL_9;
  }

LABEL_11:
}

@end