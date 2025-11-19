@interface PKPeerPaymentSiriSnippetContentView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKPeerPaymentSiriSnippetContentView)initWithBalloonView:(id)a3;
- (double)_balloonMaxWidthForBoundsWidth:(double)a3;
- (id)_memoBalloonViewWithText:(id)a3;
- (void)layoutSubviews;
- (void)setMemoText:(id)a3;
- (void)setRecipient:(id)a3;
- (void)setToFieldText:(id)a3;
@end

@implementation PKPeerPaymentSiriSnippetContentView

- (PKPeerPaymentSiriSnippetContentView)initWithBalloonView:(id)a3
{
  v5 = a3;
  v26.receiver = self;
  v26.super_class = PKPeerPaymentSiriSnippetContentView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v9 = [(PKPeerPaymentSiriSnippetContentView *)&v26 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (v9)
  {
    v10 = +[UIColor clearColor];
    [(PKPeerPaymentSiriSnippetContentView *)v9 setBackgroundColor:v10];

    v11 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    toLabel = v9->_toLabel;
    v9->_toLabel = v11;

    v13 = v9->_toLabel;
    v14 = +[UIColor labelColor];
    [(UILabel *)v13 setTextColor:v14];

    v15 = v9->_toLabel;
    v16 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody addingSymbolicTraits:2 options:0];
    v17 = [UIFont fontWithDescriptor:v16 size:0.0];
    [(UILabel *)v15 setFont:v17];

    [(UILabel *)v9->_toLabel setNumberOfLines:1];
    v18 = v9->_toLabel;
    v19 = +[UIColor clearColor];
    [(UILabel *)v18 setBackgroundColor:v19];

    [(PKPeerPaymentSiriSnippetContentView *)v9 addSubview:v9->_toLabel];
    objc_storeStrong(&v9->_peerPaymentBalloonView, a3);
    [(PKPeerPaymentSiriSnippetContentView *)v9 addSubview:v5];
    v20 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    toFieldStackView = v9->_toFieldStackView;
    v9->_toFieldStackView = v20;

    [(UIStackView *)v9->_toFieldStackView setAxis:0];
    [(UIStackView *)v9->_toFieldStackView setSpacing:16.0];
    LODWORD(v22) = 1148846080;
    [(UILabel *)v9->_toLabel setContentCompressionResistancePriority:0 forAxis:v22];
    LODWORD(v23) = 1148846080;
    [(UILabel *)v9->_toLabel setContentCompressionResistancePriority:1 forAxis:v23];
    LODWORD(v24) = 1132068864;
    [(UILabel *)v9->_toLabel setContentHuggingPriority:0 forAxis:v24];
    [(UIStackView *)v9->_toFieldStackView addArrangedSubview:v9->_toLabel];
    [(PKPeerPaymentSiriSnippetContentView *)v9 addSubview:v9->_toFieldStackView];
  }

  return v9;
}

- (void)setRecipient:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CNContactStore);
  v6 = [v4 contactIdentifier];

  v40 = v6;
  v7 = [NSArray arrayWithObjects:&v40 count:1];
  v8 = [CNContact predicateForContactsWithIdentifiers:v7];

  v39 = CNContactThumbnailImageDataKey;
  v9 = [NSArray arrayWithObjects:&v39 count:1];
  v34 = 0;
  v10 = [v5 unifiedContactsMatchingPredicate:v8 keysToFetch:v9 error:&v34];
  v11 = v34;
  if (v11)
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentSiriSnippetContentView Error fetching contacts: %@", buf, 0xCu);
    }
  }

  else
  {
    v12 = [v10 firstObject];
    if (v12)
    {
      v33 = [UIImage _applicationIconImageForBundleIdentifier:@"com.apple.MobileSMS" format:2];
      v13 = objc_alloc_init(off_10000CBD0());
      [v13 setCropStyle:1];
      v29 = v13;
      [v13 setPosition:2];
      v14 = objc_alloc_init(off_10000CBD8());
      [v14 setBadgeStyleSettings:v13];
      v36 = v12;
      [NSArray arrayWithObjects:&v36 count:1];
      v15 = v30 = v10;
      v28 = v14;
      [v14 setContacts:v15];

      [v14 setBadgeImage:v33];
      v16 = [v14 view];
      recipientBadgedAvatarView = self->_recipientBadgedAvatarView;
      self->_recipientBadgedAvatarView = v16;

      LODWORD(v18) = 1148846080;
      [(UIView *)self->_recipientBadgedAvatarView setContentCompressionResistancePriority:0 forAxis:v18];
      LODWORD(v19) = 1148846080;
      [(UIView *)self->_recipientBadgedAvatarView setContentCompressionResistancePriority:1 forAxis:v19];
      LODWORD(v20) = 1148846080;
      [(UIView *)self->_recipientBadgedAvatarView setContentHuggingPriority:0 forAxis:v20];
      [(UIView *)self->_recipientBadgedAvatarView setTranslatesAutoresizingMaskIntoConstraints:0];
      v21 = [(UIView *)self->_recipientBadgedAvatarView widthAnchor];
      [v21 constraintEqualToConstant:64.0];
      v22 = v31 = v9;
      v35[0] = v22;
      [(UIView *)self->_recipientBadgedAvatarView heightAnchor];
      v32 = v8;
      v24 = v23 = v5;
      v25 = [v24 constraintEqualToConstant:64.0];
      v35[1] = v25;
      v26 = [NSArray arrayWithObjects:v35 count:2];
      [NSLayoutConstraint activateConstraints:v26];

      v27 = v33;
      v5 = v23;
      v8 = v32;

      v9 = v31;
      v10 = v30;
      [(UIStackView *)self->_toFieldStackView insertArrangedSubview:self->_recipientBadgedAvatarView atIndex:0];
      [(PKPeerPaymentSiriSnippetContentView *)self setNeedsLayout];
    }

    else
    {
      v27 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentSiriSnippetContentView Error no results from contacts query for image data", buf, 2u);
      }
    }
  }
}

- (void)setToFieldText:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->_toFieldText] & 1) == 0)
  {
    v4 = [v6 copy];
    toFieldText = self->_toFieldText;
    self->_toFieldText = v4;

    [(UILabel *)self->_toLabel setText:v6];
    [(PKPeerPaymentSiriSnippetContentView *)self setNeedsLayout];
  }
}

- (void)setMemoText:(id)a3
{
  v9 = a3;
  if (([v9 isEqualToString:self->_memoText] & 1) == 0)
  {
    v4 = [v9 copy];
    memoText = self->_memoText;
    self->_memoText = v4;

    [(CKTextBalloonView *)self->_memoBalloonView removeFromSuperview];
    memoBalloonView = self->_memoBalloonView;
    self->_memoBalloonView = 0;

    if ([(NSString *)self->_memoText length])
    {
      v7 = [(PKPeerPaymentSiriSnippetContentView *)self _memoBalloonViewWithText:v9];
      v8 = self->_memoBalloonView;
      self->_memoBalloonView = v7;

      [(PKPeerPaymentSiriSnippetContentView *)self addSubview:self->_memoBalloonView];
    }

    [(PKPeerPaymentSiriSnippetContentView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  [(PKPeerPaymentSiriSnippetContentView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UIStackView *)self->_toFieldStackView setFrame:15.0, 8.0, v3 + -30.0, 64.0];
  [(UILabel *)self->_toLabel sizeToFit];
  [(UIStackView *)self->_toFieldStackView frame];
  v7 = CGRectGetMaxY(v26) + 8.0;
  [(PKPeerPaymentSiriSnippetContentView *)self _balloonMaxWidthForBoundsWidth:v4];
  v9 = v8;
  v10 = [(PKPeerPaymentMessageBalloonView *)self->_peerPaymentBalloonView bubbleView];
  [v10 sizeThatFits:{v9, v6 - v7 + -12.0}];
  v12 = v11;
  v14 = v13;

  v15 = v4 - v12 + -10.0;
  if (v15 < 0.0)
  {
    v15 = 0.0;
  }

  [(PKPeerPaymentMessageBalloonView *)self->_peerPaymentBalloonView setFrame:v15, v7, v12, v14];
  memoBalloonView = self->_memoBalloonView;
  if (memoBalloonView)
  {
    [(CKTextBalloonView *)memoBalloonView setOrientation:1];
    [(CKTextBalloonView *)self->_memoBalloonView prepareForDisplayIfNeeded];
    [(CKTextBalloonView *)self->_memoBalloonView sizeThatFits:v9, 1.79769313e308];
    v18 = v17;
    v20 = v19;
    v21 = v4 - v17 + -10.0;
    if (v21 >= 0.0)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0.0;
    }

    [(PKPeerPaymentMessageBalloonView *)self->_peerPaymentBalloonView frame];
    MaxY = CGRectGetMaxY(v27);
    v24 = self->_memoBalloonView;

    [(CKTextBalloonView *)v24 setFrame:v22, MaxY + 8.0, v18, v20];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(UILabel *)self->_toLabel sizeThatFits:a3.width + -30.0 + -64.0, a3.height + -16.0];
  v7 = v6;
  [(PKPeerPaymentSiriSnippetContentView *)self _balloonMaxWidthForBoundsWidth:width];
  v9 = v8;
  v10 = [(PKPeerPaymentMessageBalloonView *)self->_peerPaymentBalloonView bubbleView];
  [v10 sizeThatFits:{v9, height + -80.0 + -12.0}];
  v12 = v11;
  v14 = v13;

  v15 = v14 + 80.0;
  memoBalloonView = self->_memoBalloonView;
  if (memoBalloonView)
  {
    v17 = v15 + 8.0;
    [(CKTextBalloonView *)memoBalloonView sizeThatFits:v9, 1.79769313e308];
    v15 = v17 + v19;
  }

  else
  {
    v18 = CGSizeZero.width;
  }

  v20 = v7 + 30.0;
  v21 = v18 + 20.0;
  if (v7 + 30.0 <= v12 + 20.0)
  {
    v20 = v12 + 20.0;
  }

  if (v20 > v21)
  {
    v21 = v20;
  }

  v22 = v15 + 12.0;
  result.height = v22;
  result.width = v21;
  return result;
}

- (id)_memoBalloonViewWithText:(id)a3
{
  v3 = a3;
  v4 = +[CKUIBehavior sharedBehaviors];
  objc_opt_class();
  v5 = CKBalloonViewForClass();
  [v5 setHasTail:1];
  [v5 setBalloonCorners:-1];
  [v5 setColor:5];
  [v5 setCanUseOpaqueMask:0];
  v6 = [[NSMutableAttributedString alloc] initWithString:v3];
  if ([v4 hyphenatesTextContent])
  {
    v7 = +[NSParagraphStyle defaultParagraphStyle];
    v8 = [v7 mutableCopy];

    LODWORD(v9) = 1.0;
    [v8 setHyphenationFactor:v9];
    [v6 addAttribute:NSParagraphStyleAttributeName value:v8 range:{0, objc_msgSend(v6, "length")}];
  }

  v10 = [v6 length];
  if ([v3 __ck_shouldUseBigEmoji])
  {
    [v4 bigEmojiFont];
  }

  else
  {
    [v4 balloonTextFont];
  }
  v11 = ;
  [v6 addAttribute:NSFontAttributeName value:v11 range:{0, v10}];
  v12 = +[CKUIBehavior sharedBehaviors];
  v13 = [v12 theme];
  v14 = [v13 balloonTextColorForColorType:{objc_msgSend(v5, "color")}];
  [v6 addAttribute:NSForegroundColorAttributeName value:v14 range:{0, v10}];

  [v5 setAttributedText:v6];
  [v5 prepareForDisplay];

  return v5;
}

- (double)_balloonMaxWidthForBoundsWidth:(double)a3
{
  v4 = +[CKUIBehavior sharedBehaviors];
  [v4 balloonMaxWidthForTranscriptWidth:0 marginInsets:0 shouldShowPluginButtons:0 shouldShowCharacterCount:a3 shouldCoverSendButton:{0.0, 10.0, 0.0, 10.0}];
  v6 = v5;

  result = a3 + -20.0;
  if (v6 < a3 + -20.0)
  {
    return v6;
  }

  return result;
}

@end