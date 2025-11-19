@interface _CLPlaceInference
+ (unint64_t)_placeInferencePlaceTypeFromRTPlaceType:(unint64_t)a3;
+ (unint64_t)_userSpecificPlaceTypeFromRTUserType:(unint64_t)a3;
- (_CLPlaceInference)initWithCoder:(id)a3;
- (_CLPlaceInference)initWithUserType:(unint64_t)a3 placeType:(unint64_t)a4 placemark:(id)a5 referenceLocation:(id)a6 confidence:(double)a7 preferredName:(id)a8 loiIdentifier:(id)a9;
- (id)_initWithRTPlaceInference:(id)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _CLPlaceInference

- (id)_initWithRTPlaceInference:(id)a3
{
  v5 = [objc_alloc(MEMORY[0x1E6985C40]) _initWithRTLocation:{objc_msgSend(objc_msgSend(a3, "mapItem"), "location")}];
  v6 = [objc_alloc(MEMORY[0x1E6985C40]) _initWithRTLocation:{objc_msgSend(a3, "referenceLocation")}];
  v7 = -[CLPlacemark _initWithRTMapItem:location:]([CLPlacemark alloc], "_initWithRTMapItem:location:", [a3 mapItem], v5);
  v8 = +[_CLPlaceInference _userSpecificPlaceTypeFromRTUserType:](_CLPlaceInference, "_userSpecificPlaceTypeFromRTUserType:", [a3 userType]);
  v9 = +[_CLPlaceInference _placeInferencePlaceTypeFromRTPlaceType:](_CLPlaceInference, "_placeInferencePlaceTypeFromRTPlaceType:", [a3 placeType]);
  [a3 confidence];
  v11 = v10;
  v12 = [a3 preferredName];
  v13 = [a3 loiIdentifier];

  return [(_CLPlaceInference *)self initWithUserType:v8 placeType:v9 placemark:v7 referenceLocation:v6 confidence:v12 preferredName:v13 loiIdentifier:v11];
}

+ (unint64_t)_userSpecificPlaceTypeFromRTUserType:(unint64_t)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (a3 >= 5)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B800);
    }

    v3 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_FAULT, "Please update userSpecificPlaceTypeFromRTUserType", buf, 2u);
    }

    v4 = sub_19B87DD40();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B800);
      }

      v5 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "+[_CLPlaceInference(_CLRoutineExtensions) _userSpecificPlaceTypeFromRTUserType:]", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    a3 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return a3;
}

+ (unint64_t)_placeInferencePlaceTypeFromRTPlaceType:(unint64_t)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (a3 >= 5)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B800);
    }

    v4 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_FAULT, "Please update placeInferencePlaceTypeFromRTPlaceType", buf, 2u);
    }

    v5 = sub_19B87DD40();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B800);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "+[_CLPlaceInference(_CLRoutineExtensions) _placeInferencePlaceTypeFromRTPlaceType:]", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    result = 2;
  }

  else
  {
    result = qword_19BA89420[a3];
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (_CLPlaceInference)initWithUserType:(unint64_t)a3 placeType:(unint64_t)a4 placemark:(id)a5 referenceLocation:(id)a6 confidence:(double)a7 preferredName:(id)a8 loiIdentifier:(id)a9
{
  v19.receiver = self;
  v19.super_class = _CLPlaceInference;
  v16 = [(_CLPlaceInference *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_userType = a3;
    v16->_placeType = a4;
    v16->_placemark = a5;
    v17->_referenceLocation = a6;
    v17->_confidence = a7;
    v17->_preferredName = a8;
    v17->__loiIdentifier = a9;
  }

  return v17;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CLPlaceInference;
  [(_CLPlaceInference *)&v3 dealloc];
}

- (_CLPlaceInference)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"kCLPlaceInferenceUserType", "unsignedIntegerValue"}];
  v7 = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"kCLPlaceInferencePlaceType", "unsignedIntegerValue"}];
  v8 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLPlaceInferencePlacemark"];
  v9 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLPlaceInferenceReferenceLocation"];
  [a3 decodeDoubleForKey:@"kCLPlaceInferenceConfidence"];
  v11 = v10;
  v12 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLPlaceInferencePreferredName"];
  v13 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLPlaceInferenceLoiIdentifier"];

  return [(_CLPlaceInference *)self initWithUserType:v6 placeType:v7 placemark:v8 referenceLocation:v9 confidence:v12 preferredName:v13 loiIdentifier:v11];
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_userType), @"kCLPlaceInferenceUserType"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_placeType), @"kCLPlaceInferencePlaceType"}];
  [a3 encodeObject:self->_placemark forKey:@"kCLPlaceInferencePlacemark"];
  [a3 encodeObject:self->_referenceLocation forKey:@"kCLPlaceInferenceReferenceLocation"];
  [a3 encodeDouble:@"kCLPlaceInferenceConfidence" forKey:self->_confidence];
  [a3 encodeObject:self->_preferredName forKey:@"kCLPlaceInferencePreferredName"];
  loiIdentifier = self->__loiIdentifier;

  [a3 encodeObject:loiIdentifier forKey:@"kCLPlaceInferenceLoiIdentifier"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(CLLocation *)[(_CLPlaceInference *)self referenceLocation] coordinate];
  v5 = v4;
  [(CLLocation *)[(_CLPlaceInference *)self referenceLocation] coordinate];
  v7 = v6;
  [(CLLocation *)[(_CLPlaceInference *)self referenceLocation] horizontalAccuracy];
  v9 = v8;
  v10 = [(_CLPlaceInference *)self userType];
  v11 = [(_CLPlaceInference *)self placeType];
  v12 = [(_CLPlaceInference *)self placemark];
  v13 = [(_CLPlaceInference *)self preferredName];
  [(_CLPlaceInference *)self confidence];
  return [v3 stringWithFormat:@"CLPlaceInference, ref, <%f, %f> +/- %f, userType, %lu, placeType, %lu, placemark, %@, preferredName, %@, confidence, %f, related loi identifier, %@", v5, v7, v9, v10, v11, v12, v13, v14, -[_CLPlaceInference _loiIdentifier](self, "_loiIdentifier")];
}

@end