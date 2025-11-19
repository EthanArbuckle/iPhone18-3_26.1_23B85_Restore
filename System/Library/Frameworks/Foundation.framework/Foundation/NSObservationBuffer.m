@interface NSObservationBuffer
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)bufferWithMaximumObjectCount:(unint64_t)a3 fullPolicy:(int64_t)a4 outputQueue:(id)a5;
+ (id)bufferWithOutputQueue:(id)a3;
- (NSObservationBuffer)initWithMaximumObjectCount:(unint64_t)a3 fullPolicy:(int64_t)a4 outputQueue:(id)a5;
- (void)emitAllObjects;
- (void)emitObject;
- (void)setAutomaticallyEmitsObjects:(BOOL)a3;
- (void)setBufferFullHandler:(id)a3;
- (void)setMemoryPressureSensitive:(BOOL)a3;
@end

@implementation NSObservationBuffer

+ (id)allocWithZone:(_NSZone *)a3
{
  v5 = *MEMORY[0x1E69E9840];
  if (NSObservationBuffer == a1)
  {

    return [(NSObservationBuffer *)NSConcreteObservationBuffer allocWithZone:a3];
  }

  else
  {
    v4.receiver = a1;
    v4.super_class = &OBJC_METACLASS___NSObservationBuffer;
    return objc_msgSendSuper2(&v4, sel_allocWithZone_, a3);
  }
}

+ (id)bufferWithOutputQueue:(id)a3
{
  v3 = [a1 bufferWithMaximumObjectCount:0 fullPolicy:0 outputQueue:a3];
  [v3 setMemoryPressureSensitive:1];
  [v3 setAutomaticallyEmitsObjects:1];
  return v3;
}

+ (id)bufferWithMaximumObjectCount:(unint64_t)a3 fullPolicy:(int64_t)a4 outputQueue:(id)a5
{
  v5 = [[a1 alloc] initWithMaximumObjectCount:a3 fullPolicy:a4 outputQueue:a5];

  return v5;
}

- (NSObservationBuffer)initWithMaximumObjectCount:(unint64_t)a3 fullPolicy:(int64_t)a4 outputQueue:(id)a5
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSObservationBuffer;
  return [(NSObservationBuffer *)&v6 init:a3];
}

- (void)setMemoryPressureSensitive:(BOOL)a3
{
  v5 = objc_opt_class();

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)setBufferFullHandler:(id)a3
{
  v5 = objc_opt_class();

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)setAutomaticallyEmitsObjects:(BOOL)a3
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