@interface ActuationWaveform
+ (id)stringFromBaseType:(unint64_t)type;
+ (unint64_t)baseTypeFromString:(id)string;
- (ActuationWaveform)initWithDictionary:(id)dictionary;
- (NSDictionary)dictionary;
- (id)parameterizeWaveformWithStrength:(float)strength timeDilation:(float)dilation actuatorLimits:(id)limits options:(unsigned int)options;
@end

@implementation ActuationWaveform

+ (unint64_t)baseTypeFromString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  v5 = stringCopy && ([stringCopy isEqualToString:@"Gaussian"] & 1) != 0;

  return v5;
}

+ (id)stringFromBaseType:(unint64_t)type
{
  if (type == 1)
  {
    return @"Gaussian";
  }

  else
  {
    return @"None";
  }
}

- (ActuationWaveform)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v37.receiver = self;
  v37.super_class = ActuationWaveform;
  v5 = [(ActuationWaveform *)&v37 init];
  if (!v5)
  {
LABEL_20:
    v7 = v5;
    goto LABEL_22;
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"BaseWaveform"];
  v7 = v6;
  if (v6)
  {
    v32 = [(ActuationWaveform *)v6 objectForKeyedSubscript:@"Type"];
    v31 = [(ActuationWaveform *)v7 objectForKeyedSubscript:@"DurationMS"];
    v30 = [(ActuationWaveform *)v7 objectForKeyedSubscript:@"Amplitude"];
    if (!v32 || !v31 || !v30)
    {

      v7 = 0;
      goto LABEL_22;
    }

    v5->_baseType = [ActuationWaveform baseTypeFromString:v32];
    [v31 floatValue];
    v5->_baseDuration = v8;
    [v30 floatValue];
    v5->_baseAmplitude = v9;
    tones = v5->_tones;
    v5->_tones = 0;

    v11 = [ActuationMultipliers alloc];
    v12 = [dictionaryCopy objectForKeyedSubscript:@"BaseMultipliers"];
    v13 = [(ActuationMultipliers *)v11 initWithDictionary:v12];
    baseMultipliers = v5->_baseMultipliers;
    v5->_baseMultipliers = v13;

    v15 = [ActuationMultipliers alloc];
    v16 = [dictionaryCopy objectForKeyedSubscript:@"ToneMultipliers"];
    v17 = [(ActuationMultipliers *)v15 initWithDictionary:v16];
    toneMultipliers = v5->_toneMultipliers;
    v5->_toneMultipliers = v17;

    v29 = [dictionaryCopy objectForKeyedSubscript:@"Tones"];
    if (v29 && [v29 count])
    {
      v19 = objc_opt_new();
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v20 = v29;
      v21 = [v20 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v21)
      {
        v22 = *v34;
LABEL_10:
        v23 = 0;
        while (1)
        {
          if (*v34 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v33 + 1) + 8 * v23);
          if ([v19 count] > 4)
          {
            break;
          }

          v25 = [[ActuationTone alloc] initWithDictionary:v24];
          if (v25)
          {
            [v19 addObject:v25];
          }

          if (v21 == ++v23)
          {
            v21 = [v20 countByEnumeratingWithState:&v33 objects:v38 count:16];
            if (v21)
            {
              goto LABEL_10;
            }

            break;
          }
        }
      }

      v26 = [v19 copy];
      v27 = v5->_tones;
      v5->_tones = v26;
    }

    goto LABEL_20;
  }

LABEL_22:

  return v7;
}

- (NSDictionary)dictionary
{
  v3 = objc_opt_new();
  v26[0] = @"Type";
  v4 = [ActuationWaveform stringFromBaseType:[(ActuationWaveform *)self baseType]];
  v27[0] = v4;
  v26[1] = @"Amplitude";
  [(ActuationWaveform *)self baseAmplitude];
  v5 = [NSNumber numberWithFloat:?];
  v27[1] = v5;
  v26[2] = @"DurationMS";
  [(ActuationWaveform *)self baseDuration];
  v6 = [NSNumber numberWithFloat:?];
  v27[2] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:3];
  [v3 setObject:v7 forKeyedSubscript:@"BaseWaveform"];

  baseMultipliers = [(ActuationWaveform *)self baseMultipliers];
  dictionary = [baseMultipliers dictionary];
  [v3 setObject:dictionary forKeyedSubscript:@"BaseMultipliers"];

  tones = [(ActuationWaveform *)self tones];
  LOBYTE(baseMultipliers) = tones == 0;

  if ((baseMultipliers & 1) == 0)
  {
    toneMultipliers = [(ActuationWaveform *)self toneMultipliers];
    dictionary2 = [toneMultipliers dictionary];
    [v3 setObject:dictionary2 forKeyedSubscript:@"ToneMultipliers"];

    v13 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    tones2 = [(ActuationWaveform *)self tones];
    v15 = [tones2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = *v22;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(tones2);
          }

          dictionary3 = [*(*(&v21 + 1) + 8 * i) dictionary];
          [v13 addObject:dictionary3];
        }

        v15 = [tones2 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v15);
    }

    [v3 setObject:v13 forKeyedSubscript:@"Tones"];
  }

  v19 = [v3 copy];

  return v19;
}

- (id)parameterizeWaveformWithStrength:(float)strength timeDilation:(float)dilation actuatorLimits:(id)limits options:(unsigned int)options
{
  optionsCopy = options;
  limitsCopy = limits;
  v11 = [NSMutableData alloc];
  tones = [(ActuationWaveform *)self tones];
  v13 = [v11 initWithCapacity:{5 * objc_msgSend(tones, "count") + 3}];

  if (![(ActuationWaveform *)self baseType])
  {
    v15 = v13;
    goto LABEL_50;
  }

  if (optionsCopy)
  {
    baseMultipliers = [(ActuationWaveform *)self baseMultipliers];
    [baseMultipliers light];
    v18 = v17;

    toneMultipliers = [(ActuationWaveform *)self toneMultipliers];
    [toneMultipliers light];
LABEL_10:
    strengthCopy = v18 * strength;
    strength = v20 * strength;

    goto LABEL_11;
  }

  if ((optionsCopy & 2) != 0)
  {
    baseMultipliers2 = [(ActuationWaveform *)self baseMultipliers];
    [baseMultipliers2 medium];
    v18 = v22;

    toneMultipliers = [(ActuationWaveform *)self toneMultipliers];
    [toneMultipliers medium];
    goto LABEL_10;
  }

  if ((optionsCopy & 4) != 0)
  {
    baseMultipliers3 = [(ActuationWaveform *)self baseMultipliers];
    [baseMultipliers3 firm];
    v18 = v24;

    toneMultipliers = [(ActuationWaveform *)self toneMultipliers];
    [toneMultipliers firm];
    goto LABEL_10;
  }

  strengthCopy = strength;
LABEL_11:
  [(ActuationWaveform *)self baseAmplitude];
  v26 = v25;
  [limitsCopy amplitudeMin];
  v28 = v27;
  [limitsCopy amplitudeMax];
  v29 = fminf(fmaxf(strengthCopy, 0.0), 2.0);
  v30 = v26 * v29;
  v31 = v30 < *&v32;
  *&v32 = v30;
  if (!v31)
  {
    [limitsCopy amplitudeMax];
  }

  if (v28 <= *&v32)
  {
    [limitsCopy amplitudeMax];
    v31 = v30 < *&v33;
    *&v33 = v30;
    if (!v31)
    {
      [limitsCopy amplitudeMax];
    }
  }

  else
  {
    [limitsCopy amplitudeMin];
  }

  v34 = 1.0;
  if (v30 > 0.0)
  {
    v34 = v29 * (*&v33 / v30);
  }

  [(ActuationWaveform *)self baseDuration];
  v36 = v35;
  [limitsCopy durationMin];
  v38 = v37;
  [limitsCopy durationMax];
  v39 = v36 * dilation;
  v31 = v39 < *&v40;
  *&v40 = v39;
  if (!v31)
  {
    [limitsCopy durationMax];
  }

  if (v38 <= *&v40)
  {
    [limitsCopy durationMax];
    v31 = v39 < *&v41;
    *&v41 = v39;
    if (!v31)
    {
      [limitsCopy durationMax];
    }
  }

  else
  {
    [limitsCopy durationMin];
  }

  v42 = 1.0;
  if (v39 > 0.0)
  {
    v42 = (*&v41 / v39) * dilation;
  }

  v71[0] = [(ActuationWaveform *)self baseType];
  [(ActuationWaveform *)self baseAmplitude];
  v71[1] = llroundf(v34 * v43);
  [(ActuationWaveform *)self baseDuration];
  v45 = llroundf((v42 * v44) / 0.041667);
  if (v45 >= 255)
  {
    v45 = 255;
  }

  v71[2] = v45 & ~(v45 >> 31);
  [v13 appendBytes:v71 length:3];
  tones2 = [(ActuationWaveform *)self tones];
  v47 = tones2 == 0;

  if (!v47)
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    tones3 = [(ActuationWaveform *)self tones];
    v49 = [tones3 countByEnumeratingWithState:&v67 objects:v72 count:16];
    if (v49)
    {
      v50 = fminf(fmaxf(strength, 0.0), 2.0);
      v51 = *v68;
      do
      {
        for (i = 0; i != v49; i = i + 1)
        {
          if (*v68 != v51)
          {
            objc_enumerationMutation(tones3);
          }

          v53 = *(*(&v67 + 1) + 8 * i);
          v66 = -86;
          v65 = -1431655766;
          LOBYTE(v65) = [v53 type];
          [v53 amplitude];
          v55 = llroundf((v50 * v54) * 255.0);
          if (v55 >= 255)
          {
            v55 = 255;
          }

          BYTE1(v65) = v55 & ~(v55 >> 31);
          [v53 delay];
          v57 = llroundf((v42 * v56) / 0.041667);
          if (v57 >= 255)
          {
            v57 = 255;
          }

          BYTE2(v65) = v57 & ~(v57 >> 31);
          [v53 duration];
          v59 = llroundf((v42 * v58) / 0.041667);
          if (v59 >= 255)
          {
            v59 = 255;
          }

          HIBYTE(v65) = v59 & ~(v59 >> 31);
          [v53 frequency];
          if (v60 <= 0.0)
          {
            LOBYTE(v62) = 0;
          }

          else
          {
            v61 = (roundf(1.0 / (v60 * 0.041667)) + -1.0);
            if (v61 >= 255)
            {
              v61 = 255;
            }

            v62 = v61 & ~(v61 >> 31);
          }

          v66 = v62;
          [v13 appendBytes:&v65 length:5];
        }

        v49 = [tones3 countByEnumeratingWithState:&v67 objects:v72 count:16];
      }

      while (v49);
    }
  }

  v15 = [v13 copy];
LABEL_50:
  v63 = v15;

  return v63;
}

@end