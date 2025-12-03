@interface MessageStatusIndicatorManager
+ (id)statusIndicatorColorWithOptions:(unint64_t)options flagColors:(id)colors useSelectedColors:(BOOL)selectedColors;
- (double)midXToMidXSpacing;
- (id)statusIndicatorColorWithOptionsMask:(unint64_t)mask;
- (id)statusIndicatorImageWithOptionsMask:(unint64_t)mask;
- (void)_setIndicatorOptions:(unint64_t)options disabled:(BOOL)disabled;
- (void)pruneIndicatorOptions:(int64_t)options;
@end

@implementation MessageStatusIndicatorManager

- (id)statusIndicatorColorWithOptionsMask:(unint64_t)mask
{
  effectiveIndicatorOptions = [(MessageStatusIndicatorManager *)self effectiveIndicatorOptions];
  flagColors = [(MessageStatusIndicatorManager *)self flagColors];
  v7 = [MessageStatusIndicatorManager statusIndicatorColorWithOptions:effectiveIndicatorOptions & mask flagColors:flagColors useSelectedColors:[(MessageStatusIndicatorManager *)self useSelectedColors]];

  return v7;
}

+ (id)statusIndicatorColorWithOptions:(unint64_t)options flagColors:(id)colors useSelectedColors:(BOOL)selectedColors
{
  selectedColorsCopy = selectedColors;
  colorsCopy = colors;
  if (selectedColorsCopy)
  {
    +[UIColor systemWhiteColor];
  }

  else
  {
    +[UIColor systemBlueColor];
  }
  v8 = ;
  if (options <= 127)
  {
    if (options - 2 <= 0x3E)
    {
      if (((1 << (options - 2)) & 0x4000000040404040) != 0)
      {
LABEL_7:
        if (selectedColorsCopy)
        {
          +[UIColor mailMessageListSelectedStatusIndicatorColor];
        }

        else
        {
          +[UIColor tertiaryLabelColor];
        }

        v9 = LABEL_9:;
LABEL_34:
        v11 = v9;

        v8 = v11;
        goto LABEL_35;
      }

      if (options == 2)
      {
        v9 = +[UIColor systemYellowColor];
        goto LABEL_34;
      }

      if (options == 4)
      {
        if ([colorsCopy count])
        {
          firstIndex = [colorsCopy firstIndex];
        }

        else
        {
          firstIndex = 0;
        }

        v9 = [UIColor mf_colorFromFlagColor:firstIndex];
        goto LABEL_34;
      }
    }

    if (options != 1)
    {
      goto LABEL_35;
    }

    if (selectedColorsCopy)
    {
      +[UIColor systemWhiteColor];
    }

    else
    {
      +[UIColor systemBlueColor];
    }

    goto LABEL_9;
  }

  if (options > 1023)
  {
    switch(options)
    {
      case 0x400uLL:
        v9 = +[UIColor systemGreenColor];
        break;
      case 0x800uLL:
        v9 = +[UIColor systemPinkColor];
        break;
      case 0x1000uLL:
        v9 = +[UIColor systemIndigoColor];
        break;
      default:
        goto LABEL_35;
    }

    goto LABEL_34;
  }

  switch(options)
  {
    case 0x80uLL:
      goto LABEL_7;
    case 0x100uLL:
      v9 = +[UIColor systemRedColor];
      goto LABEL_34;
    case 0x200uLL:
      goto LABEL_7;
  }

LABEL_35:

  return v8;
}

- (double)midXToMidXSpacing
{
  result = *&qword_100042598;
  v3 = -*&qword_100042598;
  if (*&qword_100042598 >= 0.0)
  {
    v3 = *&qword_100042598;
  }

  if (v3 < 2.22044605e-16)
  {
    v4 = +[MessageStatusIndicatorManager flagShapeImage];
    [v4 size];
    *&qword_100042598 = v5 * 1.5;

    return *&qword_100042598;
  }

  return result;
}

- (void)pruneIndicatorOptions:(int64_t)options
{
  self->_pruneDisabledIndicatorOptions = 0;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v5[3] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100004F5C;
  v4[3] = &unk_100038998;
  v4[4] = self;
  v4[5] = v5;
  v4[6] = options;
  v3 = objc_retainBlock(v4);
  (v3[2])(v3, 1);
  (v3[2])(v3, 4);
  (v3[2])(v3, 32);
  (v3[2])(v3, 8);
  (v3[2])(v3, 16);
  (v3[2])(v3, 64);
  (v3[2])(v3, 512);
  (v3[2])(v3, 128);
  (v3[2])(v3, 256);

  _Block_object_dispose(v5, 8);
}

- (id)statusIndicatorImageWithOptionsMask:(unint64_t)mask
{
  v3 = [(MessageStatusIndicatorManager *)self effectiveIndicatorOptions]& mask;
  if (v3 > 31)
  {
    if (v3 > 511)
    {
      if (v3 > 2047)
      {
        if (v3 == 2048)
        {
          v5 = +[MessageStatusIndicatorManager timeSensitivePromotionsImage];
LABEL_36:
          if (v5)
          {
            goto LABEL_41;
          }

          goto LABEL_37;
        }

        if (v3 == 4096)
        {
          v5 = +[MessageStatusIndicatorManager timeSensitiveUpdatesImage];
          goto LABEL_36;
        }
      }

      else
      {
        if (v3 == 512)
        {
          v4 = &MFImageGlyphStatusIndicatorReadLater;
          goto LABEL_35;
        }

        if (v3 == 1024)
        {
          v5 = +[MessageStatusIndicatorManager timeSensitiveTransactionsImage];
          goto LABEL_36;
        }
      }
    }

    else if (v3 > 127)
    {
      if (v3 == 128)
      {
        v4 = &MFImageGlyphStatusIndicatorMute;
        goto LABEL_35;
      }

      if (v3 == 256)
      {
        v4 = &MFImageGlyphStatusIndicatorBlockSender;
        goto LABEL_35;
      }
    }

    else
    {
      if (v3 == 32)
      {
        v4 = &MFImageGlyphStatusIndicatorAttachment;
        goto LABEL_35;
      }

      if (v3 == 64)
      {
        v4 = &MFImageGlyphStatusIndicatorNotify;
LABEL_35:
        v5 = [UIImage mf_systemImageNamed:*v4 forView:13];
        goto LABEL_36;
      }
    }

    goto LABEL_37;
  }

  if (v3 > 3)
  {
    if (v3 > 15)
    {
      if (v3 == 16)
      {
        v4 = &MFImageGlyphStatusIndicatorForwarded;
        goto LABEL_35;
      }

      if (v3 != 24)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v3 == 4)
      {
        v5 = +[MessageStatusIndicatorManager flagShapeImage];
        goto LABEL_36;
      }

      if (v3 != 8)
      {
        goto LABEL_37;
      }
    }

    v4 = &MFImageGlyphStatusIndicatorReplied;
    goto LABEL_35;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      v4 = &MFImageGlyphStatusIndicatorUnread;
      goto LABEL_35;
    }

    if (v3 == 2)
    {
      v4 = &MFImageGlyphStatusIndicatorVIP;
      goto LABEL_35;
    }

LABEL_37:
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "UIImage *ImageForOptions(MessageStatusIndicatorOptions)";
      v10 = 2048;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#Warning %s: No image pair for options %lu", &v8, 0x16u);
    }
  }

  v5 = 0;
LABEL_41:

  return v5;
}

- (void)_setIndicatorOptions:(unint64_t)options disabled:(BOOL)disabled
{
  if (disabled)
  {
    v4 = self->_disabledIndicatorOptions | options;
  }

  else
  {
    v4 = self->_disabledIndicatorOptions & ~options;
  }

  self->_disabledIndicatorOptions = v4;
}

@end