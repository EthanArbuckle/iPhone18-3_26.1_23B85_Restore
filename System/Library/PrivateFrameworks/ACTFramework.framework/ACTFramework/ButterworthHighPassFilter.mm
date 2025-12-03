@interface ButterworthHighPassFilter
- (ButterworthHighPassFilter)initWithCutoffFrequency:(float)frequency sampleRate:(float)rate;
- (float)filterSample:(float)sample;
- (int)resetState;
- (void)calculateCoefficientsWithCutoff:(float)cutoff sampleRate:(float)rate;
- (void)dealloc;
@end

@implementation ButterworthHighPassFilter

- (ButterworthHighPassFilter)initWithCutoffFrequency:(float)frequency sampleRate:(float)rate
{
  v14.receiver = self;
  v14.super_class = ButterworthHighPassFilter;
  v6 = [(ButterworthHighPassFilter *)&v14 init];
  v7 = v6;
  if (v6)
  {
    v6->_order = 2;
    v6->_b = malloc_type_malloc(0xCuLL, 0x100004052888210uLL);
    v7->_a = malloc_type_malloc(4 * v7->_order + 4, 0x100004052888210uLL);
    v7->_x = malloc_type_calloc(v7->_order, 4uLL, 0x100004052888210uLL);
    v7->_y = malloc_type_calloc(v7->_order, 4uLL, 0x100004052888210uLL);
    *&v8 = frequency;
    *&v9 = rate;
    objc_msgSend_calculateCoefficientsWithCutoff_sampleRate_(v7, v10, v11, v12, v8, v9);
  }

  return v7;
}

- (void)calculateCoefficientsWithCutoff:(float)cutoff sampleRate:(float)rate
{
  v5 = tan((cutoff / (rate * 0.5)) * 3.14159265);
  v6 = v5 * v5;
  v7 = v5 * 2.8284;
  *v8.i32 = v6 + (v7 + 1.0);
  v9 = vdiv_f32(0xC00000003F800000, vdup_lane_s32(v8, 0));
  b = self->_b;
  a = self->_a;
  *b = v9;
  b[2] = v9.f32[0];
  *a = 1.0;
  a[1] = ((v6 + -1.0) + (v6 + -1.0)) / *v8.i32;
  a[2] = (v6 + (1.0 - v7)) / *v8.i32;
}

- (float)filterSample:(float)sample
{
  b = self->_b;
  v4 = *b;
  v5 = b[1];
  v6 = b[2];
  x = self->_x;
  y = self->_y;
  v9 = *x;
  v10 = ((((v5 * *x) + (v4 * sample)) + (v6 * x[1])) - (self->_a[1] * *y)) - (self->_a[2] * y[1]);
  *x = sample;
  x[1] = v9;
  v11 = *y;
  *y = v10;
  y[1] = v11;
  return v10;
}

- (int)resetState
{
  bzero(self->_x, 4 * self->_order);
  bzero(self->_y, 4 * self->_order);
  return 0;
}

- (void)dealloc
{
  free(self->_b);
  free(self->_a);
  free(self->_x);
  free(self->_y);
  v3.receiver = self;
  v3.super_class = ButterworthHighPassFilter;
  [(ButterworthHighPassFilter *)&v3 dealloc];
}

@end