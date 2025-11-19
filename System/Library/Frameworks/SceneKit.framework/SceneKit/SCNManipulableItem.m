@interface SCNManipulableItem
- (BOOL)isEqual:(id)a3;
- (SCNVector3)elementPosition;
- (SCNVector3)scale;
- (unint64_t)hash;
- (void)dealloc;
- (void)setPosition:(SCNVector3)a3;
- (void)setTransform:(SCNMatrix4 *)a3;
- (void)setWorldTransform:(SCNMatrix4 *)a3;
@end

@implementation SCNManipulableItem

- (void)dealloc
{
  [(SCNManipulableItem *)self setNode:0];
  [(SCNManipulableItem *)self setComponent:0];
  v3.receiver = self;
  v3.super_class = SCNManipulableItem;
  [(SCNManipulableItem *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SCNManipulableItem *)self node];
    if (v5 == [a3 node] && (v6 = -[SCNManipulableItem elementIndex](self, "elementIndex"), v6 == objc_msgSend(a3, "elementIndex")))
    {
      v7 = [a3 component];
      return v7 == [a3 component];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SCNManipulableItem;
    return [(SCNManipulableItem *)&v9 isEqual:a3];
  }
}

- (unint64_t)hash
{
  v2 = [(SCNManipulableItem *)self node];

  return [(SCNNode *)v2 hash];
}

- (void)setTransform:(SCNMatrix4 *)a3
{
  v4 = scn_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(SCNManipulableItem *)self setTransform:v4, v5, v6, v7, v8, v9, v10];
  }
}

- (void)setWorldTransform:(SCNMatrix4 *)a3
{
  v4 = scn_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(SCNManipulableItem *)self setWorldTransform:v4, v5, v6, v7, v8, v9, v10];
  }
}

- (SCNVector3)scale
{
  v2 = 1.0;
  v3 = 1.0;
  v4 = 1.0;
  result.z = v4;
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setPosition:(SCNVector3)a3
{
  v4 = scn_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(SCNManipulableItem *)self setPosition:v4, v5, v6, v7, v8, v9, v10];
  }
}

- (SCNVector3)elementPosition
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  result.z = v4;
  result.y = v3;
  result.x = v2;
  return result;
}

@end