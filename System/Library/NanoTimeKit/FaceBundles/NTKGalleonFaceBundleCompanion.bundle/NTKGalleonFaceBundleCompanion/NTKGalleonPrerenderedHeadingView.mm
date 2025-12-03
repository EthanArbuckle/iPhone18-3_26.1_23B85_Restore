@interface NTKGalleonPrerenderedHeadingView
- (CGSize)sizeThatFits:(CGSize)fits;
- (NTKGalleonPrerenderedHeadingView)initWithCoder:(id)coder;
- (NTKGalleonPrerenderedHeadingView)initWithFrame:(CGRect)frame;
- (void)_commonInit;
- (void)galleon_setHeading:(double)heading;
- (void)layoutSubviews;
- (void)setTextColor:(id)color;
@end

@implementation NTKGalleonPrerenderedHeadingView

- (void)setTextColor:(id)color
{
  headingLayer = self->_headingLayer;
  colorCopy = color;
  v10 = objc_msgSend_CGColor(color, v6, v7, v8);

  objc_msgSend_setContentsMultiplyColor_(headingLayer, v9, v10, v11);
}

- (NTKGalleonPrerenderedHeadingView)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = NTKGalleonPrerenderedHeadingView;
  v3 = [(NTKGalleonPrerenderedHeadingView *)&v9 initWithCoder:coder];
  v7 = v3;
  if (v3)
  {
    objc_msgSend__commonInit(v3, v4, v5, v6);
  }

  return v7;
}

- (NTKGalleonPrerenderedHeadingView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = NTKGalleonPrerenderedHeadingView;
  v3 = [(NTKGalleonPrerenderedHeadingView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v7 = v3;
  if (v3)
  {
    objc_msgSend__commonInit(v3, v4, v5, v6);
  }

  return v7;
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = NTKGalleonPrerenderedHeadingView;
  [(NTKGalleonPrerenderedHeadingView *)&v28 layoutSubviews];
  objc_msgSend_bounds(self, v3, v4, v5);
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  MidX = CGRectGetMidX(v29);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  MidY = CGRectGetMidY(v30);
  objc_msgSend_setPosition_(self->_headingLayer, v12, v13, v14, MidX, MidY);
  headingLayer = self->_headingLayer;
  objc_msgSend_size(self->_headingImage, v16, v17, v18);
  v20 = v19;
  objc_msgSend_size(self->_headingImage, v21, v22, v23);
  objc_msgSend_setBounds_(headingLayer, v24, v25, v26, 0.0, 0.0, v20, v27);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  objc_msgSend_size(self->_headingImage, a2, v3, v4, fits.width, fits.height);
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)_commonInit
{
  v5 = objc_msgSend_sharedGenerator(NTKGalleonHeadingImageGenerator, a2, v2, v3);
  imageGenerator = self->_imageGenerator;
  self->_imageGenerator = v5;

  v10 = objc_msgSend_sharedGenerator(NTKGalleonHeadingGenerator, v7, v8, v9);
  headingGenerator = self->_headingGenerator;
  self->_headingGenerator = v10;

  v14 = objc_msgSend_imageForHeading_(self->_imageGenerator, v12, 0, v13);
  headingImage = self->_headingImage;
  self->_headingImage = v14;
  v16 = v14;

  v20 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v17, v18, v19);
  headingLayer = self->_headingLayer;
  self->_headingLayer = v20;

  v25 = objc_msgSend_tintColor(self, v22, v23, v24);
  v26 = v25;
  v30 = objc_msgSend_CGColor(v26, v27, v28, v29);

  objc_msgSend_setContentsMultiplyColor_(self->_headingLayer, v31, v30, v32);
  v33 = self->_headingLayer;
  v34 = v16;
  v38 = objc_msgSend_CGImage(v34, v35, v36, v37);
  objc_msgSend_setContents_(v33, v39, v38, v40);
  objc_msgSend_setContentsFormat_(self->_headingLayer, v41, *MEMORY[0x277CDA0C8], v42);
  v48 = objc_msgSend_layer(self, v43, v44, v45);
  objc_msgSend_addSublayer_(v48, v46, self->_headingLayer, v47);
}

- (void)galleon_setHeading:(double)heading
{
  v6 = vcvtmd_u64_f64(heading);
  if (objc_msgSend_heading(self, a2, v3, v4) != v6)
  {
    v38 = objc_msgSend_stringForHeading_(self->_headingGenerator, v7, v6, v8);
    objc_msgSend_setAccessibilityLabel_(self, v9, v38, v10);
    objc_msgSend_setHeading_(self, v11, v6, v12);
    v15 = objc_msgSend_imageForHeading_(self->_imageGenerator, v13, v6, v14);
    headingImage = self->_headingImage;
    self->_headingImage = v15;

    v20 = objc_msgSend_CGImage(self->_headingImage, v17, v18, v19);
    v24 = objc_msgSend_contents(self->_headingLayer, v21, v22, v23);
    objc_msgSend_setContents_(self->_headingLayer, v25, v20, v26);
    Width = CGImageGetWidth(v20);
    Height = CGImageGetHeight(v20);
    v29 = CGImageGetWidth(v24);
    v33 = CGImageGetHeight(v24);
    if (Width != v29 || Height != v33)
    {
      objc_msgSend_setNeedsLayout(self, v30, v31, v32);
      objc_msgSend_invalidateIntrinsicContentSize(self, v35, v36, v37);
    }
  }
}

@end