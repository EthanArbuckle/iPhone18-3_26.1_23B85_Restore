@interface SKCropNode
- (BOOL)isEqualToNode:(id)a3;
- (SKCropNode)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_didMakeBackingNode;
- (void)encodeWithCoder:(id)a3;
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

- (SKCropNode)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SKCropNode;
  v5 = [(SKNode *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_mask"];
    [(SKCropNode *)v5 setMaskNode:v6];

    -[SKCropNode setPrefersAlphaMask:](v5, "setPrefersAlphaMask:", [v4 decodeBoolForKey:@"_prefersAlphaMask"]);
    -[SKCropNode setInvertMask:](v5, "setInvertMask:", [v4 decodeBoolForKey:@"_invertMask"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = SKCropNode;
  [(SKNode *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_mask forKey:@"_mask"];
  [v4 encodeBool:-[SKCropNode prefersAlphaMask](self forKey:{"prefersAlphaMask"), @"_prefersAlphaMask"}];
  [v4 encodeBool:-[SKCropNode invertMask](self forKey:{"invertMask"), @"_invertMask"}];
}

- (void)setMaskNode:(SKNode *)maskNode
{
  v5 = maskNode;
  objc_storeStrong(&self->_mask, maskNode);
  SKCCropNode::setMaskNode(self->_skcCropNode, [(SKNode *)v5 _backingNode]);
}

- (BOOL)isEqualToNode:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v12.receiver = self;
      v12.super_class = SKCropNode;
      if ([(SKNode *)&v12 isEqualToNode:v5])
      {
        v6 = [(SKCropNode *)self maskNode];
        if (v6)
        {
        }

        else
        {
          v8 = [(SKCropNode *)v5 maskNode];

          if (!v8)
          {
            v7 = 1;
            goto LABEL_11;
          }
        }

        v9 = [(SKCropNode *)self maskNode];
        v10 = [(SKCropNode *)v5 maskNode];
        v7 = [v9 isEqualToNode:v10];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SKCropNode;
  v4 = [(SKNode *)&v8 copyWithZone:a3];
  [v4 setPrefersAlphaMask:{-[SKCropNode prefersAlphaMask](self, "prefersAlphaMask")}];
  [v4 setInvertMask:{-[SKCropNode invertMask](self, "invertMask")}];
  v5 = [(SKCropNode *)self maskNode];
  v6 = [v5 copy];
  [v4 setMaskNode:v6];

  return v4;
}

@end