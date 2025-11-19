@interface NTKSuperEllipseRectGeometry
- (NTKSuperEllipseRectGeometry)initWithWidth:(double)a3 height:(double)a4 a:(double)a5 b:(double)a6 n:(double)a7 nDatum:(unint64_t)a8;
- (id)initForDevice:(id)a3 tangentialInset:(double)a4;
- (void)dealloc;
@end

@implementation NTKSuperEllipseRectGeometry

- (NTKSuperEllipseRectGeometry)initWithWidth:(double)a3 height:(double)a4 a:(double)a5 b:(double)a6 n:(double)a7 nDatum:(unint64_t)a8
{
  v8 = a8;
  v16.receiver = self;
  v16.super_class = NTKSuperEllipseRectGeometry;
  v14 = [(NTKSuperEllipseRectGeometry *)&v16 init];
  if (v14)
  {
    v14->_superEllipseData = NTKSuperEllipseRectNew(v8, a3, a4, a5, a6, a7);
  }

  return v14;
}

- (id)initForDevice:(id)a3 tangentialInset:(double)a4
{
  v6 = a3;
  objc_msgSend_screenBounds(v6, v7, v8, v9);
  v11 = v10;
  v13 = v12;
  v17 = objc_msgSend_sizeClass(v6, v14, v15, v16);
  v20 = 2.535664;
  if (v17 == 6)
  {
    v11 = 205.0;
    v22 = 66.0;
    v21 = 67.5;
    v13 = 251.0;
  }

  else
  {
    if (v17 == 9)
    {
      v20 = 2.664558;
      v21 = 72.0;
    }

    else
    {
      v23 = NTKFoghornFaceBundleLogObject();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_23BE7D370(v6, v23, v24, v25);
      }

      v21 = v11 / 3.0;
    }

    v22 = v21;
  }

  v26 = objc_msgSend_initWithWidth_height_a_b_n_nDatum_(self, v18, 60, v19, v11 + a4 * -2.0, v13 + a4 * -2.0, v21 - a4, v22 - a4, v20);

  return v26;
}

- (void)dealloc
{
  superEllipseData = self->_superEllipseData;
  if (superEllipseData && !self->_superEllipseDataIsConst)
  {
    NTKSuperEllipseRectDestroy(superEllipseData);
    self->_superEllipseData = 0;
  }

  v4.receiver = self;
  v4.super_class = NTKSuperEllipseRectGeometry;
  [(NTKSuperEllipseRectGeometry *)&v4 dealloc];
}

@end