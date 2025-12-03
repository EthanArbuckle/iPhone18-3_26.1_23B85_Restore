@interface AVFormatSpecification
+ (id)formatSpecificationWithOutputSettings:(id)settings sourceFormatDescription:(opaqueCMFormatDescription *)description;
- (AVFormatSpecification)initWithOutputSettings:(id)settings sourceFormatDescription:(opaqueCMFormatDescription *)description;
- (void)dealloc;
@end

@implementation AVFormatSpecification

- (AVFormatSpecification)initWithOutputSettings:(id)settings sourceFormatDescription:(opaqueCMFormatDescription *)description
{
  v9.receiver = self;
  v9.super_class = AVFormatSpecification;
  v6 = [(AVFormatSpecification *)&v9 init];
  if (v6)
  {
    v6->_outputSettings = settings;
    if (description)
    {
      v7 = CFRetain(description);
      v6->_sourceFormatDescription = CFMakeCollectable(v7);
    }
  }

  return v6;
}

+ (id)formatSpecificationWithOutputSettings:(id)settings sourceFormatDescription:(opaqueCMFormatDescription *)description
{
  v4 = [[self alloc] initWithOutputSettings:settings sourceFormatDescription:description];

  return v4;
}

- (void)dealloc
{
  sourceFormatDescription = self->_sourceFormatDescription;
  if (sourceFormatDescription)
  {
    CFRelease(sourceFormatDescription);
  }

  v4.receiver = self;
  v4.super_class = AVFormatSpecification;
  [(AVFormatSpecification *)&v4 dealloc];
}

@end