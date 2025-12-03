@interface CMFitnessPlusWorkout
+ (BOOL)isAvailable;
+ (id)fitnessPlusWorkoutInstance:(id)instance;
+ (id)mediaTypeName:(int64_t)name;
- (CMFitnessPlusWorkout)initWithCoder:(id)coder;
- (CMFitnessPlusWorkout)initWithSessionId:(id)id type:(int64_t)type catalogWorkoutId:(id)workoutId mediaType:(int64_t)mediaType;
- (CMFitnessPlusWorkout)initWithSessionId:(id)id type:(int64_t)type catalogWorkoutId:(id)workoutId mediaType:(int64_t)mediaType error:(id *)error;
- (CMFitnessPlusWorkout)initWithSessionId:(id)id type:(int64_t)type catalogWorkoutId:(id)workoutId mediaType:(int64_t)mediaType locationType:(int64_t)locationType error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMFitnessPlusWorkout

+ (BOOL)isAvailable
{
  if (sub_19B4215D8())
  {
    return 0;
  }

  return objc_msgSend_isAvailable(CMWorkout, v2, v3);
}

- (CMFitnessPlusWorkout)initWithSessionId:(id)id type:(int64_t)type catalogWorkoutId:(id)workoutId mediaType:(int64_t)mediaType
{
  v11 = objc_msgSend_UUIDString(workoutId, a2, id);

  return objc_msgSend_initWithSessionId_type_catalogWorkoutId_mediaType_error_(self, v10, id, type, v11, mediaType, 0);
}

- (CMFitnessPlusWorkout)initWithSessionId:(id)id type:(int64_t)type catalogWorkoutId:(id)workoutId mediaType:(int64_t)mediaType error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = CMFitnessPlusWorkout;
  v12 = [(CMWorkout *)&v18 initWithSessionId:id type:type];
  if (v12)
  {
    if (workoutId && objc_msgSend_length(workoutId, v10, v11) <= 0x3F)
    {
      v12->fCatalogWorkoutId = workoutId;
    }

    else
    {
      v12->fCatalogWorkoutId = @"Invalid";
      if (error)
      {
        v13 = MEMORY[0x1E696ABC0];
        v19 = *MEMORY[0x1E696A578];
        v20[0] = @"catalogWorkoutId string too long";
        v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v10, v20, &v19, 1);
        *error = objc_msgSend_errorWithDomain_code_userInfo_(v13, v15, @"CMErrorDomain", 107, v14);
      }
    }

    v12->fMediaType = mediaType;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

- (CMFitnessPlusWorkout)initWithSessionId:(id)id type:(int64_t)type catalogWorkoutId:(id)workoutId mediaType:(int64_t)mediaType locationType:(int64_t)locationType error:(id *)error
{
  if (objc_msgSend_initWithSessionId_type_catalogWorkoutId_mediaType_error_(self, a2, id, type, workoutId, mediaType, error))
  {
    objc_msgSend_setLocationType_(self, v10, locationType);
  }

  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMFitnessPlusWorkout;
  [(CMWorkout *)&v3 dealloc];
}

- (CMFitnessPlusWorkout)initWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = CMFitnessPlusWorkout;
  v5 = [(CMWorkout *)&v11 initWithCoder:?];
  if (v5)
  {
    if (objc_msgSend_containsValueForKey_(coder, v4, @"kCMWorkoutDataCodingKeyFitnessPlusCatalogWorkoutId"))
    {
      v7 = objc_opt_class();
      v5->fCatalogWorkoutId = objc_msgSend_decodeObjectOfClass_forKey_(coder, v8, v7, @"kCMWorkoutDataCodingKeyFitnessPlusCatalogWorkoutId");
    }

    if (objc_msgSend_containsValueForKey_(coder, v6, @"kCMWorkoutDataCodingKeyFitnessPlusMediaType"))
    {
      v5->fMediaType = objc_msgSend_decodeIntegerForKey_(coder, v9, @"kCMWorkoutDataCodingKeyFitnessPlusMediaType");
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_sessionId(self, v8, v9);
  v13 = objc_msgSend_type(self, v11, v12);
  v16 = objc_msgSend_catalogWorkoutId(self, v14, v15);
  v19 = objc_msgSend_mediaType(self, v17, v18);
  v21 = objc_msgSend_initWithSessionId_type_catalogWorkoutId_mediaType_error_(v7, v20, v10, v13, v16, v19, 0);
  v24 = objc_msgSend_locationType(self, v22, v23);
  objc_msgSend_setLocationType_(v21, v25, v24);
  v28 = objc_msgSend_mode(self, v26, v27);
  objc_msgSend_setWorkoutMode_(v21, v29, v28);
  v32 = objc_msgSend_appId(self, v30, v31);
  objc_msgSend_setAppId_(v21, v33, v32);
  return v21;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CMFitnessPlusWorkout;
  [(CMWorkout *)&v7 encodeWithCoder:?];
  objc_msgSend_encodeObject_forKey_(coder, v5, self->fCatalogWorkoutId, @"kCMWorkoutDataCodingKeyFitnessPlusCatalogWorkoutId");
  objc_msgSend_encodeInteger_forKey_(coder, v6, self->fMediaType, @"kCMWorkoutDataCodingKeyFitnessPlusMediaType");
}

+ (id)mediaTypeName:(int64_t)name
{
  if (name > 3)
  {
    return 0;
  }

  else
  {
    return off_1E7533250[name];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_sessionId(self, v6, v7);
  v11 = objc_msgSend_type(self, v9, v10);
  v13 = objc_msgSend_workoutName_(CMWorkout, v12, v11);
  v16 = objc_msgSend_locationType(self, v14, v15);
  v18 = objc_msgSend_workoutLocationName_(CMWorkout, v17, v16);
  v21 = objc_msgSend_catalogWorkoutId(self, v19, v20);
  v24 = objc_msgSend_mediaType(self, v22, v23);
  v26 = objc_msgSend_mediaTypeName_(CMFitnessPlusWorkout, v25, v24);
  return objc_msgSend_stringWithFormat_(v3, v27, @"%@, <sessionId %@, type, %@, locationType, %@, catalogWorkoutId, %@, mediaType, %@>", v5, v8, v13, v18, v21, v26);
}

+ (id)fitnessPlusWorkoutInstance:(id)instance
{
  v4 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(instance, v5, v4))
  {
    return instance;
  }

  else
  {
    return 0;
  }
}

@end