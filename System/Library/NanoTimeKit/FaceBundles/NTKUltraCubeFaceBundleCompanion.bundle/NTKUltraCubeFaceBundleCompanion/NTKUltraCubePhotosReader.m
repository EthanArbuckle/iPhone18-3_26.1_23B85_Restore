@interface NTKUltraCubePhotosReader
+ (id)readerForResourceDirectory:(id)a3;
- (NTKUltraCubePhotosReader)initWithResourceDirectory:(id)a3;
- (id)firstObject;
- (id)lastObject;
- (id)objectAtIndex:(unint64_t)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
@end

@implementation NTKUltraCubePhotosReader

- (NTKUltraCubePhotosReader)initWithResourceDirectory:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = NTKUltraCubePhotosReader;
  v5 = [(NTKUltraCubePhotosReader *)&v24 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [v4 copy];
    resourceDirectory = v6->_resourceDirectory;
    v6->_resourceDirectory = v7;

    v9 = objc_opt_new();
    photos = v6->_photos;
    v6->_photos = v9;

    v11 = [NTKUltraCubeResourcesManifest manifestForResourceDirectory:v6->_resourceDirectory];
    v12 = v11;
    if (v11)
    {
      v6->_version = [v11 version];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v13 = [v12 imageList];
      v14 = [v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v21;
        do
        {
          v17 = 0;
          do
          {
            if (*v21 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = [NTKUltraCubePhoto decodeFromDictionary:*(*(&v20 + 1) + 8 * v17) forResourceDirectory:v4];
            if (v18)
            {
              [(NSMutableArray *)v6->_photos addObject:v18];
            }

            v17 = v17 + 1;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v15);
      }
    }
  }

  return v6;
}

+ (id)readerForResourceDirectory:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithResourceDirectory:v4];

  return v5;
}

- (id)objectAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_photos count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_photos objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (id)firstObject
{
  v3 = [(NTKUltraCubePhotosReader *)self count];
  if (v3)
  {
    v3 = [(NTKUltraCubePhotosReader *)self objectAtIndex:0];
  }

  return v3;
}

- (id)lastObject
{
  v3 = [(NTKUltraCubePhotosReader *)self count];
  if (v3)
  {
    v3 = [(NTKUltraCubePhotosReader *)self objectAtIndex:[(NTKUltraCubePhotosReader *)self count]- 1];
  }

  return v3;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  a3->var2 = &self->_mutationCount;
  a3->var0 = 1;
  v8 = a3->var3[0];
  v9 = v8 + a5;
  if (v8 + a5 > [(NTKUltraCubePhotosReader *)self count])
  {
    v9 = [(NTKUltraCubePhotosReader *)self count];
  }

  v10 = v9 - v8;
  if (v9 > v8)
  {
    v11 = a4;
    do
    {
      *v11++ = [(NTKUltraCubePhotosReader *)self objectAtIndex:v8++];
    }

    while (v9 != v8);
  }

  a3->var3[0] = v9;
  a3->var1 = a4;
  return v10;
}

@end