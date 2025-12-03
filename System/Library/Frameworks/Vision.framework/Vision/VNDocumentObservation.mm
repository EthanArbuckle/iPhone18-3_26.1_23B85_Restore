@interface VNDocumentObservation
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldReprocessDocument;
- (VNDocumentObservation)initWithCoder:(id)coder;
- (VNDocumentObservation)initWithTopLevelRegion:(id)region requestRevision:(unint64_t)revision;
- (VNRecognizedTextBlockObservation)getTitle;
- (_NSRange)rangeOfTextBlock:(id)block;
- (_NSRange)rangeOfTextBlockObservation:(id)observation;
- (id)_textBlockObservationsFromRegion:(id)region requestRevision:(unint64_t)revision;
- (id)blocksWithTypes:(unint64_t)types inRegion:(CGRect)region;
- (id)boundingBoxForTextRange:(_NSRange)range error:(id *)error;
- (id)closestTextBlockOfTypes:(unint64_t)types toPoint:(CGPoint)point maximumPixelDistance:(int64_t)distance;
- (id)getDataDetectorResults:(id *)results;
- (id)textBlockOfTypes:(unint64_t)types containingTextAtIndex:(int64_t)index;
- (id)textBlockWithCharacterRange:(_NSRange)range;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNDocumentObservation

- (VNDocumentObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = VNDocumentObservation;
  v5 = [(VNDetectedObjectObservation *)&v10 initWithCoder:coderCopy];
  if (v5 && ([coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"topLevelRegion"], v6 = objc_claimAutoreleasedReturnValue(), topLevelRegion = v5->_topLevelRegion, v5->_topLevelRegion = v6, topLevelRegion, !v5->_topLevelRegion))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = VNDocumentObservation;
  coderCopy = coder;
  [(VNDetectedObjectObservation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_topLevelRegion forKey:{@"topLevelRegion", v5.receiver, v5.super_class}];
}

- (id)vn_cloneObject
{
  v9.receiver = self;
  v9.super_class = VNDocumentObservation;
  vn_cloneObject = [(VNDetectedObjectObservation *)&v9 vn_cloneObject];
  if (vn_cloneObject)
  {
    v4 = [(CRDocumentOutputRegion *)self->_topLevelRegion copy];
    v5 = vn_cloneObject[20];
    vn_cloneObject[20] = v4;

    v6 = [(NSArray *)self->_blocks copy];
    v7 = vn_cloneObject[21];
    vn_cloneObject[21] = v6;
  }

  return vn_cloneObject;
}

- (id)getDataDetectorResults:(id *)results
{
  v22 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v16 = [(CRDocumentOutputRegion *)self->_topLevelRegion contentsWithTypes:2048];
  if ([v16 count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v16, "count")}];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v16;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          v10 = [VNDataDetectorResult alloc];
          ddResult = [v9 ddResult];
          v12 = [(VNDataDetectorResult *)v10 initWithDDScannerResult:ddResult observation:self];

          dataType = [v9 dataType];
          if ((dataType - 1) >= 9)
          {
            v14 = 0;
          }

          else
          {
            v14 = dataType;
          }

          [(VNDataDetectorResult *)v12 setType:v14];
          [v4 addObject:v12];
        }

        v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v4 = 0;
  }

  kdebug_trace();

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = VNDocumentObservation;
    if ([(VNDetectedObjectObservation *)&v8 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      if ([(CRDocumentOutputRegion *)self->_topLevelRegion isEqual:v5->_topLevelRegion])
      {
        v6 = [(NSArray *)self->_blocks isEqual:v5->_blocks];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = VNDocumentObservation;
  return [(NSArray *)self->_blocks hash]^ __ROR8__([(CRDocumentOutputRegion *)self->_topLevelRegion hash]^ __ROR8__([(VNDetectedObjectObservation *)&v3 hash], 51), 51);
}

- (BOOL)shouldReprocessDocument
{
  getCRDocumentOutputRegion = [(VNDocumentObservation *)self getCRDocumentOutputRegion];
  shouldReprocessDocument = [getCRDocumentOutputRegion shouldReprocessDocument];

  return shouldReprocessDocument;
}

- (id)closestTextBlockOfTypes:(unint64_t)types toPoint:(CGPoint)point maximumPixelDistance:(int64_t)distance
{
  v6 = [(CRDocumentOutputRegion *)self->_topLevelRegion closestContentRegionOfType:types toNormalizedPoint:distance maxPixelDistance:point.x, 1.0 - point.y];
  if (v6)
  {
    v7 = [[VNRecognizedTextBlockObservation alloc] initWithRequestRevision:[(VNObservation *)self requestRevision] crOutputRegion:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)textBlockWithCharacterRange:(_NSRange)range
{
  v4 = [(CRDocumentOutputRegion *)self->_topLevelRegion outputRegionWithContentsOfCharacterRange:range.location, range.length];
  if (v4)
  {
    v5 = [[VNRecognizedTextBlockObservation alloc] initWithRequestRevision:[(VNObservation *)self requestRevision] crOutputRegion:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)textBlockOfTypes:(unint64_t)types containingTextAtIndex:(int64_t)index
{
  v5 = [(CRDocumentOutputRegion *)self->_topLevelRegion contentRegionOfType:types containingTextAtIndex:index];
  v6 = [[VNRecognizedTextBlock alloc] initWithRequestRevision:[(VNObservation *)self requestRevision] crOutputRegion:v5];

  return v6;
}

- (_NSRange)rangeOfTextBlockObservation:(id)observation
{
  getCROutputRegion = [observation getCROutputRegion];
  v5 = [(CRDocumentOutputRegion *)self->_topLevelRegion rangeOfContentRegion:getCROutputRegion];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

- (_NSRange)rangeOfTextBlock:(id)block
{
  getCROutputRegion = [block getCROutputRegion];
  v5 = [(CRDocumentOutputRegion *)self->_topLevelRegion rangeOfContentRegion:getCROutputRegion];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

- (id)boundingBoxForTextRange:(_NSRange)range error:(id *)error
{
  error = [(CRDocumentOutputRegion *)self->_topLevelRegion quadForTextInCharacterRange:range.location, range.length, error];
  v6 = [VNRectangleObservation alloc];
  requestRevision = [(VNObservation *)self requestRevision];
  [error topLeft];
  v9 = v8;
  v11 = 1.0 - v10;
  [error topRight];
  v13 = v12;
  v15 = 1.0 - v14;
  [error bottomRight];
  v17 = v16;
  v19 = 1.0 - v18;
  [error bottomLeft];
  v22 = [(VNRectangleObservation *)v6 initWithRequestRevision:requestRevision topLeft:v9 topRight:v11 bottomRight:v13 bottomLeft:v15, v17, v19, v21, 1.0 - v20];

  return v22;
}

- (id)blocksWithTypes:(unint64_t)types inRegion:(CGRect)region
{
  height = region.size.height;
  width = region.size.width;
  y = region.origin.y;
  x = region.origin.x;
  typesCopy = types;
  v32 = *MEMORY[0x1E69E9840];
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ((typesCopy & 0x1000) != 0)
  {
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self isKindOfClass: %@", objc_opt_class()];
    v12 = [(NSArray *)self->_blocks filteredArrayUsingPredicate:v11];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __50__VNDocumentObservation_blocksWithTypes_inRegion___block_invoke;
    v30[3] = &__block_descriptor_64_e47_B24__0__VNBarcodeObservation_8__NSDictionary_16l;
    *&v30[4] = x;
    *&v30[5] = y;
    *&v30[6] = width;
    *&v30[7] = height;
    v13 = [MEMORY[0x1E696AE18] predicateWithBlock:v30];
    v14 = [v12 filteredArrayUsingPredicate:v13];

    [v10 addObjectsFromArray:v14];
  }

  if ((typesCopy & 0x3E) != 0)
  {
    0xFFF = [(CRDocumentOutputRegion *)self->_topLevelRegion contentsWithTypes:typesCopy & 0xFFF];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __50__VNDocumentObservation_blocksWithTypes_inRegion___block_invoke_2;
    v29[3] = &__block_descriptor_64_e41_B24__0__CROutputRegion_8__NSDictionary_16l;
    *&v29[4] = x;
    *&v29[5] = y;
    *&v29[6] = width;
    *&v29[7] = height;
    v16 = [MEMORY[0x1E696AE18] predicateWithBlock:v29];
    v17 = [0xFFF filteredArrayUsingPredicate:v16];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v18 = v17;
    v19 = [v18 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [[VNRecognizedTextBlockObservation alloc] initWithRequestRevision:[(VNObservation *)self requestRevision] crOutputRegion:*(*(&v25 + 1) + 8 * i)];
          if (v23)
          {
            [v10 addObject:v23];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v20);
    }
  }

  return v10;
}

BOOL __50__VNDocumentObservation_blocksWithTypes_inRegion___block_invoke(void *a1, void *a2)
{
  [a2 boundingBox];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = a1[4];
  v12 = a1[5];
  v13 = a1[6];
  v14 = a1[7];

  return CGRectIntersectsRect(*&v11, *&v4);
}

BOOL __50__VNDocumentObservation_blocksWithTypes_inRegion___block_invoke_2(void *a1, void *a2)
{
  v3 = [a2 boundingQuad];
  [v3 boundingBox];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = 1.0 - v10 - v8;

  v12 = a1[4];
  v13 = a1[5];
  v14 = a1[6];
  v15 = a1[7];
  v16 = v5;
  v17 = v11;
  v18 = v7;
  v19 = v9;

  return CGRectIntersectsRect(*&v12, *&v16);
}

- (VNRecognizedTextBlockObservation)getTitle
{
  title = [(CRDocumentOutputRegion *)self->_topLevelRegion title];
  if (title)
  {
    v4 = [[VNRecognizedTextBlockObservation alloc] initWithRequestRevision:[(VNObservation *)self requestRevision] crOutputRegion:title];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_textBlockObservationsFromRegion:(id)region requestRevision:(unint64_t)revision
{
  v24 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  v6 = [regionCopy contentsWithTypes:2];
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if ([v13 type] == 2 || objc_msgSend(v13, "type") == 4 || objc_msgSend(v13, "type") == 8 || objc_msgSend(v13, "type") == 2048)
        {
          v14 = [[VNRecognizedTextBlockObservation alloc] initWithRequestRevision:revision crOutputRegion:v13];
          if (!v14)
          {

            v17 = 0;
            goto LABEL_16;
          }

          v15 = v14;
          title = [regionCopy title];
          [(VNRecognizedTextObservation *)v15 setIsTitle:v13 == title];

          [v7 addObject:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v17 = v7;
LABEL_16:

  return v17;
}

- (VNDocumentObservation)initWithTopLevelRegion:(id)region requestRevision:(unint64_t)revision
{
  regionCopy = region;
  boundingQuad = [regionCopy boundingQuad];
  [boundingQuad boundingBox];
  v18.receiver = self;
  v18.super_class = VNDocumentObservation;
  v8 = [(VNDetectedObjectObservation *)&v18 initWithRequestRevision:revision boundingBox:?];

  if (v8)
  {
    v9 = [regionCopy copy];
    topLevelRegion = v8->_topLevelRegion;
    v8->_topLevelRegion = v9;

    v11 = [(VNDocumentObservation *)v8 _textBlockObservationsFromRegion:v8->_topLevelRegion requestRevision:revision];
    v12 = [v11 copy];
    blocks = v8->_blocks;
    v8->_blocks = v12;

    trackingID = [(CRDocumentOutputRegion *)v8->_topLevelRegion trackingID];

    v15 = v8->_topLevelRegion;
    if (trackingID)
    {
      [(CRDocumentOutputRegion *)v15 trackingID];
    }

    else
    {
      [(CRDocumentOutputRegion *)v15 uuid];
    }
    v16 = ;
    [(VNObservation *)v8 setUUID:v16];
  }

  return v8;
}

@end