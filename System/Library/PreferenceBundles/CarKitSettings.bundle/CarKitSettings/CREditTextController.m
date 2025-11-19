@interface CREditTextController
- (double)_insetHeightForTextView:(id)a3;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_text:(id)a3;
- (id)_textCell;
- (id)specifiers;
- (void)_setText:(id)a3 withSpecifier:(id)a4;
- (void)suspend;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
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
  v3 = [(CREditTextController *)self _textCell];
  v4 = [v3 textView];
  v5 = [v4 text];

  [(CREditTextController *)self _setText:v5 withSpecifier:0];
  v6.receiver = self;
  v6.super_class = CREditTextController;
  [(CREditTextController *)&v6 suspend];
}

- (id)_textCell
{
  v3 = [(CREditTextController *)self specifierForID:@"CREditTextSpecifierIdentifier"];
  v4 = [(CREditTextController *)self table];
  v5 = [(CREditTextController *)self indexPathForSpecifier:v3];
  v6 = [v4 cellForRowAtIndexPath:v5];

  return v6;
}

- (double)_insetHeightForTextView:(id)a3
{
  v4 = a3;
  PSTextViewInsets();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(CREditTextController *)self table];
  [v13 bounds];
  v15 = v14 - v8 - v12;

  [v4 sizeThatFits:{v15, 1.79769313e308}];
  v17 = v16;

  return v10 + v6 + v17;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CREditTextController *)self specifierAtIndexPath:v7];
  v9 = [v8 identifier];
  v10 = [v9 isEqualToString:@"CREditTextSpecifierIdentifier"];

  if (v10 && ([v8 propertyForKey:PSTableCellKey], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v11;
    v13 = [v11 textView];
    [(CREditTextController *)self _insetHeightForTextView:v13];
    v15 = v14;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = CREditTextController;
    [(CREditTextController *)&v18 tableView:v6 heightForRowAtIndexPath:v7];
    v15 = v16;
  }

  return v15;
}

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v13 = [(CREditTextController *)self _textCell];
  [v13 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CREditTextController *)self _insetHeightForTextView:v4];
  v12 = v11;

  [v13 setFrame:{v6, v8, v10, v12}];
  [v13 setNeedsLayout];
}

- (void)textViewDidEndEditing:(id)a3
{
  v4 = [a3 text];
  [(CREditTextController *)self _setText:v4 withSpecifier:0];
}

- (void)_setText:(id)a3 withSpecifier:(id)a4
{
  v5 = a3;
  if (v5)
  {
    v8 = v5;
    v6 = [(CREditTextController *)self specifier];
    v7 = v6;
    if (v6)
    {
      [v6 performSetterWithValue:v8];
    }

    v5 = v8;
  }
}

- (id)_text:(id)a3
{
  v3 = [(CREditTextController *)self specifier];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 performGetter];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end