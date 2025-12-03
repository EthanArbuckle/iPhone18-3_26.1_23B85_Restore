@interface SKCropNode
- (BOOL)isEqualToNode:(id)node;
- (SKCropNode)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_didMakeBackingNode;
- (void)encodeWithCoder:(id)coder;
- (void)setMaskNode:(SKNode *)maskNode;
@end

@implementation SKCropNode

- (void)_didMakeBackingNode
{
  v3.receiver = self;
  v3.super_class = SKCropNode;
  [(SKNode *)&v3 _didMakeBackingNode];
  self->_skcCropNode = [(SKNode *)self _backingNode];
}

- (SKCropNode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = SKCropNode;
  v5 = [(SKNode *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_mask"];
    [(SKCropNode *)v5 setMaskNode:v6];

    -[SKCropNode setPrefersAlphaMask:](v5, "setPrefersAlphaMask:", [coderCopy decodeBoolForKey:@"_prefersAlphaMask"]);
    -[SKCropNode setInvertMask:](v5, "setInvertMask:", [coderCopy decodeBoolForKey:@"_invertMask"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = SKCropNode;
  [(SKNode *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_mask forKey:@"_mask"];
  [coderCopy encodeBool:-[SKCropNode prefersAlphaMask](self forKey:{"prefersAlphaMask"), @"_prefersAlphaMask"}];
  [coderCopy encodeBool:-[SKCropNode invertMask](self forKey:{"invertMask"), @"_invertMask"}];
}

- (void)setMaskNode:(SKNode *)maskNode
{
  v5 = maskNode;
  objc_storeStrong(&self->_mask, maskNode);
  SKCCropNode::setMaskNode(self->_skcCropNode, [(SKNode *)v5 _backingNode]);
}

- (BOOL)isEqualToNode:(id)node
{
  nodeCopy = node;
  if (self == nodeCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = nodeCopy;
      v12.receiver = self;
      v12.super_class = SKCropNode;
      if ([(SKNode *)&v12 isEqualToNode:v5])
      {
        maskNode = [(SKCropNode *)self maskNode];
        if (maskNode)
        {
        }

        else
        {
          maskNode2 = [(SKCropNode *)v5 maskNode];

          if (!maskNode2)
          {
            v7 = 1;
            goto LABEL_11;
          }
        }

        maskNode3 = [(SKCropNode *)self maskNode];
        maskNode4 = [(SKCropNode *)v5 maskNode];
        v7 = [maskNode3 isEqualToNode:maskNode4];
      }

      else
      {
        v7 = 0;
      }

LABEL_11:

      goto LABEL_12;
    }

    v7 = 0;
  }

LABEL_12:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SKCropNode;
  v4 = [(SKNode *)&v8 copyWithZone:zone];
  [v4 setPrefersAlphaMask:{-[SKCropNode prefersAlphaMask](self, "prefersAlphaMask")}];
  [v4 setInvertMask:{-[SKCropNode invertMask](self, "invertMask")}];
  maskNode = [(SKCropNode *)self maskNode];
  v6 = [maskNode copy];
  [v4 setMaskNode:v6];

  return v4;
}

@end