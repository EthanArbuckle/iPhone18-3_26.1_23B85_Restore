@interface OpenCVWrapperImage
- (CGSize)getSize;
- (OpenCVWrapperImage)initWithImage:(Mat *)image;
- (OpenCVWrapperImage)initWithSizeOf:(id)of pixelFormat:(int64_t)format;
- (OpenCVWrapperImage)initWithUIImage:(id)image;
- (OpenCVWrapperImage)initWithWidth:(int)width height:(int)height pixelFormat:(int64_t)format pixelData:(void *)data bytesPerRow:(unint64_t)row scaleFactor:(float)factor;
- (id).cxx_construct;
- (id)clone;
- (void)convertTo8U;
- (void)imWrite:(id)write;
@end

@implementation OpenCVWrapperImage

- (OpenCVWrapperImage)initWithImage:(Mat *)image
{
  v17.receiver = self;
  v17.super_class = OpenCVWrapperImage;
  v4 = [(OpenCVWrapperImage *)&v17 init];
  v5 = v4;
  p_image = &v4->_image;
  if (v4)
  {
    v7 = p_image == image;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    u = image->u;
    if (u)
    {
      atomic_fetch_add(u + 5, 1u);
    }

    v9 = v4->_image.u;
    if (v9 && atomic_fetch_add(v9 + 5, 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(&v4->_image);
    }

    v5->_image.u = 0;
    *&v5->_image.data = 0u;
    *&v5->_image.dataend = 0u;
    if (v5->_image.dims <= 0)
    {
      p_image->flags = image->flags;
    }

    else
    {
      v10 = 0;
      p = v5->_image.size.p;
      do
      {
        p[v10++] = 0;
        dims = v5->_image.dims;
      }

      while (v10 < dims);
      p_image->flags = image->flags;
      if (dims > 2)
      {
        goto LABEL_18;
      }
    }

    v13 = image->dims;
    if (v13 <= 2)
    {
      v5->_image.dims = v13;
      *&v5->_image.rows = *&image->rows;
      v14 = image->step.p;
      v15 = v5->_image.step.p;
      *v15 = *v14;
      v15[1] = v14[1];
LABEL_19:
      *&v5->_image.data = *&image->data;
      *&v5->_image.dataend = *&image->dataend;
      *&v5->_image.allocator = *&image->allocator;
      return v5;
    }

LABEL_18:
    sub_100269B58(p_image, image);
    goto LABEL_19;
  }

  return v5;
}

- (OpenCVWrapperImage)initWithWidth:(int)width height:(int)height pixelFormat:(int64_t)format pixelData:(void *)data bytesPerRow:(unint64_t)row scaleFactor:(float)factor
{
  v14 = sub_100008958(format);
  sub_10000A690(v27, height, width, v14, data, row);
  if (factor != 1.0)
  {
    v26 = 0;
    v24 = 16842752;
    v25 = v27;
    v21 = 33619968;
    v22 = v27;
    v23 = 0;
    v20 = 0;
    if (factor >= 1.0)
    {
      v15 = 1;
    }

    else
    {
      v15 = 3;
    }

    sub_10033AE18(&v24, &v21, &v20, v15, factor, factor);
  }

  v16 = [(OpenCVWrapperImage *)self initWithImage:v27];
  if (v31 && atomic_fetch_add((v31 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v27);
  }

  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  if (v28 >= 1)
  {
    v17 = 0;
    v18 = v32;
    do
    {
      *(v18 + 4 * v17++) = 0;
    }

    while (v17 < v28);
  }

  if (v33 != &v34)
  {
    j__free(v33);
  }

  return v16;
}

- (OpenCVWrapperImage)initWithUIImage:(id)image
{
  imageCopy = image;
  LODWORD(v9[0]) = 1124007936;
  memset(v9 + 4, 0, 48);
  v9[3] = 0u;
  v10 = v9 + 8;
  v11 = v12;
  v12[0] = 0;
  v12[1] = 0;
  sub_1002C13D4(imageCopy, v9, 0);
  v5 = [(OpenCVWrapperImage *)self initWithImage:v9];
  if (*(&v9[3] + 1) && atomic_fetch_add((*(&v9[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v9);
  }

  *(&v9[3] + 1) = 0;
  memset(&v9[1], 0, 32);
  if (SDWORD1(v9[0]) >= 1)
  {
    v6 = 0;
    v7 = v10;
    do
    {
      *&v7[4 * v6++] = 0;
    }

    while (v6 < SDWORD1(v9[0]));
  }

  if (v11 != v12)
  {
    j__free(v11);
  }

  return v5;
}

- (OpenCVWrapperImage)initWithSizeOf:(id)of pixelFormat:(int64_t)format
{
  ofCopy = of;
  *v12 = vrev64_s32(**([ofCopy image] + 8));
  v7 = sub_100008958(format);
  sub_100266EA8(v12, v7, v16);
  *v12 = 1124007936;
  memset(&v12[4], 0, 60);
  v13 = &v12[8];
  v14 = v15;
  v15[0] = 0;
  v15[1] = 0;
  (*(*v16[0] + 24))(v16[0], v16, v12, 0xFFFFFFFFLL);
  v8 = [(OpenCVWrapperImage *)self initWithImage:v12];
  if (*&v12[56] && atomic_fetch_add((*&v12[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v12);
  }

  *&v12[56] = 0;
  memset(&v12[16], 0, 32);
  if (*&v12[4] >= 1)
  {
    v9 = 0;
    v10 = v13;
    do
    {
      *&v10[4 * v9++] = 0;
    }

    while (v9 < *&v12[4]);
  }

  if (v14 != v15)
  {
    j__free(v14);
  }

  sub_100008E50(v16);

  return v8;
}

- (id)clone
{
  LODWORD(v6[0]) = 1124007936;
  memset(v6 + 4, 0, 48);
  v6[3] = 0u;
  v7 = v6 + 8;
  v8 = v9;
  v9[0] = 0;
  v9[1] = 0;
  v10 = 33619968;
  v11 = v6;
  v12 = 0;
  sub_10022B754(&self->_image, &v10);
  v2 = [[OpenCVWrapperImage alloc] initWithImage:v6];
  if (*(&v6[3] + 1) && atomic_fetch_add((*(&v6[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v6);
  }

  *(&v6[3] + 1) = 0;
  memset(&v6[1], 0, 32);
  if (SDWORD1(v6[0]) >= 1)
  {
    v3 = 0;
    v4 = v7;
    do
    {
      *&v4[4 * v3++] = 0;
    }

    while (v3 < SDWORD1(v6[0]));
  }

  if (v8 != v9)
  {
    j__free(v8);
  }

  return v2;
}

- (void)imWrite:(id)write
{
  writeCopy = write;
  v5 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v6 = [v5 objectAtIndex:0];
  LODWORD(v17[0]) = 1124007936;
  memset(v17 + 4, 0, 48);
  v17[3] = 0u;
  v18 = v17 + 8;
  v19 = v20;
  v20[0] = 0;
  v20[1] = 0;
  self = (self + 16);
  selfCopy4 = self;
  v16 = 0;
  v14 = 16842752;
  LODWORD(__p) = 50397184;
  selfCopy2 = self;
  v13 = 0;
  v7 = sub_100276DA4();
  sub_10020F504(&v14, &__p, 32, 5, v7, 0.0, 255.0);
  v14 = 33619968;
  selfCopy4 = self;
  v16 = 0;
  sub_10020EF14(self, &v14, 0, 1.0, 0.0);
  v10[0] = 0;
  v10[1] = 0;
  qmemcpy(sub_1002A80E0(v10, 44), "/var/mobile/Library/Measure/image_scaled.png", 44);
  selfCopy4 = self;
  v16 = 0;
  v14 = 16842752;
  __p = 0;
  selfCopy2 = 0;
  v13 = 0;
  sub_1002C15A4(v10, &v14, &__p);
  if (__p)
  {
    selfCopy2 = __p;
    operator delete(__p);
  }

  sub_1002A8124(v10);
  if (*(&v17[3] + 1) && atomic_fetch_add((*(&v17[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v17);
  }

  *(&v17[3] + 1) = 0;
  memset(&v17[1], 0, 32);
  if (SDWORD1(v17[0]) >= 1)
  {
    v8 = 0;
    v9 = v18;
    do
    {
      *&v9[4 * v8++] = 0;
    }

    while (v8 < SDWORD1(v17[0]));
  }

  if (v19 != v20)
  {
    j__free(v19);
  }
}

- (void)convertTo8U
{
  p_image = &self->_image;
  v8 = &self->_image;
  v9 = 0;
  v7 = 16842752;
  v4 = 50397184;
  v5 = &self->_image;
  v6 = 0;
  v3 = sub_100276DA4();
  sub_10020F504(&v7, &v4, 32, 5, v3, 0.0, 255.0);
  v7 = 33619968;
  v8 = p_image;
  v9 = 0;
  sub_10020EF14(p_image, &v7, 0, 1.0, 0.0);
}

- (CGSize)getSize
{
  cols = self->_image.cols;
  rows = self->_image.rows;
  result.height = rows;
  result.width = cols;
  return result;
}

- (id).cxx_construct
{
  *(self + 4) = 1124007936;
  *(self + 20) = 0u;
  *(self + 36) = 0u;
  *(self + 52) = 0u;
  *(self + 4) = 0u;
  *(self + 12) = 0;
  *(self + 10) = self + 24;
  *(self + 11) = self + 96;
  *(self + 13) = 0;
  return self;
}

@end