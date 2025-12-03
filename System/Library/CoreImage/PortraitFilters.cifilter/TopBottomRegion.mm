@interface TopBottomRegion
- ($D9ACD5A945031E604089763E4FBE0988)boundsRect;
- (BOOL)containsPointX:(float)x Y:(float)y;
- (TopBottomRegion)initWithSegments:(int)segments boundsRect:(CGRect)rect;
- (void)adjustForX:(float)x Y:(float)y;
- (void)dealloc;
- (void)lowerBottomBy:(float)by;
- (void)printSummary;
- (void)raiseTopBy:(float)by;
- (void)smoothWithSize:(int)size;
@end

@implementation TopBottomRegion

- (TopBottomRegion)initWithSegments:(int)segments boundsRect:(CGRect)rect
{
  width = rect.size.width;
  x = rect.origin.x;
  v15.receiver = self;
  v15.super_class = TopBottomRegion;
  v7 = [(TopBottomRegion *)&v15 init:rect.origin.x];
  v7->nsegs = segments;
  v8 = x;
  v9 = x + width;
  v7->xmin = v8;
  v7->xmax = v9;
  v7->topData = [[NSMutableData alloc] initWithLength:4 * v7->nsegs];
  v7->bottomData = [[NSMutableData alloc] initWithLength:4 * v7->nsegs];
  v7->seglength = 1.0;
  nsegs = v7->nsegs;
  v11 = 1.0;
  if (nsegs >= 1)
  {
    xmin = v7->xmin;
    xmax = v7->xmax;
    if (xmax > xmin)
    {
      v11 = (xmax - xmin) / nsegs;
      v7->seglength = v11;
    }
  }

  v7->ss = v11;
  v7->isempty = 1;
  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TopBottomRegion;
  [(TopBottomRegion *)&v3 dealloc];
}

- (void)smoothWithSize:(int)size
{
  v17 = objc_alloc_init(Rgon);
  v4 = [(TopBottomRegion *)self top];
  bottom = [(TopBottomRegion *)self bottom];
  xdatamin = self->xdatamin;
  LODWORD(xdatamax) = self->xdatamax;
  if (xdatamin <= xdatamax)
  {
    v10 = xdatamin;
    do
    {
      *&v7 = bottom[v10];
      *&v6 = v10;
      [(Rgon *)v17 AdjustForPointX:v6 Y:v7];
      *&v11 = v4[v10];
      *&v12 = v10;
      [(Rgon *)v17 AdjustForPointX:v12 Y:v11];
      xdatamax = self->xdatamax;
    }

    while (v10++ < xdatamax);
    xdatamin = self->xdatamin;
  }

  v14 = v17;
  if (xdatamin < xdatamax)
  {
    v15 = xdatamin;
    do
    {
      v16 = (bottom[v15] + v4[v15]) * 0.5;
      while (1)
      {
        *&v6 = v15;
        *&v7 = v16;
        if (![(Rgon *)v14 containsPointX:v6 Y:v7])
        {
          break;
        }

        v16 = v16 + 1.0;
        v14 = v17;
      }

      v4[v15++] = v16;
      v14 = v17;
    }

    while (v15 < self->xdatamax);
  }
}

- (void)raiseTopBy:(float)by
{
  v5 = [(TopBottomRegion *)self top];
  xdatamax = self->xdatamax;
  xdatamin = self->xdatamin;
  if (xdatamin <= xdatamax)
  {
    v8 = &v5[xdatamin];
    v9 = xdatamax - xdatamin + 1;
    do
    {
      *v8 = *v8 + by;
      ++v8;
      --v9;
    }

    while (v9);
  }
}

- (void)lowerBottomBy:(float)by
{
  bottom = [(TopBottomRegion *)self bottom];
  xdatamax = self->xdatamax;
  xdatamin = self->xdatamin;
  if (xdatamin <= xdatamax)
  {
    v8 = &bottom[xdatamin];
    v9 = xdatamax - xdatamin + 1;
    do
    {
      v10 = *v8 - by;
      if (v10 < 0.0)
      {
        v10 = 0.0;
      }

      *v8++ = v10;
      --v9;
    }

    while (v9);
  }
}

- (BOOL)containsPointX:(float)x Y:(float)y
{
  v7 = [(TopBottomRegion *)self top];
  bottom = [(TopBottomRegion *)self bottom];
  v9 = ((x - self->xmin) / self->seglength);
  return bottom[v9] < y && v7[v9] > y;
}

- (void)adjustForX:(float)x Y:(float)y
{
  v6 = ((x - self->xmin) / self->seglength);
  v7 = [(TopBottomRegion *)self top];
  bottom = [(TopBottomRegion *)self bottom];
  if ([(TopBottomRegion *)self isempty])
  {
    nsegs = self->nsegs;
    if (nsegs >= 1)
    {
      do
      {
        *bottom++ = y;
        *v7++ = y;
        --nsegs;
      }

      while (nsegs);
    }

    self->xdatamin = v6;
    self->xdatamax = v6;

    [(TopBottomRegion *)self setIsempty:0];
  }

  else
  {
    if (v7[v6] < y)
    {
      v7[v6] = y;
    }

    if (bottom[v6] > y)
    {
      bottom[v6] = y;
    }

    if (self->xdatamin > v6)
    {
      self->xdatamin = v6;
    }

    if (self->xdatamax < v6)
    {
      self->xdatamax = v6;
    }
  }
}

- ($D9ACD5A945031E604089763E4FBE0988)boundsRect
{
  v3 = [(TopBottomRegion *)self top];
  bottom = [(TopBottomRegion *)self bottom];
  xmin = self->xmin;
  xmax = self->xmax;
  v7 = bottom[self->xdatamin];
  v8 = v3[self->xdatamax];
  result.var1.y = v8;
  result.var1.x = xmax;
  result.var0.y = v7;
  result.var0.x = xmin;
  return result;
}

- (void)printSummary
{
  v3 = [(TopBottomRegion *)self top];
  bottom = [(TopBottomRegion *)self bottom];
  puts("topbottom region summary");
  printf("xmin, xmax, ymin, ymax {%f, %f}, {%f, %f} \n", self->xmin, self->xmax, bottom[self->xdatamin], v3[self->xdatamax]);
}

@end