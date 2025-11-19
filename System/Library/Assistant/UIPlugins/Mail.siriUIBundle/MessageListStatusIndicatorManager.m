@interface MessageListStatusIndicatorManager
+ (id)log;
- (CGRect)_layoutHorizontalStatusIndicatorViewsInRect:(CGRect)a3 contentView:(id)a4 midX:(double)MidX pointY:(double)a6 shouldAlignWithCenter:(BOOL)a7;
- (LayoutStatusIndicatorInfo)layoutStatusIndicatorViewsInRect:(SEL)a3 contentView:(CGRect)a4 verticalPositions:(id)a5 avatarVerticalPostions:(id)a6 horizontalPoint:(id)a7 shouldAlignWithCenter:(CGPoint)a8;
- (NSArray)statusIndicatorViews;
- (id)_accessibilityIdentifierForTier:(unint64_t)a3;
- (id)_createStatusIndicatorViews:(unint64_t)a3;
- (id)primaryStatusIndicatorImage;
- (unint64_t)tierForIndicator:(unint64_t)a3;
- (void)_setUpIndicatorViews;
- (void)prepareForReuse;
@end

@implementation MessageListStatusIndicatorManager

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1278;
  block[3] = &unk_18638;
  block[4] = a1;
  if (qword_1E820 != -1)
  {
    dispatch_once(&qword_1E820, block);
  }

  v2 = qword_1E818;

  return v2;
}

- (NSArray)statusIndicatorViews
{
  v2 = [(NSMutableArray *)self->_statusIndicatorViews copy];

  return v2;
}

- (id)primaryStatusIndicatorImage
{
  v3 = 0;
  do
  {
    v4 = [(MessageStatusIndicatorManager *)self statusIndicatorImageWithOptionsMask:qword_EF28[v3]];
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = v3 == 2;
    }

    ++v3;
  }

  while (!v5);

  return v4;
}

- (unint64_t)tierForIndicator:(unint64_t)a3
{
  result = 0;
  v4 = &qword_EF28;
  for (i = &qword_EF28; ; ++i)
  {
    v6 = result >= 3 ? v4 : i;
    if ((*v6 & a3) != 0)
    {
      break;
    }

    ++result;
    ++v4;
    if (result == 12)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

- (id)_accessibilityIdentifierForTier:(unint64_t)a3
{
  v4 = &qword_EF28[a3];
  if (a3 >= 3)
  {
    v4 = (&unk_EF40 + 8 * a3 - 24);
  }

  v5 = *v4;
  if (v5)
  {
    v6 = &MSAccessibilityIdentifierMailMessageCellViewUnread;
    goto LABEL_15;
  }

  if ((v5 & 4) != 0)
  {
    v6 = &MSAccessibilityIdentifierMailMessageCellViewFlagged;
    goto LABEL_15;
  }

  if ((v5 & 2) != 0)
  {
    v6 = &MSAccessibilityIdentifierMailMessageCellViewVIP;
    goto LABEL_15;
  }

  if ((v5 & 0x100) != 0)
  {
    v6 = &MSAccessibilityIdentifierMailMessageCellViewBlockedSender;
    goto LABEL_15;
  }

  if ((v5 & 0x20) != 0)
  {
    v6 = &MSAccessibilityIdentifierMailMessageCellViewAttachment;
    goto LABEL_15;
  }

  if ((v5 & 0x18) != 0)
  {
    v6 = &MSAccessibilityIdentifierMailMessageCellViewRepliedForwarded;
    goto LABEL_15;
  }

  if ((v5 & 0x40) != 0)
  {
    v6 = &MSAccessibilityIdentifierMailMessageCellViewNotify;
    goto LABEL_15;
  }

  if ((v5 & 0x80) != 0)
  {
    v6 = &MSAccessibilityIdentifierMailMessageCellViewMute;
LABEL_15:
    v7 = *v6;

    return v7;
  }

  v7 = 0;

  return v7;
}

- (void)_setUpIndicatorViews
{
  statusIndicatorViews = self->_statusIndicatorViews;
  if (statusIndicatorViews)
  {
    [(NSMutableArray *)statusIndicatorViews makeObjectsPerformSelector:"removeFromSuperview"];
  }

  v4 = [[NSMutableArray alloc] initWithCapacity:12];
  v5 = self->_statusIndicatorViews;
  self->_statusIndicatorViews = v4;

  for (i = 0; i != 12; ++i)
  {
    v7 = objc_alloc_init(UIImageView);
    v8 = [(MessageListStatusIndicatorManager *)self _accessibilityIdentifierForTier:i];
    [v7 setAccessibilityIdentifier:v8];

    [(NSMutableArray *)self->_statusIndicatorViews addObject:v7];
  }
}

- (CGRect)_layoutHorizontalStatusIndicatorViewsInRect:(CGRect)a3 contentView:(id)a4 midX:(double)MidX pointY:(double)a6 shouldAlignWithCenter:(BOOL)a7
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v50 = a4;
  if (pthread_main_np() != 1)
  {
    v49 = +[NSAssertionHandler currentHandler];
    [v49 handleFailureInMethod:a2 object:self file:@"MessageListStatusIndicatorManager.m" lineNumber:149 description:@"Current thread must be main"];
  }

  v16 = [v50 mf_prefersRightToLeftInterfaceLayout];
  [(MessageStatusIndicatorManager *)self midXToMidXSpacing];
  v55[1] = 3221225472;
  v55[0] = _NSConcreteStackBlock;
  v55[2] = sub_1944;
  v55[3] = &unk_18660;
  if (!v16)
  {
    v17 = -v17;
  }

  v57 = v17;
  v59 = a7;
  v18 = v50;
  v56 = v18;
  v58 = a6;
  v19 = objc_retainBlock(v55);
  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  if (v16)
  {
    MinX = CGRectGetMinX(*&v20);
  }

  else
  {
    MinX = CGRectGetMaxX(*&v20);
  }

  [(MessageListStatusIndicatorManager *)self horizontalStatusIndicatorViews];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v25 = v52 = 0u;
  v26 = [v25 countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v26)
  {
    v27 = 0;
    v28 = *v52;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v52 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v51 + 1) + 8 * i);
        v31 = [v30 image];
        [v31 size];
        v33 = v32;
        v35 = v34;

        v36 = (v19[2])(v19, v27 & 1, 0.0, 0.0, v33, v35, MidX);
        v38 = v37;
        v40 = v39;
        v42 = v41;
        [v30 setFrame:?];
        [v30 frame];
        MidX = CGRectGetMidX(v61);
        v43 = [v30 superview];
        v44 = v43 == 0;

        if (v44)
        {
          [v18 addSubview:v30];
        }

        v27 = 1;
      }

      v26 = [v25 countByEnumeratingWithState:&v51 objects:v60 count:16];
    }

    while (v26);
  }

  else
  {
    v36 = CGRectZero.origin.x;
    v38 = CGRectZero.origin.y;
    v40 = CGRectZero.size.width;
    v42 = CGRectZero.size.height;
  }

  v45 = v36;
  v46 = v38;
  v47 = v40;
  v48 = v42;
  result.size.height = v48;
  result.size.width = v47;
  result.origin.y = v46;
  result.origin.x = v45;
  return result;
}

- (id)_createStatusIndicatorViews:(unint64_t)a3
{
  if (pthread_main_np() != 1)
  {
    v25 = +[NSAssertionHandler currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"MessageListStatusIndicatorManager.m" lineNumber:200 description:@"Current thread must be main"];
  }

  if (a3 == 3)
  {
    v26 = +[NSAssertionHandler currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"MessageListStatusIndicatorManager.m" lineNumber:201 description:@"Cannot create status indicator views for MessageStatusIndicatorPositionsAll"];
  }

  statusIndicatorViews = self->_statusIndicatorViews;
  if (!statusIndicatorViews || [(NSMutableArray *)statusIndicatorViews count]!= &dword_C)
  {
    [(MessageListStatusIndicatorManager *)self _setUpIndicatorViews];
  }

  if ([(MessageStatusIndicatorManager *)self effectiveIndicatorOptions])
  {
    v28 = +[NSMutableArray array];
    v27 = &v27;
    if (a3 == 2)
    {
      v7 = 3;
    }

    else
    {
      v7 = 0;
    }

    v8 = (((a3 << 63) >> 63) & 3) + (((a3 << 62) >> 63) & 9);
    if (v8)
    {
      v9 = (&unk_EF40 + 8 * v7 - 24);
      v10 = &qword_EF28[v7];
      do
      {
        if (v7 >= 3)
        {
          v11 = v9;
        }

        else
        {
          v11 = v10;
        }

        v12 = *v11;
        v13 = [(MessageStatusIndicatorManager *)self statusIndicatorColorWithOptionsMask:*v11, v27];
        v14 = [(MessageStatusIndicatorManager *)self statusIndicatorImageWithOptionsMask:v12];
        v15 = [(NSMutableArray *)self->_statusIndicatorViews objectAtIndexedSubscript:v7];
        v16 = v15;
        if (v14)
        {
          [v15 setImage:v14];
          [v16 setTintColor:v13];
          [v16 setTintAdjustmentMode:1];
          v17 = *&CGAffineTransformIdentity.c;
          v29[0] = *&CGAffineTransformIdentity.a;
          v29[1] = v17;
          v29[2] = *&CGAffineTransformIdentity.tx;
          [v16 setTransform:v29];
          v18 = 1.0;
          [v28 addObject:v16];
        }

        else
        {
          v18 = 0.0;
        }

        [v16 mf_setAlpha:v18];

        ++v9;
        ++v10;
        ++v7;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v19 = self->_statusIndicatorViews;
    v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v20)
    {
      v21 = *v31;
      do
      {
        v22 = 0;
        do
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(v19);
          }

          [*(*(&v30 + 1) + 8 * v22) mf_setAlpha:0.0];
          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v20);
    }

    v28 = &__NSArray0__struct;
  }

  v23 = v28;

  return v23;
}

- (LayoutStatusIndicatorInfo)layoutStatusIndicatorViewsInRect:(SEL)a3 contentView:(CGRect)a4 verticalPositions:(id)a5 avatarVerticalPostions:(id)a6 horizontalPoint:(id)a7 shouldAlignWithCenter:(CGPoint)a8
{
  v9 = a9;
  y = a4.origin.y;
  height = a4.size.height;
  width = a4.size.width;
  x = a4.origin.x;
  v55 = a5;
  v53 = a6;
  v16 = a7;
  if (pthread_main_np() != 1)
  {
    v48 = +[NSAssertionHandler currentHandler];
    [v48 handleFailureInMethod:a3 object:self file:@"MessageListStatusIndicatorManager.m" lineNumber:247 description:@"Current thread must be main"];
  }

  size = CGRectZero.size;
  retstr->var0.origin = CGRectZero.origin;
  retstr->var0.size = size;
  retstr->var1 = 0;
  v18 = x;
  size.width = y;
  v19 = width;
  v20 = height;
  MinY = CGRectGetMinY(*(&size - 8));
  v57.origin.x = x;
  v57.origin.y = y;
  v57.size.width = width;
  v57.size.height = height;
  MaxY = CGRectGetMaxY(v57);
  v23 = [(MessageListStatusIndicatorManager *)self verticalStatusIndicatorViews];
  v24 = [v16 count];
  v25 = v53;
  if (v24)
  {
    v25 = v16;
  }

  v26 = v25;
  v49 = v9;
  if (!v9)
  {
    [v16 count];
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  while (1)
  {
    if (v28 >= [v23 count])
    {
      retstr->var1 = v27;
      goto LABEL_19;
    }

    v30 = [v23 objectAtIndex:v28];
    v31 = [v30 image];
    [v31 size];
    v33 = v32;
    v35 = v34;

    UIRoundToViewScale();
    v37 = v36;
    if (v29 >= [v26 count] || (objc_msgSend(v26, "objectAtIndex:", v29), v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v38, "floatValue"), v40 = v39, ++v29, v38, v40 == 0.0))
    {
      [v30 setAlpha:0.0];
    }

    else
    {
      UIRoundToViewScale();
      MinY = v40 - v42;
      ++v27;
    }

    [v30 setFrame:{x + v37, MinY, v33, v35}];
    [v30 frame];
    if (CGRectGetMaxY(v58) > MaxY)
    {
      break;
    }

    v41 = [v30 superview];

    if (!v41)
    {
      [v55 addSubview:v30];
    }

    ++v28;
  }

  retstr->var1 = v27;
  [v30 setAlpha:0.0];
  retstr->var1 = v27 - 1;

LABEL_19:
  [(MessageListStatusIndicatorManager *)self _layoutHorizontalStatusIndicatorViewsInRect:v55 contentView:v49 midX:x pointY:y shouldAlignWithCenter:width, height, a8.x, a8.y];
  retstr->var0.origin.x = v43;
  retstr->var0.origin.y = v44;
  retstr->var0.size.width = v45;
  retstr->var0.size.height = v46;

  return result;
}

- (void)prepareForReuse
{
  [(MessageStatusIndicatorManager *)self setFlagColors:0];
  [(MessageStatusIndicatorManager *)self setIndicatorOptions:0];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_statusIndicatorViews;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        [v7 setImage:{0, v8}];
        [v7 removeFromSuperview];
      }

      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

@end