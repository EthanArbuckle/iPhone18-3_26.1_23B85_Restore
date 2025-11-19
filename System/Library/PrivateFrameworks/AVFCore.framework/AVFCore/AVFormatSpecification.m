@interface AVFormatSpecification
+ (id)formatSpecificationWithOutputSettings:(id)a3 sourceFormatDescription:(opaqueCMFormatDescription *)a4;
- (AVFormatSpecification)initWithOutputSettings:(id)a3 sourceFormatDescription:(opaqueCMFormatDescription *)a4;
- (void)dealloc;
@end

@implementation AVFormatSpecification

- (AVFormatSpecification)initWithOutputSettings:(id)a3 sourceFormatDescription:(opaqueCMFormatDescription *)a4
{
  v9.receiver = self;
  v9.super_class = AVFormatSpecification;
  v6 = [(AVFormatSpecification *)&v9 init];
  if (v6)
  {
    v6->_outputSettings = a3;
    if (a4)
    {
      v7 = CFRetain(a4);
      v6->_sourceFormatDescription = CFMakeCollectable(v7);
    }
  }

  return v6;
}

+ (id)formatSpecificationWithOutputSettings:(id)a3 sourceFormatDescription:(opaqueCMFormatDescription *)a4
{
  v4 = [[a1 alloc] initWithOutputSettings:a3 sourceFormatDescription:a4];

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