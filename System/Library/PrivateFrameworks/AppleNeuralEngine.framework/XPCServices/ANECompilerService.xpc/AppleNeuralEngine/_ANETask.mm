@interface _ANETask
+ (id)taskWithName:(id)name period:(unint64_t)period handler:(id)handler;
- (_ANETask)initWithName:(id)name period:(unint64_t)period handler:(id)handler;
@end

@implementation _ANETask

- (_ANETask)initWithName:(id)name period:(unint64_t)period handler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v10 = handlerCopy;
  selfCopy = 0;
  if (nameCopy && handlerCopy)
  {
    v25.receiver = self;
    v25.super_class = _ANETask;
    v12 = [(_ANETask *)&v25 init];
    if (v12)
    {
      v13 = [nameCopy copy];
      name = v12->_name;
      v12->_name = v13;

      periodCopy = 5;
      if (period > 5)
      {
        periodCopy = period;
      }

      v12->_periodSeconds = periodCopy;
      v16 = objc_retainBlock(v10);
      handler = v12->_handler;
      v12->_handler = v16;

      v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v19 = dispatch_queue_create("com.apple._ANETasks.defaultQueue", v18);
      queue = v12->_queue;
      v12->_queue = v19;

      keys[0] = XPC_ACTIVITY_INTERVAL;
      keys[1] = XPC_ACTIVITY_REPEATING;
      keys[2] = XPC_ACTIVITY_PRIORITY;
      keys[3] = XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP;
      keys[4] = XPC_ACTIVITY_POWER_NAP;
      keys[5] = XPC_ACTIVITY_REQUIRES_CLASS_C;
      values[0] = xpc_int64_create(v12->_periodSeconds);
      values[1] = xpc_BOOL_create(1);
      values[2] = xpc_string_create(XPC_ACTIVITY_PRIORITY_MAINTENANCE);
      values[3] = xpc_BOOL_create(1);
      values[4] = xpc_BOOL_create(1);
      values[5] = xpc_BOOL_create(1);
      v21 = xpc_dictionary_create(keys, values, 6uLL);
      executionCriteria = v12->_executionCriteria;
      v12->_executionCriteria = v21;

      for (i = 5; i != -1; --i)
      {
      }
    }

    self = v12;
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)taskWithName:(id)name period:(unint64_t)period handler:(id)handler
{
  handlerCopy = handler;
  nameCopy = name;
  v10 = [[self alloc] initWithName:nameCopy period:period handler:handlerCopy];

  return v10;
}

@end