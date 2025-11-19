@interface _LSDBEnumerator
- (id).cxx_construct;
- (id)_initWithContext:(LSContext *)CurrentContext;
- (id)copyWithZone:(_NSZone *)a3;
- (id)nextObject;
- (id)swift_firstWhere:(id)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)swift_forEach:(id)a3;
@end

@implementation _LSDBEnumerator

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 48) = 0;
  return self;
}

- (id)nextObject
{
  NextObject = _LSDBEnumeratorGetNextObject(self);

  return NextObject;
}

- (id)_initWithContext:(LSContext *)CurrentContext
{
  v12.receiver = self;
  v12.super_class = _LSDBEnumerator;
  v4 = [(LSEnumerator *)&v12 _initWithContext:?];
  v5 = v4;
  if (v4)
  {
    if (!CurrentContext)
    {
      CurrentContext = _LSDatabaseContextGetCurrentContext(v4);
    }

    v6 = (v5 + 32);
    v7 = *(v5 + 4);
    if (v7 && *(v5 + 48) == 1)
    {
      _LSContextDestroy(v7);
    }

    v8 = *(v5 + 5);
    *v6 = 0;
    *(v5 + 5) = 0;

    *(v5 + 48) = 0;
    v9 = *(v5 + 7);
    *(v5 + 7) = 0;

    if (CurrentContext)
    {
      *v6 = v5 + 40;
      objc_storeStrong(v5 + 5, CurrentContext->db);
      *(v5 + 48) = 0;
    }

    v10 = *(v5 + 7);
    *(v5 + 7) = 0;
  }

  return v5;
}

- (void)swift_forEach:(id)a3
{
  NextObject = _LSDBEnumeratorGetNextObject(self);
  if (NextObject)
  {
    v6 = NextObject;
    do
    {
      (*(a3 + 2))(a3, v6);

      v6 = _LSDBEnumeratorGetNextObject(self);
    }

    while (v6);
  }
}

- (id)swift_firstWhere:(id)a3
{
  NextObject = _LSDBEnumeratorGetNextObject(self);
  if (NextObject)
  {
    while (!(*(a3 + 2))(a3, NextObject))
    {

      NextObject = _LSDBEnumeratorGetNextObject(self);
      if (!NextObject)
      {
        goto LABEL_6;
      }
    }

    NextObject = NextObject;
  }

LABEL_6:

  return NextObject;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  if (a3->var0)
  {
    if (!a5)
    {
      return 0;
    }
  }

  else
  {
    a3->var1 = a4;
    a3->var2 = &mutationsPtr;
    a3->var0 = 1;
    if (!a5)
    {
      return 0;
    }
  }

  NextObject = _LSDBEnumeratorGetNextObject(self);
  lastFastObject = self->_lastFastObject;
  self->_lastFastObject = NextObject;

  v9 = self->_lastFastObject;
  if (v9)
  {
    *a4 = v9;
    return 1;
  }

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = _LSDBEnumerator;
  v4 = [(LSEnumerator *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    LaunchServices::Database::Context::operator=((v4 + 4), &self->_context);
    v5[8] = self->_index;
    *(v5 + 80) = v5[10] & 0xFE | *(self + 80) & 1;
    *(v5 + 80) = v5[10] & 0xFD | *(self + 80) & 2;
    *(v5 + 80) = v5[10] & 0xFB | *(self + 80) & 4;
  }

  return v5;
}

@end