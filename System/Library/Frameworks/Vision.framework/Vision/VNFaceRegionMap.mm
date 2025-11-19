@interface VNFaceRegionMap
- (VNFaceRegionMap)initWithCoder:(id)a3;
- (VNFaceRegionMap)initWithRequestRevision:(unint64_t)a3 regionMap:(vImage_Buffer *)a4 deallocateBuffer:(BOOL)a5 userBBox:(CGRect)a6 alignedBBox:(_Geometry2D_rect2D_)a7 valueToLabelMap:(id)a8;
- (id)getRegionLabels;
- (id)regionNameAtImageCoordinate:(CGPoint)a3 imageSize:(CGSize)a4;
- (id)regionNameAtNormalizedAlignedFaceCoordinate:(CGPoint)a3;
- (id)regionNameAtNormalizedFaceCoordinate:(CGPoint)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNFaceRegionMap

- (id)regionNameAtNormalizedFaceCoordinate:(CGPoint)a3
{
  v3 = vcvtq_f64_f32(self->_internalAlignedBBox.size);
  v4 = vextq_s8(v3, v3, 8uLL);
  y = a3.y;
  return [(VNFaceRegionMap *)self regionNameAtNormalizedAlignedFaceCoordinate:vmlaq_f64(vdivq_f64(vsubq_f64(self->_userBBox.origin, vcvtq_f64_f32(self->_internalAlignedBBox.origin)), v4), vdivq_f64(self->_userBBox.size, v4), a3)];
}

- (id)regionNameAtImageCoordinate:(CGPoint)a3 imageSize:(CGSize)a4
{
  y = a3.y;
  height = a4.height;
  v6 = vcvtq_f64_f32(self->_internalAlignedBBox.size);
  return [(VNFaceRegionMap *)self regionNameAtNormalizedAlignedFaceCoordinate:vdivq_f64(vsubq_f64(vdivq_f64(a3, a4), vcvtq_f64_f32(self->_internalAlignedBBox.origin)), vextq_s8(v6, v6, 8uLL))];
}

- (id)regionNameAtNormalizedAlignedFaceCoordinate:(CGPoint)a3
{
  width = self->_regionMap.width;
  if (width && (height = self->_regionMap.height) != 0)
  {
    v5 = (a3.x * width);
    if (a3.x < 0.0)
    {
      v5 = 0;
    }

    v6 = (a3.y * height);
    if (a3.y < 0.0)
    {
      v6 = 0;
    }

    if (v5 >= width)
    {
      v7 = width - 1;
    }

    else
    {
      v7 = v5;
    }

    if (v6 >= height)
    {
      v8 = height - 1;
    }

    else
    {
      v8 = v6;
    }

    pixelValueToRegionLabelMap = self->_pixelValueToRegionLabelMap;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*(self->_regionMap.data + self->_regionMap.rowBytes * v8 + v7)];
    v11 = [(NSDictionary *)pixelValueToRegionLabelMap objectForKey:v10];
    v12 = [v11 copy];
  }

  else
  {
    v12 = @"Unknown";
  }

  return v12;
}

- (id)getRegionLabels
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSDictionary count](self->_pixelValueToRegionLabelMap, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_pixelValueToRegionLabelMap;
  v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [(NSDictionary *)self->_pixelValueToRegionLabelMap objectForKey:*(*(&v10 + 1) + 8 * i), v10];
        [v3 addObject:v8];
      }

      v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v21 = a3;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:0];
  [v21 encodeObject:v4 forKey:@"VNFaceRegionMapVersion"];

  [v21 encodeInteger:self->_requestRevision forKey:@"requestRevision"];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_userBBox.origin.x];
  [v21 encodeObject:v5 forKey:@"userX"];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_userBBox.origin.y];
  [v21 encodeObject:v6 forKey:@"userY"];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_userBBox.size.width];
  [v21 encodeObject:v7 forKey:@"userW"];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_userBBox.size.height];
  [v21 encodeObject:v8 forKey:@"userH"];

  *&v9 = self->_internalAlignedBBox.origin.x;
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  [v21 encodeObject:v10 forKey:@"alignX"];

  *&v11 = self->_internalAlignedBBox.origin.y;
  v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  [v21 encodeObject:v12 forKey:@"alignY"];

  *&v13 = self->_internalAlignedBBox.size.width;
  v14 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
  [v21 encodeObject:v14 forKey:@"alignW"];

  *&v15 = self->_internalAlignedBBox.size.height;
  v16 = [MEMORY[0x1E696AD98] numberWithFloat:v15];
  [v21 encodeObject:v16 forKey:@"alignH"];

  v17 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:self->_regionMap.data length:self->_regionMap.height * self->_regionMap.rowBytes freeWhenDone:0];
  [v21 encodeObject:v17 forKey:@"rgnMapData"];
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:self->_regionMap.width];
  [v21 encodeObject:v18 forKey:@"rgnMapW"];

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:self->_regionMap.height];
  [v21 encodeObject:v19 forKey:@"rgnMapH"];

  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:self->_regionMap.rowBytes];
  [v21 encodeObject:v20 forKey:@"rgnMapRowBytes"];

  [v21 encodeObject:self->_pixelValueToRegionLabelMap forKey:@"pixelToRgnMap"];
}

- (VNFaceRegionMap)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"VNFaceRegionMapVersion"];
  v7 = v6;
  if (v6 && ![v6 unsignedIntValue])
  {
    v10 = [v4 decodeIntegerForKey:@"requestRevision"];
    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    v51 = v11;
    v57 = [v4 decodeObjectOfClass:v5 forKey:@"userW"];
    v55 = [v4 decodeObjectOfClass:v5 forKey:@"userH"];
    v56 = [v4 decodeObjectOfClass:v5 forKey:@"userX"];
    v54 = [v4 decodeObjectOfClass:v5 forKey:@"userY"];
    [v56 doubleValue];
    v13 = v12;
    [v54 doubleValue];
    v15 = v14;
    [v57 doubleValue];
    v17 = v16;
    [v55 doubleValue];
    v19 = v18;
    v53 = [v4 decodeObjectOfClass:v5 forKey:@"alignW"];
    v52 = [v4 decodeObjectOfClass:v5 forKey:@"alignH"];
    v20 = [v4 decodeObjectOfClass:v5 forKey:@"alignX"];
    v21 = [v4 decodeObjectOfClass:v5 forKey:@"alignY"];
    [v20 floatValue];
    v23 = v22;
    [v21 floatValue];
    v25 = v24;
    [v53 floatValue];
    v27 = v26;
    [v52 floatValue];
    v29 = v28;
    v30 = [v4 decodeObjectOfClass:v5 forKey:@"rgnMapW"];
    v58[2] = [v30 unsignedLongLongValue];

    v31 = [v4 decodeObjectOfClass:v5 forKey:@"rgnMapH"];
    v32 = [v31 unsignedLongLongValue];
    v58[1] = v32;

    v33 = [v4 decodeObjectOfClass:v5 forKey:@"rgnMapRowBytes"];
    v34 = [v33 unsignedLongLongValue];
    v58[3] = v34;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rgnMapData"];
    v36 = [v35 length];
    v37 = v36;
    if (v36 == v32 * v34)
    {
      v38 = malloc_type_malloc(v36, 0xA562B5F6uLL);
      v58[0] = v38;
      if (v38)
      {
        memcpy(v38, [v35 bytes], v37);
        v39 = objc_alloc(MEMORY[0x1E695DFD8]);
        v40 = objc_opt_class();
        v41 = [v39 initWithObjects:{v40, v5, objc_opt_class(), 0}];
        v42 = [v4 decodeObjectOfClasses:v41 forKey:@"pixelToRgnMap"];
        LODWORD(v43) = v23;
        LODWORD(v44) = v25;
        LODWORD(v45) = v29;
        LODWORD(v46) = v27;
        v47 = [(VNFaceRegionMap *)self initWithRequestRevision:v51 regionMap:v58 deallocateBuffer:1 userBBox:v42 alignedBBox:v13 valueToLabelMap:v15, v17, v19, v43, v44, v45, v46];
        if (!v47)
        {
          free(v58[0]);
        }

        self = v47;

        v9 = self;
        goto LABEL_15;
      }

      v48 = +[VNError errorForMemoryAllocationFailure];
      [v4 failWithError:v48];
    }

    else
    {
      v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"region map data has length of %lu instead of the expected %lu", v36, v32 * v34];
      v49 = [VNError errorForInternalErrorWithLocalizedDescription:v48];
      [v4 failWithError:v49];
    }

    v9 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v8 = [VNError errorForInternalErrorWithLocalizedDescription:@"unknown coding version"];
  [v4 failWithError:v8];

  v9 = 0;
LABEL_16:

  return v9;
}

- (void)dealloc
{
  if (self->_deallocateBuffer)
  {
    free(self->_regionMap.data);
  }

  v3.receiver = self;
  v3.super_class = VNFaceRegionMap;
  [(VNFaceRegionMap *)&v3 dealloc];
}

- (VNFaceRegionMap)initWithRequestRevision:(unint64_t)a3 regionMap:(vImage_Buffer *)a4 deallocateBuffer:(BOOL)a5 userBBox:(CGRect)a6 alignedBBox:(_Geometry2D_rect2D_)a7 valueToLabelMap:(id)a8
{
  width = a7.size.width;
  height = a7.size.height;
  y = a7.origin.y;
  x = a7.origin.x;
  v12 = a6.size.height;
  v13 = a6.size.width;
  v14 = a6.origin.y;
  v15 = a6.origin.x;
  v20 = a8;
  v27.receiver = self;
  v27.super_class = VNFaceRegionMap;
  v21 = [(VNFaceRegionMap *)&v27 init];
  v22 = v21;
  if (v21)
  {
    v21->_requestRevision = a3;
    if (a4)
    {
      v23 = *&a4->width;
      *&v21->_regionMap.data = *&a4->data;
      *&v21->_regionMap.width = v23;
      v21->_deallocateBuffer = a5;
    }

    v21->_userBBox.origin.x = v15;
    v21->_userBBox.origin.y = v14;
    v21->_userBBox.size.width = v13;
    v21->_userBBox.size.height = v12;
    v21->_internalAlignedBBox.origin.x = x;
    v21->_internalAlignedBBox.origin.y = y;
    v21->_internalAlignedBBox.size.height = height;
    v21->_internalAlignedBBox.size.width = width;
    v24 = [v20 copy];
    pixelValueToRegionLabelMap = v22->_pixelValueToRegionLabelMap;
    v22->_pixelValueToRegionLabelMap = v24;
  }

  return v22;
}

@end