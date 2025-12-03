@interface AEAnnotationManagedObjectContext
- (AEAnnotationManagedObjectContext)initWithConcurrencyType:(unint64_t)type;
- (AEAnnotationProvider)annotationProvider;
- (BOOL)saveAnnotationProvider;
@end

@implementation AEAnnotationManagedObjectContext

- (AEAnnotationManagedObjectContext)initWithConcurrencyType:(unint64_t)type
{
  v4.receiver = self;
  v4.super_class = AEAnnotationManagedObjectContext;
  return [(AEAnnotationManagedObjectContext *)&v4 initWithConcurrencyType:type];
}

- (BOOL)saveAnnotationProvider
{
  selfCopy = self;
  annotationProvider = [(AEAnnotationManagedObjectContext *)self annotationProvider];
  LOBYTE(selfCopy) = [annotationProvider saveManagedObjectContext:selfCopy];

  return selfCopy;
}

- (AEAnnotationProvider)annotationProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_annotationProvider);

  return WeakRetained;
}

@end