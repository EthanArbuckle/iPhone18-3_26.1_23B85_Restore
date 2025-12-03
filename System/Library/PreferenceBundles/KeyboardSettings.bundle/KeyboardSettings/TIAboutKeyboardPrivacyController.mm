@interface TIAboutKeyboardPrivacyController
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (TIAboutKeyboardPrivacyController)initWithGroupSpecifier:(id)specifier asHeader:(BOOL)header inListController:(id)controller;
- (void)aboutDonePressed;
- (void)addPrivacyLinkViewIfNecessaryToHeaderView:(id)view forSection:(int64_t)section;
- (void)dealloc;
- (void)setSpecifier:(id)specifier;
@end

@implementation TIAboutKeyboardPrivacyController

- (TIAboutKeyboardPrivacyController)initWithGroupSpecifier:(id)specifier asHeader:(BOOL)header inListController:(id)controller
{
  v11.receiver = self;
  v11.super_class = TIAboutKeyboardPrivacyController;
  v8 = [(TIAboutKeyboardPrivacyController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_listController = controller;
    v8->_asHeader = header;
    [(TIAboutKeyboardPrivacyController *)v8 setSpecifier:specifier];
  }

  return v9;
}

- (void)dealloc
{
  [(UITextView *)self->_infoTextView removeFromSuperview];

  v3.receiver = self;
  v3.super_class = TIAboutKeyboardPrivacyController;
  [(TIAboutKeyboardPrivacyController *)&v3 dealloc];
}

- (void)setSpecifier:(id)specifier
{
  self->_specifier = specifier;
  v5 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"APP_KEYBOARDS_INFO", &stru_49C80, @"Keyboard"];
  v6 = [NSString localizedStringWithFormat:@"\n%@ %@", v5, [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"APP_KEYBOARDS_INFO_LINK", &stru_49C80, @"Keyboard"]];
  asHeader = [(TIAboutKeyboardPrivacyController *)self asHeader];
  v8 = &PSHeaderDetailTextGroupKey;
  if (!asHeader)
  {
    v8 = &PSFooterTextGroupKey;
  }

  v9 = *v8;
  specifier = [(TIAboutKeyboardPrivacyController *)self specifier];

  [(PSSpecifier *)specifier setProperty:v6 forKey:v9];
}

- (void)addPrivacyLinkViewIfNecessaryToHeaderView:(id)view forSection:(int64_t)section
{
  if ([(TIAboutKeyboardPrivacyController *)self specifier])
  {
    v7 = [(PSListController *)[(TIAboutKeyboardPrivacyController *)self listController] indexPathForSpecifier:[(TIAboutKeyboardPrivacyController *)self specifier]];
    v8 = -[TIAboutKeyboardPrivacyController asHeader](self, "asHeader") ? [view detailTextLabel] : objc_msgSend(view, "textLabel");
    v9 = v8;
    if ([v7 section] == section)
    {
      superview = [(UITextView *)self->_infoTextView superview];
      if (superview != [view contentView])
      {
        [view layoutIfNeeded];
        [v9 setHidden:1];
        [(UITextView *)self->_infoTextView removeFromSuperview];

        v11 = [UITextView alloc];
        [v9 frame];
        self->_infoTextView = [v11 initWithFrame:?];
        [(UITextView *)self->_infoTextView setBackgroundColor:+[UIColor clearColor]];
        [(UITextView *)self->_infoTextView setShowsVerticalScrollIndicator:0];
        [(UITextView *)self->_infoTextView setEditable:0];
        [(UITextView *)self->_infoTextView setSelectable:1];
        [(UITextView *)self->_infoTextView setScrollEnabled:0];
        [(UITextView *)self->_infoTextView setTextContainerInset:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
        [(NSTextContainer *)[(UITextView *)self->_infoTextView textContainer] setLineFragmentPadding:0.0];
        [(UITextView *)self->_infoTextView setContentInsetAdjustmentBehavior:3];
        [objc_msgSend(view "contentView")];
        v12 = [objc_msgSend(v9 "attributedText")];
        v13 = [objc_msgSend(v9 "text")];
        v15 = v14;
        [v12 addAttribute:NSForegroundColorAttributeName value:+[UIColor systemBlueColor](UIColor range:{"systemBlueColor"), v13, v14}];
        [v12 addAttribute:NSLinkAttributeName value:+[NSURL URLWithString:](NSURL range:{"URLWithString:", &stru_49C80), v13, v15}];
        [v12 addAttribute:NSUnderlineStyleAttributeName value:&__kCFBooleanFalse range:{v13, v15}];
        [v12 removeAttribute:NSParagraphStyleAttributeName range:{0, objc_msgSend(v12, "length")}];
        [(UITextView *)self->_infoTextView setAttributedText:v12];
        [(UITextView *)self->_infoTextView setDelegate:self];
        [v9 frame];
        v17 = v16;
        v19 = v18;
        [(UITextView *)self->_infoTextView sizeThatFits:v20, 1.79769313e308];
        v22 = v21;
        v24 = v23;
        if ([UIApp userInterfaceLayoutDirection] == &dword_0 + 1)
        {
          [objc_msgSend(view "textLabel")];
          MaxX = CGRectGetMaxX(v29);
          [(UITextView *)self->_infoTextView frame];
          v17 = MaxX - v26;
        }

        infoTextView = self->_infoTextView;

        [(UITextView *)infoTextView setFrame:v17, v19, v22, v24];
      }
    }
  }
}

- (void)aboutDonePressed
{
  listController = [(TIAboutKeyboardPrivacyController *)self listController];

  [(PSListController *)listController dismissViewControllerAnimated:1 completion:0];
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v7 = [(TIAboutKeyboardPrivacyController *)self specifier:view];
  if (v7)
  {
    v8 = objc_alloc_init(UIViewController);
    [v8 setTitle:{-[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"ABOUT_APP_KEYBOARDS_TITLE", &stru_49C80, @"Keyboard"}];
    [objc_msgSend(v8 "navigationItem")];
    v9 = [[UITextView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v9 setText:{-[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"ABOUT_APP_KEYBOARDS_INFO_TEXT", &stru_49C80, @"Keyboard"}];
    [v9 setFont:{+[UIFont preferredFontForTextStyle:](UIFont, "preferredFontForTextStyle:", UIFontTextStyleBody)}];
    [v9 setEditable:0];
    [v9 setContentInsetAdjustmentBehavior:3];
    [v8 setView:v9];
    v10 = [[UINavigationController alloc] initWithRootViewController:v8];
    [v10 setModalPresentationStyle:2];
    [(PSListController *)[(TIAboutKeyboardPrivacyController *)self listController] presentViewController:v10 animated:1 completion:0];
  }

  return v7 == 0;
}

@end