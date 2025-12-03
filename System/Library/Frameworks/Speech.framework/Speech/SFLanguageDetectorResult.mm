@interface SFLanguageDetectorResult
- ($105C7F46451D331BD7843CF46B2B4F94)range;
- (SFLanguageDetectorResult)initWithRange:(id *)range dominantLocale:(id)locale alternatives:(id)alternatives detectedLanguageCode:(id)code;
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

- (SFLanguageDetectorResult)initWithRange:(id *)range dominantLocale:(id)locale alternatives:(id)alternatives detectedLanguageCode:(id)code
{
  localeCopy = locale;
  alternativesCopy = alternatives;
  codeCopy = code;
  v22.receiver = self;
  v22.super_class = SFLanguageDetectorResult;
  v13 = [(SFLanguageDetectorResult *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v15 = *&range->var0.var0;
    v16 = *&range->var1.var1;
    *&v13->_range.start.epoch = *&range->var0.var3;
    *&v13->_range.duration.timescale = v16;
    *&v13->_range.start.value = v15;
    v17 = [localeCopy copy];
    dominantLocale = v14->_dominantLocale;
    v14->_dominantLocale = v17;

    v19 = [alternativesCopy copy];
    alternatives = v14->_alternatives;
    v14->_alternatives = v19;

    objc_storeStrong(&v14->_detectedLanguageCode, code);
  }

  return v14;
}

@end