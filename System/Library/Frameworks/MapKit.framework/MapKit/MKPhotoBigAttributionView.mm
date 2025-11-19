@interface MKPhotoBigAttributionView
+ (id)bigAttributionViewForMapItem:(id)a3 attributionType:(int64_t)a4 isFirstParty:(BOOL)a5 context:(int64_t)a6;
- (MKPhotoBigAttributionView)initWithContext:(int64_t)a3;
- (void)beginAnimatingActivityIndicator;
- (void)endAnimatingActivityIndicatorWithError:(id)a3;
- (void)layoutSubviews;
- (void)setMapItem:(id)a3;
- (void)setType:(int64_t)a3;
- (void)updateBackgroundIfNeeded;
@end

@implementation MKPhotoBigAttributionView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MKPhotoBigAttributionView;
  [(MKPhotoBigAttributionView *)&v3 layoutSubviews];
  [(MKPhotoBigAttributionView *)self updateBackgroundIfNeeded];
}

- (void)updateBackgroundIfNeeded
{
  if (self->_needsImageLoad)
  {
    [(MKPhotoBigAttributionView *)self frame];
    if (v4 != *MEMORY[0x1E695F060] || v3 != *(MEMORY[0x1E695F060] + 8))
    {
      self->_needsImageLoad = 0;
      v6 = [MKMapItemPhoto alloc];
      v7 = [(MKPhotoBigAttributionView *)self mapItem];
      v8 = [v7 _geoMapItem];
      v9 = [v8 _photos];
      v10 = [v9 firstObject];
      v11 = [(MKMapItemPhoto *)v6 initWithGeoMapItemPhoto:v10];

      [(UIImageView *)self->_imageView frame];
      Width = CGRectGetWidth(v16);
      v13 = [(MKMapItemPhoto *)v11 urlForBestPhotoForSize:Width, Width];
      if (v13)
      {
        v14 = +[MKAppImageManager sharedImageManager];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __53__MKPhotoBigAttributionView_updateBackgroundIfNeeded__block_invoke;
        v15[3] = &unk_1E76CC830;
        v15[4] = self;
        [v14 loadAppImageAtURL:v13 completionHandler:v15];
      }
    }
  }
}

void __53__MKPhotoBigAttributionView_updateBackgroundIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E69DD250];
  v5 = *(a1 + 32);
  v6 = *(v5 + 408);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__MKPhotoBigAttributionView_updateBackgroundIfNeeded__block_invoke_2;
  v8[3] = &unk_1E76CD810;
  v8[4] = v5;
  v9 = v3;
  v7 = v3;
  [v4 transitionWithView:v6 duration:5242880 options:v8 animations:0 completion:0.200000003];
}

- (void)setType:(int64_t)a3
{
  if (self->_type != a3)
  {
    self->_type = a3;
    [(MKPhotoBigAttributionView *)self didUpdateAttributionViewType];
  }
}

- (void)setMapItem:(id)a3
{
  v5 = a3;
  if (self->_mapItem != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_mapItem, a3);
    [(MKPhotoBigAttributionView *)self updateBackgroundIfNeeded];
    [(MKPhotoBigAttributionView *)self didUpdateMapItem];
    v5 = v6;
  }
}

- (void)endAnimatingActivityIndicatorWithError:(id)a3
{
  v4 = [(MKPhotoBigAttributionView *)self spinner];
  [v4 stopAnimating];

  [(MKPhotoBigAttributionView *)self didEndAnimatingActivityIndicatorView];
}

- (void)beginAnimatingActivityIndicator
{
  [(MKPhotoBigAttributionView *)self willStartAnimatingActivityIndicatorView];
  v3 = [(MKPhotoBigAttributionView *)self spinner];
  [v3 startAnimating];
}

- (MKPhotoBigAttributionView)initWithContext:(int64_t)a3
{
  v59[2] = *MEMORY[0x1E69E9840];
  v57.receiver = self;
  v57.super_class = MKPhotoBigAttributionView;
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [(MKPhotoBigAttributionView *)&v57 initWithFrame:*MEMORY[0x1E695F058], v5, v6, v7];
  v9 = v8;
  if (v8)
  {
    v8->_needsImageLoad = 1;
    v8->_context = a3;
    v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v4, v5, v6, v7}];
    [(MKPhotoBigAttributionView *)v9 setClipsToBounds:1];
    [(UIImageView *)v10 setClipsToBounds:1];
    [(UIImageView *)v10 _mapkit_setImageContentMode:2];
    imageView = v9->_imageView;
    v9->_imageView = v10;
    v53 = v10;

    [(UIImageView *)v9->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MKPhotoBigAttributionView *)v9 addSubview:v9->_imageView];
    contentView = v9->_contentView;
    v9->_contentView = 0;

    v13 = MEMORY[0x1E69DD290];
    v14 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.5];
    v56 = [v13 effectCompositingColor:v14];

    v55 = [MEMORY[0x1E69DC730] effectWithBlurRadius:14.0];
    v15 = MEMORY[0x1E69DD290];
    v59[0] = v56;
    v59[1] = v55;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:2];
    v54 = [v15 effectCombiningEffects:v16];

    v17 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v54];
    v18 = [(UIView *)v17 contentView];
    v19 = v9->_contentView;
    v9->_contentView = v18;

    backgroundView = v9->_backgroundView;
    v9->_backgroundView = v17;
    v50 = v17;

    [(UIView *)v9->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MKPhotoBigAttributionView *)v9 addSubview:v9->_backgroundView];
    v21 = [objc_alloc(MEMORY[0x1E69DC638]) initWithFrame:{v4, v5, v6, v7}];
    spinner = v9->_spinner;
    v9->_spinner = v21;

    [(UIActivityIndicatorView *)v9->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIActivityIndicatorView *)v9->_spinner setHidesWhenStopped:1];
    v23 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIActivityIndicatorView *)v9->_spinner setColor:v23];

    v24 = [(MKPhotoBigAttributionView *)v9 contentView];
    [v24 addSubview:v9->_spinner];

    v40 = MEMORY[0x1E696ACD8];
    v52 = [(UIImageView *)v9->_imageView leadingAnchor];
    v51 = [(MKPhotoBigAttributionView *)v9 leadingAnchor];
    v49 = [v52 constraintEqualToAnchor:v51];
    v58[0] = v49;
    v48 = [(UIImageView *)v9->_imageView trailingAnchor];
    v47 = [(MKPhotoBigAttributionView *)v9 trailingAnchor];
    v46 = [v48 constraintEqualToAnchor:v47];
    v58[1] = v46;
    v45 = [(UIImageView *)v9->_imageView topAnchor];
    v44 = [(MKPhotoBigAttributionView *)v9 topAnchor];
    v43 = [v45 constraintEqualToAnchor:v44];
    v58[2] = v43;
    v42 = [(UIImageView *)v9->_imageView bottomAnchor];
    v41 = [(MKPhotoBigAttributionView *)v9 bottomAnchor];
    v39 = [v42 constraintEqualToAnchor:v41];
    v58[3] = v39;
    v38 = [(UIView *)v9->_backgroundView leadingAnchor];
    v37 = [(MKPhotoBigAttributionView *)v9 leadingAnchor];
    v36 = [v38 constraintEqualToAnchor:v37];
    v58[4] = v36;
    v35 = [(UIView *)v9->_backgroundView trailingAnchor];
    v25 = [(MKPhotoBigAttributionView *)v9 trailingAnchor];
    v26 = [v35 constraintEqualToAnchor:v25];
    v58[5] = v26;
    v27 = [(UIView *)v9->_backgroundView topAnchor];
    v28 = [(MKPhotoBigAttributionView *)v9 topAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    v58[6] = v29;
    v30 = [(UIView *)v9->_backgroundView bottomAnchor];
    v31 = [(MKPhotoBigAttributionView *)v9 bottomAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];
    v58[7] = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:8];
    [v40 activateConstraints:v33];
  }

  return v9;
}

+ (id)bigAttributionViewForMapItem:(id)a3 attributionType:(int64_t)a4 isFirstParty:(BOOL)a5 context:(int64_t)a6
{
  v8 = off_1E76C4658;
  if (!a5)
  {
    v8 = off_1E76C4AD8;
  }

  v9 = *v8;
  v10 = a3;
  v11 = [[v9 alloc] initWithContext:a6];
  [v11 setMapItem:v10];

  [v11 setType:a4];

  return v11;
}

@end