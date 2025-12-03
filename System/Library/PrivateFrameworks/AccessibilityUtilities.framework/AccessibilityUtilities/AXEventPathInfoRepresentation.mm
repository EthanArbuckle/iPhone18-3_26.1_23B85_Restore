@interface AXEventPathInfoRepresentation
+ (id)representationWithPathInfo:(id *)info;
- (AXEventPathInfoRepresentation)initWithCoder:(id)coder;
- (CGPoint)pathLocation;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)writeToPathInfo:(id *)info;
@end

@implementation AXEventPathInfoRepresentation

+ (id)representationWithPathInfo:(id *)info
{
  v4 = objc_alloc_init(AXEventPathInfoRepresentation);
  [(AXEventPathInfoRepresentation *)v4 setPathIndex:info->var0];
  [(AXEventPathInfoRepresentation *)v4 setPathIdentity:info->var1];
  [(AXEventPathInfoRepresentation *)v4 setPathProximity:info->var2];
  *&v5 = info->var3;
  [(AXEventPathInfoRepresentation *)v4 setPathPressure:v5];
  *&v6 = info->var4;
  [(AXEventPathInfoRepresentation *)v4 setPathMajorRadius:v6];
  [(AXEventPathInfoRepresentation *)v4 setPathLocation:info->var5.x, info->var5.y];
  [(AXEventPathInfoRepresentation *)v4 setPathWindowContextID:info->var6];
  [(AXEventPathInfoRepresentation *)v4 setPathWindow:info->var7];

  return v4;
}

- (void)writeToPathInfo:(id *)info
{
  info->var0 = [(AXEventPathInfoRepresentation *)self pathIndex];
  info->var1 = [(AXEventPathInfoRepresentation *)self pathIdentity];
  info->var2 = [(AXEventPathInfoRepresentation *)self pathProximity];
  [(AXEventPathInfoRepresentation *)self pathPressure];
  info->var3 = v5;
  [(AXEventPathInfoRepresentation *)self pathMajorRadius];
  info->var4 = v6;
  [(AXEventPathInfoRepresentation *)self pathLocation];
  info->var5.x = v7;
  info->var5.y = v8;
  info->var6 = [(AXEventPathInfoRepresentation *)self pathWindowContextID];
  info->var7 = [(AXEventPathInfoRepresentation *)self pathWindow];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(AXEventPathInfoRepresentation);
  [(AXEventPathInfoRepresentation *)v4 setPathIdentity:[(AXEventPathInfoRepresentation *)self pathIdentity]];
  [(AXEventPathInfoRepresentation *)v4 setPathIndex:[(AXEventPathInfoRepresentation *)self pathIndex]];
  [(AXEventPathInfoRepresentation *)v4 setPathProximity:[(AXEventPathInfoRepresentation *)self pathProximity]];
  [(AXEventPathInfoRepresentation *)self pathPressure];
  [(AXEventPathInfoRepresentation *)v4 setPathPressure:?];
  [(AXEventPathInfoRepresentation *)self pathMajorRadius];
  [(AXEventPathInfoRepresentation *)v4 setPathMajorRadius:?];
  [(AXEventPathInfoRepresentation *)self pathMajorRadiusTolerance];
  [(AXEventPathInfoRepresentation *)v4 setPathMajorRadiusTolerance:?];
  [(AXEventPathInfoRepresentation *)self pathLocation];
  [(AXEventPathInfoRepresentation *)v4 setPathLocation:?];
  [(AXEventPathInfoRepresentation *)self pathZValue];
  [(AXEventPathInfoRepresentation *)v4 setPathZValue:?];
  [(AXEventPathInfoRepresentation *)v4 setPathWindow:[(AXEventPathInfoRepresentation *)self pathWindow]];
  [(AXEventPathInfoRepresentation *)v4 setPathWindowContextID:[(AXEventPathInfoRepresentation *)self pathWindowContextID]];
  [(AXEventPathInfoRepresentation *)self pathTwist];
  [(AXEventPathInfoRepresentation *)v4 setPathTwist:?];
  [(AXEventPathInfoRepresentation *)self pathMinorRadius];
  [(AXEventPathInfoRepresentation *)v4 setPathMinorRadius:?];
  [(AXEventPathInfoRepresentation *)self pathQuality];
  [(AXEventPathInfoRepresentation *)v4 setPathQuality:?];
  [(AXEventPathInfoRepresentation *)self pathDensity];
  [(AXEventPathInfoRepresentation *)v4 setPathDensity:?];
  [(AXEventPathInfoRepresentation *)v4 setPathEventMask:[(AXEventPathInfoRepresentation *)self pathEventMask]];
  [(AXEventPathInfoRepresentation *)self orbValue];
  [(AXEventPathInfoRepresentation *)v4 setOrbValue:?];
  [(AXEventPathInfoRepresentation *)v4 setTransducerType:[(AXEventPathInfoRepresentation *)self transducerType]];
  [(AXEventPathInfoRepresentation *)self altitude];
  [(AXEventPathInfoRepresentation *)v4 setAltitude:?];
  [(AXEventPathInfoRepresentation *)self azimuth];
  [(AXEventPathInfoRepresentation *)v4 setAzimuth:?];
  [(AXEventPathInfoRepresentation *)self barrelPressure];
  [(AXEventPathInfoRepresentation *)v4 setBarrelPressure:?];
  [(AXEventPathInfoRepresentation *)self roll];
  [(AXEventPathInfoRepresentation *)v4 setRoll:?];
  [(AXEventPathInfoRepresentation *)v4 setWillUpdateMask:[(AXEventPathInfoRepresentation *)self willUpdateMask]];
  [(AXEventPathInfoRepresentation *)v4 setDidUpdateMask:[(AXEventPathInfoRepresentation *)self didUpdateMask]];
  [(AXEventPathInfoRepresentation *)v4 setPhaseBits:[(AXEventPathInfoRepresentation *)self phaseBits]];
  return v4;
}

- (AXEventPathInfoRepresentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = AXEventPathInfoRepresentation;
  v5 = [(AXEventPathInfoRepresentation *)&v23 init];
  if (v5)
  {
    v5->_pathIndex = [coderCopy decodeInt32ForKey:@"pathIndex"];
    v5->_pathIdentity = [coderCopy decodeInt32ForKey:@"pathIdentity"];
    v5->_pathProximity = [coderCopy decodeInt32ForKey:@"pathProximity"];
    [coderCopy decodeFloatForKey:@"pathPressure"];
    v5->_pathPressure = v6;
    [coderCopy decodeFloatForKey:@"pathMajorRadius"];
    v5->_pathMajorRadius = v7;
    [coderCopy decodeFloatForKey:@"pathMajorRadiusTolerance"];
    v5->_pathMajorRadiusTolerance = v8;
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pathLocation"];
    objCType = [v9 objCType];
    if (objCType && !strcmp(objCType, "{CGPoint=dd}"))
    {
      [v9 getValue:&v5->_pathLocation size:16];
    }

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pathZValue"];
    objCType2 = [v11 objCType];
    if (objCType2 && *objCType2 == 100 && !objCType2[1])
    {
      [v11 getValue:&v5->_pathZValue size:8];
    }

    v5->_pathWindowContextID = [coderCopy decodeInt32ForKey:@"pathWindowContextID"];
    v5->_pathWindow = [coderCopy decodeInt64ForKey:@"pathWindow"];
    [coderCopy decodeFloatForKey:@"pathTwist"];
    v5->_pathTwist = v13;
    [coderCopy decodeFloatForKey:@"pathMinorRadius"];
    v5->_pathMinorRadius = v14;
    [coderCopy decodeFloatForKey:@"pathQuality"];
    v5->_pathQuality = v15;
    [coderCopy decodeFloatForKey:@"pathDensity"];
    v5->_pathDensity = v16;
    v5->_pathEventMask = [coderCopy decodeInt32ForKey:@"pathEventMask"];
    [coderCopy decodeFloatForKey:@"orbValue"];
    v5->_orbValue = v17;
    v5->_transducerType = [coderCopy decodeIntegerForKey:@"transducerType"];
    [coderCopy decodeFloatForKey:@"altitude"];
    v5->_altitude = v18;
    [coderCopy decodeFloatForKey:@"azimuth"];
    v5->_azimuth = v19;
    [coderCopy decodeFloatForKey:@"roll"];
    v5->_roll = v20;
    [coderCopy decodeFloatForKey:@"barrelPressure"];
    v5->_barrelPressure = v21;
    v5->_willUpdateMask = [coderCopy decodeInt32ForKey:@"willUpdateMask"];
    v5->_didUpdateMask = [coderCopy decodeInt32ForKey:@"didUpdateMask"];
    v5->_phaseBits = [coderCopy decodeInt32ForKey:@"phaseBits"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  pathIndex = self->_pathIndex;
  coderCopy = coder;
  [coderCopy encodeInt32:pathIndex forKey:@"pathIndex"];
  [coderCopy encodeInt32:self->_pathIdentity forKey:@"pathIdentity"];
  [coderCopy encodeInt32:self->_pathProximity forKey:@"pathProximity"];
  *&v5 = self->_pathPressure;
  [coderCopy encodeFloat:@"pathPressure" forKey:v5];
  *&v6 = self->_pathMajorRadius;
  [coderCopy encodeFloat:@"pathMajorRadius" forKey:v6];
  *&v7 = self->_pathMajorRadiusTolerance;
  [coderCopy encodeFloat:@"pathMajorRadiusTolerance" forKey:v7];
  v8 = [MEMORY[0x1E696B098] valueWithBytes:&self->_pathLocation objCType:"{CGPoint=dd}"];
  [coderCopy encodeObject:v8 forKey:@"pathLocation"];

  v9 = [MEMORY[0x1E696B098] valueWithBytes:&self->_pathZValue objCType:"d"];
  [coderCopy encodeObject:v9 forKey:@"pathZValue"];

  [coderCopy encodeInt32:self->_pathWindowContextID forKey:@"pathWindowContextID"];
  [coderCopy encodeInt64:self->_pathWindow forKey:@"pathWindow"];
  *&v10 = self->_pathTwist;
  [coderCopy encodeFloat:@"pathTwist" forKey:v10];
  *&v11 = self->_pathMinorRadius;
  [coderCopy encodeFloat:@"pathMinorRadius" forKey:v11];
  *&v12 = self->_pathQuality;
  [coderCopy encodeFloat:@"pathQuality" forKey:v12];
  *&v13 = self->_pathDensity;
  [coderCopy encodeFloat:@"pathDensity" forKey:v13];
  [coderCopy encodeInt32:self->_pathEventMask forKey:@"pathEventMask"];
  *&v14 = self->_orbValue;
  [coderCopy encodeFloat:@"orbValue" forKey:v14];
  [coderCopy encodeInteger:self->_transducerType forKey:@"transducerType"];
  *&v15 = self->_altitude;
  [coderCopy encodeFloat:@"altitude" forKey:v15];
  *&v16 = self->_azimuth;
  [coderCopy encodeFloat:@"azimuth" forKey:v16];
  *&v17 = self->_barrelPressure;
  [coderCopy encodeFloat:@"barrelPressure" forKey:v17];
  *&v18 = self->_roll;
  [coderCopy encodeFloat:@"roll" forKey:v18];
  [coderCopy encodeInt32:self->_willUpdateMask forKey:@"willUpdateMask"];
  [coderCopy encodeInt32:self->_didUpdateMask forKey:@"didUpdateMask"];
  [coderCopy encodeInt32:self->_phaseBits forKey:@"phaseBits"];
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = AXEventPathInfoRepresentation;
  v3 = [(AXEventPathInfoRepresentation *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" - pathIndex %i, pathIdentity %i, pathProximity %i, pathPressure %f, pathMajorRadius %f, pathLocation.x %f, pathLocation.y %f, pathLocation.z %f, pathWindowContextID %u, pathWindow %p", self->_pathIndex, self->_pathIdentity, self->_pathProximity, self->_pathPressure, self->_pathMajorRadius, *&self->_pathLocation.x, *&self->_pathLocation.y, *&self->_pathZValue, self->_pathWindowContextID, self->_pathWindow];

  return v4;
}

- (CGPoint)pathLocation
{
  x = self->_pathLocation.x;
  y = self->_pathLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end