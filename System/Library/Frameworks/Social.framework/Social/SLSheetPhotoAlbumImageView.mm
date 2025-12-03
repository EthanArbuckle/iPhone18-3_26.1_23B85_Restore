@interface SLSheetPhotoAlbumImageView
- (BOOL)_shouldDisplayImageCountLabel;
- (CGSize)intrinsicContentSize;
- (SLSheetPhotoAlbumImageView)initWithPrincipalAttachments:(id)attachments;
- (UIEdgeInsets)alignmentRectInsets;
- (id)_itemCountString;
- (void)addPreviewImage:(id)image;
- (void)layoutSubviews;
- (void)sizeToFit;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SLSheetPhotoAlbumImageView

- (SLSheetPhotoAlbumImageView)initWithPrincipalAttachments:(id)attachments
{
  v54 = *MEMORY[0x1E69E9840];
  attachmentsCopy = attachments;
  v52.receiver = self;
  v52.super_class = SLSheetPhotoAlbumImageView;
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = [(SLSheetImagePreviewView *)&v52 initWithFrame:*MEMORY[0x1E695F058], v6, v7, v8];
  if (v9)
  {
    v9->_imageQuantity = [attachmentsCopy count];
    v9->_allAttachmentsAreImages = 1;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v10 = attachmentsCopy;
    v11 = [v10 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v49;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v49 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v48 + 1) + 8 * i);
          if ([v15 type] && objc_msgSend(v15, "type") != 2)
          {
            v9->_allAttachmentsAreImages = 0;
            goto LABEL_13;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v48 objects:v53 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    v16 = [v10 count];
    if (v16 >= 3)
    {
      v17 = 3;
    }

    else
    {
      v17 = v16;
    }

    v18 = [v10 subarrayWithRange:{0, v17}];
    [(SLSheetImagePreviewView *)v9 setPrincipalAttachments:v18];

    v19 = objc_opt_new();
    frameViews = v9->_frameViews;
    v9->_frameViews = v19;

    v47.receiver = v9;
    v47.super_class = SLSheetPhotoAlbumImageView;
    [(SLSheetImagePreviewView *)&v47 intrinsicContentSize];
    v22 = v21;
    v24 = v23;
    principalAttachments = [(SLSheetImagePreviewView *)v9 principalAttachments];
    v26 = [principalAttachments count];

    if (v26)
    {
      v27 = 0;
      v28 = *MEMORY[0x1E69DEB00];
      do
      {
        v29 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{0.0, 0.0, v22, v24}];
        [v29 setClipsToBounds:1];
        [(NSMutableArray *)v9->_frameViews addObject:v29];
        v30 = [MEMORY[0x1E69DC888] colorWithWhite:0.8 alpha:1.0];
        [v29 setBackgroundColor:v30];

        [v29 setContentMode:2];
        [(SLSheetPhotoAlbumImageView *)v9 addSubview:v29];
        [v29 _setVisualAltitude:v28];
        ++v27;
        [v29 _setVisualAltitudeBias:{v27 * 0.333339989, v27 * 0.333339989}];

        principalAttachments2 = [(SLSheetImagePreviewView *)v9 principalAttachments];
        v32 = [principalAttachments2 count];
      }

      while (v32 > v27);
    }

    v33 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
    imageCountLabel = v9->_imageCountLabel;
    v9->_imageCountLabel = v33;

    v35 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
    [(UILabel *)v9->_imageCountLabel setFont:v35];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v9->_imageCountLabel setTextColor:secondaryLabelColor];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v9->_imageCountLabel setBackgroundColor:clearColor];

    _itemCountString = [(SLSheetPhotoAlbumImageView *)v9 _itemCountString];
    [(UILabel *)v9->_imageCountLabel setText:_itemCountString];

    [(UILabel *)v9->_imageCountLabel setTextAlignment:1];
    [(UILabel *)v9->_imageCountLabel sizeToFit];
    LODWORD(v39) = 1144750080;
    [(SLSheetPhotoAlbumImageView *)v9 setContentHuggingPriority:0 forAxis:v39];
    LODWORD(v40) = 1144750080;
    [(SLSheetPhotoAlbumImageView *)v9 setContentHuggingPriority:1 forAxis:v40];
    LODWORD(v41) = 1144750080;
    [(SLSheetPhotoAlbumImageView *)v9 setContentCompressionResistancePriority:0 forAxis:v41];
    LODWORD(v42) = 1144750080;
    [(SLSheetPhotoAlbumImageView *)v9 setContentCompressionResistancePriority:1 forAxis:v42];
    [(SLSheetPhotoAlbumImageView *)v9 sizeToFit];
    layer = [(SLSheetPhotoAlbumImageView *)v9 layer];
    [layer setShouldRasterize:1];

    layer2 = [(SLSheetPhotoAlbumImageView *)v9 layer];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    [layer2 setRasterizationScale:?];

    [(SLSheetPhotoAlbumImageView *)v9 setNeedsLayout];
  }

  return v9;
}

- (void)addPreviewImage:(id)image
{
  imageCopy = image;
  numPreviewImagesAdded = self->_numPreviewImagesAdded;
  if (numPreviewImagesAdded < [(NSMutableArray *)self->_frameViews count])
  {
    v5 = [(NSMutableArray *)self->_frameViews objectAtIndexedSubscript:[(NSMutableArray *)self->_frameViews count]+ ~self->_numPreviewImagesAdded];
    [v5 setImage:imageCopy];
    ++self->_numPreviewImagesAdded;
  }
}

- (BOOL)_shouldDisplayImageCountLabel
{
  traitCollection = [(SLSheetPhotoAlbumImageView *)self traitCollection];
  v4 = [traitCollection verticalSizeClass] == 2 && -[NSMutableArray count](self->_frameViews, "count") > 1;

  return v4;
}

- (id)_itemCountString
{
  allAttachmentsAreImages = self->_allAttachmentsAreImages;
  v4 = MEMORY[0x1E696AEC0];
  v5 = SLSocialFrameworkBundle();
  v6 = v5;
  if (allAttachmentsAreImages)
  {
    v7 = @"SHEET_IMAGE_COUNT_STRING";
  }

  else
  {
    v7 = @"SHEET_ITEM_COUNT_STRING";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_1F41EC300 table:@"Localizable"];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_imageQuantity];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v11 = [v9 descriptionWithLocale:currentLocale];
  v12 = [v4 stringWithFormat:v8, v11];

  return v12;
}

- (CGSize)intrinsicContentSize
{
  v18.receiver = self;
  v18.super_class = SLSheetPhotoAlbumImageView;
  [(SLSheetImagePreviewView *)&v18 intrinsicContentSize];
  v5 = v4;
  v7 = v6;
  if ([(SLSheetPhotoAlbumImageView *)self _shouldDisplayImageCountLabel])
  {
    v8 = v7 + 14.5;
  }

  else
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v11 = v10;

    if (v11 <= 1.0)
    {
      v12 = 3.0;
    }

    else
    {
      v12 = 2.5;
    }

    v8 = v7 + v12 * ([(NSMutableArray *)self->_frameViews count]- 1);
  }

  v13 = [MEMORY[0x1E696B098] valueWithCGSize:{v5, v8}];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[SLSheetPhotoAlbumImageView _shouldDisplayImageCountLabel](self, "_shouldDisplayImageCountLabel")}];
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableArray count](self->_frameViews, "count")}];
  _SLLog(v2, 7, @"SLSheetPhotoAlbumImageView intrinsicContentSize returning %@ _shouldDisplayImageCountLabel %@ _frameViews.count %@");

  v15 = v5;
  v16 = v8;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v17.receiver = self;
  v17.super_class = SLSheetPhotoAlbumImageView;
  [(SLSheetImagePreviewView *)&v17 traitCollectionDidChange:changeCopy];
  if ([(NSMutableArray *)self->_frameViews count]>= 2)
  {
    traitCollection = [(SLSheetPhotoAlbumImageView *)self traitCollection];
    verticalSizeClass = [traitCollection verticalSizeClass];
    verticalSizeClass2 = [changeCopy verticalSizeClass];

    if (verticalSizeClass != verticalSizeClass2)
    {
      v9 = MEMORY[0x1E696AD98];
      traitCollection2 = [(SLSheetPhotoAlbumImageView *)self traitCollection];
      v16 = [v9 numberWithInteger:{objc_msgSend(traitCollection2, "verticalSizeClass")}];
      _SLLog(v3, 7, @"SLSheetPhotoAlbumImageView will invalidateIntrinsicContentSize new verticalSizeClass %@");

      [(SLSheetPhotoAlbumImageView *)self invalidateIntrinsicContentSize];
    }
  }

  traitCollection3 = [(SLSheetPhotoAlbumImageView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection3 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
  v14 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

  if ((v14 & 1) == 0)
  {
    v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
    [(UILabel *)self->_imageCountLabel setFont:v15];
  }
}

- (void)sizeToFit
{
  [(SLSheetPhotoAlbumImageView *)self intrinsicContentSize];

  [(SLSheetPhotoAlbumImageView *)self setBounds:0.0, 0.0, v3, v4];
}

- (void)layoutSubviews
{
  [(SLSheetPhotoAlbumImageView *)self bounds];
  v24 = NSStringFromCGRect(v28);
  _SLLog(v2, 7, @"SLSheetPhotoAlbumImageView bounds %@");

  v27.receiver = self;
  v27.super_class = SLSheetPhotoAlbumImageView;
  [(SLSheetImagePreviewView *)&v27 intrinsicContentSize];
  frameViews = self->_frameViews;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __44__SLSheetPhotoAlbumImageView_layoutSubviews__block_invoke;
  v26[3] = &unk_1E81761E8;
  v26[5] = v5;
  v26[6] = v6;
  v26[4] = self;
  [(NSMutableArray *)frameViews enumerateObjectsUsingBlock:v26];
  _shouldDisplayImageCountLabel = [(SLSheetPhotoAlbumImageView *)self _shouldDisplayImageCountLabel];
  imageCountLabel = self->_imageCountLabel;
  if (_shouldDisplayImageCountLabel)
  {
    superview = [(UILabel *)imageCountLabel superview];

    if (!superview)
    {
      [(SLSheetPhotoAlbumImageView *)self addSubview:self->_imageCountLabel];
    }

    lastObject = [(NSMutableArray *)self->_frameViews lastObject];
    [lastObject frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    [(UILabel *)self->_imageCountLabel frame];
    v20 = v19;
    v22 = v21;
    v29.origin.x = v12;
    v29.origin.y = v14;
    v29.size.width = v16;
    v29.size.height = v18;
    v23 = CGRectGetMaxY(v29) + 4.0;
    [(UILabel *)self->_imageCountLabel setFrame:v20, v23, v16, v22];
    v30.origin.x = v20;
    v30.origin.y = v23;
    v30.size.width = v16;
    v30.size.height = v22;
    v25 = NSStringFromCGRect(v30);
    _SLLog(v2, 7, @"SLSheetPhotoAlbumImageView labelFrame %@");
  }

  else
  {
    [(UILabel *)imageCountLabel removeFromSuperview];
  }
}

void __44__SLSheetPhotoAlbumImageView_layoutSubviews__block_invoke(double *a1, void *a2, unint64_t a3)
{
  v5 = a1[5];
  v6 = a1[6];
  v7 = *(*(a1 + 4) + 448);
  v19 = a2;
  v8 = [v7 count];
  v9 = ((v8 + ~a3) + (v8 + ~a3));
  v10 = [*(*(a1 + 4) + 448) count];
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = v5;
  v21.size.height = v6;
  v22 = CGRectInset(v21, v9, ((v10 + ~a3) + (v10 + ~a3)));
  x = v22.origin.x;
  width = v22.size.width;
  height = v22.size.height;
  v14 = a3;
  v15 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v15 scale];
  v17 = v16;

  v18 = 3.0;
  if (v17 > 1.0)
  {
    v18 = 2.5;
  }

  [v19 setFrame:{x, v18 * v14, width, height}];
}

- (UIEdgeInsets)alignmentRectInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end