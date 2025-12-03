@interface _SFQRImagePreviewViewController
- (BCSAction)action;
- (_SFQRImagePreviewViewController)initWithElementInfo:(id)info;
- (id)_contentViewSubtitleWithAction:(id)action;
- (void)loadView;
@end

@implementation _SFQRImagePreviewViewController

- (_SFQRImagePreviewViewController)initWithElementInfo:(id)info
{
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = _SFQRImagePreviewViewController;
  v6 = [(_SFQRImagePreviewViewController *)&v12 initWithNibName:0 bundle:0];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v6->_imageView;
    v6->_imageView = v7;

    image = [infoCopy image];
    [(UIImageView *)v6->_imageView setImage:image];

    objc_storeStrong(&v6->_activatedElementInfo, info);
    v10 = v6;
  }

  return v6;
}

- (BCSAction)action
{
  v3 = +[_SFQRCodeDetectionController sharedController];
  v4 = [v3 actionForElement:self->_activatedElementInfo];

  return v4;
}

- (id)_contentViewSubtitleWithAction:(id)action
{
  actionCopy = action;
  urlThatCanBeOpened = [actionCopy urlThatCanBeOpened];

  if (urlThatCanBeOpened)
  {
    urlThatCanBeOpened2 = [actionCopy urlThatCanBeOpened];
    urlThatCanBeOpened = [urlThatCanBeOpened2 safari_userVisibleString];
  }

  return urlThatCanBeOpened;
}

- (void)loadView
{
  v82[12] = *MEMORY[0x1E69E9840];
  v81.receiver = self;
  v81.super_class = _SFQRImagePreviewViewController;
  [(_SFQRImagePreviewViewController *)&v81 loadView];
  view = [(_SFQRImagePreviewViewController *)self view];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v6 = v5;
  v8 = v7;

  image = [(UIImageView *)self->_imageView image];
  cGImage = [image CGImage];

  Width = CGImageGetWidth(cGImage);
  Height = CGImageGetHeight(cGImage);
  v13 = Width / Height;
  v14 = v6 / v8;
  v15 = v8 / Height * Width;
  if (v13 >= v6 / v8)
  {
    v15 = v6;
  }

  if (v13 > v14)
  {
    v16 = v6 / Width * Height;
  }

  else
  {
    v16 = v8;
  }

  if (v13 > v14)
  {
    v17 = v6;
  }

  else
  {
    v17 = v15;
  }

  [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
  imageView = self->_imageView;
  v19 = view;
  [v19 addSubview:imageView];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [v19 setBackgroundColor:whiteColor];

  v21 = [SFQRImageHeaderView alloc];
  v22 = [(SFQRImageHeaderView *)v21 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(SFQRImageHeaderView *)v22 setBackgroundColor:systemBackgroundColor];

  action = [(_SFQRImagePreviewViewController *)self action];
  [(SFQRImageHeaderView *)v22 setAction:action];
  [(SFQRImageHeaderView *)v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = v22;
  [v19 addSubview:v22];
  v25 = [SFQRImageContentView alloc];
  localizedDefaultActionDescription = [action localizedDefaultActionDescription];
  v27 = [(_SFQRImagePreviewViewController *)self _contentViewSubtitleWithAction:action];
  v28 = [(SFQRImageContentView *)v25 initWithTitle:localizedDefaultActionDescription subtitle:v27];

  systemBackgroundColor2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(SFQRImageContentView *)v28 setBackgroundColor:systemBackgroundColor2];

  view2 = [(_SFQRImagePreviewViewController *)self view];
  [view2 bounds];
  [(SFQRImageContentView *)v28 sizeThatFits:v31, v32];
  v34 = v33;

  [(SFQRImageContentView *)v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v19 addSubview:v28];
  [(_SFQRImagePreviewViewController *)self setPreferredContentSize:fmin(v6, v8), v16 + 56.0 + v34];
  v65 = MEMORY[0x1E696ACD8];
  v35 = self->_imageView;
  topAnchor = [(SFQRImageHeaderView *)v24 topAnchor];
  topAnchor2 = [v19 topAnchor];
  v77 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v82[0] = v77;
  heightAnchor = [(SFQRImageHeaderView *)v24 heightAnchor];
  v74 = [heightAnchor constraintEqualToConstant:56.0];
  v82[1] = v74;
  v76 = v24;
  widthAnchor = [(SFQRImageHeaderView *)v24 widthAnchor];
  widthAnchor2 = [v19 widthAnchor];
  v71 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v82[2] = v71;
  bottomAnchor = [(SFQRImageHeaderView *)v24 bottomAnchor];
  v36 = v35;
  v63 = v35;
  topAnchor3 = [(UIImageView *)v35 topAnchor];
  v68 = [bottomAnchor constraintEqualToAnchor:topAnchor3];
  v82[3] = v68;
  widthAnchor3 = [(UIImageView *)self->_imageView widthAnchor];
  v67 = widthAnchor3;
  heightAnchor2 = [(UIImageView *)self->_imageView heightAnchor];
  v66 = heightAnchor2;
  v39 = v17 / v16;
  if (v16 == 0.0)
  {
    v39 = 1.0;
  }

  v64 = [widthAnchor3 constraintEqualToAnchor:heightAnchor2 multiplier:v39];
  v82[4] = v64;
  leftAnchor = [(UIImageView *)v36 leftAnchor];
  leftAnchor2 = [v19 leftAnchor];
  v60 = [leftAnchor constraintGreaterThanOrEqualToAnchor:leftAnchor2];
  v82[5] = v60;
  rightAnchor = [(UIImageView *)v36 rightAnchor];
  rightAnchor2 = [v19 rightAnchor];
  v56 = [rightAnchor constraintLessThanOrEqualToAnchor:rightAnchor2];
  v82[6] = v56;
  centerXAnchor = [(UIImageView *)v36 centerXAnchor];
  centerXAnchor2 = [v19 centerXAnchor];
  v53 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v82[7] = v53;
  bottomAnchor2 = [(UIImageView *)v36 bottomAnchor];
  v40 = v28;
  topAnchor4 = [(SFQRImageContentView *)v28 topAnchor];
  v50 = [bottomAnchor2 constraintEqualToAnchor:topAnchor4];
  v82[8] = v50;
  heightAnchor3 = [(SFQRImageContentView *)v28 heightAnchor];
  v42 = [heightAnchor3 constraintEqualToConstant:v34];
  v82[9] = v42;
  v59 = v28;
  widthAnchor4 = [(SFQRImageContentView *)v28 widthAnchor];
  widthAnchor5 = [v19 widthAnchor];
  v45 = [widthAnchor4 constraintEqualToAnchor:widthAnchor5];
  v82[10] = v45;
  bottomAnchor3 = [(SFQRImageContentView *)v40 bottomAnchor];
  bottomAnchor4 = [v19 bottomAnchor];

  v48 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v82[11] = v48;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:12];
  [v65 activateConstraints:v49];
}

@end