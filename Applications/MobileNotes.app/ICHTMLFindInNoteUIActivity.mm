@interface ICHTMLFindInNoteUIActivity
- (ICHTMLFindInNoteUIActivity)initWithDelegate:(id)delegate;
- (ICHTMLFindInNoteUIActivityDelegate)delegate;
- (id)activityTitle;
- (void)performActivity;
@end

@implementation ICHTMLFindInNoteUIActivity

- (ICHTMLFindInNoteUIActivity)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = ICHTMLFindInNoteUIActivity;
  v5 = [(ICHTMLFindInNoteUIActivity *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = v6;
  }

  return v6;
}

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Find in Note" value:&stru_100661CF0 table:0];

  return v3;
}

- (void)performActivity
{
  delegate = [(ICHTMLFindInNoteUIActivity *)self delegate];
  if (delegate)
  {
    v4 = delegate;
    delegate2 = [(ICHTMLFindInNoteUIActivity *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate3 = [(ICHTMLFindInNoteUIActivity *)self delegate];
      [delegate3 performFindInNoteUIActivity:self];
    }
  }
}

- (ICHTMLFindInNoteUIActivityDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end