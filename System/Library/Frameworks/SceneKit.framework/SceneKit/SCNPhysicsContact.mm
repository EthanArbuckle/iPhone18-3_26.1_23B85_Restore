@interface SCNPhysicsContact
+ (id)_contactWithManifold:(const btPersistentManifold *)manifold index:(int64_t)index;
- (BOOL)_shouldPostUpdate;
- (SCNVector3)contactNormal;
- (SCNVector3)contactPoint;
- (id)description;
- (void)_fillNodeA:(id)a nodeB:(id)b;
- (void)_fillNodeA:(id)a nodeB:(id)b contactPoint:(SCNVector3)point collisionImpulse:(SCNVector3)impulse distance:(double)distance hitFraction:(double)fraction;
- (void)_updateWithManifold:(const btPersistentManifold *)manifold index:(int64_t)index point:(const btManifoldPoint *)point;
- (void)dealloc;
@end

@implementation SCNPhysicsContact

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNPhysicsContact;
  [(SCNPhysicsContact *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = [v3 stringWithFormat:@"<%@: %p", NSStringFromClass(v4), self];
  [v5 appendFormat:@" '%@'", self->_nodeA];
  [v5 appendFormat:@" '%@'", self->_nodeB];
  [v5 appendFormat:@" point(%f %f %f)", self->_contactPoint.x, self->_contactPoint.y, self->_contactPoint.z];
  [v5 appendFormat:@" normal(%f %f %f)", self->_contactNormal.x, self->_contactNormal.y, self->_contactNormal.z];
  [v5 appendFormat:@" impulse(%f)", *&self->_collisionImpulse];
  [v5 appendFormat:@" distance:%f", *&self->_distance];
  [v5 appendString:@">"];
  return v5;
}

- (void)_fillNodeA:(id)a nodeB:(id)b contactPoint:(SCNVector3)point collisionImpulse:(SCNVector3)impulse distance:(double)distance hitFraction:(double)fraction
{
  z = impulse.z;
  y = impulse.y;
  x = impulse.x;
  v13 = point.z;
  v14 = point.y;
  v15 = point.x;
  nodeA = self->_nodeA;
  if (nodeA != a)
  {
    if (nodeA)
    {
      CFRelease(nodeA);
      self->_nodeA = 0;
    }

    if (a)
    {
      v20 = CFRetain(a);
    }

    else
    {
      v20 = 0;
    }

    self->_nodeA = v20;
  }

  nodeB = self->_nodeB;
  if (nodeB != b)
  {
    if (nodeB)
    {
      CFRelease(nodeB);
      self->_nodeB = 0;
    }

    if (b)
    {
      v22 = CFRetain(b);
    }

    else
    {
      v22 = 0;
    }

    self->_nodeB = v22;
  }

  self->_contactPoint.x = v15;
  self->_contactPoint.y = v14;
  self->_contactPoint.z = v13;
  self->_contactNormal.x = x;
  self->_contactNormal.y = y;
  self->_contactNormal.z = z;
  self->_collisionImpulse = 0.0;
  self->_distance = distance;
  self->_fraction = fraction;
}

- (void)_fillNodeA:(id)a nodeB:(id)b
{
  nodeA = self->_nodeA;
  if (nodeA != a)
  {
    if (nodeA)
    {
      CFRelease(nodeA);
      self->_nodeA = 0;
    }

    if (a)
    {
      v8 = CFRetain(a);
    }

    else
    {
      v8 = 0;
    }

    self->_nodeA = v8;
  }

  nodeB = self->_nodeB;
  if (nodeB != b)
  {
    if (nodeB)
    {
      CFRelease(nodeB);
      self->_nodeB = 0;
    }

    if (b)
    {
      v10 = CFRetain(b);
    }

    else
    {
      v10 = 0;
    }

    self->_nodeB = v10;
  }
}

- (void)_updateWithManifold:(const btPersistentManifold *)manifold index:(int64_t)index point:(const btManifoldPoint *)point
{
  var3 = manifold->var3;
  if (var3 && (*(var3 + 264) & 2) != 0 && (v9 = *(var3 + 67)) != 0)
  {
    ObjCWrapper = C3DEntityGetObjCWrapper(*(v9 + 72));
  }

  else
  {
    ObjCWrapper = 0;
  }

  v11 = *&manifold->var4;
  if (v11 && (*(v11 + 264) & 2) != 0 && (v12 = *(v11 + 536)) != 0)
  {
    v13 = C3DEntityGetObjCWrapper(*(v12 + 72));
  }

  else
  {
    v13 = 0;
  }

  nodeA = self->_nodeA;
  if (nodeA != ObjCWrapper)
  {
    if (nodeA)
    {
      CFRelease(nodeA);
      self->_nodeA = 0;
    }

    if (ObjCWrapper)
    {
      v15 = CFRetain(ObjCWrapper);
    }

    else
    {
      v15 = 0;
    }

    self->_nodeA = v15;
  }

  nodeB = self->_nodeB;
  if (nodeB != v13)
  {
    if (nodeB)
    {
      CFRelease(nodeB);
      self->_nodeB = 0;
    }

    if (v13)
    {
      v17 = CFRetain(v13);
    }

    else
    {
      v17 = 0;
    }

    self->_nodeB = v17;
  }

  v18 = point->var2.var0.var0[2];
  *&self->_contactPoint.x = *point->var2.var0.var0;
  self->_contactPoint.z = v18;
  v19 = point->var4.var0.var0[2];
  *&self->_contactNormal.x = *point->var4.var0.var0;
  self->_contactNormal.z = v19;
  v20 = -point->var5;
  self->_collisionImpulse = point->var15;
  self->_distance = v20;
}

+ (id)_contactWithManifold:(const btPersistentManifold *)manifold index:(int64_t)index
{
  v4 = *&manifold->var1[index].var14;
  [v4 _updateWithManifold:? index:? point:?];
  return v4;
}

- (SCNVector3)contactPoint
{
  x = self->_contactPoint.x;
  y = self->_contactPoint.y;
  z = self->_contactPoint.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (SCNVector3)contactNormal
{
  x = self->_contactNormal.x;
  y = self->_contactNormal.y;
  z = self->_contactNormal.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (BOOL)_shouldPostUpdate
{
  v2 = self->_updateCount - 1;
  self->_updateCount = v2;
  return v2 == 0;
}

@end