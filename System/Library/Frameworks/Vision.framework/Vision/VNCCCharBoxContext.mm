@interface VNCCCharBoxContext
- (BOOL)makeAllocationsForWidth:(unint64_t)width;
- (void)copyFlagValue:(unint64_t)value toTarget:(unint64_t)target atIndex:(unsigned int)index;
- (void)dealloc;
- (void)releaseAllocations;
@end

@implementation VNCCCharBoxContext

- (void)releaseAllocations
{
  free(self->floatVectorSumProd);
  self->floatVectorSumProd = 0;
  free(self->pulseVectorHeightCharBox);
  self->pulseVectorHeightCharBox = 0;
  free(self->pulseVectorHeightCharBoxAdaptive);
  self->pulseVectorHeightCharBoxAdaptive = 0;
  free(self->charboxROIFullVectorRowStart);
  self->charboxROIFullVectorRowStart = 0;
  free(self->charboxROIFullVectorHeight2);
  self->charboxROIFullVectorHeight2 = 0;
  free(self->charBoxFlags);
  self->charBoxFlags = 0;
  self->allocationSize = 0;
  *&self->loopBigBox = 0;
}

- (BOOL)makeAllocationsForWidth:(unint64_t)width
{
  [(VNCCCharBoxContext *)self releaseAllocations];
  v5 = malloc_type_calloc(width, 4uLL, 0x100004052888210uLL);
  self->floatVectorSumProd = v5;
  if (v5 && (v6 = malloc_type_calloc(width, 1uLL, 0x100004077774924uLL), (self->pulseVectorHeightCharBox = v6) != 0) && (v7 = malloc_type_calloc(width, 1uLL, 0x100004077774924uLL), (self->pulseVectorHeightCharBoxAdaptive = v7) != 0) && (v8 = malloc_type_calloc(width, 2uLL, 0x1000040BDFB0063uLL), (self->charboxROIFullVectorRowStart = v8) != 0) && (v9 = malloc_type_calloc(width, 2uLL, 0x1000040BDFB0063uLL), (self->charboxROIFullVectorHeight2 = v9) != 0) && (v10 = malloc_type_calloc(width, 8uLL, 0x100004000313F17uLL), (self->charBoxFlags = v10) != 0))
  {
    self->allocationSize = width;
    *&self->loopBigBox = 0;
    return 1;
  }

  else
  {
    [(VNCCCharBoxContext *)self releaseAllocations];
    return 0;
  }
}

- (void)dealloc
{
  [(VNCCCharBoxContext *)self releaseAllocations];
  v3.receiver = self;
  v3.super_class = VNCCCharBoxContext;
  [(VNCCCharBoxContext *)&v3 dealloc];
}

- (void)copyFlagValue:(unint64_t)value toTarget:(unint64_t)target atIndex:(unsigned int)index
{
  if ((self->charBoxFlags[index] & value) != 0)
  {
    [(VNCCCharBoxContext *)self setFlag:target atIndex:*&index];
  }

  else
  {
    [(VNCCCharBoxContext *)self clearFlag:target atIndex:*&index];
  }
}

@end