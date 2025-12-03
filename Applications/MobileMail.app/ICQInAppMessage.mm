@interface ICQInAppMessage
- (BOOL)mf_hasValidReason;
- (NSString)mf_callToActionString;
- (NSString)mf_inlineTitle;
- (NSString)mf_largeTitle;
- (NSString)mf_sfSymbolName;
- (id)_attributedCallToActionText;
- (id)_attributedTextForInlineTitle:(BOOL)title includingCallToAction:(BOOL)action;
- (id)mf_callToAction;
@end

@implementation ICQInAppMessage

- (NSString)mf_sfSymbolName
{
  if (sub_1000BBBD0(self))
  {
    sfSymbolName = [(ICQInAppMessage *)self sfSymbolName];
  }

  else
  {
    reason = [(ICQInAppMessage *)self reason];
    if ([reason isEqualToString:ICQUIInAppMessageReasoniCloudAlmostFull])
    {
      sfSymbolName = @"exclamationmark.icloud";
    }

    else if ([reason isEqualToString:ICQUIInAppMessageReasoniCloudFull])
    {
      sfSymbolName = @"icloud.slash";
    }

    else
    {
      sfSymbolName = 0;
    }
  }

  return sfSymbolName;
}

- (NSString)mf_inlineTitle
{
  if (sub_1000BBBD0(self))
  {
    conciseTitle = [(ICQInAppMessage *)self conciseTitle];
  }

  else
  {
    reason = [(ICQInAppMessage *)self reason];
    if (([reason isEqualToString:ICQUIInAppMessageReasoniCloudAlmostFull] & 1) != 0 || objc_msgSend(reason, "isEqualToString:", ICQUIInAppMessageReasoniCloudFull))
    {
      conciseTitle = _EFLocalizedString();
    }

    else
    {
      conciseTitle = 0;
    }
  }

  return conciseTitle;
}

- (NSString)mf_largeTitle
{
  if (sub_1000BBBD0(self))
  {
    title = [(ICQInAppMessage *)self title];
  }

  else
  {
    reason = [(ICQInAppMessage *)self reason];
    if (([reason isEqualToString:ICQUIInAppMessageReasoniCloudAlmostFull] & 1) != 0 || objc_msgSend(reason, "isEqualToString:", ICQUIInAppMessageReasoniCloudFull))
    {
      title = _EFLocalizedString();
    }

    else
    {
      title = 0;
    }
  }

  return title;
}

- (NSString)mf_callToActionString
{
  if ([(ICQInAppMessage *)self mf_hasValidReason])
  {
    if (sub_1000BBBD0(self))
    {
      actions = [(ICQInAppMessage *)self actions];
      firstObject = [actions firstObject];
      title = [firstObject title];
    }

    else
    {
      title = _EFLocalizedString();
    }
  }

  else
  {
    title = 0;
  }

  return title;
}

- (id)mf_callToAction
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BBF20;
  v4[3] = &unk_10064C7E8;
  v4[4] = self;
  v2 = objc_retainBlock(v4);

  return v2;
}

- (BOOL)mf_hasValidReason
{
  reason = [(ICQInAppMessage *)self reason];
  if ([reason isEqualToString:ICQUIInAppMessageReasoniCloudAlmostFull])
  {
    v3 = 1;
  }

  else
  {
    v3 = [reason isEqualToString:ICQUIInAppMessageReasoniCloudFull];
  }

  return v3;
}

- (id)_attributedTextForInlineTitle:(BOOL)title includingCallToAction:(BOOL)action
{
  actionCopy = action;
  titleCopy = title;
  if ([(ICQInAppMessage *)self mf_hasValidReason])
  {
    v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    v8 = +[UIColor secondaryLabelColor];
    v26 = [UIImageSymbolConfiguration configurationWithFont:v7 scale:1];
    v29 = v8;
    v9 = [NSArray arrayWithObjects:&v29 count:1];
    v25 = [UIImageSymbolConfiguration configurationWithPaletteColors:v9];

    v24 = [v26 configurationByApplyingConfiguration:v25];
    v10 = objc_alloc_init(NSTextAttachment);
    mf_sfSymbolName = [(ICQInAppMessage *)self mf_sfSymbolName];
    v12 = [UIImage systemImageNamed:mf_sfSymbolName withConfiguration:v24];
    [v10 setImage:v12];

    v13 = [NSAttributedString attributedStringWithAttachment:v10];
    if (titleCopy)
    {
      [(ICQInAppMessage *)self mf_inlineTitle];
    }

    else
    {
      [(ICQInAppMessage *)self mf_largeTitle];
    }
    v15 = ;
    v16 = [NSString stringWithFormat:@" %@", v15];

    v17 = [NSAttributedString alloc];
    v27[0] = NSForegroundColorAttributeName;
    v27[1] = NSFontAttributeName;
    v28[0] = v8;
    v28[1] = v7;
    v18 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
    v19 = [v17 initWithString:v16 attributes:v18];

    v20 = objc_alloc_init(NSMutableAttributedString);
    [v20 appendAttributedString:v13];
    [v20 appendAttributedString:v19];
    if (actionCopy)
    {
      _attributedCallToActionText = [(ICQInAppMessage *)self _attributedCallToActionText];
      if ([_attributedCallToActionText length])
      {
        v22 = [[NSAttributedString alloc] initWithString:@" • "];
        [v20 appendAttributedString:v22];

        [v20 appendAttributedString:_attributedCallToActionText];
      }
    }

    v14 = [v20 copy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_attributedCallToActionText
{
  mf_callToActionString = [(ICQInAppMessage *)self mf_callToActionString];
  if ([mf_callToActionString length] && (-[ICQInAppMessage mf_callToAction](self, "mf_callToAction"), v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    v6 = +[UIColor systemBlueColor];
    v7 = [NSAttributedString alloc];
    v11[0] = NSForegroundColorAttributeName;
    v11[1] = NSFontAttributeName;
    v12[0] = v6;
    v12[1] = v5;
    v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
    v9 = [v7 initWithString:mf_callToActionString attributes:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end