@interface ICWorkerContextLaunchTask
- (NSManagedObjectContext)workerContext;
@end

@implementation ICWorkerContextLaunchTask

- (NSManagedObjectContext)workerContext
{
  workerContext = self->_workerContext;
  if (!workerContext)
  {
    v4 = +[ICNoteContext sharedContext];
    workerManagedObjectContext = [v4 workerManagedObjectContext];
    v6 = self->_workerContext;
    self->_workerContext = workerManagedObjectContext;

    workerContext = self->_workerContext;
  }

  return workerContext;
}

@end