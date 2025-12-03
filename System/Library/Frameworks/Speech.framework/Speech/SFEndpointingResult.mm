@interface SFEndpointingResult
- ($105C7F46451D331BD7843CF46B2B4F94)range;
- (SFEndpointingResult)initWithRange:(id *)range wordCount:(int64_t)count eosLikelihood:(double)likelihood pauseCounts:(id)counts silencePosterior:(double)posterior;
@end

@implementation SFEndpointingResult

- ($105C7F46451D331BD7843CF46B2B4F94)range
{
  v3 = *&self[1].var0.var1;
  *&retstr->var0.var0 = *&self->var1.var3;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var1.var0;
  return self;
}

- (SFEndpointingResult)initWithRange:(id *)range wordCount:(int64_t)count eosLikelihood:(double)likelihood pauseCounts:(id)counts silencePosterior:(double)posterior
{
  countsCopy = counts;
  v20.receiver = self;
  v20.super_class = SFEndpointingResult;
  v13 = [(SFEndpointingResult *)&v20 init];
  v14 = v13;
  if (v13)
  {
    v15 = *&range->var0.var0;
    v16 = *&range->var0.var3;
    *(v13 + 72) = *&range->var1.var1;
    *(v13 + 56) = v16;
    *(v13 + 40) = v15;
    *(v13 + 1) = count;
    *(v13 + 2) = likelihood;
    v17 = [countsCopy copy];
    pauseCounts = v14->_pauseCounts;
    v14->_pauseCounts = v17;

    v14->_silencePosterior = posterior;
  }

  return v14;
}

@end