@interface ADConfidenceLevelRanges
+ (id)rangesForUnits:(unint64_t)a3 lowLevel:(ADFloatRange)a4 mediumLevel:(ADFloatRange)a5 highLevel:(ADFloatRange)a6;
- (ADFloatRange)highLevel;
- (ADFloatRange)lowLevel;
- (ADFloatRange)mediumLevel;
- (id)createConvertedRangesWithUnits:(unint64_t)a3 operation:(void *)a4;
- (id)description;
- (id)initForUnits:(unint64_t)a3 lowLevel:(ADFloatRange)a4 mediumLevel:(ADFloatRange)a5 highLevel:(ADFloatRange)a6;
- (id)rangesForUnits:(unint64_t)a3;
@end

@implementation ADConfidenceLevelRanges

- (ADFloatRange)highLevel
{
  start = self->_highLevel.start;
  end = self->_highLevel.end;
  result.end = end;
  result.start = start;
  return result;
}

- (ADFloatRange)mediumLevel
{
  start = self->_mediumLevel.start;
  end = self->_mediumLevel.end;
  result.end = end;
  result.start = start;
  return result;
}

- (ADFloatRange)lowLevel
{
  start = self->_lowLevel.start;
  end = self->_lowLevel.end;
  result.end = end;
  result.start = start;
  return result;
}

- (id)rangesForUnits:(unint64_t)a3
{
  confidenceUnits = self->_confidenceUnits;
  if (confidenceUnits == a3)
  {
    *&v3 = self->_lowLevel.start;
    *&v4 = self->_lowLevel.end;
    *&v5 = self->_mediumLevel.start;
    *&v6 = self->_mediumLevel.end;
    *&v7 = self->_highLevel.start;
    *&v8 = self->_highLevel.end;
    v10 = [ADConfidenceLevelRanges rangesForUnits:v3 lowLevel:v4 mediumLevel:v5 highLevel:v6, v7, v8];
    goto LABEL_25;
  }

  switch(a3)
  {
    case 3uLL:
      if (confidenceUnits == 2)
      {
        v13 = postProcessingStandardDeviationToLogarithmicVariance;
      }

      else
      {
        if (confidenceUnits)
        {
          break;
        }

        v13 = postProcessingConfidenceToLogarithmicVariance;
      }

      v14 = v13;
      v15 = 3;
      goto LABEL_24;
    case 2uLL:
      if (confidenceUnits == 3)
      {
        v12 = postProcessingLogarithmicVarianceToStd;
      }

      else
      {
        if (confidenceUnits)
        {
          break;
        }

        v12 = postProcessingConfidenceToStandardDeviation;
      }

      v14 = v12;
      v15 = 2;
LABEL_24:
      v10 = [(ADConfidenceLevelRanges *)self createConvertedRangesWithUnits:v15 operation:v14];
      goto LABEL_25;
    case 0uLL:
      if (confidenceUnits == 3)
      {
        v11 = postProcessingLogarithmicVarianceToConfidence;
        goto LABEL_23;
      }

      if (confidenceUnits == 2)
      {
        v11 = postProcessingStandardDeviationToConfidence;
LABEL_23:
        v14 = v11;
        v15 = 0;
        goto LABEL_24;
      }

      break;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v17 = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed converting confidence levels range", v17, 2u);
  }

  v10 = 0;
LABEL_25:

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(ADConfidenceLevelRanges *)self lowLevel];
  v5 = v4;
  [(ADConfidenceLevelRanges *)self lowLevel];
  v7 = v6;
  [(ADConfidenceLevelRanges *)self mediumLevel];
  v9 = v8;
  [(ADConfidenceLevelRanges *)self mediumLevel];
  v11 = v10;
  [(ADConfidenceLevelRanges *)self highLevel];
  v13 = v12;
  [(ADConfidenceLevelRanges *)self highLevel];
  return [v3 stringWithFormat:@"ADConfidenceLevelRanges: L(%.3f, %.3f), M(%.3f, %.3f), H(%.3f, %.3f)", *&v5, *&v7, *&v9, *&v11, *&v13, v14];
}

- (id)createConvertedRangesWithUnits:(unint64_t)a3 operation:(void *)a4
{
  v7 = [ADConfidenceLevelRanges alloc];
  v8 = (a4)([(ADConfidenceLevelRanges *)self lowLevel]);
  v9 = [(ADConfidenceLevelRanges *)self lowLevel];
  v11 = (a4)(v9, v10);
  v12 = (a4)([(ADConfidenceLevelRanges *)self mediumLevel]);
  v13 = [(ADConfidenceLevelRanges *)self mediumLevel];
  v15 = (a4)(v13, v14);
  v16 = (a4)([(ADConfidenceLevelRanges *)self highLevel]);
  v17 = [(ADConfidenceLevelRanges *)self highLevel];
  v19 = (a4)(v17, v18);
  LODWORD(v20) = LODWORD(v19);
  *&v19 = v8;
  *&v21 = v11;
  *&v22 = v12;
  *&v23 = v15;
  *&v24 = v16;
  v25 = [(ADConfidenceLevelRanges *)v7 initForUnits:a3 lowLevel:v19 mediumLevel:v21 highLevel:v22, v23, v24, v20];

  return v25;
}

- (id)initForUnits:(unint64_t)a3 lowLevel:(ADFloatRange)a4 mediumLevel:(ADFloatRange)a5 highLevel:(ADFloatRange)a6
{
  end = a6.end;
  start = a6.start;
  v8 = a5.end;
  v9 = a5.start;
  v10 = a4.end;
  v11 = a4.start;
  v18.receiver = self;
  v18.super_class = ADConfidenceLevelRanges;
  v13 = [(ADConfidenceLevelRanges *)&v18 init];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_7;
  }

  if (a3 != 1)
  {
    v13->_lowLevel.start = v11;
    v13->_lowLevel.end = v10;
    v13->_mediumLevel.start = v9;
    v13->_mediumLevel.end = v8;
    v13->_highLevel.start = start;
    v13->_highLevel.end = end;
    v13->_confidenceUnits = a3;
LABEL_7:
    v15 = v13;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v17[0] = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ADConfidenceLevelRanges does not support levels confidence units", v17, 2u);
  }

  v15 = 0;
LABEL_8:

  return v15;
}

+ (id)rangesForUnits:(unint64_t)a3 lowLevel:(ADFloatRange)a4 mediumLevel:(ADFloatRange)a5 highLevel:(ADFloatRange)a6
{
  end = a6.end;
  start = a6.start;
  v8 = a5.end;
  v9 = a5.start;
  v10 = a4.end;
  v11 = a4.start;
  v13 = [ADConfidenceLevelRanges alloc];
  *&v14 = v11;
  *&v15 = v10;
  *&v16 = v9;
  *&v17 = v8;
  *&v18 = start;
  *&v19 = end;
  v20 = [(ADConfidenceLevelRanges *)v13 initForUnits:a3 lowLevel:v14 mediumLevel:v15 highLevel:v16, v17, v18, v19];

  return v20;
}

@end