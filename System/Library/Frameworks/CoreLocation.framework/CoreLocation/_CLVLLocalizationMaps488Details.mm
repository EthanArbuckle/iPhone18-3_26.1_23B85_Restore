@interface _CLVLLocalizationMaps488Details
- (BOOL)setFrameCount:(unint64_t)a3 perFrameVioStatusCodes:(const int *)a4 perFrameVioPoses:(const float *)a5 perFrameCalibrationMatrices:(const float *)a6 perFrameDistortion:(const float *)a7;
- (BOOL)setInliersCount:(unint64_t)a3 points2D:(const float *)a4 points3D:(const double *)a5 inlierIndices:(const int *)a6;
- (BOOL)setSlamTracksCount:(unint64_t)a3 slamTracks:(const float *)a4 descriptorDimension:(unint64_t)a5 slamTrackDescriptors:(const char *)a6 slamTrackObservations:(const signed __int16 *)a7 slamTracks2D:(const float *)a8 slamTrackImageIndices:(const signed __int16 *)a9;
- (_CLVLLocalizationMaps488Details)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithMemberIndent:(id)a3 endIndent:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)resetFrames;
- (void)resetInliers;
- (void)resetSlamTracks;
- (void)setResultPoseRotation:(const double *)a3;
- (void)setResultPoseTranslation:(const double *)a3;
- (void)setSlamOrigin:(const double *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (_CLVLLocalizationMaps488Details)initWithCoder:(id)a3
{
  v39.receiver = self;
  v39.super_class = _CLVLLocalizationMaps488Details;
  v4 = [(_CLVLLocalizationMaps488Details *)&v39 init];
  if (v4)
  {
    v37 = 0;
    v38 = 0;
    v36 = 0;
    [a3 decodeBytesForKey:@"points2D" returnedLength:&v38];
    [a3 decodeBytesForKey:@"points3D" returnedLength:&v37];
    [a3 decodeBytesForKey:@"inlierIndices" returnedLength:&v36];
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
    v5 = [a3 decodeBytesForKey:@"slamOrigin" returnedLength:&v35];
    if (v35 != 48)
    {
      goto LABEL_22;
    }

    v6 = *v5;
    v7 = v5[1];
    *(v4 + 40) = v5[2];
    *(v4 + 24) = v7;
    *(v4 + 8) = v6;
    v8 = [a3 decodeIntegerForKey:@"descriptorDimension"];
    v33 = 0;
    v34 = 0;
    v31 = 0;
    v32 = 0;
    v30 = 0;
    [a3 decodeBytesForKey:@"slamTracks" returnedLength:&v34];
    [a3 decodeBytesForKey:@"slamTrackDescriptors" returnedLength:&v33];
    v9 = [a3 decodeBytesForKey:@"slamTrackObservations" returnedLength:&v32];
    [a3 decodeBytesForKey:@"slamTracks2D" returnedLength:&v31];
    v10 = [a3 decodeBytesForKey:@"slamTrackImageIndices" returnedLength:&v30];
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
    [a3 decodeBytesForKey:@"perFrameVioStatusCodes" returnedLength:&v29];
    [a3 decodeBytesForKey:@"perFrameVioPoses" returnedLength:&v28];
    [a3 decodeBytesForKey:@"perFrameCalibrationMatrices" returnedLength:&v27];
    [a3 decodeBytesForKey:@"perFrameDistortion" returnedLength:&v26];
    v16 = v29 >> 2;
    if (v28 != 48 * (v29 >> 2))
    {
      goto LABEL_22;
    }

    if (v27 == 36 * v16 && v26 == 8 * v16 && ([v4 setFrameCount:? perFrameVioStatusCodes:? perFrameVioPoses:? perFrameCalibrationMatrices:? perFrameDistortion:?] & 1) != 0 && (v24 = 0, v25 = 0, v17 = objc_msgSend(a3, "decodeBytesForKey:returnedLength:", @"resultPoseRotation", &v25), v18 = objc_msgSend(a3, "decodeBytesForKey:returnedLength:", @"resultPoseTranslation", &v24), v25 == 72) && v24 == 24)
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

- (void)encodeWithCoder:(id)a3
{
  inliersCount = self->_inliersCount;
  if (inliersCount)
  {
    v6 = 24 * inliersCount;
    v7 = 4 * inliersCount;
    [a3 encodeBytes:self->_points2D length:8 * inliersCount forKey:@"points2D"];
    [a3 encodeBytes:self->_points3D length:v6 forKey:@"points3D"];
    [a3 encodeBytes:self->_inlierIndices length:v7 forKey:@"inlierIndices"];
  }

  [a3 encodeBytes:self->_slamOrigin length:48 forKey:@"slamOrigin"];
  [a3 encodeInteger:self->_descriptorDimension forKey:@"descriptorDimension"];
  slamTracksCount = self->_slamTracksCount;
  if (slamTracksCount)
  {
    v9 = 12 * slamTracksCount;
    v10 = self->_descriptorDimension * slamTracksCount;
    v11 = 2 * slamTracksCount;
    totalObservationsCount = self->_totalObservationsCount;
    v13 = 8 * totalObservationsCount;
    v14 = 2 * totalObservationsCount;
    [a3 encodeBytes:self->_slamTracks length:v9 forKey:@"slamTracks"];
    [a3 encodeBytes:self->_slamTrackDescriptors length:v10 forKey:@"slamTrackDescriptors"];
    [a3 encodeBytes:self->_slamTrackObservations length:v11 forKey:@"slamTrackObservations"];
    [a3 encodeBytes:self->_slamTracks2D length:v13 forKey:@"slamTracks2D"];
    [a3 encodeBytes:self->_slamTrackImageIndices length:v14 forKey:@"slamTrackImageIndices"];
  }

  frameCount = self->_frameCount;
  if (frameCount)
  {
    v16 = 48 * frameCount;
    v17 = 36 * frameCount;
    v18 = 8 * frameCount;
    [a3 encodeBytes:self->_perFrameVioStatusCodes length:4 * frameCount forKey:@"perFrameVioStatusCodes"];
    [a3 encodeBytes:self->_perFrameVioPoses length:v16 forKey:@"perFrameVioPoses"];
    [a3 encodeBytes:self->_perFrameCalibrationMatrices length:v17 forKey:@"perFrameCalibrationMatrices"];
    [a3 encodeBytes:self->_perFrameDistortion length:v18 forKey:@"perFrameDistortion"];
  }

  [a3 encodeBytes:self->_resultPoseRotation length:72 forKey:@"resultPoseRotation"];

  [a3 encodeBytes:self->_resultPoseTranslation length:24 forKey:@"resultPoseTranslation"];
}

- (BOOL)setInliersCount:(unint64_t)a3 points2D:(const float *)a4 points3D:(const double *)a5 inlierIndices:(const int *)a6
{
  if (!a3)
  {
    [(_CLVLLocalizationMaps488Details *)self resetInliers:0];
    return 1;
  }

  result = 0;
  if (a4 && a5 && a6)
  {
    v12 = 8 * a3;
    v13 = 24 * a3;
    v14 = 4 * a3;
    if (self->_inliersCount == a3)
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

    self->_inliersCount = a3;
    memcpy(points2D, a4, v12);
    memcpy(self->_points3D, a5, v13);
    memcpy(self->_inlierIndices, a6, v14);
    return 1;
  }

  return result;
}

- (BOOL)setSlamTracksCount:(unint64_t)a3 slamTracks:(const float *)a4 descriptorDimension:(unint64_t)a5 slamTrackDescriptors:(const char *)a6 slamTrackObservations:(const signed __int16 *)a7 slamTracks2D:(const float *)a8 slamTrackImageIndices:(const signed __int16 *)a9
{
  if (a3 && a7)
  {
    v16 = 0;
    v17 = a7;
    v18 = a3;
    do
    {
      v19 = *v17++;
      v16 += v19;
      --v18;
    }

    while (v18);
    if (!a4)
    {
      return 0;
    }
  }

  else
  {
    if (!a3)
    {
      [(_CLVLLocalizationMaps488Details *)self resetSlamTracks];
      self->_descriptorDimension = a5;
      return 1;
    }

    v16 = 0;
    if (!a4)
    {
      return 0;
    }
  }

  result = 0;
  if (a6)
  {
    v21 = 1;
  }

  else
  {
    v21 = a5 == 0;
  }

  if (v21 && a7)
  {
    if (a9)
    {
      v22 = a8 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (v22 && v16)
    {
      return 0;
    }

    __n = a5 * a3;
    size = 12 * a3;
    if (self->_slamTracksCount == a3)
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
    v25 = malloc_type_malloc(2 * a3, 0x73E6CB26uLL);
    self->_slamTrackObservations = v25;
    if (!self->_slamTracks || !v25)
    {
      goto LABEL_44;
    }

    if (self->_slamTracksCount == a3)
    {
LABEL_22:
      if (self->_descriptorDimension == a5)
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
      v31 = 2 * a3;
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
          self->_slamTracksCount = a3;
          self->_descriptorDimension = a5;
          self->_totalObservationsCount = v16;
          memcpy(self->_slamTracks, a4, size);
          memcpy(self->_slamTrackDescriptors, a6, __n);
          memcpy(self->_slamTrackObservations, a7, v31);
          memcpy(self->_slamTracks2D, a8, 8 * v16);
          memcpy(self->_slamTrackImageIndices, a9, v32);
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

- (BOOL)setFrameCount:(unint64_t)a3 perFrameVioStatusCodes:(const int *)a4 perFrameVioPoses:(const float *)a5 perFrameCalibrationMatrices:(const float *)a6 perFrameDistortion:(const float *)a7
{
  if (!a3)
  {
    [(_CLVLLocalizationMaps488Details *)self resetFrames:0];
    return 1;
  }

  result = 0;
  if (a4 && a5 && a6 && a7)
  {
    v14 = 4 * a3;
    v15 = 48 * a3;
    v16 = 36 * a3;
    v17 = 8 * a3;
    if (self->_frameCount == a3)
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

    self->_frameCount = a3;
    memcpy(perFrameVioStatusCodes, a4, v14);
    memcpy(self->_perFrameVioPoses, a5, v15);
    memcpy(self->_perFrameCalibrationMatrices, a6, v16);
    memcpy(self->_perFrameDistortion, a7, v17);
    return 1;
  }

  return result;
}

- (void)setSlamOrigin:(const double *)a3
{
  v3 = *a3;
  v4 = *(a3 + 1);
  *&self->_slamOrigin[4] = *(a3 + 2);
  *&self->_slamOrigin[2] = v4;
  *self->_slamOrigin = v3;
}

- (void)setResultPoseRotation:(const double *)a3
{
  *&self->_resultPoseRotation[0][0] = *a3;
  v3 = *(a3 + 1);
  v4 = *(a3 + 2);
  v5 = *(a3 + 3);
  self->_resultPoseRotation[2][2] = a3[8];
  *&self->_resultPoseRotation[2][0] = v5;
  *&self->_resultPoseRotation[1][1] = v4;
  *&self->_resultPoseRotation[0][2] = v3;
}

- (void)setResultPoseTranslation:(const double *)a3
{
  v3 = *a3;
  self->_resultPoseTranslation[2] = a3[2];
  *self->_resultPoseTranslation = v3;
}

- (id)descriptionWithMemberIndent:(id)a3 endIndent:(id)a4
{
  v48 = [a3 stringByAppendingString:@"\t"];
  v57 = MEMORY[0x1E696AEC0];
  v56 = [(_CLVLLocalizationMaps488Details *)self inliersCount];
  v55 = [(_CLVLLocalizationMaps488Details *)self points2D];
  v54 = 2 * [(_CLVLLocalizationMaps488Details *)self inliersCount];
  v53 = [(_CLVLLocalizationMaps488Details *)self points3D];
  v52 = 3 * [(_CLVLLocalizationMaps488Details *)self inliersCount];
  v51 = [(_CLVLLocalizationMaps488Details *)self inlierIndices];
  v50 = [(_CLVLLocalizationMaps488Details *)self inliersCount];
  v49 = [(_CLVLLocalizationMaps488Details *)self slamOrigin];
  v47 = *[(_CLVLLocalizationMaps488Details *)self slamOrigin];
  v46 = [(_CLVLLocalizationMaps488Details *)self slamOrigin][8];
  v45 = [(_CLVLLocalizationMaps488Details *)self slamOrigin][16];
  v44 = [(_CLVLLocalizationMaps488Details *)self slamOrigin][24];
  v43 = [(_CLVLLocalizationMaps488Details *)self slamOrigin][32];
  v42 = [(_CLVLLocalizationMaps488Details *)self slamOrigin][40];
  v41 = [(_CLVLLocalizationMaps488Details *)self slamTracksCount];
  v40 = [(_CLVLLocalizationMaps488Details *)self slamTracks];
  v39 = 3 * [(_CLVLLocalizationMaps488Details *)self slamTracksCount];
  v38 = [(_CLVLLocalizationMaps488Details *)self descriptorDimension];
  v37 = [(_CLVLLocalizationMaps488Details *)self slamTrackDescriptors];
  v6 = [(_CLVLLocalizationMaps488Details *)self descriptorDimension];
  v36 = [(_CLVLLocalizationMaps488Details *)self slamTracksCount]* v6;
  v35 = [(_CLVLLocalizationMaps488Details *)self slamTrackObservations];
  v34 = [(_CLVLLocalizationMaps488Details *)self slamTracksCount];
  v33 = [(_CLVLLocalizationMaps488Details *)self slamTracks2D];
  v32 = 2 * [(_CLVLLocalizationMaps488Details *)self totalObservationsCount];
  v31 = [(_CLVLLocalizationMaps488Details *)self slamTrackImageIndices];
  v30 = [(_CLVLLocalizationMaps488Details *)self totalObservationsCount];
  v29 = [(_CLVLLocalizationMaps488Details *)self frameCount];
  v28 = [(_CLVLLocalizationMaps488Details *)self perFrameVioStatusCodes];
  v27 = [(_CLVLLocalizationMaps488Details *)self frameCount];
  v7 = [(_CLVLLocalizationMaps488Details *)self perFrameVioPoses];
  v8 = 12 * [(_CLVLLocalizationMaps488Details *)self frameCount];
  v9 = [(_CLVLLocalizationMaps488Details *)self perFrameCalibrationMatrices];
  v10 = 9 * [(_CLVLLocalizationMaps488Details *)self frameCount];
  v11 = [(_CLVLLocalizationMaps488Details *)self perFrameDistortion];
  v12 = 2 * [(_CLVLLocalizationMaps488Details *)self frameCount];
  v13 = [(_CLVLLocalizationMaps488Details *)self resultPoseRotation];
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
  return [v57 stringWithFormat:@"<_CLVLLocalizationMaps488Details: %p> {\n%@.inliersCount = %zu, \n%@.points2D = <float: %p> {length = %zu}, \n%@.points3D = <double: %p> {length = %zu}, \n%@.inlierIndices = <int: %p> {length = %zu}, \n%@.slamOrigin = <double: %p> {length = 6, values = [%f, %f, %f, %f, %f, %f]}, \n%@.slamTracksCount = %zu, \n%@.slamTracks = <float: %p> {length = %zu}, \n%@.descriptorDimension = %zu, \n%@.slamTrackDescriptors = <unsigned char: %p> {length = %zu}, \n%@.slamTrackObservations = <short: %p> {length = %zu}, \n%@.slamTracks2D = <float: %p> {length = %zu}, \n%@.slamTrackImageIndices = <short: %p> {length = %zu}, \n%@.frameCount = %zu, \n%@.perFrameVioStatusCodes = <int: %p> {length = %zu}, \n%@.perFrameVioPoses = <float: %p> {length = %zu}, \n%@.perFrameCalibrationMatrices = <float: %p> {length = %zu}, \n%@.perFrameDistortion = <float: %p> {length = %zu}, \n%@.resultPoseRotation = <double: %p> {length = 9, values = [%f, %f, %f;\n%@%f, %f, %f;\n%@%f, %f, %f]}, \n%@.resultPoseTranslation = <double: %p> {length = 3, values = [%f, %f, %f]}\n%@}", self, a3, v56, a3, v55, v54, a3, v53, v52, a3, v51, v50, a3, v49, v47, v46, v45, v44, v43, v42, a3, v41, a3, v40, v39, a3, v38, a3, v37, v36, a3, v35, v34, a3, v33, v32, a3, v31, v30, a3, v29, a3, v28, v27, a3, v7, v8, a3, v9, v10, a3, v11, v12, a3, v13, v26, v25, v24, v48, v14];
}

@end