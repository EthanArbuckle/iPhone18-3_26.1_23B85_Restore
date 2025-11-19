@interface NILocation
- (BOOL)isEqual:(id)a3;
- (NILocation)initWithCoder:(id)a3;
- (NILocation)initWithTimestamp:(id)a3 latitude:(double)a4 longitude:(double)a5 altitude:(double)a6 ellipsoidalAltitude:(double)a7 horizontalAccuracy:(double)a8 verticalAccuracy:(double)a9 speed:(double)a10 speedAccuracy:(double)a11 course:(double)a12 courseAccuracy:(double)a13 floor:(int64_t)a14 locationType:(int64_t)a15 signalEnvironment:(int64_t)a16;
- (id)description;
- (id)descriptionInternal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NILocation

- (NILocation)initWithTimestamp:(id)a3 latitude:(double)a4 longitude:(double)a5 altitude:(double)a6 ellipsoidalAltitude:(double)a7 horizontalAccuracy:(double)a8 verticalAccuracy:(double)a9 speed:(double)a10 speedAccuracy:(double)a11 course:(double)a12 courseAccuracy:(double)a13 floor:(int64_t)a14 locationType:(int64_t)a15 signalEnvironment:(int64_t)a16
{
  v28 = a3;
  if (!v28)
  {
    __assert_rtn("[NILocation initWithTimestamp:latitude:longitude:altitude:ellipsoidalAltitude:horizontalAccuracy:verticalAccuracy:speed:speedAccuracy:course:courseAccuracy:floor:locationType:signalEnvironment:]", "NILocation.mm", 37, "timestamp");
  }

  v33.receiver = self;
  v33.super_class = NILocation;
  v29 = [(NILocation *)&v33 init];
  if (v29)
  {
    v30 = [v28 copy];
    timestamp = v29->_timestamp;
    v29->_timestamp = v30;

    v29->_latitude = a4;
    v29->_longitude = a5;
    v29->_altitude = a6;
    v29->_ellipsoidalAltitude = a7;
    v29->_horizontalAccuracy = a8;
    v29->_verticalAccuracy = a9;
    v29->_speed = a10;
    v29->_speedAccuracy = a11;
    v29->_course = a12;
    v29->_courseAccuracy = a13;
    v29->_floor = a14;
    v29->_locationType = a15;
    v29->_signalEnvironment = a16;
  }

  return v29;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_timestamp forKey:@"timestamp"];
  [v4 encodeDouble:@"latitude" forKey:self->_latitude];
  [v4 encodeDouble:@"longitude" forKey:self->_longitude];
  [v4 encodeDouble:@"altitude" forKey:self->_altitude];
  [v4 encodeDouble:@"ellipsoidalAltitude" forKey:self->_ellipsoidalAltitude];
  [v4 encodeDouble:@"horizontalAccuracy" forKey:self->_horizontalAccuracy];
  [v4 encodeDouble:@"verticalAccuracy" forKey:self->_verticalAccuracy];
  [v4 encodeDouble:@"speed" forKey:self->_speed];
  [v4 encodeDouble:@"speedAccuracy" forKey:self->_speedAccuracy];
  [v4 encodeDouble:@"course" forKey:self->_course];
  [v4 encodeDouble:@"courseAccuracy" forKey:self->_courseAccuracy];
  [v4 encodeInteger:self->_floor forKey:@"floor"];
  [v4 encodeInteger:self->_locationType forKey:@"locationType"];
  [v4 encodeInteger:self->_signalEnvironment forKey:@"signalEnvironment"];
}

- (NILocation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v4 decodeDoubleForKey:@"latitude"];
    v26 = v6;
    [v4 decodeDoubleForKey:@"longitude"];
    v25 = v7;
    [v4 decodeDoubleForKey:@"altitude"];
    v9 = v8;
    [v4 decodeDoubleForKey:@"ellipsoidalAltitude"];
    v11 = v10;
    [v4 decodeDoubleForKey:@"horizontalAccuracy"];
    v13 = v12;
    [v4 decodeDoubleForKey:@"verticalAccuracy"];
    v15 = v14;
    [v4 decodeDoubleForKey:@"speed"];
    v17 = v16;
    [v4 decodeDoubleForKey:@"speedAccuracy"];
    v19 = v18;
    [v4 decodeDoubleForKey:@"course"];
    v21 = v20;
    [v4 decodeDoubleForKey:@"courseAccuracy"];
    v23 = -[NILocation initWithTimestamp:latitude:longitude:altitude:ellipsoidalAltitude:horizontalAccuracy:verticalAccuracy:speed:speedAccuracy:course:courseAccuracy:floor:locationType:signalEnvironment:]([NILocation alloc], "initWithTimestamp:latitude:longitude:altitude:ellipsoidalAltitude:horizontalAccuracy:verticalAccuracy:speed:speedAccuracy:course:courseAccuracy:floor:locationType:signalEnvironment:", v5, [v4 decodeIntegerForKey:@"floor"], objc_msgSend(v4, "decodeIntegerForKey:", @"locationType"), objc_msgSend(v4, "decodeIntegerForKey:", @"signalEnvironment"), v26, v25, v9, v11, v13, v15, v17, v19, v21, v22);
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    if (v5 == self)
    {
      v36 = 1;
LABEL_29:

      goto LABEL_30;
    }

    timestamp = self->_timestamp;
    if (!timestamp)
    {
      v8 = [(NILocation *)v5 timestamp];

      if (!v8)
      {
        v11 = 0;
LABEL_7:
        latitude = self->_latitude;
        [(NILocation *)v6 latitude];
        v14 = v13;
        longitude = self->_longitude;
        [(NILocation *)v6 longitude];
        v17 = v16;
        altitude = self->_altitude;
        [(NILocation *)v6 altitude];
        v20 = v19;
        ellipsoidalAltitude = self->_ellipsoidalAltitude;
        [(NILocation *)v6 ellipsoidalAltitude];
        v23 = v22;
        horizontalAccuracy = self->_horizontalAccuracy;
        [(NILocation *)v6 horizontalAccuracy];
        v50 = v24;
        verticalAccuracy = self->_verticalAccuracy;
        [(NILocation *)v6 verticalAccuracy];
        v48 = v25;
        speed = self->_speed;
        [(NILocation *)v6 speed];
        v46 = v26;
        speedAccuracy = self->_speedAccuracy;
        [(NILocation *)v6 speedAccuracy];
        v44 = v27;
        course = self->_course;
        [(NILocation *)v6 course];
        v42 = v28;
        courseAccuracy = self->_courseAccuracy;
        [(NILocation *)v6 courseAccuracy];
        v40 = v29;
        floor = self->_floor;
        v31 = [(NILocation *)v6 floor];
        locationType = self->_locationType;
        v33 = [(NILocation *)v6 locationType];
        signalEnvironment = self->_signalEnvironment;
        v35 = [(NILocation *)v6 signalEnvironment];
        v36 = 0;
        if (latitude == v14)
        {
          v37 = v11;
        }

        else
        {
          v37 = 1;
        }

        if ((v37 & 1) == 0 && longitude == v17 && altitude == v20 && ellipsoidalAltitude == v23 && horizontalAccuracy == v50 && verticalAccuracy == v48 && speed == v46 && speedAccuracy == v44 && course == v42 && courseAccuracy == v40 && floor == v31)
        {
          v36 = locationType == v33 && signalEnvironment == v35;
        }

        goto LABEL_29;
      }

      timestamp = self->_timestamp;
    }

    v9 = [(NILocation *)v6 timestamp];
    v10 = [(NSDate *)timestamp isEqual:v9];

    v11 = v10 ^ 1;
    goto LABEL_7;
  }

  v36 = 0;
LABEL_30:

  return v36;
}

- (unint64_t)hash
{
  timestamp = self->_timestamp;
  if (timestamp)
  {
    v24 = [(NSDate *)timestamp hash];
  }

  else
  {
    v24 = 0;
  }

  v31 = [MEMORY[0x1E696AD98] numberWithDouble:self->_latitude];
  v23 = [v31 hash];
  v30 = [MEMORY[0x1E696AD98] numberWithDouble:self->_longitude];
  v22 = [v30 hash];
  v29 = [MEMORY[0x1E696AD98] numberWithDouble:self->_altitude];
  v20 = [v29 hash];
  v28 = [MEMORY[0x1E696AD98] numberWithDouble:self->_ellipsoidalAltitude];
  v19 = [v28 hash];
  v27 = [MEMORY[0x1E696AD98] numberWithDouble:self->_horizontalAccuracy];
  v18 = [v27 hash];
  v26 = [MEMORY[0x1E696AD98] numberWithDouble:self->_verticalAccuracy];
  v17 = [v26 hash];
  v25 = [MEMORY[0x1E696AD98] numberWithDouble:self->_speed];
  v16 = [v25 hash];
  v21 = [MEMORY[0x1E696AD98] numberWithDouble:self->_speedAccuracy];
  v15 = [v21 hash];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_course];
  v5 = [v4 hash];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_courseAccuracy];
  v7 = [v6 hash];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_floor];
  v9 = [v8 hash];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_locationType];
  v11 = [v10 hash];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:self->_signalEnvironment];
  v13 = v9 ^ v11 ^ [v12 hash];

  return v23 ^ v24 ^ v22 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v5 ^ v7 ^ v13;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NILocation *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, v6];

  return v7;
}

- (id)descriptionInternal
{
  if (+[NIPlatformInfo isInternalBuild])
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.7fdeg", *&self->_latitude];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.7fdeg", *&self->_longitude];
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.1fm", *&self->_altitude];
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.1fm", *&self->_ellipsoidalAltitude];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.1fm", *&self->_horizontalAccuracy];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.1fm", *&self->_verticalAccuracy];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.1fm/s", *&self->_speed];
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.1fm/s", *&self->_speedAccuracy];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.1fdeg", *&self->_course];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.1fdeg", *&self->_courseAccuracy];
    v6 = v4;
    if (self->_floor == NILocationFloorNotAvailable)
    {
      v7 = v3;
      v8 = @"-";
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", self->_floor];
      v8 = v7 = v3;
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", self->_locationType];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", self->_signalEnvironment];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Time: %@. Pos: [%@, %@, %@ (sea) %@ (ell)] +/- [%@, %@]. Spd: %@ +/- %@. Crs: %@ +/- %@. Flr: %@. LocType: %@. SigEnv: %@.", self->_timestamp, v17, v16, v7, v6, v19, v18, v15, v5, v14, v13, v8, v10, v11];
  }

  else
  {
    v9 = @"***";
  }

  return v9;
}

@end