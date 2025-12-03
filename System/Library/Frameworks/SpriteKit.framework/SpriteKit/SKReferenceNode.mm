@interface SKReferenceNode
+ (SKReferenceNode)nodeWithFileNamed:(id)named;
+ (SKReferenceNode)referenceNodeWithFileNamed:(NSString *)fileName;
+ (SKReferenceNode)referenceNodeWithURL:(NSURL *)referenceURL;
- (SKReferenceNode)initWithCoder:(NSCoder *)aDecoder;
- (SKReferenceNode)initWithFileNamed:(NSString *)fileName;
- (SKReferenceNode)initWithURL:(NSURL *)url;
- (id)_resolveReferenceNode;
- (id)copyWithZone:(_NSZone *)zone;
- (id)resolvedNode;
- (void)encodeWithCoder:(id)coder;
- (void)resolveNodeFromArchiveData:(id)data;
- (void)setReferenceFileName:(id)name;
- (void)setReferenceURL:(id)l;
@end

@implementation SKReferenceNode

- (SKReferenceNode)initWithURL:(NSURL *)url
{
  v4 = url;
  v11.receiver = self;
  v11.super_class = SKReferenceNode;
  v5 = [(SKNode *)&v11 init];
  v6 = v5;
  if (v5)
  {
    referenceURL = v5->_referenceURL;
    v5->_referenceURL = 0;

    referenceFileName = v6->_referenceFileName;
    v6->_referenceFileName = 0;

    resolvedNode = v6->_resolvedNode;
    v6->_resolvedNode = 0;

    v6->_hasResolvedURL = 0;
    [(SKReferenceNode *)v6 setReferenceURL:v4];
  }

  return v6;
}

- (SKReferenceNode)initWithFileNamed:(NSString *)fileName
{
  v4 = fileName;
  v11.receiver = self;
  v11.super_class = SKReferenceNode;
  v5 = [(SKNode *)&v11 init];
  v6 = v5;
  if (v5)
  {
    referenceURL = v5->_referenceURL;
    v5->_referenceURL = 0;

    referenceFileName = v6->_referenceFileName;
    v6->_referenceFileName = 0;

    resolvedNode = v6->_resolvedNode;
    v6->_resolvedNode = 0;

    v6->_hasResolvedURL = 0;
    [(SKReferenceNode *)v6 setReferenceFileName:v4];
  }

  return v6;
}

- (void)setReferenceFileName:(id)name
{
  nameCopy = name;
  referenceFileName = [(SKReferenceNode *)self referenceFileName];
  v5 = [nameCopy isEqual:referenceFileName];

  if ((v5 & 1) == 0)
  {
    v6 = [nameCopy copy];
    referenceFileName = self->_referenceFileName;
    self->_referenceFileName = v6;

    resolvedNode = self->_resolvedNode;
    if (resolvedNode)
    {
      [(SKNode *)resolvedNode removeFromParent];
      v9 = self->_resolvedNode;
      self->_resolvedNode = 0;
    }

    self->_hasResolvedURL = 0;
    [(SKReferenceNode *)self resolveReferenceNode];
  }
}

- (void)setReferenceURL:(id)l
{
  lCopy = l;
  referenceURL = [(SKReferenceNode *)self referenceURL];
  v5 = [lCopy isEqual:referenceURL];

  if ((v5 & 1) == 0)
  {
    v6 = [lCopy copy];
    referenceURL = self->_referenceURL;
    self->_referenceURL = v6;

    resolvedNode = self->_resolvedNode;
    if (resolvedNode)
    {
      [(SKNode *)resolvedNode removeFromParent];
      v9 = self->_resolvedNode;
      self->_resolvedNode = 0;
    }

    self->_hasResolvedURL = 0;
    [(SKReferenceNode *)self resolveReferenceNode];
  }
}

+ (SKReferenceNode)referenceNodeWithURL:(NSURL *)referenceURL
{
  v3 = referenceURL;
  v4 = [objc_alloc(objc_opt_class()) initWithURL:v3];

  return v4;
}

+ (SKReferenceNode)referenceNodeWithFileNamed:(NSString *)fileName
{
  v3 = fileName;
  v4 = [objc_alloc(objc_opt_class()) initWithFileNamed:v3];

  return v4;
}

+ (SKReferenceNode)nodeWithFileNamed:(id)named
{
  namedCopy = named;
  v4 = [objc_alloc(objc_opt_class()) initWithFileNamed:namedCopy];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  resolvedNode = self->_resolvedNode;
  if (resolvedNode)
  {
    [(SKNode *)resolvedNode removeFromParent];
  }

  v6.receiver = self;
  v6.super_class = SKReferenceNode;
  [(SKNode *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_referenceURL forKey:@"_referenceURL"];
  [coderCopy encodeObject:self->_referenceFileName forKey:@"_referenceFileName"];
  if (self->_resolvedNode)
  {
    [(SKNode *)self addChild:?];
  }
}

- (SKReferenceNode)initWithCoder:(NSCoder *)aDecoder
{
  v4 = aDecoder;
  v13.receiver = self;
  v13.super_class = SKReferenceNode;
  v5 = [(SKNode *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"_referenceURL"];
    referenceURL = v5->_referenceURL;
    v5->_referenceURL = v6;

    v8 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"_referenceFileName"];
    referenceFileName = v5->_referenceFileName;
    v5->_referenceFileName = v8;

    resolvedNode = v5->_resolvedNode;
    v5->_resolvedNode = 0;

    v5->_hasResolvedURL = 0;
    if (v5->_referenceFileName || v5->_referenceURL)
    {
      scene = [(SKNode *)v5 scene];

      if (!scene)
      {
        [(SKReferenceNode *)v5 resolveReferenceNode];
      }
    }
  }

  return v5;
}

- (id)_resolveReferenceNode
{
  v33 = *MEMORY[0x277D85DE8];
  if (self->_resolvedNode)
  {
    [(SKNode *)self removeChild:?];
    resolvedNode = self->_resolvedNode;
    self->_resolvedNode = 0;
  }

  v4 = self->_referenceURL;
  if (v4)
  {
LABEL_4:
    v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v4 options:1 error:0];
    if (v5)
    {
      v31 = 0;
      v6 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v5 error:&v31];
      v7 = v31;
      [v6 setRequiresSecureCoding:0];
      v8 = [v6 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
      v9 = self->_resolvedNode;
      self->_resolvedNode = v8;

      [v6 finishDecoding];
      v10 = v5;
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  referenceFileName = self->_referenceFileName;
  if (referenceFileName)
  {
    if ([(NSString *)referenceFileName isAbsolutePath])
    {
      v4 = [MEMORY[0x277CBEBC0] URLWithString:self->_referenceFileName];
      if (v4)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }

    v12 = self->_referenceFileName;
    if (v12 && [(NSString *)v12 length])
    {
      v13 = self->_referenceFileName;
      pathExtension = [(NSString *)v13 pathExtension];
      v15 = [pathExtension length];

      if (!v15)
      {
        v16 = [(NSString *)v13 stringByAppendingPathExtension:@"sks"];

        v13 = v16;
      }

      v17 = SKGetResourceBundle();
      v4 = [v17 URLForResource:v13 withExtension:0];

      if (v4)
      {
        goto LABEL_4;
      }

LABEL_15:
      v10 = 0;
      goto LABEL_17;
    }
  }

  v10 = 0;
  v4 = 0;
LABEL_17:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = objc_opt_new();
    [(SKNode *)self->_resolvedNode children];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v19 = v28 = 0u;
    v20 = [v19 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v20)
    {
      v21 = *v28;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v27 + 1) + 8 * i);
          [v23 removeFromParent];
          [v18 addChild:v23];
        }

        v20 = [v19 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v20);
    }

    objc_storeStrong(&self->_resolvedNode, v18);
    [(SKNode *)self addChild:self->_resolvedNode];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SKNode *)self addChild:self->_resolvedNode];
    }
  }

  self->_hasResolvedURL = 1;
  [(SKReferenceNode *)self didLoadReferenceNode:self->_resolvedNode, v27];
  v24 = self->_resolvedNode;
  v25 = v24;

  return v24;
}

- (void)resolveNodeFromArchiveData:(id)data
{
  v22 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (self->_resolvedNode)
  {
    [(SKNode *)self removeChild:?];
    resolvedNode = self->_resolvedNode;
    self->_resolvedNode = 0;
  }

  if (dataCopy)
  {
    v20 = 0;
    v6 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:dataCopy error:&v20];
    v7 = v20;
    [v6 setRequiresSecureCoding:0];
    v8 = [v6 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
    v9 = self->_resolvedNode;
    self->_resolvedNode = v8;

    [v6 finishDecoding];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = objc_opt_new();
    [(SKNode *)self->_resolvedNode children];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v11 = v17 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v12)
    {
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v16 + 1) + 8 * i);
          [v15 removeFromParent];
          [v10 addChild:v15];
        }

        v12 = [v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v12);
    }

    objc_storeStrong(&self->_resolvedNode, v10);
    [(SKNode *)self addChild:self->_resolvedNode];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SKNode *)self addChild:self->_resolvedNode];
    }
  }

  self->_hasResolvedURL = 1;
  [(SKReferenceNode *)self didLoadReferenceNode:self->_resolvedNode, v16];
}

- (id)resolvedNode
{
  if (!self->_hasResolvedURL)
  {
    _resolveReferenceNode = [(SKReferenceNode *)self _resolveReferenceNode];
  }

  resolvedNode = self->_resolvedNode;

  return resolvedNode;
}

- (id)copyWithZone:(_NSZone *)zone
{
  resolvedNode = self->_resolvedNode;
  if (resolvedNode)
  {
    [(SKNode *)resolvedNode removeFromParent];
  }

  v10.receiver = self;
  v10.super_class = SKReferenceNode;
  v6 = [(SKNode *)&v10 copyWithZone:zone];
  referenceURL = [(SKReferenceNode *)self referenceURL];
  [v6 setReferenceURL:referenceURL];

  referenceFileName = [(SKReferenceNode *)self referenceFileName];
  [v6 setReferenceFileName:referenceFileName];

  if (self->_resolvedNode)
  {
    [(SKNode *)self addChild:?];
  }

  return v6;
}

@end