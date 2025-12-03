@interface MKTransitInfoLabelView
+ (id)stringAttributesForFont:(id)font lineBreakMode:(int64_t)mode;
+ (int64_t)iconSizeForContentSizeCategory:(id)category;
+ (int64_t)shieldSizeForContentSizeCategory:(id)category;
- (MKArtworkDataSourceCache)artworkCache;
- (MKTransitInfoLabelView)initWithLabelItems:(id)items iconSize:(int64_t)size shieldSize:(int64_t)shieldSize spaceBetweenShields:(double)shields maxWidth:(double)width;
- (MKTransitInfoLabelView)initWithMapItem:(id)item maxWidth:(double)width;
- (id)_generateText;
- (id)_imageForArtworkDataSource:(id)source;
- (id)_imageForLabelItem:(id)item;
- (id)_imageForShieldDataSource:(id)source;
- (id)_stringAttributes;
- (void)_contentSizeCategoryDidChange;
- (void)_setFont:(id)font custom:(BOOL)custom;
- (void)_setupLabelInfo;
- (void)dealloc;
- (void)setIconSize:(int64_t)size;
- (void)setLabelItems:(id)items;
- (void)setMapItem:(id)item;
- (void)setMaxWidth:(double)width textForTruncationGenerator:(id)generator;
- (void)setShieldSize:(int64_t)size;
- (void)setSpaceBetweenIcons:(double)icons;
- (void)setSpaceBetweenShields:(double)shields;
@end

@implementation MKTransitInfoLabelView

- (void)_contentSizeCategoryDidChange
{
  if (!self->_hasCustomFont)
  {
    v3 = +[MKFontManager sharedManager];
    smallAttributionFont = [v3 smallAttributionFont];
    [(MKTransitInfoLabelView *)self _setFont:smallAttributionFont custom:0];
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];

  if (!self->_hasCustomShieldSize)
  {
    self->_shieldSize = [objc_opt_class() shieldSizeForContentSizeCategory:preferredContentSizeCategory];
  }

  if (!self->_hasCustomIconSize)
  {
    self->_iconSize = [objc_opt_class() iconSizeForContentSizeCategory:preferredContentSizeCategory];
  }

  [(MKTransitInfoLabelView *)self _setupLabelInfo];
}

- (void)_setFont:(id)font custom:(BOOL)custom
{
  if (custom)
  {
    self->_hasCustomFont = 1;
  }

  fontCopy = font;
  font = [(MKTransitInfoLabelView *)self font];
  v9.receiver = self;
  v9.super_class = MKTransitInfoLabelView;
  [(MKTransitInfoLabelView *)&v9 setFont:fontCopy];

  font2 = [(MKTransitInfoLabelView *)self font];
  v8 = [font isEqual:font2];

  if ((v8 & 1) == 0)
  {
    [(MKTransitInfoLabelView *)self _setupLabelInfo];
  }
}

- (MKArtworkDataSourceCache)artworkCache
{
  artworkCache = self->_artworkCache;
  if (!artworkCache)
  {
    v4 = +[MKArtworkDataSourceCache sharedInstance];
    v5 = self->_artworkCache;
    self->_artworkCache = v4;

    artworkCache = self->_artworkCache;
  }

  return artworkCache;
}

- (id)_imageForShieldDataSource:(id)source
{
  sourceCopy = source;
  window = [(MKTransitInfoLabelView *)self window];
  screen = [window screen];
  v7 = screen;
  if (screen)
  {
    [screen scale];
    v9 = v8;
  }

  else
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v9 = v11;
  }

  v12 = [MKTransitArtwork alloc];
  shieldText = [sourceCopy shieldText];
  v14 = [(MKTransitArtwork *)v12 initWithShield:sourceCopy accessibilityText:shieldText];

  artworkCache = [(MKTransitInfoLabelView *)self artworkCache];
  v16 = [artworkCache imageForArtwork:v14 size:-[MKTransitInfoLabelView shieldSize](self featureType:"shieldSize") scale:2 nightMode:{-[UIView _mapkit_isDarkModeEnabled](self, "_mapkit_isDarkModeEnabled"), v9}];

  return v16;
}

- (id)_imageForArtworkDataSource:(id)source
{
  sourceCopy = source;
  window = [(MKTransitInfoLabelView *)self window];
  screen = [window screen];
  v7 = screen;
  if (screen)
  {
    [screen scale];
    v9 = v8;
  }

  else
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v9 = v11;
  }

  artworkSourceType = [sourceCopy artworkSourceType];
  v13 = &OBJC_IVAR___MKTransitInfoLabelView__shieldSize;
  if (artworkSourceType == 2)
  {
    v13 = &OBJC_IVAR___MKTransitInfoLabelView__iconSize;
  }

  v14 = *(&self->super.super.super.super.super.isa + *v13);
  artworkCache = [(MKTransitInfoLabelView *)self artworkCache];
  v16 = [artworkCache imageForArtwork:sourceCopy size:v14 featureType:2 scale:-[UIView _mapkit_isDarkModeEnabled](self nightMode:{"_mapkit_isDarkModeEnabled"), v9}];

  return v16;
}

- (id)_imageForLabelItem:(id)item
{
  itemCopy = item;
  if ([itemCopy type] == 1)
  {
    labelArtwork = [itemCopy labelArtwork];

    v6 = [(MKTransitInfoLabelView *)self _imageForArtworkDataSource:labelArtwork];
  }

  else
  {
    type = [itemCopy type];

    if (type == 3)
    {
      font = [(MKTransitInfoLabelView *)self font];
      [font _mapkit_lineHeight];
      v10 = v9;

      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen nativeScale];
      v12 = 1.0;
      if (v13 > 1.0)
      {
        mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
        [mainScreen2 nativeScale];
        v12 = v15;
      }

      v16 = 1.0 / v12;
      mainScreen3 = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen3 scale];
      v19 = v18;
      v24.width = v16;
      v24.height = v10;
      UIGraphicsBeginImageContextWithOptions(v24, 0, v19);

      lightGrayColor = [MEMORY[0x1E69DC888] lightGrayColor];
      [lightGrayColor setFill];

      CurrentContext = UIGraphicsGetCurrentContext();
      v25.origin.y = v10 * 0.125;
      v25.size.height = v10 * 0.75;
      v25.origin.x = 0.0;
      v25.size.width = v16;
      CGContextFillRect(CurrentContext, v25);
      v6 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)_stringAttributes
{
  v3 = objc_opt_class();
  font = [(MKTransitInfoLabelView *)self font];
  v5 = [v3 stringAttributesForFont:font lineBreakMode:{-[MKTransitInfoLabelView lineBreakMode](self, "lineBreakMode")}];

  return v5;
}

- (void)setSpaceBetweenIcons:(double)icons
{
  if (icons >= 0.0 && self->_spaceBetweenIcons != icons)
  {
    self->_spaceBetweenIcons = icons;
    [(MKTransitInfoLabelView *)self _setupLabelInfo];
  }
}

- (void)setIconSize:(int64_t)size
{
  self->_hasCustomIconSize = 1;
  if (self->_iconSize != size)
  {
    self->_iconSize = size;
    [(MKTransitInfoLabelView *)self _setupLabelInfo];
  }
}

- (id)_generateText
{
  if ([(NSArray *)self->_labelItems count])
  {
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x2020000000;
    v45 = 0;
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x2020000000;
    v43 = 0;
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x2020000000;
    v41 = 0;
    v3 = [MEMORY[0x1E695DFA8] set];
    _stringAttributes = [(MKTransitInfoLabelView *)self _stringAttributes];
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__1609;
    v38 = __Block_byref_object_dispose__1610;
    v5 = objc_alloc(MEMORY[0x1E696AD40]);
    if (MKApplicationLayoutDirectionIsRightToLeft())
    {
      v6 = @"\u200F";
    }

    else
    {
      v6 = @"\u200E";
    }

    v39 = [v5 initWithString:v6 attributes:_stringAttributes];
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x3032000000;
    v32[3] = __Block_byref_object_copy__1609;
    v32[4] = __Block_byref_object_dispose__1610;
    v33 = 0;
    v7 = objc_alloc(MEMORY[0x1E696AAB0]);
    _mapkit_commaListDelimiter = [MEMORY[0x1E696AEC0] _mapkit_commaListDelimiter];
    v9 = [v7 initWithString:_mapkit_commaListDelimiter attributes:_stringAttributes];

    font = [(MKTransitInfoLabelView *)self font];
    [font capHeight];
    v12 = v11;

    v13 = [MEMORY[0x1E695DFA8] set];
    labelItems = self->_labelItems;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __39__MKTransitInfoLabelView__generateText__block_invoke;
    v21[3] = &unk_1E76C6A50;
    v21[4] = self;
    v15 = v13;
    v22 = v15;
    v26 = v40;
    v27 = v44;
    v28 = v42;
    v31 = v12;
    v16 = v3;
    v23 = v16;
    v29 = &v34;
    v17 = v9;
    v24 = v17;
    v18 = _stringAttributes;
    v25 = v18;
    v30 = v32;
    [(NSArray *)labelItems enumerateObjectsWithOptions:0 usingBlock:v21];
    v19 = v35[5];

    _Block_object_dispose(v32, 8);
    _Block_object_dispose(&v34, 8);

    _Block_object_dispose(v40, 8);
    _Block_object_dispose(v42, 8);
    _Block_object_dispose(v44, 8);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void __39__MKTransitInfoLabelView__generateText__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __39__MKTransitInfoLabelView__generateText__block_invoke_2;
  v26[3] = &unk_1E76C6A28;
  v8 = *(a1 + 40);
  v26[4] = *(a1 + 32);
  v27 = v8;
  v32 = *(a1 + 72);
  v33 = *(a1 + 88);
  v9 = v7;
  v28 = v9;
  v36 = *(a1 + 112);
  v10 = *(a1 + 48);
  v11 = *(a1 + 96);
  v29 = v10;
  v34 = v11;
  v30 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 104);
  v31 = v12;
  v35 = v13;
  v37 = a4;
  v14 = MEMORY[0x1A58E9F30](v26);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = v9;
    v15 = v9;
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v38 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v23;
      do
      {
        v20 = 0;
        do
        {
          if (*v23 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v14[2](v14, *(*(&v22 + 1) + 8 * v20), a3, 1, v18++);
          *(*(*(a1 + 88) + 8) + 24) = 1;
          ++v20;
        }

        while (v17 != v20);
        v17 = [v15 countByEnumeratingWithState:&v22 objects:v38 count:16];
      }

      while (v17);
    }

    v9 = v21;
  }

  else
  {
    (v14)[2](v14, v9, a3, 0, 0x7FFFFFFFFFFFFFFFLL);
    *(*(*(a1 + 88) + 8) + 24) = 0;
  }
}

void __39__MKTransitInfoLabelView__generateText__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  v51 = a2;
  if ([v51 conformsToProtocol:&unk_1F16E4E98])
  {
    v9 = v51;
    if ([v9 type] == 1 || objc_msgSend(v9, "type") == 3)
    {
      v10 = [*(a1 + 32) _imageForLabelItem:v9];
      if ([v9 type] == 3)
      {
        v11 = 0;
        v12 = 1;
      }

      else
      {
        v13 = [v9 labelArtwork];
        v12 = [v13 artworkSourceType] == 2;

        v11 = 0;
      }
    }

    else
    {
      if ([v9 type] == 2)
      {
        v11 = [v9 labelString];
        v12 = 0;
      }

      else
      {
        v12 = 0;
        v11 = 0;
      }

      v10 = 0;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v51;
      v10 = 0;
LABEL_44:
      v14 = 0;
LABEL_45:
      if ([v11 length] && (objc_msgSend(*(a1 + 56), "containsObject:", v11) & 1) == 0)
      {
        if (*(*(*(a1 + 88) + 8) + 24) == 1)
        {
          [*(*(*(a1 + 104) + 8) + 40) appendAttributedString:*(a1 + 64)];
        }

        v22 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v11 attributes:*(a1 + 72)];
        *(*(*(a1 + 88) + 8) + 24) = 1;
        *(*(*(a1 + 80) + 8) + 24) = 0;
        [*(a1 + 56) addObject:v11];
        if (v22)
        {
          goto LABEL_57;
        }
      }

      goto LABEL_70;
    }

    if ([v51 conformsToProtocol:&unk_1F1693D38])
    {
      v10 = [*(a1 + 32) _imageForArtworkDataSource:v51];
      v11 = 0;
      v12 = [v51 artworkSourceType] == 2;
    }

    else
    {
      if (![v51 conformsToProtocol:&unk_1F1693F60])
      {
        v10 = 0;
        v11 = 0;
        goto LABEL_44;
      }

      v10 = [*(a1 + 32) _imageForShieldDataSource:v51];
      v12 = 0;
      v11 = 0;
    }
  }

  if (!v10)
  {
    goto LABEL_44;
  }

  v14 = UIImagePNGRepresentation(v10);
  if (!v14 || ([*(a1 + 40) containsObject:v14] & 1) != 0)
  {
    goto LABEL_45;
  }

  [*(a1 + 40) addObject:v14];
  v15 = *(a1 + 32);
  v16 = &OBJC_IVAR___MKTransitInfoLabelView__spaceBetweenShields;
  if (*(*(*(a1 + 80) + 8) + 24))
  {
    v17 = &OBJC_IVAR___MKTransitInfoLabelView__spaceBetweenIcons;
  }

  else
  {
    v17 = &OBJC_IVAR___MKTransitInfoLabelView__spaceBetweenShields;
  }

  v18 = *(v15 + *v17);
  v49 = v12;
  if (a4)
  {
    v19 = 0.0;
    if (*(*(*(a1 + 88) + 8) + 24))
    {
      if (*(*(*(a1 + 96) + 8) + 24))
      {
        v19 = v18 * 0.5;
      }

      else
      {
        v19 = *(v15 + *v17);
      }
    }

    if (v12)
    {
      v16 = &OBJC_IVAR___MKTransitInfoLabelView__spaceBetweenIcons;
    }

    v20 = *(v15 + *v16);
    if (a5 + 1 == [*(a1 + 48) count])
    {
      if (a3 + 1 == [*(*(a1 + 32) + 864) count])
      {
        v20 = 0.0;
      }
    }

    else
    {
      v20 = v20 * 0.5;
    }
  }

  else
  {
    v20 = 0.0;
    if (*(*(*(a1 + 88) + 8) + 24))
    {
      v19 = *(v15 + *v17);
    }

    else
    {
      v19 = 0.0;
    }

    if (v12)
    {
      v16 = &OBJC_IVAR___MKTransitInfoLabelView__spaceBetweenIcons;
    }

    v21 = *(v15 + *v16);
    if (a3 + 1 != [*(v15 + 864) count])
    {
      v20 = v21;
    }
  }

  v50 = [[MKEmptyTextAttachment alloc] initWithWidth:v19];
  v23 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:?];
  v48 = [[MKEmptyTextAttachment alloc] initWithWidth:v20];
  v24 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:?];
  [(UIImage *)v10 size];
  [*(a1 + 32) maxShieldHeight];
  if (v25 > 0.0)
  {
    [*(a1 + 32) maxShieldHeight];
  }

  UIRoundToViewScale();
  v27 = [[MKImageTextAttachment alloc] initWithImage:v10 verticalOffset:v26];
  [*(a1 + 32) maxShieldHeight];
  if (v28 > 0.0)
  {
    [*(a1 + 32) maxShieldHeight];
    [(MKImageTextAttachment *)v27 setMaxHeight:?];
  }

  v29 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v27];
  v22 = objc_alloc_init(MEMORY[0x1E696AD40]);
  [v22 appendAttributedString:v23];
  [v22 appendAttributedString:v29];
  [v22 appendAttributedString:v24];
  v47 = v23;
  v30 = *MEMORY[0x1E69DB650];
  v31 = [MEMORY[0x1E69DC888] blackColor];
  [v22 addAttribute:v30 value:v31 range:{0, objc_msgSend(v22, "length")}];

  *(*(*(a1 + 88) + 8) + 24) = 0;
  *(*(*(a1 + 80) + 8) + 24) = v49;

  if (v22)
  {
LABEL_57:
    v32 = *(*(*(a1 + 104) + 8) + 40);
    if (*(*(a1 + 32) + 824) <= 0.0)
    {
      [v32 appendAttributedString:v22];
    }

    else
    {
      [v32 size];
      v34 = v33;
      [v22 size];
      v36 = v35;
      [*(*(a1 + 32) + 864) count];
      v37 = (*(*(*(a1 + 32) + 840) + 16))();
      if (v37)
      {
        v38 = v37;
      }

      else
      {
        v38 = @"…";
      }

      v39 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v38 attributes:*(a1 + 72)];
      v40 = v39;
      v41 = v34 + v36;
      if (!*(*(*(a1 + 112) + 8) + 40))
      {
        v42 = *(*(a1 + 32) + 824);
        [v39 size];
        if (v41 > v42 - v43)
        {
          v44 = [*(*(*(a1 + 104) + 8) + 40) mutableCopy];
          v45 = *(*(a1 + 112) + 8);
          v46 = *(v45 + 40);
          *(v45 + 40) = v44;

          [*(*(*(a1 + 112) + 8) + 40) appendAttributedString:v40];
        }
      }

      if (v41 <= *(*(a1 + 32) + 824))
      {
        [*(*(*(a1 + 104) + 8) + 40) appendAttributedString:v22];
      }

      else
      {
        objc_storeStrong((*(*(a1 + 104) + 8) + 40), *(*(*(a1 + 112) + 8) + 40));
        **(a1 + 128) = 1;
      }
    }
  }

LABEL_70:
}

- (void)_setupLabelInfo
{
  _generateText = [(MKTransitInfoLabelView *)self _generateText];
  [(MKTransitInfoLabelView *)self setAttributedText:_generateText];
}

- (void)setMaxWidth:(double)width textForTruncationGenerator:(id)generator
{
  generatorCopy = generator;
  textForTruncationGenerator = self->_textForTruncationGenerator;
  v14 = generatorCopy;
  if (self->_maxWidth == width)
  {
    if (textForTruncationGenerator == generatorCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  self->_maxWidth = width;
  if (textForTruncationGenerator != generatorCopy)
  {
LABEL_5:
    v8 = [generatorCopy copy];
    v9 = v8;
    if (v8)
    {
      v10 = MEMORY[0x1A58E9F30](v8);
      v11 = self->_textForTruncationGenerator;
      self->_textForTruncationGenerator = v10;
    }

    else
    {
      v11 = [&__block_literal_global_1533 copy];
      v12 = MEMORY[0x1A58E9F30]();
      v13 = self->_textForTruncationGenerator;
      self->_textForTruncationGenerator = v12;
    }
  }

  [(MKTransitInfoLabelView *)self _setupLabelInfo];
  generatorCopy = v14;
LABEL_10:
}

- (void)setSpaceBetweenShields:(double)shields
{
  if (shields >= 0.0 && self->_spaceBetweenShields != shields)
  {
    self->_spaceBetweenShields = shields;
    [(MKTransitInfoLabelView *)self _setupLabelInfo];
  }
}

- (void)setShieldSize:(int64_t)size
{
  self->_hasCustomShieldSize = 1;
  if (self->_shieldSize != size)
  {
    self->_shieldSize = size;
    [(MKTransitInfoLabelView *)self _setupLabelInfo];
  }
}

- (void)setLabelItems:(id)items
{
  itemsCopy = items;
  if (![(NSArray *)self->_labelItems isEqualToArray:?])
  {
    v4 = [itemsCopy copy];
    labelItems = self->_labelItems;
    self->_labelItems = v4;

    [(MKTransitInfoLabelView *)self _setupLabelInfo];
  }
}

- (void)setMapItem:(id)item
{
  _transitInfo = [item _transitInfo];
  labelItems = [_transitInfo labelItems];
  v6 = labelItems;
  if (labelItems)
  {
    v7 = labelItems;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  [(MKTransitInfoLabelView *)self setLabelItems:v7];

  [(MKTransitInfoLabelView *)self _setupLabelInfo];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = MKTransitInfoLabelView;
  [(MKTransitInfoLabelView *)&v4 dealloc];
}

- (MKTransitInfoLabelView)initWithLabelItems:(id)items iconSize:(int64_t)size shieldSize:(int64_t)shieldSize spaceBetweenShields:(double)shields maxWidth:(double)width
{
  itemsCopy = items;
  v23.receiver = self;
  v23.super_class = MKTransitInfoLabelView;
  v13 = [(MKTransitInfoLabelView *)&v23 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v14 = v13;
  if (v13)
  {
    v13->_hasCustomShieldSize = shieldSize != 0x8000000000000000;
    v13->_hasCustomIconSize = size != 0x8000000000000000;
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];

    if (!v14->_hasCustomShieldSize)
    {
      shieldSize = [objc_opt_class() shieldSizeForContentSizeCategory:preferredContentSizeCategory];
    }

    if (!v14->_hasCustomIconSize)
    {
      size = [objc_opt_class() iconSizeForContentSizeCategory:preferredContentSizeCategory];
    }

    v14->_iconSize = size;
    v14->_shieldSize = shieldSize;
    v14->_maxWidth = width;
    v14->_spaceBetweenShields = shields;
    v14->_spaceBetweenIcons = 5.0;
    v17 = [&__block_literal_global_1533 copy];
    textForTruncationGenerator = v14->_textForTruncationGenerator;
    v14->_textForTruncationGenerator = v17;

    v19 = +[MKFontManager sharedManager];
    smallAttributionFont = [v19 smallAttributionFont];
    [(MKTransitInfoLabelView *)v14 _setFont:smallAttributionFont custom:0];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v14 selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];

    [(MKTransitInfoLabelView *)v14 setLabelItems:itemsCopy];
  }

  return v14;
}

- (MKTransitInfoLabelView)initWithMapItem:(id)item maxWidth:(double)width
{
  _transitInfo = [item _transitInfo];
  labelItems = [_transitInfo labelItems];
  v8 = labelItems;
  if (labelItems)
  {
    v9 = labelItems;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  v10 = [(MKTransitInfoLabelView *)self initWithLabelItems:v9 iconSize:0x8000000000000000 shieldSize:0x8000000000000000 spaceBetweenShields:4.0 maxWidth:width];

  return v10;
}

+ (int64_t)iconSizeForContentSizeCategory:(id)category
{
  categoryCopy = category;
  if ([categoryCopy isEqualToString:*MEMORY[0x1E69DDC60]] & 1) != 0 || (objc_msgSend(categoryCopy, "isEqualToString:", *MEMORY[0x1E69DDC58]) & 1) != 0 || (objc_msgSend(categoryCopy, "isEqualToString:", *MEMORY[0x1E69DDC50]) & 1) != 0 || (objc_msgSend(categoryCopy, "isEqualToString:", *MEMORY[0x1E69DDC30]) & 1) != 0 || (objc_msgSend(categoryCopy, "isEqualToString:", *MEMORY[0x1E69DDC28]))
  {
    v4 = 6;
  }

  else if ([categoryCopy isEqualToString:*MEMORY[0x1E69DDC20]])
  {
    v4 = 6;
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

+ (int64_t)shieldSizeForContentSizeCategory:(id)category
{
  categoryCopy = category;
  if ([categoryCopy isEqualToString:*MEMORY[0x1E69DDC60]] & 1) != 0 || (objc_msgSend(categoryCopy, "isEqualToString:", *MEMORY[0x1E69DDC58]) & 1) != 0 || (objc_msgSend(categoryCopy, "isEqualToString:", *MEMORY[0x1E69DDC50]) & 1) != 0 || (objc_msgSend(categoryCopy, "isEqualToString:", *MEMORY[0x1E69DDC30]) & 1) != 0 || (objc_msgSend(categoryCopy, "isEqualToString:", *MEMORY[0x1E69DDC28]))
  {
    v4 = 6;
  }

  else if ([categoryCopy isEqualToString:*MEMORY[0x1E69DDC20]])
  {
    v4 = 6;
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

+ (id)stringAttributesForFont:(id)font lineBreakMode:(int64_t)mode
{
  fontCopy = font;
  defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v7 = [defaultParagraphStyle mutableCopy];

  [v7 setLineSpacing:2.0];
  [v7 setLineBreakMode:mode];
  v8 = [MEMORY[0x1E695DF90] dictionaryWithObject:v7 forKey:*MEMORY[0x1E69DB688]];
  v9 = v8;
  if (fontCopy)
  {
    [v8 setObject:fontCopy forKeyedSubscript:*MEMORY[0x1E69DB648]];
  }

  return v9;
}

@end