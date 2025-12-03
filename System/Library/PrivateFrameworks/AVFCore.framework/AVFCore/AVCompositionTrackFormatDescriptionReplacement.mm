@interface AVCompositionTrackFormatDescriptionReplacement
- (AVCompositionTrackFormatDescriptionReplacement)initWithCoder:(id)coder;
- (AVCompositionTrackFormatDescriptionReplacement)initWithOriginalFormatDescription:(opaqueCMFormatDescription *)description andReplacementFormatDescription:(opaqueCMFormatDescription *)formatDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVCompositionTrackFormatDescriptionReplacement

- (AVCompositionTrackFormatDescriptionReplacement)initWithOriginalFormatDescription:(opaqueCMFormatDescription *)description andReplacementFormatDescription:(opaqueCMFormatDescription *)formatDescription
{
  v8.receiver = self;
  v8.super_class = AVCompositionTrackFormatDescriptionReplacement;
  v6 = [(AVCompositionTrackFormatDescriptionReplacement *)&v8 init];
  if (v6)
  {
    v6->_originalFormatDescription = CFRetain(description);
    v6->_replacementFormatDescription = CFRetain(formatDescription);
  }

  return v6;
}

- (void)dealloc
{
  originalFormatDescription = self->_originalFormatDescription;
  if (originalFormatDescription)
  {
    CFRelease(originalFormatDescription);
  }

  replacementFormatDescription = self->_replacementFormatDescription;
  if (replacementFormatDescription)
  {
    CFRelease(replacementFormatDescription);
  }

  v5.receiver = self;
  v5.super_class = AVCompositionTrackFormatDescriptionReplacement;
  [(AVCompositionTrackFormatDescriptionReplacement *)&v5 dealloc];
}

- (AVCompositionTrackFormatDescriptionReplacement)initWithCoder:(id)coder
{
  v14 = [[AVTelemetryInterval alloc] initAndStartWith:32];
  v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"originalFormatDescription"];
  if (v5)
  {
    v6 = AVFormatDescriptionFromSerializedAtomData(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"replacementFormatDescription"];
  if (!v7)
  {
    v9 = 0;
    v10 = v6 == 0;
    v11 = 1;
    goto LABEL_9;
  }

  v8 = AVFormatDescriptionFromSerializedAtomData(v7);
  v9 = v8;
  v10 = v6 == 0;
  v11 = v8 == 0;
  if (!v6 || !v8)
  {
LABEL_9:

    v12 = 0;
    if (v10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v12 = [[AVCompositionTrackFormatDescriptionReplacement alloc] initWithOriginalFormatDescription:v6 andReplacementFormatDescription:v9];
  v11 = 0;
LABEL_10:
  CFRelease(v6);
LABEL_11:
  if (!v11)
  {
    CFRelease(v9);
  }

  AVTelemetryIntervalEnd(&v14);
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  v7 = [[AVTelemetryInterval alloc] initAndStartWith:33];
  v5 = AVSerializedAtomDataFromFormatDescription(self->_originalFormatDescription);
  if (v5)
  {
    [coder encodeObject:v5 forKey:@"originalFormatDescription"];
  }

  v6 = AVSerializedAtomDataFromFormatDescription(self->_replacementFormatDescription);
  if (v6)
  {
    [coder encodeObject:v6 forKey:@"replacementFormatDescription"];
  }

  AVTelemetryIntervalEnd(&v7);
}

@end