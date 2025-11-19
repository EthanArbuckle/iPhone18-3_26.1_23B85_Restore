@interface NSObservableKeyPath
- (NSObservable)changes;
- (id)addObserver:(id)a3;
@end

@implementation NSObservableKeyPath

- (id)addObserver:(id)a3
{
  v5 = [(NSBoundKeyPath *)self rootObject];

  return [v5 addObserver:a3 forObservableKeyPath:self];
}

- (NSObservable)changes
{
  v2 = [(NSBoundKeyPath *)_NSObservableKeyPathChangeAdaptor newKeyPathWithRootObject:[(NSBoundKeyPath *)self rootObject] keyPathString:self->super._keyPath];

  return v2;
}

@end