@interface __NSSingleObjectSetI
- (BOOL)containsObject:(id)object;
- (id)member:(id)member;
- (id)objectEnumerator;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)dealloc;
- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)getObjects:(id *)objects count:(unint64_t)count;
@end

@implementation __NSSingleObjectSetI

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  element = self->element;
  if (element >= 1)
  {
  }

  v5.receiver = self;
  v5.super_class = __NSSingleObjectSetI;
  [(__NSSingleObjectSetI *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (id)objectEnumerator
{
  v2 = [objc_allocWithZone(__NSSingleObjectEnumerator) initWithObject:self->element collection:self];

  return v2;
}

- (id)member:(id)member
{
  element = self->element;
  if (element != member && ![member isEqual:element])
  {
    return 0;
  }

  return element;
}

- (BOOL)containsObject:(id)object
{
  element = self->element;
  if (element == object || (v4 = [object isEqual:element]) != 0)
  {
    LOBYTE(v4) = element != 0;
  }

  return v4;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v9 = _os_log_pack_size();
    v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = _os_log_pack_fill();
    *v11 = 136315394;
    *(v11 + 4) = "[__NSSingleObjectSetI countByEnumeratingWithState:objects:count:]";
    *(v11 + 12) = 2048;
    *(v11 + 14) = count;
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSSingleObjectSetI countByEnumeratingWithState:objects:count:]", count);
    goto LABEL_12;
  }

  if (count >> 61)
  {
    v9 = _os_log_pack_size();
    v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill();
    *v14 = 136315394;
    *(v14 + 4) = "[__NSSingleObjectSetI countByEnumeratingWithState:objects:count:]";
    *(v14 + 12) = 2048;
    *(v14 + 14) = count;
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSSingleObjectSetI countByEnumeratingWithState:objects:count:]", count);
LABEL_12:
    v15 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v10, v9];
    objc_exception_throw(v15);
  }

  var0 = state->var0;
  if (state->var0)
  {
    var0 = 0;
  }

  else
  {
    state->var1 = objects;
    state->var2 = &countByEnumeratingWithState_objects_count__const_mu_1;
    if (objects && count)
    {
      *objects = self->element;
      var0 = 1;
      state->var0 = 1;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return var0;
}

- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block
{
  v14 = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v9 = _os_log_pack_size();
    v10 = _os_log_pack_fill();
    *v10 = 136315138;
    *(v10 + 4) = "[__NSSingleObjectSetI enumerateObjectsWithOptions:usingBlock:]";
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[__NSSingleObjectSetI enumerateObjectsWithOptions:usingBlock:]");
    v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11) osLogPack:0 size:&v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v9];
    objc_exception_throw(v12);
  }

  v13[7] = 0;
  v6 = _CFAutoreleasePoolPush();
  element = self->element;
  __NSSET_IS_CALLING_OUT_TO_A_BLOCK__(block);
  _CFAutoreleasePoolPop(v6);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)getObjects:(id *)objects count:(unint64_t)count
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v6 = _os_log_pack_size();
    v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v8 = _os_log_pack_fill();
    *v8 = 136315394;
    *(v8 + 4) = "[__NSSingleObjectSetI getObjects:count:]";
    *(v8 + 12) = 2048;
    *(v8 + 14) = count;
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSSingleObjectSetI getObjects:count:]", count);
    goto LABEL_9;
  }

  if (count >> 61)
  {
    v6 = _os_log_pack_size();
    v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = _os_log_pack_fill();
    *v11 = 136315394;
    *(v11 + 4) = "[__NSSingleObjectSetI getObjects:count:]";
    *(v11 + 12) = 2048;
    *(v11 + 14) = count;
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSSingleObjectSetI getObjects:count:]", count);
LABEL_9:
    v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v7, v6];
    objc_exception_throw(v12);
  }

  if (count)
  {
    *objects = self->element;
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end