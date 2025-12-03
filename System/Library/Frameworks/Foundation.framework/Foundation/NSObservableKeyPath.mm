@interface NSObservableKeyPath
- (NSObservable)changes;
- (id)addObserver:(id)observer;
@end

@implementation NSObservableKeyPath

- (id)addObserver:(id)observer
{
  rootObject = [(NSBoundKeyPath *)self rootObject];

  return [rootObject addObserver:observer forObservableKeyPath:self];
}

- (NSObservable)changes
{
  v2 = [(NSBoundKeyPath *)_NSObservableKeyPathChangeAdaptor newKeyPathWithRootObject:[(NSBoundKeyPath *)self rootObject] keyPathString:self->super._keyPath];

  return v2;
}

@end