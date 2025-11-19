@interface INKeyImageExtraction
- (INKeyImageExtraction)init;
- (INKeyImageExtraction)initWithCoder:(id)a3;
- (NSDictionary)keyImagesByType;
- (NSString)serviceIdentifier;
- (id)retrieveImageSynchronouslyForIdentifier:(id)a3 error:(id *)a4;
- (id)storeImageSynchronously:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
- (void)purgeImageWithIdentifier:(id)a3 completion:(id)a4;
- (void)retrieveImageWithIdentifier:(id)a3 completion:(id)a4;
@end

@implementation INKeyImageExtraction

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(INKeyImageExtraction *)self proxyIdentifier];
  [v4 encodeObject:v5 forKey:@"proxyIdentifier"];

  v6 = [(INKeyImageExtraction *)self keyImagesByType];
  [v4 encodeObject:v6 forKey:@"keyImagesByType"];
}

- (INKeyImageExtraction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(INKeyImageExtraction *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyIdentifier"];
    [(INKeyImageExtraction *)v5 setProxyIdentifier:v6];

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = +[INImage _classesInCluster];
    v11 = [v9 setByAddingObjectsFromArray:v10];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"keyImage"];
    [(INKeyImageExtraction *)v5 setKeyImagesByType:v12];

    v13 = MEMORY[0x1E695DFD8];
    v14 = +[INImage _classesInCluster];
    v15 = [v13 setWithArray:v14];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"keyImage"];

    if (v16)
    {
      [(INKeyImageExtraction *)v5 setKeyImage:v16];
    }
  }

  return v5;
}

- (NSString)serviceIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(INKeyImageExtraction *)self proxyIdentifier];
  v4 = [v2 stringWithFormat:@"com.apple.INKeyImageExtraction-%@", v3];

  return v4;
}

- (id)retrieveImageSynchronouslyForIdentifier:(id)a3 error:(id *)a4
{
  v5 = [a3 componentsSeparatedByString:{@"|", a4}];
  v6 = [v5 firstObject];
  v7 = [(INKeyImageExtraction *)self proxyIdentifier];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    if ([v5 count] == 2)
    {
      v9 = [v5 objectAtIndex:1];
      v10 = [v9 integerValue];

      keyImagesByType = self->_keyImagesByType;
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
      v13 = [(NSMutableDictionary *)keyImagesByType objectForKey:v12];
    }

    else
    {
      v13 = [(INKeyImageExtraction *)self keyImage];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)storeImageSynchronously:(id)a3 error:(id *)a4
{
  keyImagesByType = self->_keyImagesByType;
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [v6 numberWithInteger:{-[INKeyImageExtraction _imageTypeToStore](self, "_imageTypeToStore")}];
  [(NSMutableDictionary *)keyImagesByType setObject:v7 forKeyedSubscript:v8];

  v9 = MEMORY[0x1E696AEC0];
  v10 = [(INKeyImageExtraction *)self proxyIdentifier];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[INKeyImageExtraction _imageTypeToStore](self, "_imageTypeToStore")}];
  v12 = [v9 stringWithFormat:@"%@|%@", v10, v11];

  return v12;
}

- (void)purgeImageWithIdentifier:(id)a3 completion:(id)a4
{
  v15 = a4;
  v6 = [a3 componentsSeparatedByString:@"|"];
  v7 = [v6 firstObject];
  v8 = [(INKeyImageExtraction *)self proxyIdentifier];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    if ([v6 count] == 2)
    {
      v10 = [v6 objectAtIndex:1];
      v11 = [v10 integerValue];

      keyImagesByType = self->_keyImagesByType;
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
      [(NSMutableDictionary *)keyImagesByType removeObjectForKey:v13];
    }

    else
    {
      [(INKeyImageExtraction *)self setKeyImage:0];
    }

    v14 = 0;
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IntentsErrorDomain" code:6000 userInfo:0];
  }

  if (v15)
  {
    v15[2](v15, v14);
  }
}

- (void)retrieveImageWithIdentifier:(id)a3 completion:(id)a4
{
  if (a4)
  {
    v9 = 0;
    v6 = a4;
    v7 = [(INKeyImageExtraction *)self retrieveImageSynchronouslyForIdentifier:a3 error:&v9];
    v8 = v9;
    v6[2](v6, v7, v8);
  }
}

- (NSDictionary)keyImagesByType
{
  v2 = [(NSMutableDictionary *)self->_keyImagesByType copy];

  return v2;
}

- (INKeyImageExtraction)init
{
  v8.receiver = self;
  v8.super_class = INKeyImageExtraction;
  v2 = [(INKeyImageExtraction *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];
    [(INKeyImageExtraction *)v2 setProxyIdentifier:v4];

    v5 = [MEMORY[0x1E695DF90] dictionary];
    keyImagesByType = v2->_keyImagesByType;
    v2->_keyImagesByType = v5;

    v2->_imageTypeToStore = 0;
  }

  return v2;
}

@end