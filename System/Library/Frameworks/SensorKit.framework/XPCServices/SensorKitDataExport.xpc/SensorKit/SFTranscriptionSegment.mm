@interface SFTranscriptionSegment
- (id)sr_dictionaryRepresentation;
@end

@implementation SFTranscriptionSegment

- (id)sr_dictionaryRepresentation
{
  v16[0] = @"timestamp";
  [(SFTranscriptionSegment *)self timestamp];
  v4 = v3;
  v5 = [NSNumber numberWithDouble:?];
  if (fabs(v4) == INFINITY)
  {
    v6 = @"inf";
  }

  else
  {
    v6 = v5;
  }

  v17[0] = v6;
  v16[1] = @"duration";
  [(SFTranscriptionSegment *)self duration];
  v8 = v7;
  v9 = [NSNumber numberWithDouble:?];
  if (fabs(v8) == INFINITY)
  {
    v10 = @"inf";
  }

  else
  {
    v10 = v9;
  }

  v17[1] = v10;
  v16[2] = @"confidence";
  [(SFTranscriptionSegment *)self confidence];
  v12 = v11;
  v13 = [NSNumber numberWithDouble:v11];
  if (fabs(v12) == INFINITY)
  {
    v14 = @"inf";
  }

  else
  {
    v14 = v13;
  }

  v17[2] = v14;
  return [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];
}

@end