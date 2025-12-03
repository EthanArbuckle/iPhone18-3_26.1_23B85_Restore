@interface NTKUltraCubePhotosReader
+ (id)readerForResourceDirectory:(id)directory;
- (NTKUltraCubePhotosReader)initWithResourceDirectory:(id)directory;
- (id)firstObject;
- (id)lastObject;
- (id)objectAtIndex:(unint64_t)index;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
@end

@implementation NTKUltraCubePhotosReader

- (NTKUltraCubePhotosReader)initWithResourceDirectory:(id)directory
{
  directoryCopy = directory;
  v24.receiver = self;
  v24.super_class = NTKUltraCubePhotosReader;
  v5 = [(NTKUltraCubePhotosReader *)&v24 init];
  v6 = v5;
  if (directoryCopy && v5)
  {
    v7 = [directoryCopy copy];
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
      imageList = [v12 imageList];
      v14 = [imageList countByEnumeratingWithState:&v20 objects:v25 count:16];
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
              objc_enumerationMutation(imageList);
            }

            v18 = [NTKUltraCubePhoto decodeFromDictionary:*(*(&v20 + 1) + 8 * v17) forResourceDirectory:directoryCopy];
            if (v18)
            {
              [(NSMutableArray *)v6->_photos addObject:v18];
            }

            v17 = v17 + 1;
          }

          while (v15 != v17);
          v15 = [imageList countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v15);
      }
    }
  }

  return v6;
}

+ (id)readerForResourceDirectory:(id)directory
{
  directoryCopy = directory;
  v5 = [[self alloc] initWithResourceDirectory:directoryCopy];

  return v5;
}

- (id)objectAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_photos count]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_photos objectAtIndexedSubscript:index];
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

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  state->var2 = &self->_mutationCount;
  state->var0 = 1;
  v8 = state->var3[0];
  v9 = v8 + count;
  if (v8 + count > [(NTKUltraCubePhotosReader *)self count])
  {
    v9 = [(NTKUltraCubePhotosReader *)self count];
  }

  v10 = v9 - v8;
  if (v9 > v8)
  {
    objectsCopy = objects;
    do
    {
      *objectsCopy++ = [(NTKUltraCubePhotosReader *)self objectAtIndex:v8++];
    }

    while (v9 != v8);
  }

  state->var3[0] = v9;
  state->var1 = objects;
  return v10;
}

@end