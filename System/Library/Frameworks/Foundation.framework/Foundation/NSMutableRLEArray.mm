@interface NSMutableRLEArray
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setBlockCapacity:(unint64_t)capacity;
- (void)insertObject:(id)object range:(_NSRange)range;
- (void)replaceObjectsInRange:(_NSRange)range withObject:(id)object length:(unint64_t)length;
@end

@implementation NSMutableRLEArray

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NSRLEArray allocWithZone:zone];
  theList = self->super.theList;

  return [(NSRLEArray *)v4 initWithRefCountedRunArray:theList];
}

- (void)_setBlockCapacity:(unint64_t)capacity
{
  if (capacity <= 1)
  {
    capacityCopy = 1;
  }

  else
  {
    capacityCopy = capacity;
  }

  var5 = self->super.theList->var5;
  if (capacityCopy > var5 || capacityCopy < var5 >> 1)
  {
    v7 = (capacityCopy + 3) / 3;
    v8 = MEMORY[0x1865CFE30]();
    self->super.theList = v8;
    v8->var5 = 4 * v7;
  }
}

- (void)insertObject:(id)object range:(_NSRange)range
{
  v33 = *MEMORY[0x1E69E9840];
  theList = self->super.theList;
  if (range.location > theList->var1)
  {
    v28 = objc_opt_class();
    v29 = _NSNameOfClass(v28);
    v30 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%s %s: Out of bounds", v29, sel_getName(a2)), 0}];
    objc_exception_throw(v30);
  }

  length = range.length;
  if (range.length)
  {
    location = range.location;
    os_unfair_lock_lock(&self->super.theList->var0);
    if (self->super.theList->var3 >= 2)
    {
      [(NSRLEArray *)self _makeNewListFrom:?];
    }

    os_unfair_lock_unlock(&theList->var0);
    v9 = self->super.theList;
    if (location == v9->var1)
    {
      if (location)
      {
        var4 = v9->var4;
        v11 = (v9 + 16 * var4 - 16);
        if (v11[6] != object)
        {
          [(NSMutableRLEArray *)self _setBlockCapacity:var4 + 1];
          objectCopy = object;
          v9 = self->super.theList;
          v13 = v9->var4;
          v14 = v9 + 16 * v13;
          *(v14 + 5) = length;
          *(v14 + 6) = objectCopy;
          v15 = v13 + 1;
LABEL_19:
          v9->var4 = v15;
          goto LABEL_20;
        }

        v11[5] = v11[5] + length;
        if (v9->var6 < var4)
        {
          goto LABEL_20;
        }

LABEL_25:
        v9->var2 += length;
        goto LABEL_20;
      }

      [(NSMutableRLEArray *)self _setBlockCapacity:1];
      objectCopy2 = object;
      v9 = self->super.theList;
      v9->var7[0].var0 = length;
      v9->var7[0].var1 = objectCopy2;
    }

    else
    {
      v31 = 0;
      v32 = 0;
      v16 = blockForLocation(v9, location, &v31);
      v9 = self->super.theList;
      v17 = &v9->var7[v16];
      if (*(v17 + 8) == object)
      {
        *v17 += length;
LABEL_20:
        v9->var1 += length;
        return;
      }

      if (v16 && v31 == location && *(v17 - 8) == object)
      {
        *(v17 - 16) += length;
        if (v16 > v9->var6)
        {
          goto LABEL_20;
        }

        goto LABEL_25;
      }

      v18 = v9->var4;
      if (v31 != location)
      {
        [(NSMutableRLEArray *)self _setBlockCapacity:v18 + 2];
        v22 = 16 * v16 + 32;
        memmove(self->super.theList->var7 + v22, &self->super.theList->var7[v16], 16 * (self->super.theList->var4 - v16));
        objectCopy3 = object;
        v24 = self->super.theList + 16 * v16;
        *(v24 + 7) = length;
        *(v24 + 8) = objectCopy3;
        *(v24 + 5) = location - v31;
        v25 = *(v24 + 6);
        v9 = self->super.theList;
        v26 = v9 + v22;
        *(v26 + 5) = v32 - location + v31;
        *(v26 + 6) = v25;
        v15 = v9->var4 + 2;
        goto LABEL_19;
      }

      [(NSMutableRLEArray *)self _setBlockCapacity:v18 + 1];
      memmove(&self->super.theList->var7[v16 + 1], &self->super.theList->var7[v16], 16 * (self->super.theList->var4 - v16));
      objectCopy4 = object;
      v9 = self->super.theList;
      v20 = v9 + 16 * v16;
      *(v20 + 5) = length;
      *(v20 + 6) = objectCopy4;
    }

    v15 = v9->var4 + 1;
    goto LABEL_19;
  }
}

- (void)replaceObjectsInRange:(_NSRange)range withObject:(id)object length:(unint64_t)length
{
  v43 = *MEMORY[0x1E69E9840];
  v41 = 0;
  v42 = 0;
  theList = self->super.theList;
  if (range.location + range.length > theList->var1)
  {
    v38 = objc_opt_class();
    v39 = _NSNameOfClass(v38);
    v40 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%s %s: Out of bounds", v39, sel_getName(a2)), 0}];
    objc_exception_throw(v40);
  }

  length = range.length;
  if (range.length)
  {
    objectCopy = object;
    location = range.location;
    if (length)
    {
      objectCopy2 = object;
    }

    else
    {
      objectCopy2 = 0;
    }

    os_unfair_lock_lock(&self->super.theList->var0);
    if (self->super.theList->var3 >= 2)
    {
      [(NSRLEArray *)self _makeNewListFrom:?];
    }

    os_unfair_lock_unlock(&theList->var0);
    v12 = blockForLocation(self->super.theList, location, &v41);
    v13 = v12;
    v14 = self->super.theList;
    v14->var1 -= length;
    if (v42 - location + v41 >= length)
    {
      lengthCopy = length;
    }

    else
    {
      lengthCopy = v42 - location + v41;
    }

    var7 = v14->var7;
    v17 = 16 * v12;
    var0 = v14->var7[v12].var0 - lengthCopy;
    var7[v12].var0 = var0;
    if (!var0)
    {

      var0 = self->super.theList->var7[v13].var0;
    }

    if (var0)
    {
      v19 = v13 + 1;
    }

    else
    {
      v19 = v13;
    }

    for (i = length - lengthCopy; i; i -= v23)
    {
      v21 = self->super.theList + v17;
      v22 = *(v21 + 7);
      if (i >= v22)
      {
        v23 = *(v21 + 7);
      }

      else
      {
        v23 = i;
      }

      *(v21 + 7) = v22 - v23;
      if (v22 <= i)
      {
      }

      v17 += 16;
      ++v13;
    }

    if (v13)
    {
      v24 = v13 - (self->super.theList->var7[v13].var0 != 0);
    }

    else
    {
      v24 = 0;
    }

    if (v19 > v24)
    {
      goto LABEL_47;
    }

    if (v19)
    {
      v25 = self->super.theList;
      var6 = v25->var6;
      v27 = v25 + 16 * v19;
      if (v19 == var6)
      {
        v25->var2 -= *(v27 + 3);
        v25->var6 = var6 - 1;
      }

      if (!objectCopy2)
      {
        goto LABEL_40;
      }

      if (*(v27 + 4) == objectCopy2)
      {
        *(v27 + 3) += length;
        v25->var1 += length;
        goto LABEL_40;
      }
    }

    else
    {
      v25 = self->super.theList;
      if (!objectCopy2)
      {
        objectCopy = 0;
        v19 = 0;
        goto LABEL_45;
      }
    }

    var4 = v25->var4;
    if (v24 + 1 >= var4 || (v29 = &v25->var2 + 2 * v24, v29[6] != objectCopy2))
    {
      if (v19 < var4)
      {
        v30 = objectCopy;
        objectCopy = 0;
        v31 = self->super.theList;
        v32 = v31 + 16 * v19;
        *(v32 + 5) = length;
        *(v32 + 6) = v30;
        v31->var1 += length;
        ++v19;
      }

      goto LABEL_43;
    }

    v29[5] += length;
    v25->var1 += length;
    if (!v19)
    {
      objectCopy = 0;
      goto LABEL_45;
    }

LABEL_40:
    if (v24 + 1 < v25->var4 && (v33 = v25->var7, v34 = &v33[v19], v35 = &v33[v24 + 1], var1 = v35->var1, v34[-1].var1 == var1))
    {
      v34[-1].var0 += v35->var0;

      objectCopy = 0;
      ++v24;
    }

    else
    {
      objectCopy = 0;
    }

LABEL_43:
    if (v19 > v24)
    {
LABEL_46:
      objectCopy2 = objectCopy;
LABEL_47:
      if (objectCopy2)
      {
        [(NSMutableRLEArray *)self insertObject:objectCopy2 range:location, length];
      }

      return;
    }

    v25 = self->super.theList;
LABEL_45:
    memmove(&v25->var7[v19], &v25->var7[v24 + 1], 16 * (v25->var4 + ~v24));
    self->super.theList->var4 += v19 - (v24 + 1);
    [(NSMutableRLEArray *)self _setBlockCapacity:?];
    goto LABEL_46;
  }
}

@end