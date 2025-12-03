@interface NSObservationBuffer
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)bufferWithMaximumObjectCount:(unint64_t)count fullPolicy:(int64_t)policy outputQueue:(id)queue;
+ (id)bufferWithOutputQueue:(id)queue;
- (NSObservationBuffer)initWithMaximumObjectCount:(unint64_t)count fullPolicy:(int64_t)policy outputQueue:(id)queue;
- (void)emitAllObjects;
- (void)emitObject;
- (void)setAutomaticallyEmitsObjects:(BOOL)objects;
- (void)setBufferFullHandler:(id)handler;
- (void)setMemoryPressureSensitive:(BOOL)sensitive;
@end

@implementation NSObservationBuffer

+ (id)allocWithZone:(_NSZone *)zone
{
  v5 = *MEMORY[0x1E69E9840];
  if (NSObservationBuffer == self)
  {

    return [(NSObservationBuffer *)NSConcreteObservationBuffer allocWithZone:zone];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = &OBJC_METACLASS___NSObservationBuffer;
    return objc_msgSendSuper2(&v4, sel_allocWithZone_, zone);
  }
}

+ (id)bufferWithOutputQueue:(id)queue
{
  v3 = [self bufferWithMaximumObjectCount:0 fullPolicy:0 outputQueue:queue];
  [v3 setMemoryPressureSensitive:1];
  [v3 setAutomaticallyEmitsObjects:1];
  return v3;
}

+ (id)bufferWithMaximumObjectCount:(unint64_t)count fullPolicy:(int64_t)policy outputQueue:(id)queue
{
  v5 = [[self alloc] initWithMaximumObjectCount:count fullPolicy:policy outputQueue:queue];

  return v5;
}

- (NSObservationBuffer)initWithMaximumObjectCount:(unint64_t)count fullPolicy:(int64_t)policy outputQueue:(id)queue
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSObservationBuffer;
  return [(NSObservationBuffer *)&v6 init:count];
}

- (void)setMemoryPressureSensitive:(BOOL)sensitive
{
  v5 = objc_opt_class();

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)setBufferFullHandler:(id)handler
{
  v5 = objc_opt_class();

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)setAutomaticallyEmitsObjects:(BOOL)objects
{
  v5 = objc_opt_class();

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)emitObject
{
  v4 = objc_opt_class();

  NSRequestConcreteImplementation(self, a2, v4);
}

- (void)emitAllObjects
{
  v4 = objc_opt_class();

  NSRequestConcreteImplementation(self, a2, v4);
}

@end