@interface CIVNDetector
- (CIVNDetector)initWithContext:(id)a3 options:(id)a4;
- (void)dealloc;
@end

@implementation CIVNDetector

- (CIVNDetector)initWithContext:(id)a3 options:(id)a4
{
  v7.receiver = self;
  v7.super_class = CIVNDetector;
  v5 = [(CIDetector *)&v7 init:a3];
  if (v5)
  {
    v5->context = a3;
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