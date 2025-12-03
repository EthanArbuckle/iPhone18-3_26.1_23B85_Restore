@interface _CLPlaceInference
+ (unint64_t)_placeInferencePlaceTypeFromRTPlaceType:(unint64_t)type;
+ (unint64_t)_userSpecificPlaceTypeFromRTUserType:(unint64_t)type;
- (_CLPlaceInference)initWithCoder:(id)coder;
- (_CLPlaceInference)initWithUserType:(unint64_t)type placeType:(unint64_t)placeType placemark:(id)placemark referenceLocation:(id)location confidence:(double)confidence preferredName:(id)name loiIdentifier:(id)identifier;
- (id)_initWithRTPlaceInference:(id)inference;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CLPlaceInference

- (id)_initWithRTPlaceInference:(id)inference
{
  v5 = [objc_alloc(MEMORY[0x1E6985C40]) _initWithRTLocation:{objc_msgSend(objc_msgSend(inference, "mapItem"), "location")}];
  v6 = [objc_alloc(MEMORY[0x1E6985C40]) _initWithRTLocation:{objc_msgSend(inference, "referenceLocation")}];
  v7 = -[CLPlacemark _initWithRTMapItem:location:]([CLPlacemark alloc], "_initWithRTMapItem:location:", [inference mapItem], v5);
  v8 = +[_CLPlaceInference _userSpecificPlaceTypeFromRTUserType:](_CLPlaceInference, "_userSpecificPlaceTypeFromRTUserType:", [inference userType]);
  v9 = +[_CLPlaceInference _placeInferencePlaceTypeFromRTPlaceType:](_CLPlaceInference, "_placeInferencePlaceTypeFromRTPlaceType:", [inference placeType]);
  [inference confidence];
  v11 = v10;
  preferredName = [inference preferredName];
  loiIdentifier = [inference loiIdentifier];

  return [(_CLPlaceInference *)self initWithUserType:v8 placeType:v9 placemark:v7 referenceLocation:v6 confidence:preferredName preferredName:loiIdentifier loiIdentifier:v11];
}

+ (unint64_t)_userSpecificPlaceTypeFromRTUserType:(unint64_t)type
{
  v9 = *MEMORY[0x1E69E9840];
  if (type >= 5)
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

    type = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return type;
}

+ (unint64_t)_placeInferencePlaceTypeFromRTPlaceType:(unint64_t)type
{
  v9 = *MEMORY[0x1E69E9840];
  if (type >= 5)
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
    result = qword_19BA89420[type];
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (_CLPlaceInference)initWithUserType:(unint64_t)type placeType:(unint64_t)placeType placemark:(id)placemark referenceLocation:(id)location confidence:(double)confidence preferredName:(id)name loiIdentifier:(id)identifier
{
  v19.receiver = self;
  v19.super_class = _CLPlaceInference;
  v16 = [(_CLPlaceInference *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_userType = type;
    v16->_placeType = placeType;
    v16->_placemark = placemark;
    v17->_referenceLocation = location;
    v17->_confidence = confidence;
    v17->_preferredName = name;
    v17->__loiIdentifier = identifier;
  }

  return v17;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CLPlaceInference;
  [(_CLPlaceInference *)&v3 dealloc];
}

- (_CLPlaceInference)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"kCLPlaceInferenceUserType", "unsignedIntegerValue"}];
  v7 = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"kCLPlaceInferencePlaceType", "unsignedIntegerValue"}];
  v8 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLPlaceInferencePlacemark"];
  v9 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLPlaceInferenceReferenceLocation"];
  [coder decodeDoubleForKey:@"kCLPlaceInferenceConfidence"];
  v11 = v10;
  v12 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLPlaceInferencePreferredName"];
  v13 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLPlaceInferenceLoiIdentifier"];

  return [(_CLPlaceInference *)self initWithUserType:v6 placeType:v7 placemark:v8 referenceLocation:v9 confidence:v12 preferredName:v13 loiIdentifier:v11];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_userType), @"kCLPlaceInferenceUserType"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_placeType), @"kCLPlaceInferencePlaceType"}];
  [coder encodeObject:self->_placemark forKey:@"kCLPlaceInferencePlacemark"];
  [coder encodeObject:self->_referenceLocation forKey:@"kCLPlaceInferenceReferenceLocation"];
  [coder encodeDouble:@"kCLPlaceInferenceConfidence" forKey:self->_confidence];
  [coder encodeObject:self->_preferredName forKey:@"kCLPlaceInferencePreferredName"];
  loiIdentifier = self->__loiIdentifier;

  [coder encodeObject:loiIdentifier forKey:@"kCLPlaceInferenceLoiIdentifier"];
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
  userType = [(_CLPlaceInference *)self userType];
  placeType = [(_CLPlaceInference *)self placeType];
  placemark = [(_CLPlaceInference *)self placemark];
  preferredName = [(_CLPlaceInference *)self preferredName];
  [(_CLPlaceInference *)self confidence];
  return [v3 stringWithFormat:@"CLPlaceInference, ref, <%f, %f> +/- %f, userType, %lu, placeType, %lu, placemark, %@, preferredName, %@, confidence, %f, related loi identifier, %@", v5, v7, v9, userType, placeType, placemark, preferredName, v14, -[_CLPlaceInference _loiIdentifier](self, "_loiIdentifier")];
}

@end