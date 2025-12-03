@interface MKTransitInfoPreloader
+ (id)attributedTextFromPreload:(id)preload view:(id)view;
+ (id)separatorImageWithLineHeight:(double)height;
- (MKTransitInfoPreloader)initWithTransitLabels:(id)labels;
- (void)preloadWithCompletion:(id)completion;
@end

@implementation MKTransitInfoPreloader

- (void)preloadWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(NSArray *)self->_transitLabels count])
    {
      v5 = +[MKFontManager sharedManager];
      smallAttributionFont = [v5 smallAttributionFont];

      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen scale];
      v9 = v8;

      v10 = [MKTransitInfoLabelView stringAttributesForFont:smallAttributionFont lineBreakMode:4];
      IsRightToLeft = MKApplicationLayoutDirectionIsRightToLeft();
      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];

      v14 = [MKTransitInfoLabelView shieldSizeForContentSizeCategory:preferredContentSizeCategory];
      v15 = [MKTransitInfoLabelView iconSizeForContentSizeCategory:preferredContentSizeCategory];
      v16 = +[MKArtworkDataSourceCache sharedInstance];
      v34[0] = 0;
      v34[1] = v34;
      v34[2] = 0x3032000000;
      v34[3] = __Block_byref_object_copy__1444;
      v34[4] = __Block_byref_object_dispose__1445;
      v17 = objc_alloc(MEMORY[0x1E696AD40]);
      if (IsRightToLeft)
      {
        v18 = @"\u200F";
      }

      else
      {
        v18 = @"\u200E";
      }

      v35 = [v17 initWithString:v18 attributes:v10];
      v19 = dispatch_get_global_queue(2, 0);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __48__MKTransitInfoPreloader_preloadWithCompletion___block_invoke;
      v23[3] = &unk_1E76C69E0;
      v24 = v10;
      selfCopy = self;
      v30 = v15;
      v31 = v14;
      v32 = v9;
      v26 = v16;
      v27 = smallAttributionFont;
      v33 = xmmword_1A30F6E40;
      v29 = v34;
      v28 = completionCopy;
      v20 = smallAttributionFont;
      v21 = v16;
      v22 = v10;
      dispatch_async(v19, v23);

      _Block_object_dispose(v34, 8);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

void __48__MKTransitInfoPreloader_preloadWithCompletion___block_invoke(uint64_t a1)
{
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v30 = 0;
  v2 = [MEMORY[0x1E695DFA8] set];
  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = objc_alloc(MEMORY[0x1E696AAB0]);
  v5 = [MEMORY[0x1E696AEC0] _mapkit_commaListDelimiter];
  v6 = [v4 initWithString:v5 attributes:*(a1 + 32)];

  v7 = *(*(a1 + 40) + 8);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __48__MKTransitInfoPreloader_preloadWithCompletion___block_invoke_2;
  v15[3] = &unk_1E76C69B8;
  v26 = *(a1 + 80);
  v16 = *(a1 + 48);
  v27 = *(a1 + 96);
  v8 = *(a1 + 56);
  v9 = *(a1 + 40);
  v17 = v8;
  v18 = v9;
  v10 = v2;
  v19 = v10;
  v23 = v29;
  v28 = *(a1 + 104);
  v24 = v31;
  v11 = v3;
  v12 = *(a1 + 72);
  v20 = v11;
  v25 = v12;
  v13 = v6;
  v21 = v13;
  v22 = *(a1 + 32);
  [v7 enumerateObjectsWithOptions:0 usingBlock:v15];
  v14 = [[MKTransitInfoPreload alloc] initWithAttributedString:*(*(*(a1 + 72) + 8) + 40)];
  (*(*(a1 + 64) + 16))();

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v31, 8);
}

void __48__MKTransitInfoPreloader_preloadWithCompletion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v29 = a2;
  v5 = [v29 type];
  if (v5 == 3)
  {
    [*(a1 + 40) _mapkit_lineHeight];
    v10 = [objc_opt_class() separatorImageWithLineHeight:v12];
    v8 = 1;
    if (v10)
    {
      goto LABEL_10;
    }

LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  if (v5 == 2)
  {
    v11 = [v29 labelString];
    v10 = 0;
LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  if (v5 != 1)
  {
    v10 = 0;
    goto LABEL_14;
  }

  v6 = [v29 labelArtwork];
  v7 = [v6 artworkSourceType];
  v8 = v7 == 2;
  v9 = 120;
  if (v7 == 2)
  {
    v9 = 112;
  }

  v10 = [*(a1 + 32) imageForArtwork:v6 size:*(a1 + v9) featureType:2 scale:0 nightMode:*(a1 + 128)];

  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_10:
  v13 = UIImagePNGRepresentation(v10);
  if (v13 && ([*(a1 + 56) containsObject:v13] & 1) == 0)
  {
    [*(a1 + 56) addObject:v13];
    v15 = 144;
    if (*(*(*(a1 + 88) + 8) + 24))
    {
      v16 = 136;
    }

    else
    {
      v16 = 144;
    }

    v17 = 0.0;
    if (*(*(*(a1 + 96) + 8) + 24))
    {
      v18 = *(a1 + v16);
    }

    else
    {
      v18 = 0.0;
    }

    if (v8)
    {
      v15 = 136;
    }

    v19 = *(a1 + v15);
    if (a3 + 1 != [*(*(a1 + 48) + 8) count])
    {
      v17 = v19;
    }

    v28 = [[MKEmptyTextAttachment alloc] initWithWidth:v18];
    v26 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v28];
    v27 = [[MKEmptyTextAttachment alloc] initWithWidth:v17];
    v20 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v27];
    v21 = [[MKImageTextAttachment alloc] initWithImage:v10 verticalOffset:0.0];
    v22 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v21];
    v14 = objc_alloc_init(MEMORY[0x1E696AD40]);
    [v14 appendAttributedString:v26];
    [v14 appendAttributedString:v22];
    v23 = v20;
    [v14 appendAttributedString:v20];
    v24 = *MEMORY[0x1E69DB650];
    v25 = [MEMORY[0x1E69DC888] blackColor];
    [v14 addAttribute:v24 value:v25 range:{0, objc_msgSend(v14, "length")}];

    *(*(*(a1 + 96) + 8) + 24) = 0;
    *(*(*(a1 + 88) + 8) + 24) = v8;

    v11 = 0;
    if (v14)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v11 = 0;
LABEL_16:
  if ([v11 length] && (objc_msgSend(*(a1 + 64), "containsObject:", v11) & 1) == 0)
  {
    if (*(*(*(a1 + 96) + 8) + 24) == 1)
    {
      [*(*(*(a1 + 104) + 8) + 40) appendAttributedString:*(a1 + 72)];
    }

    v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v11 attributes:*(a1 + 80)];
    *(*(*(a1 + 96) + 8) + 24) = 1;
    *(*(*(a1 + 88) + 8) + 24) = 0;
    [*(a1 + 64) addObject:v11];
    if (v14)
    {
LABEL_21:
      [*(*(*(a1 + 104) + 8) + 40) appendAttributedString:{v14, v26}];
    }
  }

LABEL_22:
}

- (MKTransitInfoPreloader)initWithTransitLabels:(id)labels
{
  labelsCopy = labels;
  v9.receiver = self;
  v9.super_class = MKTransitInfoPreloader;
  v5 = [(MKTransitInfoPreloader *)&v9 init];
  if (v5)
  {
    v6 = [labelsCopy copy];
    transitLabels = v5->_transitLabels;
    v5->_transitLabels = v6;
  }

  return v5;
}

+ (id)separatorImageWithLineHeight:(double)height
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen nativeScale];
  v5 = 1.0;
  if (v6 > 1.0)
  {
    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen2 nativeScale];
    v5 = v8;
  }

  v9 = 1.0 / v5;
  mainScreen3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen3 scale];
  v12 = v11;
  v18.width = v9;
  v18.height = height;
  UIGraphicsBeginImageContextWithOptions(v18, 0, v12);

  lightGrayColor = [MEMORY[0x1E69DC888] lightGrayColor];
  [lightGrayColor setFill];

  CurrentContext = UIGraphicsGetCurrentContext();
  v19.origin.y = height * 0.125;
  v19.size.height = height * 0.75;
  v19.origin.x = 0.0;
  v19.size.width = v9;
  CGContextFillRect(CurrentContext, v19);
  v15 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v15;
}

+ (id)attributedTextFromPreload:(id)preload view:(id)view
{
  viewCopy = view;
  attributedString = [preload attributedString];
  v7 = [attributedString copy];

  font = [viewCopy font];
  [font capHeight];
  v10 = v9;

  v11 = *MEMORY[0x1E69DB5F8];
  v12 = [v7 length];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__MKTransitInfoPreloader_attributedTextFromPreload_view___block_invoke;
  v15[3] = &unk_1E76C6990;
  v17 = v10;
  v16 = viewCopy;
  v13 = viewCopy;
  [v7 enumerateAttribute:v11 inRange:0 options:v12 usingBlock:{0, v15}];

  return v7;
}

void __57__MKTransitInfoPreloader_attributedTextFromPreload_view___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = v6;
      v3 = [v2 image];
      [v3 size];
      UIRoundToViewScale();
      v5 = v4;

      [v2 setVerticalOffset:v5];
    }
  }
}

@end