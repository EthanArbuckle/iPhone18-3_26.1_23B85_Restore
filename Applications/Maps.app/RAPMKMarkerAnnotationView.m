@interface RAPMKMarkerAnnotationView
- (BOOL)updateCalloutViewIfNeededAnimated:(BOOL)a3;
- (void)setAnnotationTitle:(id)a3;
@end

@implementation RAPMKMarkerAnnotationView

- (void)setAnnotationTitle:(id)a3
{
  v4 = [a3 copy];
  annotationTitle = self->_annotationTitle;
  self->_annotationTitle = v4;

  v6 = [(NSString *)self->_annotationTitle length];
  if (v6)
  {
    v7 = self->_annotationTitle;
    p_annotationTitleLabel = &self->_annotationTitleLabel;
    v9 = *p_annotationTitleLabel;
  }

  else
  {
    p_annotationTitleLabel = &self->_annotationTitleLabel;
    v9 = *p_annotationTitleLabel;
    v7 = &stru_1016631F0;
  }

  [(_RAPAnnotationTitleLabel *)v9 setText:v7];
  v10 = *p_annotationTitleLabel;

  [(_RAPAnnotationTitleLabel *)v10 setHidden:v6 == 0];
}

- (BOOL)updateCalloutViewIfNeededAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [[_RAPAnnotationTitleLabel alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  annotationTitleLabel = self->_annotationTitleLabel;
  self->_annotationTitleLabel = v5;

  [(_RAPAnnotationTitleLabel *)self->_annotationTitleLabel setTextAlignment:1];
  [(_RAPAnnotationTitleLabel *)self->_annotationTitleLabel setAdjustsFontSizeToFitWidth:1];
  [(_RAPAnnotationTitleLabel *)self->_annotationTitleLabel setBaselineAdjustment:1];
  [(_RAPAnnotationTitleLabel *)self->_annotationTitleLabel setNumberOfLines:0];
  [(_RAPAnnotationTitleLabel *)self->_annotationTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [UIFont boldSystemFontOfSize:12.0];
  [(_RAPAnnotationTitleLabel *)self->_annotationTitleLabel setFont:v7];

  v8 = +[UIColor labelColor];
  [(_RAPAnnotationTitleLabel *)self->_annotationTitleLabel setTextColor:v8];

  [(RAPMKMarkerAnnotationView *)self addSubview:self->_annotationTitleLabel];
  v9 = [(_RAPAnnotationTitleLabel *)self->_annotationTitleLabel topAnchor];
  v10 = [(RAPMKMarkerAnnotationView *)self bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  [v11 setActive:1];

  v12 = [(_RAPAnnotationTitleLabel *)self->_annotationTitleLabel widthAnchor];
  v13 = [v12 constraintEqualToConstant:100.0];
  [v13 setActive:1];

  v14 = [(_RAPAnnotationTitleLabel *)self->_annotationTitleLabel centerXAnchor];
  v15 = [(RAPMKMarkerAnnotationView *)self centerXAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  [v16 setActive:1];

  [(_RAPAnnotationTitleLabel *)self->_annotationTitleLabel setHidden:1];
  v18.receiver = self;
  v18.super_class = RAPMKMarkerAnnotationView;
  return [(RAPMKMarkerAnnotationView *)&v18 updateCalloutViewIfNeededAnimated:v3];
}

@end