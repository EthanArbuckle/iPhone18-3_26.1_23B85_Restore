@interface THMutableAnnotation
- (THMutableAnnotation)initWithAEAnnotation:(id)a3;
- (_NSRange)annotationStorageRange;
- (void)dealloc;
@end

@implementation THMutableAnnotation

- (THMutableAnnotation)initWithAEAnnotation:(id)a3
{
  v6.receiver = self;
  v6.super_class = THMutableAnnotation;
  v4 = [(THMutableAnnotation *)&v6 init];
  if (v4)
  {
    v4->_annotation = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THMutableAnnotation;
  [(THMutableAnnotation *)&v3 dealloc];
}

- (_NSRange)annotationStorageRange
{
  v2 = [(AEAnnotation *)self->_annotation annotationStorageRange];
  result.length = v3;
  result.location = v2;
  return result;
}

@end