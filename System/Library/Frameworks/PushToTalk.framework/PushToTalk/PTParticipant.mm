@interface PTParticipant
- (BOOL)isEqual:(id)equal;
- (NSString)name;
- (PTParticipant)initWithName:(NSString *)name image:(UIImage *)image;
- (id)imageFileURL;
- (unint64_t)hash;
@end

@implementation PTParticipant

- (PTParticipant)initWithName:(NSString *)name image:(UIImage *)image
{
  v6 = name;
  v7 = image;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"name must be a kind of NSString"];
  }

  if (![(NSString *)v6 length])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"name length must be greater than 0"];
  }

  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"image must be a UIImage"];
    }
  }

  v14.receiver = self;
  v14.super_class = PTParticipant;
  v8 = [(PTParticipant *)&v14 init];
  v9 = v8;
  if (v8)
  {
    if (v7)
    {
      objc_storeStrong(&v8->_image, image);
      v10 = _pttTemporaryFilesystemURLForImage(v7);
    }

    else
    {
      v10 = 0;
    }

    v11 = [objc_alloc(MEMORY[0x277CBAFD8]) initWithName:v6 imageURL:v10];
    underlyingParticipant = v9->_underlyingParticipant;
    v9->_underlyingParticipant = v11;

    [(CXParticipant *)v9->_underlyingParticipant setWrappedByObject:v9];
  }

  return v9;
}

- (id)imageFileURL
{
  underlyingParticipant = [(PTParticipant *)self underlyingParticipant];
  imageURL = [underlyingParticipant imageURL];

  return imageURL;
}

- (NSString)name
{
  underlyingParticipant = [(PTParticipant *)self underlyingParticipant];
  name = [underlyingParticipant name];

  return name;
}

- (unint64_t)hash
{
  underlyingParticipant = [(PTParticipant *)self underlyingParticipant];
  v3 = [underlyingParticipant hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    underlyingParticipant = [equalCopy underlyingParticipant];
    underlyingParticipant2 = [(PTParticipant *)self underlyingParticipant];
    v7 = [underlyingParticipant2 isEqual:underlyingParticipant];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end