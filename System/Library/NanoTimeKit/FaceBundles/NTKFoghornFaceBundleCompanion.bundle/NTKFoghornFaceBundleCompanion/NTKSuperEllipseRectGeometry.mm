@interface NTKSuperEllipseRectGeometry
- (NTKSuperEllipseRectGeometry)initWithWidth:(double)width height:(double)height a:(double)a b:(double)b n:(double)n nDatum:(unint64_t)datum;
- (id)initForDevice:(id)device tangentialInset:(double)inset;
- (void)dealloc;
@end

@implementation NTKSuperEllipseRectGeometry

- (NTKSuperEllipseRectGeometry)initWithWidth:(double)width height:(double)height a:(double)a b:(double)b n:(double)n nDatum:(unint64_t)datum
{
  datumCopy = datum;
  v16.receiver = self;
  v16.super_class = NTKSuperEllipseRectGeometry;
  v14 = [(NTKSuperEllipseRectGeometry *)&v16 init];
  if (v14)
  {
    v14->_superEllipseData = NTKSuperEllipseRectNew(datumCopy, width, height, a, b, n);
  }

  return v14;
}

- (id)initForDevice:(id)device tangentialInset:(double)inset
{
  deviceCopy = device;
  objc_msgSend_screenBounds(deviceCopy, v7, v8, v9);
  v11 = v10;
  v13 = v12;
  v17 = objc_msgSend_sizeClass(deviceCopy, v14, v15, v16);
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
        sub_23BE7D370(deviceCopy, v23, v24, v25);
      }

      v21 = v11 / 3.0;
    }

    v22 = v21;
  }

  v26 = objc_msgSend_initWithWidth_height_a_b_n_nDatum_(self, v18, 60, v19, v11 + inset * -2.0, v13 + inset * -2.0, v21 - inset, v22 - inset, v20);

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