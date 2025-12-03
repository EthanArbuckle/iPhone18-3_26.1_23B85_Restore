@interface SKVideoNode
+ (SKVideoNode)videoNodeWithAVPlayer:(AVPlayer *)player;
+ (SKVideoNode)videoNodeWithFileNamed:(NSString *)videoFile;
+ (SKVideoNode)videoNodeWithURL:(NSURL *)videoURL;
+ (SKVideoNode)videoNodeWithVideoFileNamed:(NSString *)videoFile;
+ (SKVideoNode)videoNodeWithVideoURL:(NSURL *)videoURL;
+ (id)debugHierarchyPropertyDescriptions;
+ (id)debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)error;
- (BOOL)isEqualToNode:(id)node;
- (CGPoint)anchorPoint;
- (CGSize)size;
- (SKVideoNode)init;
- (SKVideoNode)initWithAVPlayer:(AVPlayer *)player;
- (SKVideoNode)initWithCoder:(NSCoder *)aDecoder;
- (SKVideoNode)initWithFileNamed:(NSString *)videoFile;
- (SKVideoNode)initWithURL:(NSURL *)url;
- (SKVideoNode)initWithVideoFileNamed:(NSString *)videoFile;
- (SKVideoNode)initWithVideoURL:(NSURL *)url;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setAnchorPoint:(CGPoint)anchorPoint;
- (void)setPaused:(BOOL)paused;
- (void)setSize:(CGSize)size;
@end

@implementation SKVideoNode

- (void)dealloc
{
  skcVideoNode = self->_skcVideoNode;
  if (skcVideoNode)
  {
    v4 = SKCVideoNode::getPlayer(skcVideoNode);
    v5 = v4;
    if (self->_isUsingKVO && v4 != 0)
    {
      [v4 removeObserver:self forKeyPath:@"rate"];
      [v5 removeObserver:self forKeyPath:@"currentItem"];
    }
  }

  else
  {
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = SKVideoNode;
  [(SKNode *)&v7 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = SKVideoNode;
  [(SKNode *)&v10 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_videoFileName forKey:@"_videoFileName"];
  [coderCopy encodeObject:self->_videoFileURL forKey:@"_videoFileURL"];
  v5 = MEMORY[0x277CCAE60];
  [(SKVideoNode *)self size];
  v7 = v6;
  [(SKVideoNode *)self size];
  v9 = [v5 valueWithCGRect:{0.0, 0.0, v7, v8}];
  [coderCopy encodeObject:v9 forKey:@"_bounds"];
}

- (SKVideoNode)init
{
  v5.receiver = self;
  v5.super_class = SKVideoNode;
  v2 = [(SKNode *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SKVideoNode *)v2 commonInit];
  }

  return v3;
}

- (SKVideoNode)initWithCoder:(NSCoder *)aDecoder
{
  v4 = aDecoder;
  v24.receiver = self;
  v24.super_class = SKVideoNode;
  v5 = [(SKNode *)&v24 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(SKVideoNode *)v5 commonInit];
    v7 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bounds"];
    [v7 CGRectValue];
    v9 = v8;
    v11 = v10;

    [(SKNode *)v6 xScale];
    v13 = v12;
    [(SKNode *)v6 yScale];
    [(SKVideoNode *)v6 setSize:v9 * v13, v11 * v14];
    v15 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"_videoFileName"];
    videoFileName = v6->_videoFileName;
    v6->_videoFileName = v15;

    v17 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"_videoFileURL"];
    videoFileURL = v6->_videoFileURL;
    v6->_videoFileURL = v17;

    if (v6->_videoFileName)
    {
      v19 = SKGetResourceBundle();
      v20 = [v19 URLForResource:v6->_videoFileName withExtension:0];
    }

    else
    {
      v21 = v6->_videoFileURL;
      if (v21)
      {
        v20 = v21;
      }

      else
      {
        v20 = 0;
      }
    }

    v22 = [MEMORY[0x277CE63D8] assetWithURL:v20];
    SKCVideoNode::loadAVAsset(v6->_skcVideoNode, v22);
  }

  return v6;
}

- (SKVideoNode)initWithVideoURL:(NSURL *)url
{
  v4 = url;
  v9.receiver = self;
  v9.super_class = SKVideoNode;
  v5 = [(SKNode *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(SKVideoNode *)v5 commonInit];
    if (v4)
    {
      v7 = [MEMORY[0x277CE63D8] assetWithURL:v4];
      SKCVideoNode::loadAVAsset(v6->_skcVideoNode, v7);
    }
  }

  return v6;
}

- (SKVideoNode)initWithVideoFileNamed:(NSString *)videoFile
{
  v4 = videoFile;
  v11.receiver = self;
  v11.super_class = SKVideoNode;
  v5 = [(SKNode *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(SKVideoNode *)v5 commonInit];
    v7 = SKGetResourceBundle();
    v8 = [v7 URLForResource:v4 withExtension:0];

    if (v8)
    {
      v9 = [MEMORY[0x277CE63D8] assetWithURL:v8];
      SKCVideoNode::loadAVAsset(v6->_skcVideoNode, v9);
    }
  }

  return v6;
}

- (SKVideoNode)initWithFileNamed:(NSString *)videoFile
{
  v5 = videoFile;
  v12.receiver = self;
  v12.super_class = SKVideoNode;
  v6 = [(SKNode *)&v12 init];
  v7 = v6;
  if (v6)
  {
    [(SKVideoNode *)v6 commonInit];
    objc_storeStrong(&v7->_videoFileName, videoFile);
    v8 = SKGetResourceBundle();
    v9 = [v8 URLForResource:v5 withExtension:0];

    if (v9)
    {
      v10 = [MEMORY[0x277CE63D8] assetWithURL:v9];
      SKCVideoNode::loadAVAsset(v7->_skcVideoNode, v10);
    }
  }

  return v7;
}

- (SKVideoNode)initWithURL:(NSURL *)url
{
  v4 = url;
  v9.receiver = self;
  v9.super_class = SKVideoNode;
  v5 = [(SKNode *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(SKVideoNode *)v5 commonInit];
    if (v4)
    {
      v7 = [MEMORY[0x277CE63D8] assetWithURL:v4];
      SKCVideoNode::loadAVAsset(v6->_skcVideoNode, v7);
    }
  }

  return v6;
}

- (SKVideoNode)initWithAVPlayer:(AVPlayer *)player
{
  v4 = player;
  v8.receiver = self;
  v8.super_class = SKVideoNode;
  v5 = [(SKNode *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SKVideoNode *)v5 commonInit];
    if (v4)
    {
      SKCVideoNode::setPlayer(v6->_skcVideoNode, v4);
      v6->_isUsingKVO = 1;
      [(AVPlayer *)v4 addObserver:v6 forKeyPath:@"rate" options:1 context:0];
      [(AVPlayer *)v4 addObserver:v6 forKeyPath:@"currentItem" options:1 context:0];
    }
  }

  return v6;
}

+ (SKVideoNode)videoNodeWithVideoFileNamed:(NSString *)videoFile
{
  v3 = [self videoNodeWithFileNamed:videoFile];

  return v3;
}

+ (SKVideoNode)videoNodeWithVideoURL:(NSURL *)videoURL
{
  v3 = [self videoNodeWithURL:videoURL];

  return v3;
}

+ (SKVideoNode)videoNodeWithFileNamed:(NSString *)videoFile
{
  v4 = videoFile;
  v5 = [[self alloc] initWithFileNamed:v4];

  return v5;
}

+ (SKVideoNode)videoNodeWithURL:(NSURL *)videoURL
{
  v4 = videoURL;
  v5 = [[self alloc] initWithURL:v4];

  return v5;
}

+ (SKVideoNode)videoNodeWithAVPlayer:(AVPlayer *)player
{
  v3 = player;
  v4 = [[SKVideoNode alloc] initWithAVPlayer:v3];

  return v4;
}

- (BOOL)isEqualToNode:(id)node
{
  nodeCopy = node;
  if (self == nodeCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = nodeCopy;
      v21.receiver = self;
      v21.super_class = SKVideoNode;
      if (![(SKNode *)&v21 isEqualToNode:v5])
      {
        goto LABEL_13;
      }

      [(SKVideoNode *)self anchorPoint];
      v7 = v6;
      v9 = v8;
      [(SKVideoNode *)v5 anchorPoint];
      v11 = 0;
      if (v7 != v12)
      {
        goto LABEL_14;
      }

      if (v9 != v10)
      {
        goto LABEL_14;
      }

      [(SKVideoNode *)self size];
      v14 = v13;
      v16 = v15;
      [(SKVideoNode *)v5 size];
      v11 = 0;
      if (v14 != v18 || v16 != v17)
      {
        goto LABEL_14;
      }

      videoFileName = self->_videoFileName;
      if (videoFileName == v5->_videoFileName || [(NSString *)videoFileName isEqualToString:?])
      {
        v11 = self->_videoFileURL == v5->_videoFileURL;
      }

      else
      {
LABEL_13:
        v11 = 0;
      }

LABEL_14:

      goto LABEL_15;
    }

    v11 = 0;
  }

LABEL_15:

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  name = [(SKNode *)self name];
  [(SKNode *)self position];
  v5 = NSStringFromCGPoint(v11);
  [(SKVideoNode *)self size];
  v6 = NSStringFromCGSize(v12);
  [(SKNode *)self zRotation];
  v8 = [v3 stringWithFormat:@"<SKVideoNode> name:'%@' position:%@ size:%@ rotation:%.2f", name, v5, v6, v7];

  return v8;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"rate"] || objc_msgSend(pathCopy, "isEqualToString:", @"currentItem"))
  {
    SKCNode::setDirty(self->_skcVideoNode);
    SKCNode::recomputeFlags(self->_skcVideoNode, 1);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SKVideoNode;
    [(SKVideoNode *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  v6.receiver = self;
  v6.super_class = SKVideoNode;
  [(SKNode *)&v6 setPaused:?];
  skcVideoNode = self->_skcVideoNode;
  if (pausedCopy)
  {
    SKCVideoNode::pause(skcVideoNode);
  }

  else
  {
    SKCVideoNode::play(skcVideoNode);
  }
}

- (void)setSize:(CGSize)size
{
  v3 = size.width == *MEMORY[0x277CBF3A8];
  if (size.height != *(MEMORY[0x277CBF3A8] + 8))
  {
    v3 = 0;
  }

  skcVideoNode = self->_skcVideoNode;
  *(skcVideoNode + 560) = v3;
  *&v5 = size.width;
  *&v6 = size.height;
  v7 = __PAIR64__(v6, v5);
  SKCNode::setSize(skcVideoNode, &v7);
}

- (CGSize)size
{
  v2 = vcvtq_f64_f32(*(self->_skcVideoNode + 336));
  v3 = v2.f64[1];
  result.width = v2.f64[0];
  result.height = v3;
  return result;
}

- (CGPoint)anchorPoint
{
  v2 = vcvtq_f64_f32(*(self->_skcVideoNode + 352));
  v3 = v2.f64[1];
  result.x = v2.f64[0];
  result.y = v3;
  return result;
}

- (void)setAnchorPoint:(CGPoint)anchorPoint
{
  skcVideoNode = self->_skcVideoNode;
  *&v4 = anchorPoint.x;
  *&v5 = anchorPoint.y;
  v6 = __PAIR64__(v5, v4);
  SKCNode::setAnchor(skcVideoNode, &v6);
}

+ (id)debugHierarchyPropertyDescriptions
{
  v12[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBED60];
  v3 = MEMORY[0x277CBF150];
  Mutable = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, @"propertyName", @"size");
  CFDictionaryAddValue(Mutable, @"propertyRuntimeType", @"CGSize");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeSize");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"CGf, CGf");
  v12[0] = Mutable;
  v5 = CFDictionaryCreateMutable(0, 7, v2, v3);
  CFDictionaryAddValue(v5, @"propertyName", @"anchorPoint");
  CFDictionaryAddValue(v5, @"propertyRuntimeType", @"CGPoint");
  CFDictionaryAddValue(v5, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypePoint");
  CFDictionaryAddValue(v5, @"propertyFormat", @"CGf, CGf");
  v12[1] = v5;
  v6 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v6, @"propertyName", @"visualRepresentation");
  CFDictionaryAddValue(v6, @"propertyRuntimeType", @"CGImage");
  CFDictionaryAddValue(v6, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeImage");
  CFDictionaryAddValue(v6, @"propertyFormat", @"public.data");
  valuePtr = 8;
  v7 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v6, @"visibility", v7);
  CFRelease(v7);
  valuePtr = 1;
  v8 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v6, @"propertyOptions", v8);
  CFRelease(v8);
  v12[2] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];

  return v9;
}

+ (id)debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)error
{
  v34[3] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  objectCopy = object;
  if ([nameCopy isEqualToString:@"visualRepresentation"])
  {
    errorCopy = [objectCopy createDebugHierarchyVisualRepresentation];
    v31 = @"propertyFormat";
    identifier = [*MEMORY[0x277CE1E10] identifier];
    v32 = identifier;
    *options = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    goto LABEL_24;
  }

  v13 = objectCopy;
  v14 = nameCopy;
  if (![v14 length])
  {
    goto LABEL_14;
  }

  NSSelectorFromString(v14);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ([v14 length] < 2)
    {
      uppercaseString = [v14 uppercaseString];
    }

    else
    {
      v16 = [v14 substringToIndex:1];
      uppercaseString2 = [v16 uppercaseString];
      v18 = [v14 substringFromIndex:1];
      uppercaseString = [uppercaseString2 stringByAppendingString:v18];
    }

    v20 = [@"is" stringByAppendingString:uppercaseString];
    NSSelectorFromString(v20);
    if (objc_opt_respondsToSelector())
    {
      v15 = v20;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      goto LABEL_6;
    }

LABEL_14:
    if (error)
    {
      v21 = v13;
      v22 = v14;
      v30 = v21;
      if (v21)
      {
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v21];
      }

      else
      {
        v23 = &stru_282E190D8;
      }

      if (v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = &stru_282E190D8;
      }

      v25 = v24;
      v33[0] = @"propertyName";
      v33[1] = @"objectDescription";
      v34[0] = v25;
      v34[1] = v23;
      v33[2] = @"errorDescription";
      v34[2] = &stru_282E190D8;
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:3];
      v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DebugHierarchyErrorDomain" code:100 userInfo:v26];

      v28 = v27;
      *error = v27;

      v15 = 0;
      error = 0;
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_23;
  }

  v15 = v14;
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_6:
  error = [v13 valueForKey:v15];
LABEL_23:

  identifier = v13;
  errorCopy = error;
LABEL_24:

  return errorCopy;
}

@end