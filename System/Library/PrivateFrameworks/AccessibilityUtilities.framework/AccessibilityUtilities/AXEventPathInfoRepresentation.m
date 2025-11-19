@interface AXEventPathInfoRepresentation
+ (id)representationWithPathInfo:(id *)a3;
- (AXEventPathInfoRepresentation)initWithCoder:(id)a3;
- (CGPoint)pathLocation;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)writeToPathInfo:(id *)a3;
@end

@implementation AXEventPathInfoRepresentation

+ (id)representationWithPathInfo:(id *)a3
{
  v4 = objc_alloc_init(AXEventPathInfoRepresentation);
  [(AXEventPathInfoRepresentation *)v4 setPathIndex:a3->var0];
  [(AXEventPathInfoRepresentation *)v4 setPathIdentity:a3->var1];
  [(AXEventPathInfoRepresentation *)v4 setPathProximity:a3->var2];
  *&v5 = a3->var3;
  [(AXEventPathInfoRepresentation *)v4 setPathPressure:v5];
  *&v6 = a3->var4;
  [(AXEventPathInfoRepresentation *)v4 setPathMajorRadius:v6];
  [(AXEventPathInfoRepresentation *)v4 setPathLocation:a3->var5.x, a3->var5.y];
  [(AXEventPathInfoRepresentation *)v4 setPathWindowContextID:a3->var6];
  [(AXEventPathInfoRepresentation *)v4 setPathWindow:a3->var7];

  return v4;
}

- (void)writeToPathInfo:(id *)a3
{
  a3->var0 = [(AXEventPathInfoRepresentation *)self pathIndex];
  a3->var1 = [(AXEventPathInfoRepresentation *)self pathIdentity];
  a3->var2 = [(AXEventPathInfoRepresentation *)self pathProximity];
  [(AXEventPathInfoRepresentation *)self pathPressure];
  a3->var3 = v5;
  [(AXEventPathInfoRepresentation *)self pathMajorRadius];
  a3->var4 = v6;
  [(AXEventPathInfoRepresentation *)self pathLocation];
  a3->var5.x = v7;
  a3->var5.y = v8;
  a3->var6 = [(AXEventPathInfoRepresentation *)self pathWindowContextID];
  a3->var7 = [(AXEventPathInfoRepresentation *)self pathWindow];
}

- (id)copyWithZone:(_NSZone *)a3
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

- (AXEventPathInfoRepresentation)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = AXEventPathInfoRepresentation;
  v5 = [(AXEventPathInfoRepresentation *)&v23 init];
  if (v5)
  {
    v5->_pathIndex = [v4 decodeInt32ForKey:@"pathIndex"];
    v5->_pathIdentity = [v4 decodeInt32ForKey:@"pathIdentity"];
    v5->_pathProximity = [v4 decodeInt32ForKey:@"pathProximity"];
    [v4 decodeFloatForKey:@"pathPressure"];
    v5->_pathPressure = v6;
    [v4 decodeFloatForKey:@"pathMajorRadius"];
    v5->_pathMajorRadius = v7;
    [v4 decodeFloatForKey:@"pathMajorRadiusTolerance"];
    v5->_pathMajorRadiusTolerance = v8;
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pathLocation"];
    v10 = [v9 objCType];
    if (v10 && !strcmp(v10, "{CGPoint=dd}"))
    {
      [v9 getValue:&v5->_pathLocation size:16];
    }

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pathZValue"];
    v12 = [v11 objCType];
    if (v12 && *v12 == 100 && !v12[1])
    {
      [v11 getValue:&v5->_pathZValue size:8];
    }

    v5->_pathWindowContextID = [v4 decodeInt32ForKey:@"pathWindowContextID"];
    v5->_pathWindow = [v4 decodeInt64ForKey:@"pathWindow"];
    [v4 decodeFloatForKey:@"pathTwist"];
    v5->_pathTwist = v13;
    [v4 decodeFloatForKey:@"pathMinorRadius"];
    v5->_pathMinorRadius = v14;
    [v4 decodeFloatForKey:@"pathQuality"];
    v5->_pathQuality = v15;
    [v4 decodeFloatForKey:@"pathDensity"];
    v5->_pathDensity = v16;
    v5->_pathEventMask = [v4 decodeInt32ForKey:@"pathEventMask"];
    [v4 decodeFloatForKey:@"orbValue"];
    v5->_orbValue = v17;
    v5->_transducerType = [v4 decodeIntegerForKey:@"transducerType"];
    [v4 decodeFloatForKey:@"altitude"];
    v5->_altitude = v18;
    [v4 decodeFloatForKey:@"azimuth"];
    v5->_azimuth = v19;
    [v4 decodeFloatForKey:@"roll"];
    v5->_roll = v20;
    [v4 decodeFloatForKey:@"barrelPressure"];
    v5->_barrelPressure = v21;
    v5->_willUpdateMask = [v4 decodeInt32ForKey:@"willUpdateMask"];
    v5->_didUpdateMask = [v4 decodeInt32ForKey:@"didUpdateMask"];
    v5->_phaseBits = [v4 decodeInt32ForKey:@"phaseBits"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  pathIndex = self->_pathIndex;
  v19 = a3;
  [v19 encodeInt32:pathIndex forKey:@"pathIndex"];
  [v19 encodeInt32:self->_pathIdentity forKey:@"pathIdentity"];
  [v19 encodeInt32:self->_pathProximity forKey:@"pathProximity"];
  *&v5 = self->_pathPressure;
  [v19 encodeFloat:@"pathPressure" forKey:v5];
  *&v6 = self->_pathMajorRadius;
  [v19 encodeFloat:@"pathMajorRadius" forKey:v6];
  *&v7 = self->_pathMajorRadiusTolerance;
  [v19 encodeFloat:@"pathMajorRadiusTolerance" forKey:v7];
  v8 = [MEMORY[0x1E696B098] valueWithBytes:&self->_pathLocation objCType:"{CGPoint=dd}"];
  [v19 encodeObject:v8 forKey:@"pathLocation"];

  v9 = [MEMORY[0x1E696B098] valueWithBytes:&self->_pathZValue objCType:"d"];
  [v19 encodeObject:v9 forKey:@"pathZValue"];

  [v19 encodeInt32:self->_pathWindowContextID forKey:@"pathWindowContextID"];
  [v19 encodeInt64:self->_pathWindow forKey:@"pathWindow"];
  *&v10 = self->_pathTwist;
  [v19 encodeFloat:@"pathTwist" forKey:v10];
  *&v11 = self->_pathMinorRadius;
  [v19 encodeFloat:@"pathMinorRadius" forKey:v11];
  *&v12 = self->_pathQuality;
  [v19 encodeFloat:@"pathQuality" forKey:v12];
  *&v13 = self->_pathDensity;
  [v19 encodeFloat:@"pathDensity" forKey:v13];
  [v19 encodeInt32:self->_pathEventMask forKey:@"pathEventMask"];
  *&v14 = self->_orbValue;
  [v19 encodeFloat:@"orbValue" forKey:v14];
  [v19 encodeInteger:self->_transducerType forKey:@"transducerType"];
  *&v15 = self->_altitude;
  [v19 encodeFloat:@"altitude" forKey:v15];
  *&v16 = self->_azimuth;
  [v19 encodeFloat:@"azimuth" forKey:v16];
  *&v17 = self->_barrelPressure;
  [v19 encodeFloat:@"barrelPressure" forKey:v17];
  *&v18 = self->_roll;
  [v19 encodeFloat:@"roll" forKey:v18];
  [v19 encodeInt32:self->_willUpdateMask forKey:@"willUpdateMask"];
  [v19 encodeInt32:self->_didUpdateMask forKey:@"didUpdateMask"];
  [v19 encodeInt32:self->_phaseBits forKey:@"phaseBits"];
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