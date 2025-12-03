@interface EKEventURLAndNotesInlineEditItem
- (BOOL)isSaveable;
- (BOOL)saveAndDismissWithForce:(BOOL)force;
- (EKEventURLAndNotesInlineEditItem)init;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (void)dealloc;
- (void)reset;
- (void)setCalendarItem:(id)item store:(id)store;
- (void)setDelegate:(id)delegate;
- (void)setSelectedResponder:(id)responder;
@end

@implementation EKEventURLAndNotesInlineEditItem

- (EKEventURLAndNotesInlineEditItem)init
{
  v9.receiver = self;
  v9.super_class = EKEventURLAndNotesInlineEditItem;
  v2 = [(EKEventURLAndNotesInlineEditItem *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(EKEventURLInlineEditItem);
    urlEditItem = v2->_urlEditItem;
    v2->_urlEditItem = v3;

    v5 = objc_alloc_init(EKEventNotesInlineEditItem);
    notesEditItem = v2->_notesEditItem;
    v2->_notesEditItem = v5;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__contentSizeCategoryChanged name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = EKEventURLAndNotesInlineEditItem;
  [(EKEventURLAndNotesInlineEditItem *)&v4 dealloc];
}

- (void)reset
{
  [(EKEventURLInlineEditItem *)self->_urlEditItem reset];
  notesEditItem = self->_notesEditItem;

  [(EKEventNotesInlineEditItem *)notesEditItem reset];
}

- (void)setCalendarItem:(id)item store:(id)store
{
  v8.receiver = self;
  v8.super_class = EKEventURLAndNotesInlineEditItem;
  storeCopy = store;
  itemCopy = item;
  [(EKEventEditItem *)&v8 setCalendarItem:itemCopy store:storeCopy];
  [(EKEventEditItem *)self->_urlEditItem setCalendarItem:itemCopy store:storeCopy, v8.receiver, v8.super_class];
  [(EKEventEditItem *)self->_notesEditItem setCalendarItem:itemCopy store:storeCopy];
}

- (void)setDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = EKEventURLAndNotesInlineEditItem;
  delegateCopy = delegate;
  [(EKCalendarItemEditItem *)&v5 setDelegate:delegateCopy];
  [(EKCalendarItemEditItem *)self->_urlEditItem setDelegate:delegateCopy, v5.receiver, v5.super_class];
  [(EKCalendarItemEditItem *)self->_notesEditItem setDelegate:delegateCopy];
}

- (void)setSelectedResponder:(id)responder
{
  v5.receiver = self;
  v5.super_class = EKEventURLAndNotesInlineEditItem;
  responderCopy = responder;
  [(EKCalendarItemEditItem *)&v5 setSelectedResponder:responderCopy];
  [(EKCalendarItemEditItem *)self->_urlEditItem setSelectedResponder:responderCopy, v5.receiver, v5.super_class];
  [(EKCalendarItemEditItem *)self->_notesEditItem setSelectedResponder:responderCopy];
}

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width
{
  if (!index)
  {
    v4 = &OBJC_IVAR___EKEventURLAndNotesInlineEditItem__urlEditItem;
    goto LABEL_5;
  }

  if (index == 1)
  {
    v4 = &OBJC_IVAR___EKEventURLAndNotesInlineEditItem__notesEditItem;
LABEL_5:
    [*(&self->super.super.super.isa + *v4) defaultCellHeightForSubitemAtIndex:0 forWidth:width];
    return result;
  }

  return 0.0;
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  if (!index)
  {
    v5 = &OBJC_IVAR___EKEventURLAndNotesInlineEditItem__urlEditItem;
LABEL_5:
    v6 = [*(&self->super.super.super.isa + *v5) cellForSubitemAtIndex:{0, v3}];

    return v6;
  }

  if (index == 1)
  {
    v5 = &OBJC_IVAR___EKEventURLAndNotesInlineEditItem__notesEditItem;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

- (BOOL)saveAndDismissWithForce:(BOOL)force
{
  forceCopy = force;
  v5 = [(EKEventURLInlineEditItem *)self->_urlEditItem saveAndDismissWithForce:?];
  return v5 | [(EKEventNotesInlineEditItem *)self->_notesEditItem saveAndDismissWithForce:forceCopy];
}

- (BOOL)isSaveable
{
  if ([(EKEventURLInlineEditItem *)self->_urlEditItem isSaveable])
  {
    return 1;
  }

  notesEditItem = self->_notesEditItem;

  return [(EKEventNotesInlineEditItem *)notesEditItem isSaveable];
}

@end