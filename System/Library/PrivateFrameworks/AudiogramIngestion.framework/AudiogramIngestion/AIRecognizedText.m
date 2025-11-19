@interface AIRecognizedText
- (AIRecognizedText)initWithString:(id)a3;
- (AIRecognizedText)initWithString:(id)a3 center:(CGPoint)a4;
- (AIRecognizedText)initWithString:(id)a3 center:(CGPoint)a4 numericalValue:(id)a5;
- (AIRecognizedText)initWithString:(id)a3 center:(CGPoint)a4 width:(double)a5 numericalValue:(id)a6;
- (AIRecognizedText)initWithTextObservation:(id)a3;
- (AIRecognizedText)initWithTextObservation:(id)a3 regionOfInterest:(CGRect)a4;
- (CGPoint)_point:(CGPoint)a3 adjustedByRegionOfInterest:(CGRect)a4;
- (CGPoint)center;
- (CGRect)boundingBoxForRange:(_NSRange)a3 error:(id *)a4;
- (CGRect)regionOfInterest;
- (id)description;
@end

@implementation AIRecognizedText

- (AIRecognizedText)initWithTextObservation:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = AIRecognizedText;
  v5 = [(AIRecognizedText *)&v13 init];
  if (v5)
  {
    v6 = [v4 topCandidates:1];
    v7 = [v6 firstObject];
    [(AIRecognizedText *)v5 setRecognizedText:v7];

    v8 = [(AIRecognizedText *)v5 recognizedText];
    v9 = [v8 string];
    [(AIRecognizedText *)v5 setString:v9];

    [v4 boundingBox];
    MidX = CGRectGetMidX(v14);
    [v4 boundingBox];
    [(AIRecognizedText *)v5 setCenter:MidX, CGRectGetMidY(v15)];
    [v4 boundingBox];
    [(AIRecognizedText *)v5 setWidth:v11];
  }

  return v5;
}

- (AIRecognizedText)initWithTextObservation:(id)a3 regionOfInterest:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = [(AIRecognizedText *)self initWithTextObservation:a3];
  v9 = v8;
  if (v8)
  {
    [(AIRecognizedText *)v8 setRegionOfInterest:x, y, width, height];
    [(AIRecognizedText *)v9 center];
    v11 = v10;
    v13 = v12;
    [(AIRecognizedText *)v9 regionOfInterest];
    [(AIRecognizedText *)v9 _point:v11 adjustedByRegionOfInterest:v13, v14, v15, v16, v17];
    [(AIRecognizedText *)v9 setCenter:?];
  }

  return v9;
}

- (AIRecognizedText)initWithString:(id)a3 center:(CGPoint)a4 width:(double)a5 numericalValue:(id)a6
{
  v7 = [(AIRecognizedText *)self initWithString:a3 center:a6 numericalValue:a4.x, a4.y];
  v8 = v7;
  if (v7)
  {
    [(AIRecognizedText *)v7 setWidth:a5];
  }

  return v8;
}

- (CGRect)boundingBoxForRange:(_NSRange)a3 error:(id *)a4
{
  length = a3.length;
  location = a3.location;
  v8 = [(AIRecognizedText *)self recognizedText];

  if (v8)
  {
    v9 = [(AIRecognizedText *)self recognizedText];
    v10 = [v9 boundingBoxForRange:location error:{length, a4}];

    [v10 topLeft];
    v12 = v11;
    v14 = v13;
    [(AIRecognizedText *)self regionOfInterest];
    [(AIRecognizedText *)self _point:v12 adjustedByRegionOfInterest:v14, v15, v16, v17, v18];
    v20 = v19;
    v22 = v21;
    [v10 topRight];
    v24 = v23;
    v26 = v25;
    [(AIRecognizedText *)self regionOfInterest];
    [(AIRecognizedText *)self _point:v24 adjustedByRegionOfInterest:v26, v27, v28, v29, v30];
    v32 = v31 - v20;
    v34 = v33 - v22;
  }

  else
  {
    v20 = *MEMORY[0x277CBF3A0];
    v22 = *(MEMORY[0x277CBF3A0] + 8);
    v32 = *(MEMORY[0x277CBF3A0] + 16);
    v34 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v35 = v20;
  v36 = v22;
  v37 = v32;
  v38 = v34;
  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

- (CGPoint)_point:(CGPoint)a3 adjustedByRegionOfInterest:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.y;
  v9 = a3.x;
  if (!CGRectIsEmpty(a4))
  {
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    v10 = CGRectGetWidth(v15);
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    v11 = CGRectGetHeight(v16);
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    v9 = CGRectGetMinX(v17) + v10 * v9;
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    v8 = CGRectGetMinY(v18) + v11 * v8;
  }

  v12 = v9;
  v13 = v8;
  result.y = v13;
  result.x = v12;
  return result;
}

- (id)description
{
  v3 = [(AIRecognizedText *)self numericalValue];

  v4 = MEMORY[0x277CCACA8];
  if (v3)
  {
    v14.receiver = self;
    v14.super_class = AIRecognizedText;
    v5 = [(AIRecognizedText *)&v14 description];
    v6 = [(AIRecognizedText *)self string];
    v7 = [(AIRecognizedText *)self numericalValue];
    [(AIRecognizedText *)self center];
    v8 = NSStringFromCGPoint(v16);
    [(AIRecognizedText *)self width];
    v10 = [v4 stringWithFormat:@"%@ '%@' (%@) at point %@ width %f", v5, v6, v7, v8, v9];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = AIRecognizedText;
    v5 = [(AIRecognizedText *)&v13 description];
    v6 = [(AIRecognizedText *)self string];
    [(AIRecognizedText *)self center];
    v7 = NSStringFromCGPoint(v17);
    [(AIRecognizedText *)self width];
    v10 = [v4 stringWithFormat:@"%@ '%@' at point %@ width %f", v5, v6, v7, v11];
  }

  return v10;
}

- (AIRecognizedText)initWithString:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AIRecognizedText;
  v5 = [(AIRecognizedText *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AIRecognizedText *)v5 setString:v4];
  }

  return v6;
}

- (AIRecognizedText)initWithString:(id)a3 center:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = [(AIRecognizedText *)self initWithString:a3];
  v7 = v6;
  if (v6)
  {
    [(AIRecognizedText *)v6 setCenter:x, y];
  }

  return v7;
}

- (AIRecognizedText)initWithString:(id)a3 center:(CGPoint)a4 numericalValue:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a5;
  v10 = [(AIRecognizedText *)self initWithString:a3 center:x, y];
  v11 = v10;
  if (v10)
  {
    [(AIRecognizedText *)v10 setNumericalValue:v9];
  }

  return v11;
}

- (CGPoint)center
{
  x = self->_center.x;
  y = self->_center.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)regionOfInterest
{
  x = self->_regionOfInterest.origin.x;
  y = self->_regionOfInterest.origin.y;
  width = self->_regionOfInterest.size.width;
  height = self->_regionOfInterest.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end