@interface AVObservationBlockFactory
+ (id)observationBlockForWeakObserver:(id)observer passedToBlock:(id)block;
@end

@implementation AVObservationBlockFactory

+ (id)observationBlockForWeakObserver:(id)observer passedToBlock:(id)block
{
  v5 = [[AVWeakReference alloc] initWithReferencedObject:observer];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__AVObservationBlockFactory_observationBlockForWeakObserver_passedToBlock___block_invoke;
  v8[3] = &unk_1E7465DB8;
  v8[4] = v5;
  v8[5] = block;
  v6 = [v8 copy];

  return v6;
}

uint64_t __75__AVObservationBlockFactory_observationBlockForWeakObserver_passedToBlock___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) referencedObject];
  if (result)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

@end