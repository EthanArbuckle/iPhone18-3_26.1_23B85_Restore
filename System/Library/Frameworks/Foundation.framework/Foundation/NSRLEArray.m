@interface NSRLEArray
- (NSRLEArray)initWithRefCountedRunArray:(_NSRefCountedRunArray *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)objectAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)objectAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4 runIndex:(unint64_t *)a5;
- (id)objectAtRunIndex:(unint64_t)a3 length:(unint64_t *)a4;
- (void)_makeNewListFrom:(_NSRefCountedRunArray *)a3;
- (void)dealloc;
@end

@implementation NSRLEArray

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->theList->var0);
  theList = self->theList;
  var3 = theList->var3;
  v5 = var3 != 0;
  v6 = var3 - 1;
  if (v6 != 0 && v5)
  {
    theList->var3 = v6;
    os_unfair_lock_unlock(&theList->var0);
  }

  else
  {
    os_unfair_lock_unlock(&theList->var0);
    v7 = self->theList;
    if (v7->var4)
    {
      v8 = 0;
      v9 = 48;
      do
      {

        ++v8;
        v7 = self->theList;
        v9 += 16;
      }

      while (v8 < v7->var4);
    }

    free(v7);
  }

  v10.receiver = self;
  v10.super_class = NSRLEArray;
  [(NSRLEArray *)&v10 dealloc];
}

- (NSRLEArray)initWithRefCountedRunArray:(_NSRefCountedRunArray *)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSRLEArray;
  v4 = [(NSRLEArray *)&v8 init];
  v5 = v4;
  if (a3)
  {
    v4->theList = a3;
    os_unfair_lock_lock(&a3->var0);
    p_var0 = &v5->theList->var0;
    ++p_var0[6]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(p_var0);
  }

  else
  {
    [(NSRLEArray *)v4 _makeNewListFrom:0];
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [NSMutableRLEArray allocWithZone:a3];
  theList = self->theList;

  return [(NSRLEArray *)v4 initWithRefCountedRunArray:theList];
}

- (void)_makeNewListFrom:(_NSRefCountedRunArray *)a3
{
  if (a3)
  {
    var4 = a3->var4;
  }

  else
  {
    var4 = 2;
  }

  theList = malloc_type_malloc(16 * var4 + 40, 0x1000040B4E0BC51uLL);
  self->theList = theList;
  theList->var0._os_unfair_lock_opaque = 0;
  theList->var5 = var4;
  if (a3)
  {
    LODWORD(v7) = a3->var4;
    if (v7)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        var1 = a3->var7[v8].var1;
        theList->var7[v8].var0 = a3->var7[v8].var0;
        v11 = var1;
        theList = self->theList;
        theList->var7[v8].var1 = v11;
        ++v9;
        v7 = a3->var4;
        ++v8;
      }

      while (v9 < v7);
    }

    theList->var4 = v7;
    os_unfair_lock_lock(&__NSRLEArrayLock);
    v12 = self->theList;
    v12->var6 = a3->var6;
    v12->var2 = a3->var2;
    os_unfair_lock_unlock(&__NSRLEArrayLock);
    theList = self->theList;
    theList->var1 = a3->var1;
    --a3->var3;
  }

  else
  {
    theList->var6 = 0;
    theList->var4 = 0;
    theList->var1 = 0;
    theList->var2 = 0;
  }

  theList->var3 = 1;
}

- (id)objectAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  theList = self->theList;
  if (theList->var1 <= a3)
  {
    v7 = objc_opt_class();
    v8 = _NSNameOfClass(v7);
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%s %s: Out of bounds", v8, sel_getName(a2)), 0}];
    objc_exception_throw(v9);
  }

  return theList->var7[blockForLocation(self->theList, a3, &a4->location)].var1;
}

- (id)objectAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4 runIndex:(unint64_t *)a5
{
  theList = self->theList;
  if (theList->var1 <= a3)
  {
    v11 = objc_opt_class();
    v12 = _NSNameOfClass(v11);
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%s %s: Out of bounds", v12, sel_getName(a2)), 0}];
    objc_exception_throw(v13);
  }

  v8 = blockForLocation(theList, a3, &a4->location);
  if (a5)
  {
    *a5 = v8;
  }

  return self->theList->var7[v8].var1;
}

- (id)objectAtRunIndex:(unint64_t)a3 length:(unint64_t *)a4
{
  theList = self->theList;
  if (theList->var4 <= a3)
  {
    return 0;
  }

  v5 = theList + 16 * a3;
  if (a4)
  {
    *a4 = *(v5 + 5);
  }

  return *(v5 + 6);
}

- (id)description
{
  v3 = [NSMutableString stringWithCapacity:100];
  [(NSMutableString *)v3 appendFormat:@"Length %ld (%d blocks, %d used, block %d is at %ld)\n", self->theList->var1, self->theList->var5, self->theList->var4, self->theList->var6, self->theList->var2];
  theList = self->theList;
  if (theList->var4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      [(NSMutableString *)v3 appendFormat:@" %ld %p %@\n", theList->var7[v5].var0, theList->var7[v5].var1, theList->var7[v5].var1];
      ++v6;
      theList = self->theList;
      ++v5;
    }

    while (v6 < theList->var4);
  }

  return v3;
}

@end