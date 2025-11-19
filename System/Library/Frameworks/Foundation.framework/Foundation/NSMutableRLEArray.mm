@interface NSMutableRLEArray
- (id)copyWithZone:(_NSZone *)a3;
- (void)_setBlockCapacity:(unint64_t)a3;
- (void)insertObject:(id)a3 range:(_NSRange)a4;
- (void)replaceObjectsInRange:(_NSRange)a3 withObject:(id)a4 length:(unint64_t)a5;
@end

@implementation NSMutableRLEArray

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NSRLEArray allocWithZone:a3];
  theList = self->super.theList;

  return [(NSRLEArray *)v4 initWithRefCountedRunArray:theList];
}

- (void)_setBlockCapacity:(unint64_t)a3
{
  if (a3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3;
  }

  var5 = self->super.theList->var5;
  if (v4 > var5 || v4 < var5 >> 1)
  {
    v7 = (v4 + 3) / 3;
    v8 = MEMORY[0x1865CFE30]();
    self->super.theList = v8;
    v8->var5 = 4 * v7;
  }
}

- (void)insertObject:(id)a3 range:(_NSRange)a4
{
  v33 = *MEMORY[0x1E69E9840];
  theList = self->super.theList;
  if (a4.location > theList->var1)
  {
    v28 = objc_opt_class();
    v29 = _NSNameOfClass(v28);
    v30 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%s %s: Out of bounds", v29, sel_getName(a2)), 0}];
    objc_exception_throw(v30);
  }

  length = a4.length;
  if (a4.length)
  {
    location = a4.location;
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
        if (v11[6] != a3)
        {
          [(NSMutableRLEArray *)self _setBlockCapacity:var4 + 1];
          v12 = a3;
          v9 = self->super.theList;
          v13 = v9->var4;
          v14 = v9 + 16 * v13;
          *(v14 + 5) = length;
          *(v14 + 6) = v12;
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
      v21 = a3;
      v9 = self->super.theList;
      v9->var7[0].var0 = length;
      v9->var7[0].var1 = v21;
    }

    else
    {
      v31 = 0;
      v32 = 0;
      v16 = blockForLocation(v9, location, &v31);
      v9 = self->super.theList;
      v17 = &v9->var7[v16];
      if (*(v17 + 8) == a3)
      {
        *v17 += length;
LABEL_20:
        v9->var1 += length;
        return;
      }

      if (v16 && v31 == location && *(v17 - 8) == a3)
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
        v23 = a3;
        v24 = self->super.theList + 16 * v16;
        *(v24 + 7) = length;
        *(v24 + 8) = v23;
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
      v19 = a3;
      v9 = self->super.theList;
      v20 = v9 + 16 * v16;
      *(v20 + 5) = length;
      *(v20 + 6) = v19;
    }

    v15 = v9->var4 + 1;
    goto LABEL_19;
  }
}

- (void)replaceObjectsInRange:(_NSRange)a3 withObject:(id)a4 length:(unint64_t)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v41 = 0;
  v42 = 0;
  theList = self->super.theList;
  if (a3.location + a3.length > theList->var1)
  {
    v38 = objc_opt_class();
    v39 = _NSNameOfClass(v38);
    v40 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%s %s: Out of bounds", v39, sel_getName(a2)), 0}];
    objc_exception_throw(v40);
  }

  length = a3.length;
  if (a3.length)
  {
    v9 = a4;
    location = a3.location;
    if (a5)
    {
      v11 = a4;
    }

    else
    {
      v11 = 0;
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
      v15 = length;
    }

    else
    {
      v15 = v42 - location + v41;
    }

    var7 = v14->var7;
    v17 = 16 * v12;
    var0 = v14->var7[v12].var0 - v15;
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

    for (i = length - v15; i; i -= v23)
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

      if (!v11)
      {
        goto LABEL_40;
      }

      if (*(v27 + 4) == v11)
      {
        *(v27 + 3) += a5;
        v25->var1 += a5;
        goto LABEL_40;
      }
    }

    else
    {
      v25 = self->super.theList;
      if (!v11)
      {
        v9 = 0;
        v19 = 0;
        goto LABEL_45;
      }
    }

    var4 = v25->var4;
    if (v24 + 1 >= var4 || (v29 = &v25->var2 + 2 * v24, v29[6] != v11))
    {
      if (v19 < var4)
      {
        v30 = v9;
        v9 = 0;
        v31 = self->super.theList;
        v32 = v31 + 16 * v19;
        *(v32 + 5) = a5;
        *(v32 + 6) = v30;
        v31->var1 += a5;
        ++v19;
      }

      goto LABEL_43;
    }

    v29[5] += a5;
    v25->var1 += a5;
    if (!v19)
    {
      v9 = 0;
      goto LABEL_45;
    }

LABEL_40:
    if (v24 + 1 < v25->var4 && (v33 = v25->var7, v34 = &v33[v19], v35 = &v33[v24 + 1], var1 = v35->var1, v34[-1].var1 == var1))
    {
      v34[-1].var0 += v35->var0;

      v9 = 0;
      ++v24;
    }

    else
    {
      v9 = 0;
    }

LABEL_43:
    if (v19 > v24)
    {
LABEL_46:
      v11 = v9;
LABEL_47:
      if (v11)
      {
        [(NSMutableRLEArray *)self insertObject:v11 range:location, a5];
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