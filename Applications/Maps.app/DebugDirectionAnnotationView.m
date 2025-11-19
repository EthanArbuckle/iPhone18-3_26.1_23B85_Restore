@interface DebugDirectionAnnotationView
- (DebugDirectionAnnotationView)initWithAnnotation:(id)a3 debugAnnotation:(id)a4 reuseIdentifier:(id)a5;
- (void)_setMapPitchRadians:(double)a3;
- (void)_setMapRotationRadians:(double)a3;
- (void)_updateTransform;
- (void)setAnnotation:(id)a3;
@end

@implementation DebugDirectionAnnotationView

- (void)_updateTransform
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  memset(&v24, 0, sizeof(v24));
  [(DebugDirectionAnnotationView *)self _mapPitchRadians];
  CATransform3DMakeRotation(&v24, v3, 1.0, 0.0, 0.0);
  [(DebugDirectionAnnotation *)self->_annotation direction];
  v5 = v4;
  [(DebugDirectionAnnotationView *)self _mapRotationRadians];
  v22 = v24;
  CATransform3DRotate(&v23, &v22, 3.14159265 - v6 + v5 * 0.0174532925, 0.0, 0.0, 1.0);
  directionView = self->_directionView;
  v22 = v23;
  [(CALayer *)directionView setTransform:&v22];
  [(DebugDirectionAnnotation *)self->_annotation direction];
  v9 = v8;
  [(DebugDirectionAnnotation *)self->_annotation fov];
  v11 = v10;
  [(DebugDirectionAnnotationView *)self _mapRotationRadians];
  v22 = v24;
  CATransform3DRotate(&v21, &v22, v9 * 0.0174532925 + 3.14159265 - v12 + v11 * -0.00872664626, 0.0, 0.0, 1.0);
  fovLeftDirectionView = self->_fovLeftDirectionView;
  v22 = v21;
  [(CALayer *)fovLeftDirectionView setTransform:&v22];
  [(DebugDirectionAnnotation *)self->_annotation direction];
  v15 = v14;
  [(DebugDirectionAnnotation *)self->_annotation fov];
  v17 = v16;
  [(DebugDirectionAnnotationView *)self _mapRotationRadians];
  v22 = v24;
  CATransform3DRotate(&v20, &v22, v15 * 0.0174532925 + 3.14159265 + v17 * 0.00872664626 - v18, 0.0, 0.0, 1.0);
  fovRightDirectionView = self->_fovRightDirectionView;
  v22 = v20;
  [(CALayer *)fovRightDirectionView setTransform:&v22];
  +[CATransaction commit];
}

- (void)_setMapRotationRadians:(double)a3
{
  v4.receiver = self;
  v4.super_class = DebugDirectionAnnotationView;
  [(DebugDirectionAnnotationView *)&v4 _setMapRotationRadians:a3];
  [(DebugDirectionAnnotationView *)self _updateTransform];
}

- (void)_setMapPitchRadians:(double)a3
{
  v4.receiver = self;
  v4.super_class = DebugDirectionAnnotationView;
  [(DebugDirectionAnnotationView *)&v4 _setMapPitchRadians:a3];
  [(DebugDirectionAnnotationView *)self _updateTransform];
}

- (void)setAnnotation:(id)a3
{
  objc_storeStrong(&self->_annotation, a3);
  v5 = a3;
  [(DebugDirectionAnnotation *)self->_annotation size];
  v7 = v6;
  [(DebugDirectionAnnotation *)self->_annotation size];
  [(CALayer *)self->_directionView setBounds:0.0, 0.0, v7, v8];
  v9 = [(DebugDirectionAnnotation *)self->_annotation color];
  -[CALayer setBackgroundColor:](self->_directionView, "setBackgroundColor:", [v9 CGColor]);

  [(DebugDirectionAnnotation *)self->_annotation size];
  v11 = v10;
  [(DebugDirectionAnnotation *)self->_annotation size];
  [(CALayer *)self->_fovLeftDirectionView setBounds:0.0, 0.0, v11, v12];
  v13 = [(DebugDirectionAnnotation *)self->_annotation color];
  -[CALayer setBackgroundColor:](self->_fovLeftDirectionView, "setBackgroundColor:", [v13 CGColor]);

  [(DebugDirectionAnnotation *)self->_annotation size];
  v15 = v14;
  [(DebugDirectionAnnotation *)self->_annotation size];
  [(CALayer *)self->_fovRightDirectionView setBounds:0.0, 0.0, v15, v16];
  v17 = [(DebugDirectionAnnotation *)self->_annotation color];
  -[CALayer setBackgroundColor:](self->_fovRightDirectionView, "setBackgroundColor:", [v17 CGColor]);

  [(DebugDirectionAnnotationView *)self _updateTransform];
}

- (DebugDirectionAnnotationView)initWithAnnotation:(id)a3 debugAnnotation:(id)a4 reuseIdentifier:(id)a5
{
  v8 = a3;
  v52.receiver = self;
  v52.super_class = DebugDirectionAnnotationView;
  v9 = [(DebugDirectionAnnotationView *)&v52 initWithAnnotation:v8 reuseIdentifier:a5];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_annotation, a3);
    v11 = +[CALayer layer];
    directionView = v10->_directionView;
    v10->_directionView = v11;

    [(DebugDirectionAnnotation *)v10->_annotation size];
    v14 = v13;
    [(DebugDirectionAnnotation *)v10->_annotation size];
    [(CALayer *)v10->_directionView setBounds:0.0, 0.0, v14, v15];
    [(CALayer *)v10->_directionView setPosition:0.0, 0.0];
    [(CALayer *)v10->_directionView setAnchorPoint:0.5, 0.0];
    v16 = [(DebugDirectionAnnotation *)v10->_annotation color];
    -[CALayer setBackgroundColor:](v10->_directionView, "setBackgroundColor:", [v16 CGColor]);

    v57[0] = @"bounds";
    v17 = +[NSNull null];
    v58[0] = v17;
    v57[1] = @"position";
    v18 = +[NSNull null];
    v58[1] = v18;
    v57[2] = @"cornerRadius";
    v19 = +[NSNull null];
    v58[2] = v19;
    v57[3] = @"transform";
    v20 = +[NSNull null];
    v58[3] = v20;
    v57[4] = @"hidden";
    v21 = +[NSNull null];
    v58[4] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:5];
    [(CALayer *)v10->_directionView setActions:v22];

    v23 = [(DebugDirectionAnnotationView *)v10 layer];
    [v23 addSublayer:v10->_directionView];

    v24 = +[CALayer layer];
    fovLeftDirectionView = v10->_fovLeftDirectionView;
    v10->_fovLeftDirectionView = v24;

    [(DebugDirectionAnnotation *)v10->_annotation size];
    v27 = v26;
    [(DebugDirectionAnnotation *)v10->_annotation size];
    [(CALayer *)v10->_fovLeftDirectionView setFrame:0.0, 0.0, v27, v28];
    [(CALayer *)v10->_fovLeftDirectionView setPosition:0.0, 0.0];
    [(CALayer *)v10->_fovLeftDirectionView setAnchorPoint:0.5, 0.0];
    v29 = [(DebugDirectionAnnotation *)v10->_annotation color];
    -[CALayer setBackgroundColor:](v10->_fovLeftDirectionView, "setBackgroundColor:", [v29 CGColor]);

    v55[0] = @"bounds";
    v30 = +[NSNull null];
    v56[0] = v30;
    v55[1] = @"position";
    v31 = +[NSNull null];
    v56[1] = v31;
    v55[2] = @"cornerRadius";
    v32 = +[NSNull null];
    v56[2] = v32;
    v55[3] = @"transform";
    v33 = +[NSNull null];
    v56[3] = v33;
    v55[4] = @"hidden";
    v34 = +[NSNull null];
    v56[4] = v34;
    v35 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:5];
    [(CALayer *)v10->_fovLeftDirectionView setActions:v35];

    v36 = [(DebugDirectionAnnotationView *)v10 layer];
    [v36 addSublayer:v10->_fovLeftDirectionView];

    v37 = +[CALayer layer];
    fovRightDirectionView = v10->_fovRightDirectionView;
    v10->_fovRightDirectionView = v37;

    [(DebugDirectionAnnotation *)v10->_annotation size];
    v40 = v39;
    [(DebugDirectionAnnotation *)v10->_annotation size];
    [(CALayer *)v10->_fovRightDirectionView setFrame:0.0, 0.0, v40, v41];
    [(CALayer *)v10->_fovRightDirectionView setPosition:0.0, 0.0];
    [(CALayer *)v10->_fovRightDirectionView setAnchorPoint:0.5, 0.0];
    v42 = [(DebugDirectionAnnotation *)v10->_annotation color];
    -[CALayer setBackgroundColor:](v10->_fovRightDirectionView, "setBackgroundColor:", [v42 CGColor]);

    v53[0] = @"bounds";
    v43 = +[NSNull null];
    v54[0] = v43;
    v53[1] = @"position";
    v44 = +[NSNull null];
    v54[1] = v44;
    v53[2] = @"cornerRadius";
    v45 = +[NSNull null];
    v54[2] = v45;
    v53[3] = @"transform";
    v46 = +[NSNull null];
    v54[3] = v46;
    v53[4] = @"hidden";
    v47 = +[NSNull null];
    v54[4] = v47;
    v48 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:5];
    [(CALayer *)v10->_fovRightDirectionView setActions:v48];

    v49 = [(DebugDirectionAnnotationView *)v10 layer];
    [v49 addSublayer:v10->_fovRightDirectionView];

    v50 = v10;
  }

  return v10;
}

@end