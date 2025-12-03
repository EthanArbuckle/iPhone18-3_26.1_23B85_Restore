@interface MKPhotoBigAttributionView
+ (id)bigAttributionViewForMapItem:(id)item attributionType:(int64_t)type isFirstParty:(BOOL)party context:(int64_t)context;
- (MKPhotoBigAttributionView)initWithContext:(int64_t)context;
- (void)beginAnimatingActivityIndicator;
- (void)endAnimatingActivityIndicatorWithError:(id)error;
- (void)layoutSubviews;
- (void)setMapItem:(id)item;
- (void)setType:(int64_t)type;
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
      mapItem = [(MKPhotoBigAttributionView *)self mapItem];
      _geoMapItem = [mapItem _geoMapItem];
      _photos = [_geoMapItem _photos];
      firstObject = [_photos firstObject];
      v11 = [(MKMapItemPhoto *)v6 initWithGeoMapItemPhoto:firstObject];

      [(UIImageView *)self->_imageView frame];
      Width = CGRectGetWidth(v16);
      width = [(MKMapItemPhoto *)v11 urlForBestPhotoForSize:Width, Width];
      if (width)
      {
        v14 = +[MKAppImageManager sharedImageManager];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __53__MKPhotoBigAttributionView_updateBackgroundIfNeeded__block_invoke;
        v15[3] = &unk_1E76CC830;
        v15[4] = self;
        [v14 loadAppImageAtURL:width completionHandler:v15];
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

- (void)setType:(int64_t)type
{
  if (self->_type != type)
  {
    self->_type = type;
    [(MKPhotoBigAttributionView *)self didUpdateAttributionViewType];
  }
}

- (void)setMapItem:(id)item
{
  itemCopy = item;
  if (self->_mapItem != itemCopy)
  {
    v6 = itemCopy;
    objc_storeStrong(&self->_mapItem, item);
    [(MKPhotoBigAttributionView *)self updateBackgroundIfNeeded];
    [(MKPhotoBigAttributionView *)self didUpdateMapItem];
    itemCopy = v6;
  }
}

- (void)endAnimatingActivityIndicatorWithError:(id)error
{
  spinner = [(MKPhotoBigAttributionView *)self spinner];
  [spinner stopAnimating];

  [(MKPhotoBigAttributionView *)self didEndAnimatingActivityIndicatorView];
}

- (void)beginAnimatingActivityIndicator
{
  [(MKPhotoBigAttributionView *)self willStartAnimatingActivityIndicatorView];
  spinner = [(MKPhotoBigAttributionView *)self spinner];
  [spinner startAnimating];
}

- (MKPhotoBigAttributionView)initWithContext:(int64_t)context
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
    v8->_context = context;
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
    contentView = [(UIView *)v17 contentView];
    v19 = v9->_contentView;
    v9->_contentView = contentView;

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
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIActivityIndicatorView *)v9->_spinner setColor:whiteColor];

    contentView2 = [(MKPhotoBigAttributionView *)v9 contentView];
    [contentView2 addSubview:v9->_spinner];

    v40 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UIImageView *)v9->_imageView leadingAnchor];
    leadingAnchor2 = [(MKPhotoBigAttributionView *)v9 leadingAnchor];
    v49 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v58[0] = v49;
    trailingAnchor = [(UIImageView *)v9->_imageView trailingAnchor];
    trailingAnchor2 = [(MKPhotoBigAttributionView *)v9 trailingAnchor];
    v46 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v58[1] = v46;
    topAnchor = [(UIImageView *)v9->_imageView topAnchor];
    topAnchor2 = [(MKPhotoBigAttributionView *)v9 topAnchor];
    v43 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v58[2] = v43;
    bottomAnchor = [(UIImageView *)v9->_imageView bottomAnchor];
    bottomAnchor2 = [(MKPhotoBigAttributionView *)v9 bottomAnchor];
    v39 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v58[3] = v39;
    leadingAnchor3 = [(UIView *)v9->_backgroundView leadingAnchor];
    leadingAnchor4 = [(MKPhotoBigAttributionView *)v9 leadingAnchor];
    v36 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v58[4] = v36;
    trailingAnchor3 = [(UIView *)v9->_backgroundView trailingAnchor];
    trailingAnchor4 = [(MKPhotoBigAttributionView *)v9 trailingAnchor];
    v26 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v58[5] = v26;
    topAnchor3 = [(UIView *)v9->_backgroundView topAnchor];
    topAnchor4 = [(MKPhotoBigAttributionView *)v9 topAnchor];
    v29 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v58[6] = v29;
    bottomAnchor3 = [(UIView *)v9->_backgroundView bottomAnchor];
    bottomAnchor4 = [(MKPhotoBigAttributionView *)v9 bottomAnchor];
    v32 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v58[7] = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:8];
    [v40 activateConstraints:v33];
  }

  return v9;
}

+ (id)bigAttributionViewForMapItem:(id)item attributionType:(int64_t)type isFirstParty:(BOOL)party context:(int64_t)context
{
  v8 = off_1E76C4658;
  if (!party)
  {
    v8 = off_1E76C4AD8;
  }

  v9 = *v8;
  itemCopy = item;
  v11 = [[v9 alloc] initWithContext:context];
  [v11 setMapItem:itemCopy];

  [v11 setType:type];

  return v11;
}

@end