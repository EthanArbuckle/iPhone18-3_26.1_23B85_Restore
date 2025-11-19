@interface VCLinkProbingResult
- (VCLinkProbingResult)initWithProbingResults:(id)a3 linkProbingResultConfig:(id *)a4;
- (id)description;
- (unsigned)getPLRTierFromPLREnvelope:(double)a3;
- (void)dealloc;
- (void)updateLinkStatsWithArrivingNewValueMeanRTT:(double)a3 arrivingNewValuePLR:(double)a4;
- (void)updateProbingResult:(id)a3 initialResult:(BOOL)a4;
@end

@implementation VCLinkProbingResult

- (VCLinkProbingResult)initWithProbingResults:(id)a3 linkProbingResultConfig:(id *)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = VCLinkProbingResult;
  v6 = [(VCLinkProbingResult *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v8 = *&a4->var0;
    v9 = *&a4->var3;
    *(v6 + 11) = a4->var5;
    *(v6 + 72) = v9;
    *(v6 + 56) = v8;
    *(v6 + 4) = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:0.0];
    v7->_plrEnvelopeValue = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:-1.0];
    v7->_plrTier = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:0];
    [(VCLinkProbingResult *)v7 updateProbingResult:a3 initialResult:1];
  }

  return v7;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCLinkProbingResult;
  [(VCLinkProbingResult *)&v3 dealloc];
}

- (void)updateProbingResult:(id)a3 initialResult:(BOOL)a4
{
  v4 = a4;
  v37 = *MEMORY[0x1E69E9840];
  v7 = [objc_msgSend(a3 objectForKeyedSubscript:{*MEMORY[0x1E69A4A70]), "unsignedIntValue"}];
  v8 = [objc_msgSend(a3 objectForKeyedSubscript:{*MEMORY[0x1E69A4A78]), "unsignedIntValue"}];
  v9 = [objc_msgSend(a3 objectForKeyedSubscript:{*MEMORY[0x1E69A4A68]), "unsignedIntValue"}];
  v10 = v7;
  if (v4)
  {
    self->_sentRequestCount = v7;
    self->_receivedResponseCount = v8;
    self->_reorderedPacketsCount = v9;
    self->_requestTimestampAndRTTList = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  else
  {
    reorderedPacketsCount = self->_reorderedPacketsCount;
    v12 = self->_receivedResponseCount + v8;
    self->_sentRequestCount += v7;
    self->_receivedResponseCount = v12;
    self->_reorderedPacketsCount = reorderedPacketsCount + v9;
  }

  v13 = [a3 objectForKeyedSubscript:*MEMORY[0x1E69A4AC0]];
  v30 = [objc_msgSend(a3 objectForKeyedSubscript:{*MEMORY[0x1E69A4B30]), "unsignedIntValue"}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v33 objects:v32 count:16];
  v15 = 0.0;
  if (v14)
  {
    v16 = v14;
    v28 = v10;
    v29 = v8;
    v17 = 0;
    v18 = 0;
    v19 = *v34;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(v13);
        }

        v21 = *(*(&v33 + 1) + 8 * i);
        v22 = [objc_msgSend(v21 objectAtIndexedSubscript:{0), "unsignedIntValue"}];
        v23 = [objc_msgSend(v21 objectAtIndexedSubscript:{1), "unsignedIntValue"}];
        if ([(NSMutableArray *)[(VCLinkProbingResult *)self requestTimestampAndRTTList] count]>= 0x3E8)
        {
          [(NSMutableArray *)[(VCLinkProbingResult *)self requestTimestampAndRTTList] removeFirstObject];
        }

        v24 = [(VCLinkProbingResult *)self requestTimestampAndRTTList];
        v31[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v30 + v22];
        v31[1] = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v23];
        -[NSMutableArray addObject:](v24, "addObject:", [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2]);
        if (v23 == 0xFFFF)
        {
          v25 = 0;
        }

        else
        {
          ++v17;
          v25 = v23;
        }

        v18 += v25;
      }

      v16 = [v13 countByEnumeratingWithState:&v33 objects:v32 count:16];
    }

    while (v16);
    v26 = v18;
    v10 = v28;
    v8 = v29;
  }

  else
  {
    v17 = 0;
    v26 = 0.0;
  }

  if (self->_linkProbingResultConfig.linkProbingCapabilityVersion == 2)
  {
    v15 = (v10 - v8) / v10;
  }

  if (v17)
  {
    v27 = v26 / v17;
  }

  else
  {
    v27 = 0.0;
  }

  [(VCLinkProbingResult *)self updateLinkStatsWithArrivingNewValueMeanRTT:v27 arrivingNewValuePLR:v15];
}

- (void)updateLinkStatsWithArrivingNewValueMeanRTT:(double)a3 arrivingNewValuePLR:(double)a4
{
  [(NSNumber *)self->_plrEnvelopeValue doubleValue];
  v7 = 80;
  if (v8 < a4)
  {
    v7 = 72;
  }

  v9 = *(&self->super.isa + v7);
  [(NSNumber *)self->_plrEnvelopeValue doubleValue];
  if (v10 != -1.0)
  {
    [(NSNumber *)self->_plrEnvelopeValue doubleValue];
    a4 = (1.0 - v9) * v11 + a4 * v9;
  }

  self->_plrEnvelopeValue = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:a4];
  v12 = objc_alloc(MEMORY[0x1E696AD98]);
  [(NSNumber *)self->_plrEnvelopeValue doubleValue];
  self->_plrTier = [v12 initWithUnsignedInt:{-[VCLinkProbingResult getPLRTierFromPLREnvelope:](self, "getPLRTierFromPLREnvelope:")}];
  if (a3 > 0.0)
  {
    [(NSNumber *)self->_expMovMeanRTT doubleValue];
    if (v13 != 0.0)
    {
      expMovMeanFactor = self->_linkProbingResultConfig.expMovMeanFactor;
      [(NSNumber *)self->_expMovMeanRTT doubleValue];
      a3 = v15 * (1.0 - self->_linkProbingResultConfig.expMovMeanFactor) + a3 * expMovMeanFactor;
    }

    self->_expMovMeanRTT = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:a3];
  }
}

- (unsigned)getPLRTierFromPLREnvelope:(double)a3
{
  if (![(NSArray *)self->_linkProbingResultConfig.plrBuckets count])
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = a3 * 100.0;
  do
  {
    [-[NSArray objectAtIndexedSubscript:](self->_linkProbingResultConfig.plrBuckets objectAtIndexedSubscript:{v5), "doubleValue"}];
    if (v7 < v8)
    {
      break;
    }

    v5 = ++v6;
  }

  while ([(NSArray *)self->_linkProbingResultConfig.plrBuckets count]> v6);
  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@[%p][CUMULATIVE] reorderedPacketsCount[%d] sentRequestCount[%d] receivedResponseCount[%d] ExpMovMeanRTT[%@] plrEnvelopeValue[%@] plrTier[%@]", NSStringFromClass(v4), self, self->_reorderedPacketsCount, self->_sentRequestCount, self->_receivedResponseCount, self->_expMovMeanRTT, self->_plrEnvelopeValue, self->_plrTier];
}

@end