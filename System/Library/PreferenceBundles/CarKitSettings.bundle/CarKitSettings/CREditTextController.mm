@interface CREditTextController
- (double)_insetHeightForTextView:(id)view;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_text:(id)_text;
- (id)_textCell;
- (id)specifiers;
- (void)_setText:(id)text withSpecifier:(id)specifier;
- (void)suspend;
- (void)textViewDidChange:(id)change;
- (void)textViewDidEndEditing:(id)editing;
@end

@implementation CREditTextController

- (id)specifiers
{
  v3 = +[NSMutableArray array];
  v4 = +[PSSpecifier emptyGroupSpecifier];
  [v3 addObject:v4];

  v5 = [PSSpecifier preferenceSpecifierNamed:&stru_6FD90 target:self set:"_setText:withSpecifier:" get:"_text:" detail:0 cell:14 edit:0];
  [v5 setIdentifier:@"CREditTextSpecifierIdentifier"];
  [v5 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v3 addObject:v5];
  v6 = OBJC_IVAR___PSListController__specifiers;
  v7 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v3;
  v8 = v3;

  v9 = *&self->PSListController_opaque[v6];
  v10 = v9;

  return v9;
}

- (void)suspend
{
  _textCell = [(CREditTextController *)self _textCell];
  textView = [_textCell textView];
  text = [textView text];

  [(CREditTextController *)self _setText:text withSpecifier:0];
  v6.receiver = self;
  v6.super_class = CREditTextController;
  [(CREditTextController *)&v6 suspend];
}

- (id)_textCell
{
  v3 = [(CREditTextController *)self specifierForID:@"CREditTextSpecifierIdentifier"];
  table = [(CREditTextController *)self table];
  v5 = [(CREditTextController *)self indexPathForSpecifier:v3];
  v6 = [table cellForRowAtIndexPath:v5];

  return v6;
}

- (double)_insetHeightForTextView:(id)view
{
  viewCopy = view;
  PSTextViewInsets();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  table = [(CREditTextController *)self table];
  [table bounds];
  v15 = v14 - v8 - v12;

  [viewCopy sizeThatFits:{v15, 1.79769313e308}];
  v17 = v16;

  return v10 + v6 + v17;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(CREditTextController *)self specifierAtIndexPath:pathCopy];
  identifier = [v8 identifier];
  v10 = [identifier isEqualToString:@"CREditTextSpecifierIdentifier"];

  if (v10 && ([v8 propertyForKey:PSTableCellKey], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v11;
    textView = [v11 textView];
    [(CREditTextController *)self _insetHeightForTextView:textView];
    v15 = v14;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = CREditTextController;
    [(CREditTextController *)&v18 tableView:viewCopy heightForRowAtIndexPath:pathCopy];
    v15 = v16;
  }

  return v15;
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  _textCell = [(CREditTextController *)self _textCell];
  [_textCell frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CREditTextController *)self _insetHeightForTextView:changeCopy];
  v12 = v11;

  [_textCell setFrame:{v6, v8, v10, v12}];
  [_textCell setNeedsLayout];
}

- (void)textViewDidEndEditing:(id)editing
{
  text = [editing text];
  [(CREditTextController *)self _setText:text withSpecifier:0];
}

- (void)_setText:(id)text withSpecifier:(id)specifier
{
  textCopy = text;
  if (textCopy)
  {
    v8 = textCopy;
    specifier = [(CREditTextController *)self specifier];
    v7 = specifier;
    if (specifier)
    {
      [specifier performSetterWithValue:v8];
    }

    textCopy = v8;
  }
}

- (id)_text:(id)_text
{
  specifier = [(CREditTextController *)self specifier];
  v4 = specifier;
  if (specifier)
  {
    performGetter = [specifier performGetter];
  }

  else
  {
    performGetter = 0;
  }

  return performGetter;
}

@end