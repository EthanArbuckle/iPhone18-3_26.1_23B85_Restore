@interface MessageViewStatusIndicatorManager
- (id)_accessibilityIdentifierForIndicatorOptions:(unint64_t)a3;
- (void)updateImageViews;
@end

@implementation MessageViewStatusIndicatorManager

- (void)updateImageViews
{
  v3 = [(MessageStatusIndicatorManager *)self effectiveIndicatorOptions];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->_statusIndicatorImageViews;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v17 + 1) + 8 * i) setHidden:{1, v17}];
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  if (v3)
  {
    if (!self->_statusIndicatorImageViews)
    {
      v8 = objc_alloc_init(NSMutableArray);
      statusIndicatorImageViews = self->_statusIndicatorImageViews;
      self->_statusIndicatorImageViews = v8;
    }

    v10 = 0;
    v11 = 0;
    do
    {
      v12 = qword_1000326A8[v10];
      if ((v12 & v3) != 0)
      {
        v13 = [(MessageStatusIndicatorManager *)self statusIndicatorColorWithOptionsMask:qword_1000326A8[v10]];
        v14 = [(MessageStatusIndicatorManager *)self statusIndicatorImageWithOptionsMask:v12];
        if (v11 >= [(NSMutableArray *)self->_statusIndicatorImageViews count])
        {
          v15 = [[UIImageView alloc] initWithImage:0];
          [(NSMutableArray *)self->_statusIndicatorImageViews addObject:?];
        }

        else
        {
          v15 = [(NSMutableArray *)self->_statusIndicatorImageViews objectAtIndex:v11];
        }

        [v15 setHidden:{0, v17}];
        [v15 setImage:v14];
        v16 = [(MessageViewStatusIndicatorManager *)self _accessibilityIdentifierForIndicatorOptions:v12];
        [v15 setAccessibilityIdentifier:v16];

        [v15 sizeToFit];
        [v15 setTintColor:v13];
        [v15 setTintAdjustmentMode:1];

        ++v11;
      }

      ++v10;
    }

    while (v10 != 8);
    self->_statusIndicatorImageViewsSize = v11;
  }
}

- (id)_accessibilityIdentifierForIndicatorOptions:(unint64_t)a3
{
  if (a3)
  {
    v6 = &MSAccessibilityIdentifierMailMessageViewUnread;
  }

  else if ((a3 & 2) != 0)
  {
    v6 = &MSAccessibilityIdentifierMailMessageViewVIP;
  }

  else if ((a3 & 4) != 0)
  {
    v6 = &MSAccessibilityIdentifierMailMessageViewFlagged;
  }

  else if ((a3 & 8) != 0)
  {
    v6 = &MSAccessibilityIdentifierMailMessageViewReplied;
  }

  else if ((a3 & 0x10) != 0)
  {
    v6 = &MSAccessibilityIdentifierMailMessageViewForwarded;
  }

  else if ((a3 & 0x20) != 0)
  {
    v6 = &MSAccessibilityIdentifierMailMessageViewAttachment;
  }

  else if ((a3 & 0x40) != 0)
  {
    v6 = &MSAccessibilityIdentifierMailMessageViewNotify;
  }

  else
  {
    if ((a3 & 0x100) == 0)
    {
      v4 = 0;

      return v4;
    }

    v6 = &MSAccessibilityIdentifierMailMessageViewBlockedSender;
  }

  v4 = *v6;

  return v4;
}

@end