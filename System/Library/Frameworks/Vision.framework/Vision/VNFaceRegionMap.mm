@interface VNFaceRegionMap
- (VNFaceRegionMap)initWithCoder:(id)coder;
- (VNFaceRegionMap)initWithRequestRevision:(unint64_t)revision regionMap:(vImage_Buffer *)map deallocateBuffer:(BOOL)buffer userBBox:(CGRect)box alignedBBox:(_Geometry2D_rect2D_)bBox valueToLabelMap:(id)labelMap;
- (id)getRegionLabels;
- (id)regionNameAtImageCoordinate:(CGPoint)coordinate imageSize:(CGSize)size;
- (id)regionNameAtNormalizedAlignedFaceCoordinate:(CGPoint)coordinate;
- (id)regionNameAtNormalizedFaceCoordinate:(CGPoint)coordinate;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNFaceRegionMap

- (id)regionNameAtNormalizedFaceCoordinate:(CGPoint)coordinate
{
  v3 = vcvtq_f64_f32(self->_internalAlignedBBox.size);
  v4 = vextq_s8(v3, v3, 8uLL);
  y = coordinate.y;
  return [(VNFaceRegionMap *)self regionNameAtNormalizedAlignedFaceCoordinate:vmlaq_f64(vdivq_f64(vsubq_f64(self->_userBBox.origin, vcvtq_f64_f32(self->_internalAlignedBBox.origin)), v4), vdivq_f64(self->_userBBox.size, v4), coordinate)];
}

- (id)regionNameAtImageCoordinate:(CGPoint)coordinate imageSize:(CGSize)size
{
  y = coordinate.y;
  height = size.height;
  v6 = vcvtq_f64_f32(self->_internalAlignedBBox.size);
  return [(VNFaceRegionMap *)self regionNameAtNormalizedAlignedFaceCoordinate:vdivq_f64(vsubq_f64(vdivq_f64(coordinate, size), vcvtq_f64_f32(self->_internalAlignedBBox.origin)), vextq_s8(v6, v6, 8uLL))];
}

- (id)regionNameAtNormalizedAlignedFaceCoordinate:(CGPoint)coordinate
{
  width = self->_regionMap.width;
  if (width && (height = self->_regionMap.height) != 0)
  {
    v5 = (coordinate.x * width);
    if (coordinate.x < 0.0)
    {
      v5 = 0;
    }

    v6 = (coordinate.y * height);
    if (coordinate.y < 0.0)
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:0];
  [coderCopy encodeObject:v4 forKey:@"VNFaceRegionMapVersion"];

  [coderCopy encodeInteger:self->_requestRevision forKey:@"requestRevision"];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_userBBox.origin.x];
  [coderCopy encodeObject:v5 forKey:@"userX"];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_userBBox.origin.y];
  [coderCopy encodeObject:v6 forKey:@"userY"];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_userBBox.size.width];
  [coderCopy encodeObject:v7 forKey:@"userW"];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_userBBox.size.height];
  [coderCopy encodeObject:v8 forKey:@"userH"];

  *&v9 = self->_internalAlignedBBox.origin.x;
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  [coderCopy encodeObject:v10 forKey:@"alignX"];

  *&v11 = self->_internalAlignedBBox.origin.y;
  v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  [coderCopy encodeObject:v12 forKey:@"alignY"];

  *&v13 = self->_internalAlignedBBox.size.width;
  v14 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
  [coderCopy encodeObject:v14 forKey:@"alignW"];

  *&v15 = self->_internalAlignedBBox.size.height;
  v16 = [MEMORY[0x1E696AD98] numberWithFloat:v15];
  [coderCopy encodeObject:v16 forKey:@"alignH"];

  v17 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:self->_regionMap.data length:self->_regionMap.height * self->_regionMap.rowBytes freeWhenDone:0];
  [coderCopy encodeObject:v17 forKey:@"rgnMapData"];
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:self->_regionMap.width];
  [coderCopy encodeObject:v18 forKey:@"rgnMapW"];

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:self->_regionMap.height];
  [coderCopy encodeObject:v19 forKey:@"rgnMapH"];

  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:self->_regionMap.rowBytes];
  [coderCopy encodeObject:v20 forKey:@"rgnMapRowBytes"];

  [coderCopy encodeObject:self->_pixelValueToRegionLabelMap forKey:@"pixelToRgnMap"];
}

- (VNFaceRegionMap)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"VNFaceRegionMapVersion"];
  v7 = v6;
  if (v6 && ![v6 unsignedIntValue])
  {
    v10 = [coderCopy decodeIntegerForKey:@"requestRevision"];
    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    v51 = v11;
    v57 = [coderCopy decodeObjectOfClass:v5 forKey:@"userW"];
    v55 = [coderCopy decodeObjectOfClass:v5 forKey:@"userH"];
    v56 = [coderCopy decodeObjectOfClass:v5 forKey:@"userX"];
    v54 = [coderCopy decodeObjectOfClass:v5 forKey:@"userY"];
    [v56 doubleValue];
    v13 = v12;
    [v54 doubleValue];
    v15 = v14;
    [v57 doubleValue];
    v17 = v16;
    [v55 doubleValue];
    v19 = v18;
    v53 = [coderCopy decodeObjectOfClass:v5 forKey:@"alignW"];
    v52 = [coderCopy decodeObjectOfClass:v5 forKey:@"alignH"];
    v20 = [coderCopy decodeObjectOfClass:v5 forKey:@"alignX"];
    v21 = [coderCopy decodeObjectOfClass:v5 forKey:@"alignY"];
    [v20 floatValue];
    v23 = v22;
    [v21 floatValue];
    v25 = v24;
    [v53 floatValue];
    v27 = v26;
    [v52 floatValue];
    v29 = v28;
    v30 = [coderCopy decodeObjectOfClass:v5 forKey:@"rgnMapW"];
    v58[2] = [v30 unsignedLongLongValue];

    v31 = [coderCopy decodeObjectOfClass:v5 forKey:@"rgnMapH"];
    unsignedLongLongValue = [v31 unsignedLongLongValue];
    v58[1] = unsignedLongLongValue;

    v33 = [coderCopy decodeObjectOfClass:v5 forKey:@"rgnMapRowBytes"];
    unsignedLongLongValue2 = [v33 unsignedLongLongValue];
    v58[3] = unsignedLongLongValue2;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rgnMapData"];
    v36 = [v35 length];
    v37 = v36;
    if (v36 == unsignedLongLongValue * unsignedLongLongValue2)
    {
      v38 = malloc_type_malloc(v36, 0xA562B5F6uLL);
      v58[0] = v38;
      if (v38)
      {
        memcpy(v38, [v35 bytes], v37);
        v39 = objc_alloc(MEMORY[0x1E695DFD8]);
        v40 = objc_opt_class();
        v41 = [v39 initWithObjects:{v40, v5, objc_opt_class(), 0}];
        v42 = [coderCopy decodeObjectOfClasses:v41 forKey:@"pixelToRgnMap"];
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

        selfCopy = self;
        goto LABEL_15;
      }

      v48 = +[VNError errorForMemoryAllocationFailure];
      [coderCopy failWithError:v48];
    }

    else
    {
      v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"region map data has length of %lu instead of the expected %lu", v36, unsignedLongLongValue * unsignedLongLongValue2];
      v49 = [VNError errorForInternalErrorWithLocalizedDescription:v48];
      [coderCopy failWithError:v49];
    }

    selfCopy = 0;
LABEL_15:

    goto LABEL_16;
  }

  v8 = [VNError errorForInternalErrorWithLocalizedDescription:@"unknown coding version"];
  [coderCopy failWithError:v8];

  selfCopy = 0;
LABEL_16:

  return selfCopy;
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

- (VNFaceRegionMap)initWithRequestRevision:(unint64_t)revision regionMap:(vImage_Buffer *)map deallocateBuffer:(BOOL)buffer userBBox:(CGRect)box alignedBBox:(_Geometry2D_rect2D_)bBox valueToLabelMap:(id)labelMap
{
  width = bBox.size.width;
  height = bBox.size.height;
  y = bBox.origin.y;
  x = bBox.origin.x;
  v12 = box.size.height;
  v13 = box.size.width;
  v14 = box.origin.y;
  v15 = box.origin.x;
  labelMapCopy = labelMap;
  v27.receiver = self;
  v27.super_class = VNFaceRegionMap;
  v21 = [(VNFaceRegionMap *)&v27 init];
  v22 = v21;
  if (v21)
  {
    v21->_requestRevision = revision;
    if (map)
    {
      v23 = *&map->width;
      *&v21->_regionMap.data = *&map->data;
      *&v21->_regionMap.width = v23;
      v21->_deallocateBuffer = buffer;
    }

    v21->_userBBox.origin.x = v15;
    v21->_userBBox.origin.y = v14;
    v21->_userBBox.size.width = v13;
    v21->_userBBox.size.height = v12;
    v21->_internalAlignedBBox.origin.x = x;
    v21->_internalAlignedBBox.origin.y = y;
    v21->_internalAlignedBBox.size.height = height;
    v21->_internalAlignedBBox.size.width = width;
    v24 = [labelMapCopy copy];
    pixelValueToRegionLabelMap = v22->_pixelValueToRegionLabelMap;
    v22->_pixelValueToRegionLabelMap = v24;
  }

  return v22;
}

@end