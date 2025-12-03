@interface INKeyImageExtraction
- (INKeyImageExtraction)init;
- (INKeyImageExtraction)initWithCoder:(id)coder;
- (NSDictionary)keyImagesByType;
- (NSString)serviceIdentifier;
- (id)retrieveImageSynchronouslyForIdentifier:(id)identifier error:(id *)error;
- (id)storeImageSynchronously:(id)synchronously error:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)purgeImageWithIdentifier:(id)identifier completion:(id)completion;
- (void)retrieveImageWithIdentifier:(id)identifier completion:(id)completion;
@end

@implementation INKeyImageExtraction

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  proxyIdentifier = [(INKeyImageExtraction *)self proxyIdentifier];
  [coderCopy encodeObject:proxyIdentifier forKey:@"proxyIdentifier"];

  keyImagesByType = [(INKeyImageExtraction *)self keyImagesByType];
  [coderCopy encodeObject:keyImagesByType forKey:@"keyImagesByType"];
}

- (INKeyImageExtraction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(INKeyImageExtraction *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proxyIdentifier"];
    [(INKeyImageExtraction *)v5 setProxyIdentifier:v6];

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = +[INImage _classesInCluster];
    v11 = [v9 setByAddingObjectsFromArray:v10];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"keyImage"];
    [(INKeyImageExtraction *)v5 setKeyImagesByType:v12];

    v13 = MEMORY[0x1E695DFD8];
    v14 = +[INImage _classesInCluster];
    v15 = [v13 setWithArray:v14];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"keyImage"];

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
  proxyIdentifier = [(INKeyImageExtraction *)self proxyIdentifier];
  v4 = [v2 stringWithFormat:@"com.apple.INKeyImageExtraction-%@", proxyIdentifier];

  return v4;
}

- (id)retrieveImageSynchronouslyForIdentifier:(id)identifier error:(id *)error
{
  v5 = [identifier componentsSeparatedByString:{@"|", error}];
  firstObject = [v5 firstObject];
  proxyIdentifier = [(INKeyImageExtraction *)self proxyIdentifier];
  v8 = [firstObject isEqualToString:proxyIdentifier];

  if (v8)
  {
    if ([v5 count] == 2)
    {
      v9 = [v5 objectAtIndex:1];
      integerValue = [v9 integerValue];

      keyImagesByType = self->_keyImagesByType;
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
      keyImage = [(NSMutableDictionary *)keyImagesByType objectForKey:v12];
    }

    else
    {
      keyImage = [(INKeyImageExtraction *)self keyImage];
    }
  }

  else
  {
    keyImage = 0;
  }

  return keyImage;
}

- (id)storeImageSynchronously:(id)synchronously error:(id *)error
{
  keyImagesByType = self->_keyImagesByType;
  v6 = MEMORY[0x1E696AD98];
  synchronouslyCopy = synchronously;
  v8 = [v6 numberWithInteger:{-[INKeyImageExtraction _imageTypeToStore](self, "_imageTypeToStore")}];
  [(NSMutableDictionary *)keyImagesByType setObject:synchronouslyCopy forKeyedSubscript:v8];

  v9 = MEMORY[0x1E696AEC0];
  proxyIdentifier = [(INKeyImageExtraction *)self proxyIdentifier];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[INKeyImageExtraction _imageTypeToStore](self, "_imageTypeToStore")}];
  v12 = [v9 stringWithFormat:@"%@|%@", proxyIdentifier, v11];

  return v12;
}

- (void)purgeImageWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v6 = [identifier componentsSeparatedByString:@"|"];
  firstObject = [v6 firstObject];
  proxyIdentifier = [(INKeyImageExtraction *)self proxyIdentifier];
  v9 = [firstObject isEqualToString:proxyIdentifier];

  if (v9)
  {
    if ([v6 count] == 2)
    {
      v10 = [v6 objectAtIndex:1];
      integerValue = [v10 integerValue];

      keyImagesByType = self->_keyImagesByType;
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
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

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v14);
  }
}

- (void)retrieveImageWithIdentifier:(id)identifier completion:(id)completion
{
  if (completion)
  {
    v9 = 0;
    completionCopy = completion;
    v7 = [(INKeyImageExtraction *)self retrieveImageSynchronouslyForIdentifier:identifier error:&v9];
    v8 = v9;
    completionCopy[2](completionCopy, v7, v8);
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
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    [(INKeyImageExtraction *)v2 setProxyIdentifier:uUIDString];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    keyImagesByType = v2->_keyImagesByType;
    v2->_keyImagesByType = dictionary;

    v2->_imageTypeToStore = 0;
  }

  return v2;
}

@end