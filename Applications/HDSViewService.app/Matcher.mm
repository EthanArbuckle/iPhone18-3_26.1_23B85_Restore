@interface Matcher
- (Matcher)initWithAnimationName:(id)name;
- (void)circularCorrelation:(float *)correlation withLength:(unsigned int)length;
- (void)computeNormalizedSignal:(float *)signal withLength:(unsigned int)length;
- (void)dealloc;
- (void)loadTemplate:(id)template;
@end

@implementation Matcher

- (Matcher)initWithAnimationName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = Matcher;
  v5 = [(Matcher *)&v9 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 28) = 0x23F4CCCCDLL;
    *(v5 + 10) = 0;
    *(v5 + 8) = 0;
    *(v5 + 9) = 0;
    [v5 reset];
    [(Matcher *)v6 loadTemplate:nameCopy];
    v7 = vcvtd_n_f64_u32(v6->_kernelLength, 1uLL);
    v6->_correlationLength = v7;
    v6->_correlation = malloc_type_realloc(v6->_correlation, 4 * v7, 0x100004052888210uLL);
    v6->_matchError = malloc_type_realloc(v6->_matchError, 4 * v6->_correlationLength, 0x100004052888210uLL);
  }

  return v6;
}

- (void)dealloc
{
  correlation = self->_correlation;
  if (correlation)
  {
    free(correlation);
  }

  kernel = self->_kernel;
  if (kernel)
  {
    free(kernel);
  }

  normalizedSignal = self->_normalizedSignal;
  if (normalizedSignal)
  {
    free(normalizedSignal);
  }

  matchError = self->_matchError;
  if (matchError)
  {
    free(matchError);
  }

  v7.receiver = self;
  v7.super_class = Matcher;
  [(Matcher *)&v7 dealloc];
}

- (void)loadTemplate:(id)template
{
  templateCopy = template;
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 pathForResource:templateCopy ofType:@"dat"];

  v8 = +[NSFileManager defaultManager];
  LOBYTE(templateCopy) = [v8 fileExistsAtPath:v7];

  if ((templateCopy & 1) != 0 && (v9 = fopen([v7 UTF8String], "rb")) != 0)
  {
    v10 = v9;
    __ptr = 0;
    fread(&__ptr + 4, 4uLL, 1uLL, v9);
    fread(&__ptr, 4uLL, 1uLL, v10);
    v11 = HIDWORD(__ptr);
    v12 = HIDWORD(__ptr);
    if (fread(&v14 - ((4 * HIDWORD(__ptr) + 15) & 0x7FFFFFFF0), __ptr, HIDWORD(__ptr), v10) != v11)
    {
      sub_1000B4DC4(a2, self);
    }

    fclose(v10);
    self->_kernelLength = 2 * v12;
    v13 = malloc_type_realloc(self->_kernel, 4 * (2 * v12), 0x100004052888210uLL);
    self->_kernel = v13;
    memcpy(v13, &v14 - ((4 * v11 + 15) & 0x7FFFFFFF0), 4 * v11);
    memcpy(&self->_kernel[v11], &v14 - ((4 * v11 + 15) & 0x7FFFFFFF0), 4 * v11);
    __StandardDeviation = 0;
    vDSP_normalize(self->_kernel, 1, self->_kernel, 1, &__StandardDeviation + 1, &__StandardDeviation, self->_kernelLength);
    self->_normalizedSignal = malloc_type_realloc(self->_normalizedSignal, 4 * self->_kernelLength, 0x100004052888210uLL);
  }

  else
  {
    [NSException raise:NSFileHandleOperationException format:@"Template file not found."];
  }
}

- (void)computeNormalizedSignal:(float *)signal withLength:(unsigned int)length
{
  lengthCopy = length;
  if (self->_kernelLength < length)
  {
    self->_normalizedSignal = malloc_type_realloc(self->_normalizedSignal, 4 * length, 0x100004052888210uLL);
  }

  __StandardDeviation = 0;
  vDSP_normalize(signal, 1, 0, 1, &__StandardDeviation + 1, &__StandardDeviation, lengthCopy);
  *(&__StandardDeviation + 1) = -*(&__StandardDeviation + 1);
  vDSP_vsadd(signal, 1, &__StandardDeviation + 1, self->_normalizedSignal, 1, lengthCopy);
  if (*&__StandardDeviation < self->_std_floor)
  {
    *&__StandardDeviation = self->_std_floor;
  }

  vDSP_vsdiv(self->_normalizedSignal, 1, &__StandardDeviation, self->_normalizedSignal, 1, lengthCopy);
}

- (void)circularCorrelation:(float *)correlation withLength:(unsigned int)length
{
  self->_signalOffset = 0;
  self->_signalCorrLength = length;
  v6 = vcvtd_n_f64_u32(self->_kernelLength, 1uLL);
  if (v6 >= length)
  {
    v7 = 0;
  }

  else
  {
    v7 = length - v6;
    self->_signalOffset = v7;
    self->_signalCorrLength = v6;
    length = v6;
  }

  vDSP_conv(self->_kernel, 1, &correlation[v7], 1, self->_correlation, 1, self->_correlationLength, length);
  __I = 0;
  vDSP_maxvi(self->_correlation, 1, &self->_matchStrength, &__I, self->_correlationLength);
  signalCorrLength = self->_signalCorrLength;
  self->_matchStrength = self->_matchStrength / signalCorrLength;
  v9 = __I;
  if (__I)
  {
    v9 = self->_correlationLength - __I;
  }

  signalOffset = self->_signalOffset;
  v11 = vcvtd_n_f64_u32(self->_kernelLength, 1uLL);
  self->_matchIndex = v9 + signalOffset;
  vDSP_vsub(&self->_kernel[v11 - v9], 1, &correlation[signalOffset], 1, self->_matchError, 1, signalCorrLength);
  vDSP_vabs(self->_matchError, 1, self->_matchError, 1, signalCorrLength);
  __C = 0.0;
  vDSP_maxv(self->_matchError, 1, &__C, signalCorrLength);
  self->_matchStrength = 1.0 - __C;
}

@end