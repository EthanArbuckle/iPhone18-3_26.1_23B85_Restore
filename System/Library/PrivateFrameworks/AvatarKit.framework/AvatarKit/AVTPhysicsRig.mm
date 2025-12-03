@interface AVTPhysicsRig
- (__n128)setConeConstraintAnchorB:(__n128)b;
- (__n128)setConeConstraintBasis_chainParent:(__n128)parent;
- (__n128)setRestGravityVector_chainRoot:(__n128 *)result;
- (__n128)setRestPosition_chainRoot:(__n128 *)result;
- (double)coneConstraintAnchorB;
- (double)coneConstraintBasis_chainParent;
- (double)coneConstraintLength;
- (double)coneConstraintSinusAngularLimit;
- (double)downForceFactor;
- (double)restGravityVector_chainRoot;
- (double)restPosition_chainRoot;
- (uint64_t)chainRoot;
- (uint64_t)physicsBehavior;
- (uint64_t)physicsBody;
- (uint64_t)rig;
- (uint64_t)setConeConstraintLength:(uint64_t)result;
- (uint64_t)setConeConstraintSinusAngularLimit:(uint64_t)result;
- (uint64_t)setDownForceFactor:(uint64_t)result;
- (void)setChainRoot:(uint64_t)root;
- (void)setPhysicsBehavior:(uint64_t)behavior;
- (void)setPhysicsBody:(uint64_t)body;
- (void)setRig:(uint64_t)rig;
@end

@implementation AVTPhysicsRig

- (uint64_t)rig
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (void)setRig:(uint64_t)rig
{
  if (rig)
  {
    objc_storeStrong((rig + 16), a2);
  }
}

- (uint64_t)chainRoot
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (void)setChainRoot:(uint64_t)root
{
  if (root)
  {
    objc_storeStrong((root + 24), a2);
  }
}

- (uint64_t)physicsBody
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (void)setPhysicsBody:(uint64_t)body
{
  if (body)
  {
    objc_storeStrong((body + 32), a2);
  }
}

- (uint64_t)physicsBehavior
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (void)setPhysicsBehavior:(uint64_t)behavior
{
  if (behavior)
  {
    objc_storeStrong((behavior + 40), a2);
  }
}

- (double)restPosition_chainRoot
{
  if (self)
  {
    v1 = *(self + 64);
  }

  else
  {
    *&v1 = 0;
  }

  return *&v1;
}

- (__n128)setRestPosition_chainRoot:(__n128 *)result
{
  if (result)
  {
    result[4] = a2;
  }

  return result;
}

- (double)restGravityVector_chainRoot
{
  if (self)
  {
    v1 = *(self + 80);
  }

  else
  {
    *&v1 = 0;
  }

  return *&v1;
}

- (__n128)setRestGravityVector_chainRoot:(__n128 *)result
{
  if (result)
  {
    result[5] = a2;
  }

  return result;
}

- (double)downForceFactor
{
  if (self)
  {
    return *(self + 48);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)setDownForceFactor:(uint64_t)result
{
  if (result)
  {
    *(result + 48) = a2;
  }

  return result;
}

- (double)coneConstraintLength
{
  if (!self)
  {
    return 0.0;
  }

  LODWORD(result) = *(self + 8);
  return result;
}

- (uint64_t)setConeConstraintLength:(uint64_t)result
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

- (double)coneConstraintSinusAngularLimit
{
  if (!self)
  {
    return 0.0;
  }

  LODWORD(result) = *(self + 12);
  return result;
}

- (uint64_t)setConeConstraintSinusAngularLimit:(uint64_t)result
{
  if (result)
  {
    *(result + 12) = a2;
  }

  return result;
}

- (double)coneConstraintBasis_chainParent
{
  if (self)
  {
    v1 = self[6];
    v2 = self[7];
    v3 = self[8];
  }

  else
  {
    *&v1 = 0;
  }

  return *&v1;
}

- (__n128)setConeConstraintBasis_chainParent:(__n128)parent
{
  if (result)
  {
    result[6] = a2;
    result[7] = parent;
    result[8] = a4;
  }

  return result;
}

- (double)coneConstraintAnchorB
{
  if (self)
  {
    v1 = self[9];
    v2 = self[10];
    v3 = self[11];
    v4 = self[12];
  }

  else
  {
    *&v1 = 0;
  }

  return *&v1;
}

- (__n128)setConeConstraintAnchorB:(__n128)b
{
  if (result)
  {
    result[9] = a2;
    result[10] = b;
    result[11] = a4;
    result[12] = a5;
  }

  return result;
}

@end