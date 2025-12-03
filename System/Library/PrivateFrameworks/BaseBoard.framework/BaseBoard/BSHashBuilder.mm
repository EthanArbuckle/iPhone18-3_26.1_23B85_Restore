@interface BSHashBuilder
+ (id)builder;
- (id)appendArray:(id)array;
- (id)appendBool:(BOOL)bool;
- (id)appendBytes:(const void *)bytes length:(unint64_t)length;
- (id)appendCGAffineTransform:(CGAffineTransform *)transform;
- (id)appendCGFloat:(double)float;
- (id)appendCGPoint:(CGPoint)point;
- (id)appendCGRect:(CGRect)rect;
- (id)appendCGSize:(CGSize)size;
- (id)appendClass:(Class)class;
- (id)appendDouble:(double)double;
- (id)appendFloat:(float)float;
- (id)appendHashingBlocks:(id)blocks;
- (id)appendInt64:(int64_t)int64;
- (id)appendObject:(id)object;
- (id)appendPointer:(void *)pointer;
- (id)appendString:(id)string;
@end

@implementation BSHashBuilder

+ (id)builder
{
  v2 = objc_alloc_init(BSHashBuilder);

  return v2;
}

- (id)appendHashingBlocks:(id)blocks
{
  blocksCopy = blocks;
  if (blocksCopy)
  {
    v5 = blocksCopy;
    v13 = &v14;
    v6 = 17;
    do
    {
      v7 = v5[2](v5);
      v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) >> 27));
      v6 ^= (v8 >> 31) ^ v8;
      v9 = v13++;
      v10 = MEMORY[0x193AE5AC0](*v9);

      v5 = v10;
    }

    while (v10);
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
    self->_hash ^= (v11 >> 31) ^ v11;
  }

  return self;
}

- (id)appendBool:(BOOL)bool
{
  v3 = 0xBF58476D1CE4E5B9;
  if (!bool)
  {
    v3 = 0;
  }

  *(self + 1) ^= ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31) ^ (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27)));
  return self;
}

- (id)appendInt64:(int64_t)int64
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (int64 ^ (int64 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (int64 ^ (int64 >> 30))) >> 27));
  *(self + 1) ^= (v3 >> 31) ^ v3;
  return self;
}

- (id)appendFloat:(float)float
{
  hash = self->_hash;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v6 = [v5 hash];
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
  self->_hash = hash ^ (v7 >> 31) ^ v7;

  return self;
}

- (id)appendDouble:(double)double
{
  hash = self->_hash;
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:double];
  v6 = [v5 hash];
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
  self->_hash = hash ^ (v7 >> 31) ^ v7;

  return self;
}

- (id)appendCGFloat:(double)float
{
  hash = self->_hash;
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:float];
  v6 = [v5 hash];
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
  self->_hash = hash ^ (v7 >> 31) ^ v7;

  return self;
}

- (id)appendCGPoint:(CGPoint)point
{
  hash = self->_hash;
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:point.x + point.y];
  v6 = [v5 hash];
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
  self->_hash = hash ^ (v7 >> 31) ^ v7;

  return self;
}

- (id)appendCGSize:(CGSize)size
{
  hash = self->_hash;
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:size.height * size.width];
  v6 = [v5 hash];
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
  self->_hash = hash ^ (v7 >> 31) ^ v7;

  return self;
}

- (id)appendCGRect:(CGRect)rect
{
  hash = self->_hash;
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:rect.origin.x + rect.origin.y + rect.size.height * rect.size.width];
  v6 = [v5 hash];
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
  self->_hash = hash ^ (v7 >> 31) ^ v7;

  return self;
}

- (id)appendBytes:(const void *)bytes length:(unint64_t)length
{
  if (length)
  {
    lengthCopy = length;
    bytesCopy = bytes;
    if (!bytes)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"BSHashBuilder.m" lineNumber:129 description:{@"Invalid parameter not satisfying: %@", @"bytesIn != NULL"}];
    }

    v7 = 0;
    do
    {
      v8 = *bytesCopy++;
      v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v8) ^ ((0xBF58476D1CE4E5B9 * v8) >> 27));
      v7 ^= (v9 >> 31) ^ v9;
      --lengthCopy;
    }

    while (lengthCopy);
    v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) >> 27));
    self->_hash ^= (v10 >> 31) ^ v10;
  }

  return self;
}

- (id)appendCGAffineTransform:(CGAffineTransform *)transform
{
  hash = self->_hash;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:transform->a];
  v7 = [v6 hash];
  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) >> 27));
  self->_hash = hash ^ (v8 >> 31) ^ v8;

  v9 = self->_hash;
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:transform->b];
  v11 = [v10 hash];
  v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) >> 27));
  self->_hash = v9 ^ (v12 >> 31) ^ v12;

  v13 = self->_hash;
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:transform->c];
  v15 = [v14 hash];
  v16 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) >> 27));
  self->_hash = v13 ^ (v16 >> 31) ^ v16;

  v17 = self->_hash;
  v18 = [MEMORY[0x1E696AD98] numberWithDouble:transform->d];
  v19 = [v18 hash];
  v20 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v19 ^ (v19 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v19 ^ (v19 >> 30))) >> 27));
  self->_hash = v17 ^ (v20 >> 31) ^ v20;

  v21 = self->_hash;
  v22 = [MEMORY[0x1E696AD98] numberWithDouble:transform->tx];
  v23 = [v22 hash];
  v24 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v23 ^ (v23 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v23 ^ (v23 >> 30))) >> 27));
  self->_hash = v21 ^ (v24 >> 31) ^ v24;

  v25 = self->_hash;
  v26 = [MEMORY[0x1E696AD98] numberWithDouble:transform->ty];
  v27 = [v26 hash];
  v28 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v27 ^ (v27 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v27 ^ (v27 >> 30))) >> 27));
  self->_hash = v25 ^ (v28 >> 31) ^ v28;

  return self;
}

- (id)appendClass:(Class)class
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (class ^ (class >> 30))) ^ ((0xBF58476D1CE4E5B9 * (class ^ (class >> 30))) >> 27));
  *(self + 1) ^= (v3 >> 31) ^ v3;
  return self;
}

- (id)appendObject:(id)object
{
  hash = self->_hash;
  v5 = [object hash];
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) >> 27));
  self->_hash = hash ^ (v6 >> 31) ^ v6;
  return self;
}

- (id)appendPointer:(void *)pointer
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (pointer ^ (pointer >> 30))) ^ ((0xBF58476D1CE4E5B9 * (pointer ^ (pointer >> 30))) >> 27));
  *(self + 1) ^= (v3 >> 31) ^ v3;
  return self;
}

- (id)appendString:(id)string
{
  hash = self->_hash;
  v5 = [string hash];
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) >> 27));
  self->_hash = hash ^ (v6 >> 31) ^ v6;
  return self;
}

- (id)appendArray:(id)array
{
  v20 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v5 = arrayCopy;
  if (arrayCopy)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = arrayCopy;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = *v16;
      v9 = 17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v15 + 1) + 8 * i) hash];
          v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) >> 27));
          v9 ^= (v12 >> 31) ^ v12;
        }

        v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    else
    {
      v9 = 17;
    }

    v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27));
    self->_hash ^= (v13 >> 31) ^ v13;
  }

  return self;
}

@end