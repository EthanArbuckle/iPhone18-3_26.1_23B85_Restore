@interface SCNNodeManipulableItem
+ (id)nodeManipulatorItemWithNode:(id)a3 screenSize:(double)a4;
+ (void)addItems:(id)a3 toScene:(id)a4;
+ (void)removeItemsFromScene:(id)a3;
- (SCNMatrix4)transform;
- (SCNMatrix4)worldTransform;
- (SCNVector3)scale;
- (id)cloneForManipulators;
- (id)parentItem;
- (void)setPosition:(SCNVector3)a3;
- (void)validateClone;
@end

@implementation SCNNodeManipulableItem

+ (id)nodeManipulatorItemWithNode:(id)a3 screenSize:(double)a4
{
  v6 = objc_alloc_init(SCNNodeManipulableItem);
  [(SCNManipulableItem *)v6 setScreenSize:a4];
  [(SCNManipulableItem *)v6 setNode:a3];

  return v6;
}

- (SCNMatrix4)transform
{
  result = [(SCNManipulableItem *)self node];
  if (result)
  {

    return [(SCNMatrix4 *)result transform];
  }

  else
  {
    *&retstr->m31 = 0u;
    *&retstr->m41 = 0u;
    *&retstr->m11 = 0u;
    *&retstr->m21 = 0u;
  }

  return result;
}

- (SCNMatrix4)worldTransform
{
  result = [(SCNManipulableItem *)self node];
  if (result)
  {

    return [(SCNMatrix4 *)result worldTransform];
  }

  else
  {
    *&retstr->m31 = 0u;
    *&retstr->m41 = 0u;
    *&retstr->m11 = 0u;
    *&retstr->m21 = 0u;
  }

  return result;
}

- (SCNVector3)scale
{
  v2 = [(SCNManipulableItem *)self node];

  [(SCNNode *)v2 scale];
  result.z = v5;
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setPosition:(SCNVector3)a3
{
  z = a3.z;
  y = a3.y;
  x = a3.x;
  v6 = [(SCNManipulableItem *)self node];
  *&v7 = x;
  *&v8 = y;
  *&v9 = z;

  [(SCNNode *)v6 setPosition:v7, v8, v9];
}

- (id)parentItem
{
  result = [(SCNNode *)[(SCNManipulableItem *)self node] parentNode];
  if (result)
  {
    v4 = [(SCNNode *)[(SCNManipulableItem *)self node] parentNode];
    [(SCNManipulableItem *)self screenSize];

    return [SCNNodeManipulableItem nodeManipulatorItemWithNode:v4 screenSize:?];
  }

  return result;
}

- (id)cloneForManipulators
{
  v3 = [(SCNNode *)[(SCNManipulableItem *)self node] clone];
  [(SCNNode *)v3 opacity];
  [(SCNNode *)v3 setOpacity:v4 * 0.5];
  [(SCNNode *)v3 setGizmo:1];
  memset(&v8, 0, sizeof(v8));
  v5 = [(SCNManipulableItem *)self node];
  if (v5)
  {
    v7 = SCNMatrix4Identity;
    [(SCNNode *)v5 convertTransform:&v7 toNode:0];
  }

  else
  {
    memset(&v8, 0, sizeof(v8));
  }

  v7 = v8;
  [(SCNNode *)v3 setTransform:&v7];
  [(SCNManipulableItem *)self screenSize];
  return [SCNNodeManipulableItem nodeManipulatorItemWithNode:v3 screenSize:?];
}

+ (void)addItems:(id)a3 toScene:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(a3);
        }

        [objc_msgSend(a4 "rootNode")];
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

+ (void)removeItemsFromScene:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [a3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(a3);
        }

        [objc_msgSend(*(*(&v8 + 1) + 8 * v7++) "node")];
      }

      while (v5 != v7);
      v5 = [a3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)validateClone
{
  [(SCNNode *)[(SCNManipulableItem *)self node] setGizmo:0];
  v3 = [(SCNManipulableItem *)self node];
  [(SCNNode *)v3 opacity];
  v5 = v4 + v4;

  [(SCNNode *)v3 setOpacity:v5];
}

@end