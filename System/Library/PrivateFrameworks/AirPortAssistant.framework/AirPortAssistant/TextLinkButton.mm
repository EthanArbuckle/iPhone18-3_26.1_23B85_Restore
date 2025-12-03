@interface TextLinkButton
- (TextLinkButton)initWithCoder:(id)coder;
- (TextLinkButton)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)tapAction:(id)action;
@end

@implementation TextLinkButton

- (TextLinkButton)initWithFrame:(CGRect)frame
{
  v33.receiver = self;
  v33.super_class = TextLinkButton;
  v3 = [(TextLinkButton *)&v33 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v3;
  if (v3)
  {
    objc_msgSend_addTarget_action_forControlEvents_(v3, v4, v3, sel_tapAction_, 64);
    v8 = objc_msgSend_systemBlueColor(MEMORY[0x277D75348], v6, v7);
    objc_msgSend_setTitleColor_forState_(v5, v9, v8, 0);
    v12 = objc_msgSend_titleLabel(v5, v10, v11);
    objc_msgSend_setTextAlignment_(v12, v13, 1);
    v16 = objc_msgSend_titleLabel(v5, v14, v15);
    v19 = objc_msgSend_boldSystemFontOfSize_(MEMORY[0x277D74300], v17, v18, 14.0);
    objc_msgSend_setFont_(v16, v20, v19);
    v23 = objc_msgSend_titleLabel(v5, v21, v22);
    objc_msgSend_setLineBreakMode_(v23, v24, 0);
    v27 = objc_msgSend_titleLabel(v5, v25, v26);
    v30 = objc_msgSend_clearColor(MEMORY[0x277D75348], v28, v29);
    objc_msgSend_setBackgroundColor_(v27, v31, v30);
  }

  return v5;
}

- (TextLinkButton)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = TextLinkButton;
  v3 = [(TextLinkButton *)&v7 initWithCoder:coder];
  v5 = v3;
  if (v3)
  {
    objc_msgSend_addTarget_action_forControlEvents_(v3, v4, v3, sel_tapAction_, 64);
  }

  return v5;
}

- (void)dealloc
{
  objc_msgSend_setUrlString_(self, a2, 0);
  v3.receiver = self;
  v3.super_class = TextLinkButton;
  [(TextLinkButton *)&v3 dealloc];
}

- (void)tapAction:(id)action
{
  v4 = objc_msgSend_urlString(self, a2, action);
  if (objc_msgSend_length(v4, v5, v6))
  {
    v9 = objc_msgSend_sharedApplication(MEMORY[0x277D75128], v7, v8);
    v10 = MEMORY[0x277CBEBC0];
    v13 = objc_msgSend_urlString(self, v11, v12);
    v15 = objc_msgSend_URLWithString_(v10, v14, v13);
    if (objc_msgSend_canOpenURL_(v9, v16, v15))
    {
      objc_msgSend_dictionary(MEMORY[0x277CBEAC0], v17, v18);

      MEMORY[0x2821F9670](v9, sel_openURL_options_completionHandler_, v15);
    }
  }

  else if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_delegate;

    MEMORY[0x2821F9670](delegate, sel_handleTextLinkTap, v19);
  }
}

@end