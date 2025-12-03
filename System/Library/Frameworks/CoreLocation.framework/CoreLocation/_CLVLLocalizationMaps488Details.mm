@interface _CLVLLocalizationMaps488Details
- (BOOL)setFrameCount:(unint64_t)count perFrameVioStatusCodes:(const int *)codes perFrameVioPoses:(const float *)poses perFrameCalibrationMatrices:(const float *)matrices perFrameDistortion:(const float *)distortion;
- (BOOL)setInliersCount:(unint64_t)count points2D:(const float *)d points3D:(const double *)points3D inlierIndices:(const int *)indices;
- (BOOL)setSlamTracksCount:(unint64_t)count slamTracks:(const float *)tracks descriptorDimension:(unint64_t)dimension slamTrackDescriptors:(const char *)descriptors slamTrackObservations:(const signed __int16 *)observations slamTracks2D:(const float *)d slamTrackImageIndices:(const signed __int16 *)indices;
- (_CLVLLocalizationMaps488Details)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithMemberIndent:(id)indent endIndent:(id)endIndent;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)resetFrames;
- (void)resetInliers;
- (void)resetSlamTracks;
- (void)setResultPoseRotation:(const double *)rotation;
- (void)setResultPoseTranslation:(const double *)translation;
- (void)setSlamOrigin:(const double *)origin;
@end

@implementation _CLVLLocalizationMaps488Details

- (void)dealloc
{
  [(_CLVLLocalizationMaps488Details *)self resetInliers];
  [(_CLVLLocalizationMaps488Details *)self resetSlamTracks];
  [(_CLVLLocalizationMaps488Details *)self resetFrames];
  v3.receiver = self;
  v3.super_class = _CLVLLocalizationMaps488Details;
  [(_CLVLLocalizationMaps488Details *)&v3 dealloc];
}

- (void)resetInliers
{
  points2D = self->_points2D;
  if (points2D)
  {
    free(points2D);
    self->_points2D = 0;
  }

  points3D = self->_points3D;
  if (points3D)
  {
    free(points3D);
    self->_points3D = 0;
  }

  inlierIndices = self->_inlierIndices;
  if (inlierIndices)
  {
    free(inlierIndices);
    self->_inlierIndices = 0;
  }

  self->_inliersCount = 0;
}

- (void)resetSlamTracks
{
  slamTracks = self->_slamTracks;
  if (slamTracks)
  {
    free(slamTracks);
    self->_slamTracks = 0;
  }

  slamTrackDescriptors = self->_slamTrackDescriptors;
  if (slamTrackDescriptors)
  {
    free(slamTrackDescriptors);
    self->_slamTrackDescriptors = 0;
  }

  slamTrackObservations = self->_slamTrackObservations;
  if (slamTrackObservations)
  {
    free(slamTrackObservations);
    self->_slamTrackObservations = 0;
  }

  slamTracks2D = self->_slamTracks2D;
  if (slamTracks2D)
  {
    free(slamTracks2D);
    self->_slamTracks2D = 0;
  }

  slamTrackImageIndices = self->_slamTrackImageIndices;
  if (slamTrackImageIndices)
  {
    free(slamTrackImageIndices);
    self->_slamTrackImageIndices = 0;
  }

  self->_slamTracksCount = 0;
  self->_descriptorDimension = 0;
  self->_totalObservationsCount = 0;
}

- (void)resetFrames
{
  perFrameVioStatusCodes = self->_perFrameVioStatusCodes;
  if (perFrameVioStatusCodes)
  {
    free(perFrameVioStatusCodes);
    self->_perFrameVioStatusCodes = 0;
  }

  perFrameVioPoses = self->_perFrameVioPoses;
  if (perFrameVioPoses)
  {
    free(perFrameVioPoses);
    self->_perFrameVioPoses = 0;
  }

  perFrameCalibrationMatrices = self->_perFrameCalibrationMatrices;
  if (perFrameCalibrationMatrices)
  {
    free(perFrameCalibrationMatrices);
    self->_perFrameCalibrationMatrices = 0;
  }

  perFrameDistortion = self->_perFrameDistortion;
  if (perFrameDistortion)
  {
    free(perFrameDistortion);
    self->_perFrameDistortion = 0;
  }

  self->_frameCount = 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if ([v4 setInliersCount:self->_inliersCount points2D:self->_points2D points3D:self->_points3D inlierIndices:self->_inlierIndices] & 1) != 0 && (v5 = *self->_slamOrigin, v6 = *&self->_slamOrigin[2], *(v4 + 40) = *&self->_slamOrigin[4], *(v4 + 24) = v6, *(v4 + 8) = v5, (objc_msgSend(v4, "setSlamTracksCount:slamTracks:descriptorDimension:slamTrackDescriptors:slamTrackObservations:slamTracks2D:slamTrackImageIndices:", self->_slamTracksCount, self->_slamTracks, self->_descriptorDimension, self->_slamTrackDescriptors, self->_slamTrackObservations, self->_slamTracks2D, self->_slamTrackImageIndices)) && (objc_msgSend(v4, "setFrameCount:perFrameVioStatusCodes:perFrameVioPoses:perFrameCalibrationMatrices:perFrameDistortion:", self->_frameCount, self->_perFrameVioStatusCodes, self->_perFrameVioPoses, self->_perFrameCalibrationMatrices, self->_perFrameDistortion))
  {
    *(v4 + 56) = *&self->_resultPoseRotation[0][0];
    v7 = *&self->_resultPoseRotation[0][2];
    v8 = *&self->_resultPoseRotation[1][1];
    v9 = *&self->_resultPoseRotation[2][0];
    *(v4 + 120) = self->_resultPoseRotation[2][2];
    *(v4 + 104) = v9;
    *(v4 + 88) = v8;
    *(v4 + 72) = v7;
    v10 = *self->_resultPoseTranslation;
    *(v4 + 144) = self->_resultPoseTranslation[2];
    *(v4 + 128) = v10;
  }

  else
  {

    return 0;
  }

  return v4;
}

- (_CLVLLocalizationMaps488Details)initWithCoder:(id)coder
{
  v39.receiver = self;
  v39.super_class = _CLVLLocalizationMaps488Details;
  v4 = [(_CLVLLocalizationMaps488Details *)&v39 init];
  if (v4)
  {
    v37 = 0;
    v38 = 0;
    v36 = 0;
    [coder decodeBytesForKey:@"points2D" returnedLength:&v38];
    [coder decodeBytesForKey:@"points3D" returnedLength:&v37];
    [coder decodeBytesForKey:@"inlierIndices" returnedLength:&v36];
    if (v38 != 8 * (v36 >> 2))
    {
      goto LABEL_22;
    }

    if (v37 != 24 * (v36 >> 2))
    {
      goto LABEL_22;
    }

    if (([v4 setInliersCount:? points2D:? points3D:? inlierIndices:?] & 1) == 0)
    {
      goto LABEL_22;
    }

    v35 = 0;
    v5 = [coder decodeBytesForKey:@"slamOrigin" returnedLength:&v35];
    if (v35 != 48)
    {
      goto LABEL_22;
    }

    v6 = *v5;
    v7 = v5[1];
    *(v4 + 40) = v5[2];
    *(v4 + 24) = v7;
    *(v4 + 8) = v6;
    v8 = [coder decodeIntegerForKey:@"descriptorDimension"];
    v33 = 0;
    v34 = 0;
    v31 = 0;
    v32 = 0;
    v30 = 0;
    [coder decodeBytesForKey:@"slamTracks" returnedLength:&v34];
    [coder decodeBytesForKey:@"slamTrackDescriptors" returnedLength:&v33];
    v9 = [coder decodeBytesForKey:@"slamTrackObservations" returnedLength:&v32];
    [coder decodeBytesForKey:@"slamTracks2D" returnedLength:&v31];
    v10 = [coder decodeBytesForKey:@"slamTrackImageIndices" returnedLength:&v30];
    v11 = 0;
    v12 = v32 >> 1;
    if (v9 && v32 >= 2)
    {
      v11 = 0;
      v13 = v9;
      v14 = v32 >> 1;
      do
      {
        v15 = *v13++;
        v11 += v15;
        --v14;
      }

      while (v14);
    }

    if (v34 != 12 * v12)
    {
      goto LABEL_22;
    }

    if (v33 != v12 * v8)
    {
      goto LABEL_22;
    }

    if (v31 != 8 * v11)
    {
      goto LABEL_22;
    }

    if (v30 != 2 * v11)
    {
      goto LABEL_22;
    }

    if (([v4 setSlamTracksCount:v10 slamTracks:? descriptorDimension:? slamTrackDescriptors:? slamTrackObservations:? slamTracks2D:? slamTrackImageIndices:?] & 1) == 0)
    {
      goto LABEL_22;
    }

    v28 = 0;
    v29 = 0;
    v26 = 0;
    v27 = 0;
    [coder decodeBytesForKey:@"perFrameVioStatusCodes" returnedLength:&v29];
    [coder decodeBytesForKey:@"perFrameVioPoses" returnedLength:&v28];
    [coder decodeBytesForKey:@"perFrameCalibrationMatrices" returnedLength:&v27];
    [coder decodeBytesForKey:@"perFrameDistortion" returnedLength:&v26];
    v16 = v29 >> 2;
    if (v28 != 48 * (v29 >> 2))
    {
      goto LABEL_22;
    }

    if (v27 == 36 * v16 && v26 == 8 * v16 && ([v4 setFrameCount:? perFrameVioStatusCodes:? perFrameVioPoses:? perFrameCalibrationMatrices:? perFrameDistortion:?] & 1) != 0 && (v24 = 0, v25 = 0, v17 = objc_msgSend(coder, "decodeBytesForKey:returnedLength:", @"resultPoseRotation", &v25), v18 = objc_msgSend(coder, "decodeBytesForKey:returnedLength:", @"resultPoseTranslation", &v24), v25 == 72) && v24 == 24)
    {
      *(v4 + 56) = *v17;
      v19 = *(v17 + 16);
      v20 = *(v17 + 32);
      v21 = *(v17 + 48);
      *(v4 + 15) = *(v17 + 64);
      *(v4 + 104) = v21;
      *(v4 + 88) = v20;
      *(v4 + 72) = v19;
      v22 = *v18;
      *(v4 + 18) = *(v18 + 16);
      *(v4 + 8) = v22;
    }

    else
    {
LABEL_22:

      return 0;
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  inliersCount = self->_inliersCount;
  if (inliersCount)
  {
    v6 = 24 * inliersCount;
    v7 = 4 * inliersCount;
    [coder encodeBytes:self->_points2D length:8 * inliersCount forKey:@"points2D"];
    [coder encodeBytes:self->_points3D length:v6 forKey:@"points3D"];
    [coder encodeBytes:self->_inlierIndices length:v7 forKey:@"inlierIndices"];
  }

  [coder encodeBytes:self->_slamOrigin length:48 forKey:@"slamOrigin"];
  [coder encodeInteger:self->_descriptorDimension forKey:@"descriptorDimension"];
  slamTracksCount = self->_slamTracksCount;
  if (slamTracksCount)
  {
    v9 = 12 * slamTracksCount;
    v10 = self->_descriptorDimension * slamTracksCount;
    v11 = 2 * slamTracksCount;
    totalObservationsCount = self->_totalObservationsCount;
    v13 = 8 * totalObservationsCount;
    v14 = 2 * totalObservationsCount;
    [coder encodeBytes:self->_slamTracks length:v9 forKey:@"slamTracks"];
    [coder encodeBytes:self->_slamTrackDescriptors length:v10 forKey:@"slamTrackDescriptors"];
    [coder encodeBytes:self->_slamTrackObservations length:v11 forKey:@"slamTrackObservations"];
    [coder encodeBytes:self->_slamTracks2D length:v13 forKey:@"slamTracks2D"];
    [coder encodeBytes:self->_slamTrackImageIndices length:v14 forKey:@"slamTrackImageIndices"];
  }

  frameCount = self->_frameCount;
  if (frameCount)
  {
    v16 = 48 * frameCount;
    v17 = 36 * frameCount;
    v18 = 8 * frameCount;
    [coder encodeBytes:self->_perFrameVioStatusCodes length:4 * frameCount forKey:@"perFrameVioStatusCodes"];
    [coder encodeBytes:self->_perFrameVioPoses length:v16 forKey:@"perFrameVioPoses"];
    [coder encodeBytes:self->_perFrameCalibrationMatrices length:v17 forKey:@"perFrameCalibrationMatrices"];
    [coder encodeBytes:self->_perFrameDistortion length:v18 forKey:@"perFrameDistortion"];
  }

  [coder encodeBytes:self->_resultPoseRotation length:72 forKey:@"resultPoseRotation"];

  [coder encodeBytes:self->_resultPoseTranslation length:24 forKey:@"resultPoseTranslation"];
}

- (BOOL)setInliersCount:(unint64_t)count points2D:(const float *)d points3D:(const double *)points3D inlierIndices:(const int *)indices
{
  if (!count)
  {
    [(_CLVLLocalizationMaps488Details *)self resetInliers:0];
    return 1;
  }

  result = 0;
  if (d && points3D && indices)
  {
    v12 = 8 * count;
    v13 = 24 * count;
    v14 = 4 * count;
    if (self->_inliersCount == count)
    {
      points2D = self->_points2D;
    }

    else
    {
      [(_CLVLLocalizationMaps488Details *)self resetInliers];
      self->_points2D = malloc_type_malloc(v12, 0x303EF85FuLL);
      self->_points3D = malloc_type_malloc(v13, 0xD251BDE1uLL);
      v16 = malloc_type_malloc(v14, 0x2972170CuLL);
      self->_inlierIndices = v16;
      points2D = self->_points2D;
      if (!points2D || !self->_points3D || !v16)
      {
        [(_CLVLLocalizationMaps488Details *)self resetInliers];
        return 0;
      }
    }

    self->_inliersCount = count;
    memcpy(points2D, d, v12);
    memcpy(self->_points3D, points3D, v13);
    memcpy(self->_inlierIndices, indices, v14);
    return 1;
  }

  return result;
}

- (BOOL)setSlamTracksCount:(unint64_t)count slamTracks:(const float *)tracks descriptorDimension:(unint64_t)dimension slamTrackDescriptors:(const char *)descriptors slamTrackObservations:(const signed __int16 *)observations slamTracks2D:(const float *)d slamTrackImageIndices:(const signed __int16 *)indices
{
  if (count && observations)
  {
    v16 = 0;
    observationsCopy = observations;
    countCopy = count;
    do
    {
      v19 = *observationsCopy++;
      v16 += v19;
      --countCopy;
    }

    while (countCopy);
    if (!tracks)
    {
      return 0;
    }
  }

  else
  {
    if (!count)
    {
      [(_CLVLLocalizationMaps488Details *)self resetSlamTracks];
      self->_descriptorDimension = dimension;
      return 1;
    }

    v16 = 0;
    if (!tracks)
    {
      return 0;
    }
  }

  result = 0;
  if (descriptors)
  {
    v21 = 1;
  }

  else
  {
    v21 = dimension == 0;
  }

  if (v21 && observations)
  {
    if (indices)
    {
      v22 = d == 0;
    }

    else
    {
      v22 = 1;
    }

    if (v22 && v16)
    {
      return 0;
    }

    __n = dimension * count;
    size = 12 * count;
    if (self->_slamTracksCount == count)
    {
      goto LABEL_22;
    }

    slamTracks = self->_slamTracks;
    if (slamTracks)
    {
      free(slamTracks);
      self->_slamTracks = 0;
    }

    slamTrackObservations = self->_slamTrackObservations;
    if (slamTrackObservations)
    {
      free(slamTrackObservations);
      self->_slamTrackObservations = 0;
    }

    self->_slamTracks = malloc_type_malloc(size, 0x76E5DF4AuLL);
    v25 = malloc_type_malloc(2 * count, 0x73E6CB26uLL);
    self->_slamTrackObservations = v25;
    if (!self->_slamTracks || !v25)
    {
      goto LABEL_44;
    }

    if (self->_slamTracksCount == count)
    {
LABEL_22:
      if (self->_descriptorDimension == dimension)
      {
        goto LABEL_35;
      }
    }

    slamTrackDescriptors = self->_slamTrackDescriptors;
    if (slamTrackDescriptors)
    {
      free(slamTrackDescriptors);
      self->_slamTrackDescriptors = 0;
    }

    v27 = malloc_type_malloc(__n, 0x4BEC6408uLL);
    self->_slamTrackDescriptors = v27;
    if (v27)
    {
LABEL_35:
      v31 = 2 * count;
      v32 = 2 * v16;
      if (self->_totalObservationsCount == v16)
      {
        goto LABEL_42;
      }

      slamTracks2D = self->_slamTracks2D;
      if (slamTracks2D)
      {
        free(slamTracks2D);
        self->_slamTracks2D = 0;
      }

      slamTrackImageIndices = self->_slamTrackImageIndices;
      if (slamTrackImageIndices)
      {
        free(slamTrackImageIndices);
        self->_slamTrackImageIndices = 0;
      }

      self->_slamTracks2D = malloc_type_malloc(8 * v16, 0x169D026CuLL);
      v30 = malloc_type_malloc(v32, 0x4629F188uLL);
      self->_slamTrackImageIndices = v30;
      if (self->_slamTracks2D)
      {
        if (v30)
        {
LABEL_42:
          self->_slamTracksCount = count;
          self->_descriptorDimension = dimension;
          self->_totalObservationsCount = v16;
          memcpy(self->_slamTracks, tracks, size);
          memcpy(self->_slamTrackDescriptors, descriptors, __n);
          memcpy(self->_slamTrackObservations, observations, v31);
          memcpy(self->_slamTracks2D, d, 8 * v16);
          memcpy(self->_slamTrackImageIndices, indices, v32);
          return 1;
        }
      }
    }

LABEL_44:
    [(_CLVLLocalizationMaps488Details *)self resetSlamTracks];
    return 0;
  }

  return result;
}

- (BOOL)setFrameCount:(unint64_t)count perFrameVioStatusCodes:(const int *)codes perFrameVioPoses:(const float *)poses perFrameCalibrationMatrices:(const float *)matrices perFrameDistortion:(const float *)distortion
{
  if (!count)
  {
    [(_CLVLLocalizationMaps488Details *)self resetFrames:0];
    return 1;
  }

  result = 0;
  if (codes && poses && matrices && distortion)
  {
    v14 = 4 * count;
    v15 = 48 * count;
    v16 = 36 * count;
    v17 = 8 * count;
    if (self->_frameCount == count)
    {
      perFrameVioStatusCodes = self->_perFrameVioStatusCodes;
    }

    else
    {
      [(_CLVLLocalizationMaps488Details *)self resetFrames];
      self->_perFrameVioStatusCodes = malloc_type_malloc(v14, 0xEDE8546uLL);
      self->_perFrameVioPoses = malloc_type_malloc(v15, 0x66CAF0BBuLL);
      self->_perFrameCalibrationMatrices = malloc_type_malloc(v16, 0xA59785B3uLL);
      v19 = malloc_type_malloc(v17, 0x2DEFBBFDuLL);
      self->_perFrameDistortion = v19;
      perFrameVioStatusCodes = self->_perFrameVioStatusCodes;
      if (!perFrameVioStatusCodes || !self->_perFrameVioPoses || !self->_perFrameCalibrationMatrices || !v19)
      {
        [(_CLVLLocalizationMaps488Details *)self resetFrames];
        return 0;
      }
    }

    self->_frameCount = count;
    memcpy(perFrameVioStatusCodes, codes, v14);
    memcpy(self->_perFrameVioPoses, poses, v15);
    memcpy(self->_perFrameCalibrationMatrices, matrices, v16);
    memcpy(self->_perFrameDistortion, distortion, v17);
    return 1;
  }

  return result;
}

- (void)setSlamOrigin:(const double *)origin
{
  v3 = *origin;
  v4 = *(origin + 1);
  *&self->_slamOrigin[4] = *(origin + 2);
  *&self->_slamOrigin[2] = v4;
  *self->_slamOrigin = v3;
}

- (void)setResultPoseRotation:(const double *)rotation
{
  *&self->_resultPoseRotation[0][0] = *rotation;
  v3 = *(rotation + 1);
  v4 = *(rotation + 2);
  v5 = *(rotation + 3);
  self->_resultPoseRotation[2][2] = rotation[8];
  *&self->_resultPoseRotation[2][0] = v5;
  *&self->_resultPoseRotation[1][1] = v4;
  *&self->_resultPoseRotation[0][2] = v3;
}

- (void)setResultPoseTranslation:(const double *)translation
{
  v3 = *translation;
  self->_resultPoseTranslation[2] = translation[2];
  *self->_resultPoseTranslation = v3;
}

- (id)descriptionWithMemberIndent:(id)indent endIndent:(id)endIndent
{
  v48 = [indent stringByAppendingString:@"\t"];
  v57 = MEMORY[0x1E696AEC0];
  inliersCount = [(_CLVLLocalizationMaps488Details *)self inliersCount];
  points2D = [(_CLVLLocalizationMaps488Details *)self points2D];
  v54 = 2 * [(_CLVLLocalizationMaps488Details *)self inliersCount];
  points3D = [(_CLVLLocalizationMaps488Details *)self points3D];
  v52 = 3 * [(_CLVLLocalizationMaps488Details *)self inliersCount];
  inlierIndices = [(_CLVLLocalizationMaps488Details *)self inlierIndices];
  inliersCount2 = [(_CLVLLocalizationMaps488Details *)self inliersCount];
  slamOrigin = [(_CLVLLocalizationMaps488Details *)self slamOrigin];
  v47 = *[(_CLVLLocalizationMaps488Details *)self slamOrigin];
  v46 = [(_CLVLLocalizationMaps488Details *)self slamOrigin][8];
  v45 = [(_CLVLLocalizationMaps488Details *)self slamOrigin][16];
  v44 = [(_CLVLLocalizationMaps488Details *)self slamOrigin][24];
  v43 = [(_CLVLLocalizationMaps488Details *)self slamOrigin][32];
  v42 = [(_CLVLLocalizationMaps488Details *)self slamOrigin][40];
  slamTracksCount = [(_CLVLLocalizationMaps488Details *)self slamTracksCount];
  slamTracks = [(_CLVLLocalizationMaps488Details *)self slamTracks];
  v39 = 3 * [(_CLVLLocalizationMaps488Details *)self slamTracksCount];
  descriptorDimension = [(_CLVLLocalizationMaps488Details *)self descriptorDimension];
  slamTrackDescriptors = [(_CLVLLocalizationMaps488Details *)self slamTrackDescriptors];
  descriptorDimension2 = [(_CLVLLocalizationMaps488Details *)self descriptorDimension];
  v36 = [(_CLVLLocalizationMaps488Details *)self slamTracksCount]* descriptorDimension2;
  slamTrackObservations = [(_CLVLLocalizationMaps488Details *)self slamTrackObservations];
  slamTracksCount2 = [(_CLVLLocalizationMaps488Details *)self slamTracksCount];
  slamTracks2D = [(_CLVLLocalizationMaps488Details *)self slamTracks2D];
  v32 = 2 * [(_CLVLLocalizationMaps488Details *)self totalObservationsCount];
  slamTrackImageIndices = [(_CLVLLocalizationMaps488Details *)self slamTrackImageIndices];
  totalObservationsCount = [(_CLVLLocalizationMaps488Details *)self totalObservationsCount];
  frameCount = [(_CLVLLocalizationMaps488Details *)self frameCount];
  perFrameVioStatusCodes = [(_CLVLLocalizationMaps488Details *)self perFrameVioStatusCodes];
  frameCount2 = [(_CLVLLocalizationMaps488Details *)self frameCount];
  perFrameVioPoses = [(_CLVLLocalizationMaps488Details *)self perFrameVioPoses];
  v8 = 12 * [(_CLVLLocalizationMaps488Details *)self frameCount];
  perFrameCalibrationMatrices = [(_CLVLLocalizationMaps488Details *)self perFrameCalibrationMatrices];
  v10 = 9 * [(_CLVLLocalizationMaps488Details *)self frameCount];
  perFrameDistortion = [(_CLVLLocalizationMaps488Details *)self perFrameDistortion];
  v12 = 2 * [(_CLVLLocalizationMaps488Details *)self frameCount];
  resultPoseRotation = [(_CLVLLocalizationMaps488Details *)self resultPoseRotation];
  v26 = *[(_CLVLLocalizationMaps488Details *)self resultPoseRotation];
  v25 = [(_CLVLLocalizationMaps488Details *)self resultPoseRotation][8];
  v24 = [(_CLVLLocalizationMaps488Details *)self resultPoseRotation][16];
  v14 = [(_CLVLLocalizationMaps488Details *)self resultPoseRotation][24];
  v15 = [(_CLVLLocalizationMaps488Details *)self resultPoseRotation][32];
  v16 = [(_CLVLLocalizationMaps488Details *)self resultPoseRotation][40];
  v17 = [(_CLVLLocalizationMaps488Details *)self resultPoseRotation][48];
  v18 = [(_CLVLLocalizationMaps488Details *)self resultPoseRotation][56];
  v19 = [(_CLVLLocalizationMaps488Details *)self resultPoseRotation][64];
  [(_CLVLLocalizationMaps488Details *)self resultPoseTranslation];
  v20 = *[(_CLVLLocalizationMaps488Details *)self resultPoseTranslation];
  v21 = [(_CLVLLocalizationMaps488Details *)self resultPoseTranslation][8];
  v23 = [(_CLVLLocalizationMaps488Details *)self resultPoseTranslation][16];
  return [v57 stringWithFormat:@"<_CLVLLocalizationMaps488Details: %p> {\n%@.inliersCount = %zu, \n%@.points2D = <float: %p> {length = %zu}, \n%@.points3D = <double: %p> {length = %zu}, \n%@.inlierIndices = <int: %p> {length = %zu}, \n%@.slamOrigin = <double: %p> {length = 6, values = [%f, %f, %f, %f, %f, %f]}, \n%@.slamTracksCount = %zu, \n%@.slamTracks = <float: %p> {length = %zu}, \n%@.descriptorDimension = %zu, \n%@.slamTrackDescriptors = <unsigned char: %p> {length = %zu}, \n%@.slamTrackObservations = <short: %p> {length = %zu}, \n%@.slamTracks2D = <float: %p> {length = %zu}, \n%@.slamTrackImageIndices = <short: %p> {length = %zu}, \n%@.frameCount = %zu, \n%@.perFrameVioStatusCodes = <int: %p> {length = %zu}, \n%@.perFrameVioPoses = <float: %p> {length = %zu}, \n%@.perFrameCalibrationMatrices = <float: %p> {length = %zu}, \n%@.perFrameDistortion = <float: %p> {length = %zu}, \n%@.resultPoseRotation = <double: %p> {length = 9, values = [%f, %f, %f;\n%@%f, %f, %f;\n%@%f, %f, %f]}, \n%@.resultPoseTranslation = <double: %p> {length = 3, values = [%f, %f, %f]}\n%@}", self, indent, inliersCount, indent, points2D, v54, indent, points3D, v52, indent, inlierIndices, inliersCount2, indent, slamOrigin, v47, v46, v45, v44, v43, v42, indent, slamTracksCount, indent, slamTracks, v39, indent, descriptorDimension, indent, slamTrackDescriptors, v36, indent, slamTrackObservations, slamTracksCount2, indent, slamTracks2D, v32, indent, slamTrackImageIndices, totalObservationsCount, indent, frameCount, indent, perFrameVioStatusCodes, frameCount2, indent, perFrameVioPoses, v8, indent, perFrameCalibrationMatrices, v10, indent, perFrameDistortion, v12, indent, resultPoseRotation, v26, v25, v24, v48, v14];
}

@end