@interface MapScaleCell
- (MapScaleCell)initWithDistanceInMeters:(double)meters;
- (id)_legendStringForDistanceString:(id)string index:(int)index;
- (void)drawInRect:(CGRect)rect;
@end

@implementation MapScaleCell

- (void)drawInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v39 = +[UIColor whiteColor];
  v8 = [[UIColor alloc] initWithRed:0.470588235 green:0.435294118 blue:0.345098039 alpha:1.0];
  v9 = [[UIColor alloc] initWithWhite:0.0 alpha:0.800000012];
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetLineWidth(CurrentContext, 1.0);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  v11 = CGRectGetWidth(v41);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  MinX = CGRectGetMinX(v42);
  v37 = x;
  v38 = y;
  v43.origin.x = x;
  v43.origin.y = y;
  v13 = width;
  v43.size.width = width;
  v14 = height;
  v43.size.height = height;
  MaxY = CGRectGetMaxY(v43);
  v16 = [NSString _mapkit_localizedDistanceStringWithMeters:(self->_distanceInMeters * 0.0625) abbreviated:0];
  v17 = [v16 componentsSeparatedByString:@" "];
  if ([v17 count])
  {
    v35 = v16;
    v36 = v9;
    v18 = v11 * 0.0625;
    v19 = MinX + 12.0;
    v34 = v17;
    v20 = [v17 objectAtIndexedSubscript:0];
    v21 = [UIFont systemFontOfSize:5.0];
    v22 = 0;
    v23 = 0;
    v24 = MaxY + -23.0;
    v25 = 1;
    while (1)
    {
      v44.size.height = 2.0;
      v44.origin.x = v19;
      v44.origin.y = MaxY + -16.0;
      v44.size.width = v11 * 0.0625;
      MaxX = CGRectGetMaxX(v44);
      v45.origin.x = v37;
      v45.origin.y = v38;
      v45.size.width = v13;
      v45.size.height = v14;
      if (MaxX > CGRectGetMaxX(v45))
      {
        break;
      }

      v27 = v39;
      if (v25)
      {
        v27 = v8;
      }

      [v27 set];
      v25 ^= 1u;
      v46.size.height = 2.0;
      v46.origin.x = v19;
      v46.origin.y = MaxY + -16.0;
      v46.size.width = v11 * 0.0625;
      CGContextFillRect(CurrentContext, v46);
      v28 = [(MapScaleCell *)self _legendStringForDistanceString:v20 index:v23];

      v29 = +[UIColor blackColor];
      [v29 set];

      [v28 _maps_sizeWithFont:v21];
      [v28 _maps_drawAtPoint:v21 withFont:{v19 + v30 * -0.5, v24}];
      v19 = v19 + v18;
      v23 = (v23 + 1);
      v22 = v28;
      if (v23 == 4)
      {
        goto LABEL_9;
      }
    }

    v28 = v22;
LABEL_9:
    v31 = [(MapScaleCell *)self _legendStringForDistanceString:v20 index:v23];

    [v31 _maps_sizeWithFont:v21];
    [v31 _maps_drawAtPoint:v21 withFont:{v19 + v32 * -0.5, v24}];
    v17 = v34;
    v16 = v35;
    if ([v34 count] >= 2)
    {
      v33 = [v34 objectAtIndexedSubscript:1];

      [v33 _maps_drawAtPoint:v21 withFont:{v19 + 3.0, MaxY + -19.0}];
      v31 = v33;
    }

    v9 = v36;
    [v36 set];
    v47.origin.x = v37;
    v47.origin.y = v38;
    v47.size.width = v13;
    v47.size.height = v14;
    v48.origin.x = CGRectGetMinX(v47) + 12.0;
    v48.size.width = v18 * v23;
    v48.size.height = 2.0;
    v48.origin.y = MaxY + -16.0;
    CGContextStrokeRect(CurrentContext, v48);
  }
}

- (id)_legendStringForDistanceString:(id)string index:(int)index
{
  stringCopy = string;
  v6 = stringCopy;
  v7 = 0;
  if (index <= 1)
  {
    if (index)
    {
      if (index != 1)
      {
        goto LABEL_11;
      }

      [stringCopy floatValue];
      goto LABEL_10;
    }

    v7 = @"0";
  }

  else
  {
    if (index == 2)
    {
      [stringCopy floatValue];
      v9 = v10 + v10;
      goto LABEL_10;
    }

    if (index == 3 || index == 4)
    {
      [stringCopy floatValue];
      v9 = v8 * 3.0;
LABEL_10:
      v7 = [NSString stringWithFormat:@"%g", v9];
    }
  }

LABEL_11:

  return v7;
}

- (MapScaleCell)initWithDistanceInMeters:(double)meters
{
  v5.receiver = self;
  v5.super_class = MapScaleCell;
  result = [(MapScaleCell *)&v5 init];
  if (result)
  {
    result->_distanceInMeters = meters;
  }

  return result;
}

@end