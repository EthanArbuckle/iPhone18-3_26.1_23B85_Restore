@interface __NSSingleObjectArrayI
- (BOOL)isEqualToArray:(id)array;
- (id)objectAtIndex:(unint64_t)index;
- (id)objectEnumerator;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)dealloc;
- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)getObjects:(id *)objects range:(_NSRange)range;
@end

@implementation __NSSingleObjectArrayI

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  object = self->_object;
  if (object >= 1)
  {
  }

  v5.receiver = self;
  v5.super_class = __NSSingleObjectArrayI;
  [(__NSSingleObjectArrayI *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (id)objectEnumerator
{
  v2 = [objc_allocWithZone(__NSSingleObjectEnumerator) initWithObject:self->_object collection:self];

  return v2;
}

- (id)objectAtIndex:(unint64_t)index
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (index)
  {
    v6 = _os_log_pack_size();
    v7 = _os_log_pack_fill();
    v8 = __os_log_helper_1_2_3_8_32_8_0_8_0(v7, "[__NSSingleObjectArrayI objectAtIndex:]", index, 0);
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v8, "[__NSSingleObjectArrayI objectAtIndex:]", index, 0);
    v10 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6];
    objc_exception_throw(v10);
  }

  result = self->_object;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)getObjects:(id *)objects range:(_NSRange)range
{
  v17[1] = *MEMORY[0x1E69E9840];
  if ((range.location & 0x8000000000000000) != 0 || (range.length & 0x8000000000000000) != 0 || range.location + range.length >= 2)
  {
    length = range.length;
    location = range.location;
    v12 = _os_log_pack_size();
    v13 = _os_log_pack_fill();
    v14 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v13, "[__NSSingleObjectArrayI getObjects:range:]", location, length, 0);
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v14, "[__NSSingleObjectArrayI getObjects:range:]", location, length, 0);
    v16 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v12];
    objc_exception_throw(v16);
  }

  if (!objects && range.length)
  {
    v5 = range.length;
    v6 = _os_log_pack_size();
    v7 = _os_log_pack_fill();
    *v7 = 136315394;
    *(v7 + 4) = "[__NSSingleObjectArrayI getObjects:range:]";
    *(v7 + 12) = 2048;
    *(v7 + 14) = v5;
    v8 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSSingleObjectArrayI getObjects:range:]", v5);
    v9 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v8) osLogPack:0 size:v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6];
    objc_exception_throw(v9);
  }

  if (range.length)
  {
    *objects = self->_object;
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v8 = _os_log_pack_size();
    v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = _os_log_pack_fill();
    *v10 = 136315394;
    *(v10 + 4) = "[__NSSingleObjectArrayI countByEnumeratingWithState:objects:count:]";
    *(v10 + 12) = 2048;
    *(v10 + 14) = count;
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSSingleObjectArrayI countByEnumeratingWithState:objects:count:]", count);
    goto LABEL_10;
  }

  if (count >> 61)
  {
    v8 = _os_log_pack_size();
    v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = _os_log_pack_fill();
    *v13 = 136315394;
    *(v13 + 4) = "[__NSSingleObjectArrayI countByEnumeratingWithState:objects:count:]";
    *(v13 + 12) = 2048;
    *(v13 + 14) = count;
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSSingleObjectArrayI countByEnumeratingWithState:objects:count:]", count);
LABEL_10:
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11) osLogPack:0 size:v9, v8];
    objc_exception_throw(v14);
  }

  if (state->var0)
  {
    result = 0;
  }

  else
  {
    state->var1 = &self->_object;
    state->var2 = &countByEnumeratingWithState_objects_count__const_mu_7;
    state->var0 = -1;
    result = 1;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block
{
  v14 = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v9 = _os_log_pack_size();
    v10 = _os_log_pack_fill();
    *v10 = 136315138;
    *(v10 + 4) = "[__NSSingleObjectArrayI enumerateObjectsWithOptions:usingBlock:]";
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[__NSSingleObjectArrayI enumerateObjectsWithOptions:usingBlock:]");
    v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11) osLogPack:0 size:&v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v9];
    objc_exception_throw(v12);
  }

  v13[7] = 0;
  v6 = _CFAutoreleasePoolPush();
  object = self->_object;
  __NSARRAY_IS_CALLING_OUT_TO_A_BLOCK__(block);
  _CFAutoreleasePoolPop(v6);
  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqualToArray:(id)array
{
  selfCopy = self;
  v13[1] = *MEMORY[0x1E69E9840];
  if (array)
  {
    if ((_NSIsNSArray(array) & 1) == 0)
    {
      v8 = _os_log_pack_size();
      v9 = _os_log_pack_fill();
      *v9 = 136315138;
      *(v9 + 4) = "[__NSSingleObjectArrayI isEqualToArray:]";
      v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[__NSSingleObjectArrayI isEqualToArray:]");
      v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8];
      objc_exception_throw(v11);
    }

    if (array == selfCopy)
    {
      goto LABEL_7;
    }

    if ([array count] != 1)
    {
      LOBYTE(self) = 0;
      goto LABEL_10;
    }

    v5 = [array objectAtIndexedSubscript:0];
    object = selfCopy->_object;
    if (object == v5 || (LODWORD(self) = [object isEqual:?], self))
    {
LABEL_7:
      LOBYTE(self) = 1;
    }
  }

  else
  {
    LOBYTE(self) = self == 0;
  }

LABEL_10:
  v7 = *MEMORY[0x1E69E9840];
  return self;
}

@end