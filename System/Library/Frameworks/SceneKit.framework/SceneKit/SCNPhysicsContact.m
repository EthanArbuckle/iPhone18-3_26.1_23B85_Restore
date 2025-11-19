@interface SCNPhysicsContact
+ (id)_contactWithManifold:(const btPersistentManifold *)a3 index:(int64_t)a4;
- (BOOL)_shouldPostUpdate;
- (SCNVector3)contactNormal;
- (SCNVector3)contactPoint;
- (id)description;
- (void)_fillNodeA:(id)a3 nodeB:(id)a4;
- (void)_fillNodeA:(id)a3 nodeB:(id)a4 contactPoint:(SCNVector3)a5 collisionImpulse:(SCNVector3)a6 distance:(double)a7 hitFraction:(double)a8;
- (void)_updateWithManifold:(const btPersistentManifold *)a3 index:(int64_t)a4 point:(const btManifoldPoint *)a5;
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

- (void)_fillNodeA:(id)a3 nodeB:(id)a4 contactPoint:(SCNVector3)a5 collisionImpulse:(SCNVector3)a6 distance:(double)a7 hitFraction:(double)a8
{
  z = a6.z;
  y = a6.y;
  x = a6.x;
  v13 = a5.z;
  v14 = a5.y;
  v15 = a5.x;
  nodeA = self->_nodeA;
  if (nodeA != a3)
  {
    if (nodeA)
    {
      CFRelease(nodeA);
      self->_nodeA = 0;
    }

    if (a3)
    {
      v20 = CFRetain(a3);
    }

    else
    {
      v20 = 0;
    }

    self->_nodeA = v20;
  }

  nodeB = self->_nodeB;
  if (nodeB != a4)
  {
    if (nodeB)
    {
      CFRelease(nodeB);
      self->_nodeB = 0;
    }

    if (a4)
    {
      v22 = CFRetain(a4);
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
  self->_distance = a7;
  self->_fraction = a8;
}

- (void)_fillNodeA:(id)a3 nodeB:(id)a4
{
  nodeA = self->_nodeA;
  if (nodeA != a3)
  {
    if (nodeA)
    {
      CFRelease(nodeA);
      self->_nodeA = 0;
    }

    if (a3)
    {
      v8 = CFRetain(a3);
    }

    else
    {
      v8 = 0;
    }

    self->_nodeA = v8;
  }

  nodeB = self->_nodeB;
  if (nodeB != a4)
  {
    if (nodeB)
    {
      CFRelease(nodeB);
      self->_nodeB = 0;
    }

    if (a4)
    {
      v10 = CFRetain(a4);
    }

    else
    {
      v10 = 0;
    }

    self->_nodeB = v10;
  }
}

- (void)_updateWithManifold:(const btPersistentManifold *)a3 index:(int64_t)a4 point:(const btManifoldPoint *)a5
{
  var3 = a3->var3;
  if (var3 && (*(var3 + 264) & 2) != 0 && (v9 = *(var3 + 67)) != 0)
  {
    ObjCWrapper = C3DEntityGetObjCWrapper(*(v9 + 72));
  }

  else
  {
    ObjCWrapper = 0;
  }

  v11 = *&a3->var4;
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

  v18 = a5->var2.var0.var0[2];
  *&self->_contactPoint.x = *a5->var2.var0.var0;
  self->_contactPoint.z = v18;
  v19 = a5->var4.var0.var0[2];
  *&self->_contactNormal.x = *a5->var4.var0.var0;
  self->_contactNormal.z = v19;
  v20 = -a5->var5;
  self->_collisionImpulse = a5->var15;
  self->_distance = v20;
}

+ (id)_contactWithManifold:(const btPersistentManifold *)a3 index:(int64_t)a4
{
  v4 = *&a3->var1[a4].var14;
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