@interface AEAnnotationManagedObjectContext
- (AEAnnotationManagedObjectContext)initWithConcurrencyType:(unint64_t)a3;
- (AEAnnotationProvider)annotationProvider;
- (BOOL)saveAnnotationProvider;
@end

@implementation AEAnnotationManagedObjectContext

- (AEAnnotationManagedObjectContext)initWithConcurrencyType:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = AEAnnotationManagedObjectContext;
  return [(AEAnnotationManagedObjectContext *)&v4 initWithConcurrencyType:a3];
}

- (BOOL)saveAnnotationProvider
{
  v2 = self;
  v3 = [(AEAnnotationManagedObjectContext *)self annotationProvider];
  LOBYTE(v2) = [v3 saveManagedObjectContext:v2];

  return v2;
}

- (AEAnnotationProvider)annotationProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_annotationProvider);

  return WeakRetained;
}

@end