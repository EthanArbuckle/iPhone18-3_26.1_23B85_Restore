@interface SRPhotoplethysmogramOpticalSample
- (id)sr_dictionaryRepresentation;
@end

@implementation SRPhotoplethysmogramOpticalSample

- (id)sr_dictionaryRepresentation
{
  v30 = 0;
  if (([-[SRPhotoplethysmogramOpticalSample activePhotodiodeIndexes](self "activePhotodiodeIndexes")] & 1) == 0)
  {
    if (qword_100016B40 != -1)
    {
      dispatch_once(&qword_100016B40, &stru_100010438);
    }

    v3 = qword_100016B48;
    if (os_log_type_enabled(qword_100016B48, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to get bitfield for photodiodes", buf, 2u);
    }
  }

  v31[0] = @"emitter";
  v32[0] = [NSNumber numberWithInteger:[(SRPhotoplethysmogramOpticalSample *)self emitter]];
  v31[1] = @"photodiodes";
  v32[1] = [NSNumber numberWithUnsignedLongLong:v30];
  v31[2] = @"signalIdentifier";
  v32[2] = [NSNumber numberWithInteger:[(SRPhotoplethysmogramOpticalSample *)self signalIdentifier]];
  v31[3] = @"nominalWavelength";
  nominalWavelength = [(SRPhotoplethysmogramOpticalSample *)self nominalWavelength];
  if (nominalWavelength)
  {
    [nominalWavelength doubleValue];
    if (fabs(v5) == INFINITY)
    {
      v6 = @"INF";
    }

    else
    {
      v6 = [NSString stringWithFormat:@"%f", *&v5];
    }
  }

  else
  {
    v6 = @"(null)";
  }

  v32[3] = v6;
  v31[4] = @"effectiveWavelength";
  effectiveWavelength = [(SRPhotoplethysmogramOpticalSample *)self effectiveWavelength];
  if (effectiveWavelength)
  {
    [effectiveWavelength doubleValue];
    if (fabs(v8) == INFINITY)
    {
      v9 = @"INF";
    }

    else
    {
      v9 = [NSString stringWithFormat:@"%f", *&v8];
    }
  }

  else
  {
    v9 = @"(null)";
  }

  v32[4] = v9;
  v31[5] = @"frequency";
  samplingFrequency = [(SRPhotoplethysmogramOpticalSample *)self samplingFrequency];
  if (samplingFrequency)
  {
    [samplingFrequency doubleValue];
    if (fabs(v11) == INFINITY)
    {
      v12 = @"INF";
    }

    else
    {
      v12 = [NSString stringWithFormat:@"%f", *&v11];
    }
  }

  else
  {
    v12 = @"(null)";
  }

  v32[5] = v12;
  v31[6] = @"nanosecondsSinceStart";
  v32[6] = [NSNumber numberWithLongLong:[(SRPhotoplethysmogramOpticalSample *)self nanosecondsSinceStart]];
  v31[7] = @"normalizedReflectance";
  normalizedReflectance = [(SRPhotoplethysmogramOpticalSample *)self normalizedReflectance];
  if (normalizedReflectance)
  {
    [normalizedReflectance doubleValue];
    if (fabs(v14) == INFINITY)
    {
      v15 = @"INF";
    }

    else
    {
      v15 = [NSString stringWithFormat:@"%f", *&v14];
    }
  }

  else
  {
    v15 = @"(null)";
  }

  v32[7] = v15;
  v31[8] = @"whiteNoise";
  whiteNoise = [(SRPhotoplethysmogramOpticalSample *)self whiteNoise];
  if (whiteNoise)
  {
    [whiteNoise doubleValue];
    if (fabs(v17) == INFINITY)
    {
      v18 = @"INF";
    }

    else
    {
      v18 = [NSString stringWithFormat:@"%f", *&v17];
    }
  }

  else
  {
    v18 = @"(null)";
  }

  v32[8] = v18;
  v31[9] = @"pinkNoise";
  pinkNoise = [(SRPhotoplethysmogramOpticalSample *)self pinkNoise];
  if (pinkNoise)
  {
    [pinkNoise doubleValue];
    if (fabs(v20) == INFINITY)
    {
      v21 = @"INF";
    }

    else
    {
      v21 = [NSString stringWithFormat:@"%f", *&v20];
    }
  }

  else
  {
    v21 = @"(null)";
  }

  v32[9] = v21;
  v31[10] = @"backgroundNoise";
  backgroundNoise = [(SRPhotoplethysmogramOpticalSample *)self backgroundNoise];
  if (backgroundNoise)
  {
    [backgroundNoise doubleValue];
    if (fabs(v23) == INFINITY)
    {
      v24 = @"INF";
    }

    else
    {
      v24 = [NSString stringWithFormat:@"%f", *&v23];
    }
  }

  else
  {
    v24 = @"(null)";
  }

  v32[10] = v24;
  v31[11] = @"backgroundNoiseOffset";
  backgroundNoiseOffset = [(SRPhotoplethysmogramOpticalSample *)self backgroundNoiseOffset];
  if (backgroundNoiseOffset)
  {
    [backgroundNoiseOffset doubleValue];
    if (fabs(v26) == INFINITY)
    {
      v27 = @"INF";
    }

    else
    {
      v27 = [NSString stringWithFormat:@"%f", *&v26];
    }
  }

  else
  {
    v27 = @"(null)";
  }

  v32[11] = v27;
  v31[12] = @"conditions";
  v32[12] = [(SRPhotoplethysmogramOpticalSample *)self conditions];
  return [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:13];
}

@end