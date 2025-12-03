@interface CIVNDetector
- (CIVNDetector)initWithContext:(id)context options:(id)options;
- (void)dealloc;
@end

@implementation CIVNDetector

- (CIVNDetector)initWithContext:(id)context options:(id)options
{
  v7.receiver = self;
  v7.super_class = CIVNDetector;
  v5 = [(CIDetector *)&v7 init:context];
  if (v5)
  {
    v5->context = context;
  }

  return v5;
}

- (void)dealloc
{
  self->context = 0;
  v3.receiver = self;
  v3.super_class = CIVNDetector;
  [(CIVNDetector *)&v3 dealloc];
}

@end