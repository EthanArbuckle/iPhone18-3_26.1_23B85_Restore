@interface __NSSingleObjectArrayI
- (BOOL)isEqualToArray:(id)a3;
- (id)objectAtIndex:(unint64_t)a3;
- (id)objectEnumerator;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)dealloc;
- (void)enumerateObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)getObjects:(id *)a3 range:(_NSRange)a4;
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

- (id)objectAtIndex:(unint64_t)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = _os_log_pack_size();
    v7 = _os_log_pack_fill();
    v8 = __os_log_helper_1_2_3_8_32_8_0_8_0(v7, "[__NSSingleObjectArrayI objectAtIndex:]", a3, 0);
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v8, "[__NSSingleObjectArrayI objectAtIndex:]", a3, 0);
    v10 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6];
    objc_exception_throw(v10);
  }

  result = self->_object;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)getObjects:(id *)a3 range:(_NSRange)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  if ((a4.location & 0x8000000000000000) != 0 || (a4.length & 0x8000000000000000) != 0 || a4.location + a4.length >= 2)
  {
    length = a4.length;
    location = a4.location;
    v12 = _os_log_pack_size();
    v13 = _os_log_pack_fill();
    v14 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v13, "[__NSSingleObjectArrayI getObjects:range:]", location, length, 0);
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v14, "[__NSSingleObjectArrayI getObjects:range:]", location, length, 0);
    v16 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v12];
    objc_exception_throw(v16);
  }

  if (!a3 && a4.length)
  {
    v5 = a4.length;
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

  if (a4.length)
  {
    *a3 = self->_object;
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!a4 && a5)
  {
    v8 = _os_log_pack_size();
    v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = _os_log_pack_fill();
    *v10 = 136315394;
    *(v10 + 4) = "[__NSSingleObjectArrayI countByEnumeratingWithState:objects:count:]";
    *(v10 + 12) = 2048;
    *(v10 + 14) = a5;
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSSingleObjectArrayI countByEnumeratingWithState:objects:count:]", a5);
    goto LABEL_10;
  }

  if (a5 >> 61)
  {
    v8 = _os_log_pack_size();
    v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = _os_log_pack_fill();
    *v13 = 136315394;
    *(v13 + 4) = "[__NSSingleObjectArrayI countByEnumeratingWithState:objects:count:]";
    *(v13 + 12) = 2048;
    *(v13 + 14) = a5;
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSSingleObjectArrayI countByEnumeratingWithState:objects:count:]", a5);
LABEL_10:
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11) osLogPack:0 size:v9, v8];
    objc_exception_throw(v14);
  }

  if (a3->var0)
  {
    result = 0;
  }

  else
  {
    a3->var1 = &self->_object;
    a3->var2 = &countByEnumeratingWithState_objects_count__const_mu_7;
    a3->var0 = -1;
    result = 1;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)enumerateObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a4)
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
  __NSARRAY_IS_CALLING_OUT_TO_A_BLOCK__(a4);
  _CFAutoreleasePoolPop(v6);
  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqualToArray:(id)a3
{
  v3 = self;
  v13[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if ((_NSIsNSArray(a3) & 1) == 0)
    {
      v8 = _os_log_pack_size();
      v9 = _os_log_pack_fill();
      *v9 = 136315138;
      *(v9 + 4) = "[__NSSingleObjectArrayI isEqualToArray:]";
      v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[__NSSingleObjectArrayI isEqualToArray:]");
      v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8];
      objc_exception_throw(v11);
    }

    if (a3 == v3)
    {
      goto LABEL_7;
    }

    if ([a3 count] != 1)
    {
      LOBYTE(self) = 0;
      goto LABEL_10;
    }

    v5 = [a3 objectAtIndexedSubscript:0];
    object = v3->_object;
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