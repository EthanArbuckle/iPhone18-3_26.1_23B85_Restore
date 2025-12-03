@interface _CLPolygonalRegion
- (BOOL)pointInPolygonWithCoordinate:(CLLocationCoordinate2D)coordinate withDistanceToBorder:(double *)border;
- (_CLPolygonalRegion)initWithCoder:(id)coder;
- (_CLPolygonalRegion)initWithVertices:(id)vertices identifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initNearbyAllowedWithVertices:(id)vertices identifier:(id)identifier;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CLPolygonalRegion

- (_CLPolygonalRegion)initWithVertices:(id)vertices identifier:(id)identifier
{
  v36 = *MEMORY[0x1E69E9840];
  if (vertices)
  {
    v7 = [vertices count];
    v8 = v7;
    if (v7 >= 0x66)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E728);
      }

      v9 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349312;
        v33 = v8;
        v34 = 2050;
        v35 = 101;
        _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "#polygon,number of vertices (%{public}lu) mustn't exceed %{public}lu", buf, 0x16u);
      }

      v10 = sub_19B87DD40();
      if ((*(v10 + 160) & 0x80000000) != 0 && (*(v10 + 164) & 0x80000000) != 0 && (*(v10 + 168) & 0x80000000) != 0 && !*(v10 + 152))
      {
        goto LABEL_38;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E728);
      }

      v28 = 134349312;
      v29 = v8;
      v30 = 2050;
      v31 = 101;
LABEL_36:
      v21 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[_CLPolygonalRegion initWithVertices:identifier:]", "CoreLocation: %s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }

LABEL_38:
      v22 = 0;
      goto LABEL_42;
    }

    if (v7 <= 3)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E728);
      }

      v11 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349312;
        v33 = v8;
        v34 = 2050;
        v35 = 4;
        _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_ERROR, "#polygon,number of vertices (%{public}lu) must be greater or equal than %{public}lu", buf, 0x16u);
      }

      v12 = sub_19B87DD40();
      if ((*(v12 + 160) & 0x80000000) != 0 && (*(v12 + 164) & 0x80000000) != 0 && (*(v12 + 168) & 0x80000000) != 0 && !*(v12 + 152))
      {
        goto LABEL_38;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E728);
      }

      v28 = 134349312;
      v29 = v8;
      v30 = 2050;
      v31 = 4;
      goto LABEL_36;
    }

    [objc_msgSend(vertices "lastObject")];
    v14 = v13;
    [objc_msgSend(vertices "firstObject")];
    if (v14 != v15 || ([objc_msgSend(vertices "lastObject")], v17 = v16, objc_msgSend(objc_msgSend(vertices, "firstObject"), "coordinate"), v17 != v18))
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E728);
      }

      v19 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_ERROR, "#polygon,monitoring requires a valid connected polygon where first and last coordinates are the same", buf, 2u);
      }

      v20 = sub_19B87DD40();
      if ((*(v20 + 160) & 0x80000000) != 0 && (*(v20 + 164) & 0x80000000) != 0 && (*(v20 + 168) & 0x80000000) != 0 && !*(v20 + 152))
      {
        goto LABEL_38;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E728);
      }

      LOWORD(v28) = 0;
      goto LABEL_36;
    }

    if (v8 != [objc_msgSend(MEMORY[0x1E695DFD8] setWithArray:{vertices), "count"}] + 1)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E728);
      }

      v25 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_ERROR, "#polygon,All vertices, except for the first and last equals, have to be unique", buf, 2u);
      }

      v26 = sub_19B87DD40();
      if ((*(v26 + 160) & 0x80000000) != 0 && (*(v26 + 164) & 0x80000000) != 0 && (*(v26 + 168) & 0x80000000) != 0 && !*(v26 + 152))
      {
        goto LABEL_38;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E728);
      }

      LOWORD(v28) = 0;
      goto LABEL_36;
    }
  }

  v27.receiver = self;
  v27.super_class = _CLPolygonalRegion;
  v22 = [(CLRegion *)&v27 initWithIdentifier:identifier andRegionType:2];
  if (v22)
  {
    v22->_vertices = vertices;
    v22->_allowMonitoringWhileNearby = 0;
  }

LABEL_42:
  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)initNearbyAllowedWithVertices:(id)vertices identifier:(id)identifier
{
  result = [(_CLPolygonalRegion *)self initWithVertices:vertices identifier:identifier];
  if (result)
  {
    *(result + 80) = 1;
  }

  return result;
}

- (void)dealloc
{
  self->_vertices = 0;
  v3.receiver = self;
  v3.super_class = _CLPolygonalRegion;
  [(CLRegion *)&v3 dealloc];
}

- (_CLPolygonalRegion)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v11.receiver = self;
  v11.super_class = _CLPolygonalRegion;
  v6 = [(CLRegion *)&v11 initWithCoder:coder];
  if (v6)
  {
    v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLPolygonalRegionCodingKeyVertices"];
    if ([coder containsValueForKey:@"kCLPolygonalRegionCodingKeyReferenceFrame"])
    {
      v8 = [coder decodeIntForKey:@"kCLPolygonalRegionCodingKeyReferenceFrame"];
    }

    else
    {
      v8 = 0;
    }

    if ([coder containsValueForKey:@"kCLPolygonalRegionCodingKeyMonitoringNearby"])
    {
      v9 = [coder decodeBoolForKey:@"kCLPolygonalRegionCodingKeyMonitoringNearby"];
    }

    else
    {
      v9 = 0;
    }

    [(CLRegion *)v6 setType:2];
    v6->_vertices = v7;
    v6->_allowMonitoringWhileNearby = v9;
    v6->_geoReferenceFrame = v8;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v9.receiver = self;
  v9.super_class = _CLPolygonalRegion;
  [(CLRegion *)&v9 encodeWithCoder:coder];
  vertices = [(_CLPolygonalRegion *)self vertices];
  geoReferenceFrame = [(_CLPolygonalRegion *)self geoReferenceFrame];
  allowMonitoringWhileNearby = [(_CLPolygonalRegion *)self allowMonitoringWhileNearby];
  [coder encodeObject:vertices forKey:@"kCLPolygonalRegionCodingKeyVertices"];
  [coder encodeInt:geoReferenceFrame forKey:@"kCLPolygonalRegionCodingKeyReferenceFrame"];
  [coder encodeBool:allowMonitoringWhileNearby forKey:@"kCLPolygonalRegionCodingKeyMonitoringNearby"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _CLPolygonalRegion;
  v4 = [(CLRegion *)&v6 copyWithZone:zone];
  if (v4)
  {
    v4[80] = [(_CLPolygonalRegion *)self allowMonitoringWhileNearby];
    *(v4 + 21) = [(_CLPolygonalRegion *)self geoReferenceFrame];
    *(v4 + 11) = [(NSArray *)[(_CLPolygonalRegion *)self vertices] copy];
  }

  return v4;
}

- (BOOL)pointInPolygonWithCoordinate:(CLLocationCoordinate2D)coordinate withDistanceToBorder:(double *)border
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v49 = *MEMORY[0x1E69E9840];
  if (!CLLocationCoordinate2DIsValid(coordinate))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E728);
    }

    v31 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v31, OS_LOG_TYPE_ERROR, "#polygon,#warning invalid coordinate", buf, 2u);
    }

    v32 = sub_19B87DD40();
    if ((*(v32 + 160) & 0x80000000) != 0 && (*(v32 + 164) & 0x80000000) != 0 && (*(v32 + 168) & 0x80000000) != 0 && !*(v32 + 152))
    {
      goto LABEL_69;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 == -1)
    {
      goto LABEL_67;
    }

    goto LABEL_90;
  }

  vertices = self->_vertices;
  if (!vertices)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E728);
    }

    v33 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v33, OS_LOG_TYPE_ERROR, "#polygon,#warning No points data found for polygon", buf, 2u);
    }

    v34 = sub_19B87DD40();
    if ((*(v34 + 160) & 0x80000000) != 0 && (*(v34 + 164) & 0x80000000) != 0 && (*(v34 + 168) & 0x80000000) != 0 && !*(v34 + 152))
    {
      goto LABEL_69;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 == -1)
    {
      goto LABEL_67;
    }

    goto LABEL_90;
  }

  if (!border)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E728);
    }

    v35 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_ERROR, "#polygon,#warning distanceToBorder is nil", buf, 2u);
    }

    v36 = sub_19B87DD40();
    if ((*(v36 + 160) & 0x80000000) != 0 && (*(v36 + 164) & 0x80000000) != 0 && (*(v36 + 168) & 0x80000000) != 0 && !*(v36 + 152))
    {
      goto LABEL_69;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 == -1)
    {
LABEL_67:
      v37 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[_CLPolygonalRegion pointInPolygonWithCoordinate:withDistanceToBorder:]", "CoreLocation: %s\n", v37);
      if (v37 != buf)
      {
        free(v37);
      }

LABEL_69:
      LOBYTE(v14) = 0;
      goto LABEL_70;
    }

LABEL_90:
    dispatch_once(&qword_1ED519088, &unk_1F0E6E728);
    goto LABEL_67;
  }

  v9 = [(NSArray *)vertices objectAtIndex:0];
  [v9 coordinate];
  v11 = v10;
  [v9 coordinate];
  v13 = v12;
  if ([(NSArray *)self->_vertices count]>= 2)
  {
    v14 = 0;
    v15 = 1;
    while (1)
    {
      v16 = [(NSArray *)self->_vertices objectAtIndexedSubscript:v15];
      [v16 coordinate];
      v18 = v17;
      [v16 coordinate];
      if (v18 != v11 || v19 != v13)
      {
        break;
      }

      v21 = v13;
      v18 = v11;
LABEL_39:
      ++v15;
      v11 = v18;
      v13 = v21;
      if (v15 >= [(NSArray *)self->_vertices count])
      {
        goto LABEL_72;
      }
    }

    v21 = v19;
    if ((latitude >= v11 || latitude <= v18) && (latitude <= v11 || latitude >= v18) || (v19 <= longitude ? (v22 = v13 <= longitude) : (v22 = 0), v22))
    {
      if (latitude != v11 || (latitude > v18 ? (v23 = v13 <= longitude) : (v23 = 1), v23))
      {
        v24 = latitude > v11;
        if (v19 <= longitude)
        {
          v24 = 0;
        }

        if (latitude != v18)
        {
          v24 = 0;
        }

        v14 ^= v24;
        goto LABEL_32;
      }
    }

    else if (v13 + (v19 - v13) * ((latitude - v11) / (v18 - v11)) <= longitude)
    {
      goto LABEL_32;
    }

    v14 ^= 1u;
LABEL_32:
    v25 = v18 - v11;
    v26 = v19 - v13;
    v27 = ((longitude - v13) * (v21 - v13) + (latitude - v11) * (v18 - v11)) / (v26 * v26 + v25 * v25);
    if (v27 <= 0.0)
    {
      v28 = v11;
      v29 = v13;
    }

    else
    {
      v28 = v18;
      v29 = v21;
      if (v27 < 1.0)
      {
        v28 = v11 + v27 * v25;
        v29 = v13 + v27 * v26;
      }
    }

    v30 = sub_19B87E164(latitude, longitude, v28, v29);
    if (*border < 0.0 || v30 < *border)
    {
      *border = v30;
    }

    goto LABEL_39;
  }

  LOBYTE(v14) = 0;
LABEL_72:
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E728);
  }

  v40 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    v41 = *border;
    *buf = 134218240;
    v46 = v41;
    v47 = 1024;
    v48 = v14 & 1;
    _os_log_impl(&dword_19B873000, v40, OS_LOG_TYPE_DEBUG, "#polygon,distanceToBorder,%.3lf,inRegion %d", buf, 0x12u);
  }

  v42 = sub_19B87DD40();
  if (*(v42 + 160) > 1 || *(v42 + 164) > 1 || *(v42 + 168) > 1 || *(v42 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E728);
    }

    v44 = *border;
    v43 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[_CLPolygonalRegion pointInPolygonWithCoordinate:withDistanceToBorder:]", "CoreLocation: %s\n", v43);
    if (v43 != buf)
    {
      free(v43);
    }
  }

LABEL_70:
  v38 = *MEMORY[0x1E69E9840];
  return v14 & 1;
}

@end