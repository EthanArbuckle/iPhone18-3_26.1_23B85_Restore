@interface SKButtonNode
+ (id)buttonWithFontNamed:(id)named;
- (SKButtonNode)init;
- (SKButtonNode)initWithCoder:(id)coder;
- (SKButtonNodeDelegate)delegate;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)onTouchDownInside:(id)inside;
- (void)onTouchUp:(id)up;
- (void)onTouchUpInside:(id)inside;
- (void)touchBegan:(unint64_t)began location:(CGPoint)location;
- (void)touchEnded:(unint64_t)ended location:(CGPoint)location;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation SKButtonNode

- (SKButtonNode)init
{
  v12.receiver = self;
  v12.super_class = SKButtonNode;
  v2 = [(SKLabelNode *)&v12 init];
  v3 = v2;
  if (v2)
  {
    [(SKNode *)v2 setUserInteractionEnabled:1];
    v3->_touches = 0;
    v4 = [SKScale scaleBy:1.3 duration:0.05];
    downAction = v3->_downAction;
    v3->_downAction = v4;

    v6 = [SKScale scaleBy:0.769230769 duration:0.1];
    upAction = v3->_upAction;
    v3->_upAction = v6;

    objc_storeWeak(&v3->_delegate, 0);
    downBlock = v3->_downBlock;
    v3->_downBlock = 0;

    upBlock = v3->_upBlock;
    v3->_upBlock = 0;

    upInsideBlock = v3->_upInsideBlock;
    v3->_upInsideBlock = 0;
  }

  return v3;
}

+ (id)buttonWithFontNamed:(id)named
{
  namedCopy = named;
  v4 = [objc_opt_class() labelNodeWithFontNamed:namedCopy];

  return v4;
}

- (SKButtonNode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = SKButtonNode;
  v5 = [(SKLabelNode *)&v10 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    [(SKNode *)v5 setUserInteractionEnabled:1];
    v6->_touches = 0;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_downAction"];
    [(SKButtonNode *)v6 setDownAction:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_upAction"];
    [(SKButtonNode *)v6 setUpAction:v8];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SKButtonNode;
  coderCopy = coder;
  [(SKLabelNode *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_downAction forKey:{@"_downAction", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_upAction forKey:@"_upAction"];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v23 = *MEMORY[0x277D85DE8];
  beganCopy = began;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [beganCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    v9 = *MEMORY[0x277CBF348];
    v10 = *(MEMORY[0x277CBF348] + 8);
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(beganCopy);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        scene = [(SKNode *)self scene];
        v14 = v10;
        v15 = v9;
        if (scene)
        {
          [v12 locationInNode:scene];
          [(SKNode *)self convertPoint:scene fromNode:?];
          v15 = v16;
          v14 = v17;
        }

        -[SKButtonNode touchBegan:location:](self, "touchBegan:location:", [v12 hash], v15, v14);

        ++v11;
      }

      while (v7 != v11);
      v7 = [beganCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v23 = *MEMORY[0x277D85DE8];
  endedCopy = ended;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [endedCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    v9 = *MEMORY[0x277CBF348];
    v10 = *(MEMORY[0x277CBF348] + 8);
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(endedCopy);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        scene = [(SKNode *)self scene];
        v14 = v10;
        v15 = v9;
        if (scene)
        {
          [v12 locationInNode:scene];
          [(SKNode *)self convertPoint:scene fromNode:?];
          v15 = v16;
          v14 = v17;
        }

        -[SKButtonNode touchEnded:location:](self, "touchEnded:location:", [v12 hash], v15, v14);

        ++v11;
      }

      while (v7 != v11);
      v7 = [endedCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }
}

- (void)touchBegan:(unint64_t)began location:(CGPoint)location
{
  touches = self->_touches;
  self->_touches = touches + 1;
  if (!touches)
  {
    if (self->_downAction)
    {
      [(SKNode *)self removeActionForKey:@"SKButtonNode.action.up", location.x, location.y];
      [(SKNode *)self runAction:self->_downAction withKey:@"SKButtonNode.action.down"];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (WeakRetained)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 touchDownInsideButton:self];
    }

    downBlock = self->_downBlock;
    if (downBlock)
    {
      v9 = *(downBlock + 2);

      v9();
    }
  }
}

- (void)touchEnded:(unint64_t)ended location:(CGPoint)location
{
  touches = self->_touches;
  v5 = __OFSUB__(touches--, 1);
  self->_touches = touches;
  if ((touches < 0) ^ v5 | (touches == 0))
  {
    y = location.y;
    x = location.x;
    self->_touches = 0;
    upAction = self->_upAction;
    if (upAction)
    {
      v10 = [SKRunAction runAction:upAction afterActionWithKey:@"SKButtonNode.action.down"];
      [(SKNode *)self runAction:v10 withKey:@"SKButtonNode.action.up"];
    }

    upBlock = self->_upBlock;
    if (upBlock)
    {
      upBlock[2](upBlock, self);
    }

    if ([(SKNode *)self containsPoint:x, y])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);

      if (WeakRetained)
      {
        v13 = objc_loadWeakRetained(&self->_delegate);
        [v13 touchUpInsideButton:self];
      }

      upInsideBlock = self->_upInsideBlock;
      if (upInsideBlock)
      {
        v15 = *(upInsideBlock + 2);

        v15();
      }
    }
  }
}

- (void)onTouchUpInside:(id)inside
{
  v4 = MEMORY[0x21CF0AB10](inside, a2);
  upInsideBlock = self->_upInsideBlock;
  self->_upInsideBlock = v4;
}

- (void)onTouchUp:(id)up
{
  v4 = MEMORY[0x21CF0AB10](up, a2);
  upBlock = self->_upBlock;
  self->_upBlock = v4;
}

- (void)onTouchDownInside:(id)inside
{
  v4 = MEMORY[0x21CF0AB10](inside, a2);
  downBlock = self->_downBlock;
  self->_downBlock = v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = SKButtonNode;
  v4 = [(SKLabelNode *)&v7 copyWithZone:zone];
  objc_storeStrong(v4 + 19, self->_downAction);
  objc_storeStrong(v4 + 20, self->_upAction);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  objc_storeWeak(v4 + 18, WeakRetained);

  return v4;
}

- (SKButtonNodeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end