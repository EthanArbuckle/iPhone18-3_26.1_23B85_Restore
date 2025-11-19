@interface SFLanguageDetectorResult
- ($105C7F46451D331BD7843CF46B2B4F94)range;
- (SFLanguageDetectorResult)initWithRange:(id *)a3 dominantLocale:(id)a4 alternatives:(id)a5 detectedLanguageCode:(id)a6;
@end

@implementation SFLanguageDetectorResult

- ($105C7F46451D331BD7843CF46B2B4F94)range
{
  v3 = *&self[1].var0.var0;
  *&retstr->var0.var0 = *&self->var1.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var0.var3;
  return self;
}

- (SFLanguageDetectorResult)initWithRange:(id *)a3 dominantLocale:(id)a4 alternatives:(id)a5 detectedLanguageCode:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = SFLanguageDetectorResult;
  v13 = [(SFLanguageDetectorResult *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v15 = *&a3->var0.var0;
    v16 = *&a3->var1.var1;
    *&v13->_range.start.epoch = *&a3->var0.var3;
    *&v13->_range.duration.timescale = v16;
    *&v13->_range.start.value = v15;
    v17 = [v10 copy];
    dominantLocale = v14->_dominantLocale;
    v14->_dominantLocale = v17;

    v19 = [v11 copy];
    alternatives = v14->_alternatives;
    v14->_alternatives = v19;

    objc_storeStrong(&v14->_detectedLanguageCode, a6);
  }

  return v14;
}

@end