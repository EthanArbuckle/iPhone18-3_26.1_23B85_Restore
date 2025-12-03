@interface CNMemojiMetadata
+ (id)log;
- (AVTAvatar)avatar;
- (AVTAvatarDescriptor)avatarDescriptor;
- (AVTStickerConfiguration)poseConfiguration;
- (BOOL)avatarRecordIsEditable;
- (BOOL)isEqual:(id)equal;
- (BOOL)poseHasBody;
- (CGAffineTransform)cropTransform;
- (CNMemojiMetadata)initWithAvatarRecord:(id)record poseConfiguration:(id)configuration backgroundColorDescription:(id)description;
- (CNMemojiMetadata)initWithAvatarRecord:(id)record poseConfiguration:(id)configuration backgroundColorDescription:(id)description cropTransform:(CGAffineTransform *)transform;
- (CNMemojiMetadata)initWithAvatarRecord:(id)record poseName:(id)name pose:(id)pose backgroundColorDescription:(id)description;
- (CNMemojiMetadata)initWithAvatarRecord:(id)record poseName:(id)name pose:(id)pose backgroundColorDescription:(id)description cropTransform:(CGAffineTransform *)transform;
- (CNMemojiMetadata)initWithBackgroundColorDescription:(id)description;
- (CNMemojiMetadata)initWithCoder:(id)coder;
- (NSData)avatarRecordData;
- (NSData)poseConfigurationData;
- (NSString)avatarRecordIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNMemojiMetadata

+ (id)log
{
  if (log_cn_once_token_1 != -1)
  {
    +[CNMemojiMetadata log];
  }

  v3 = log_cn_once_object_1;

  return v3;
}

uint64_t __23__CNMemojiMetadata_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.ui", "CNMemojiMetadata");
  v1 = log_cn_once_object_1;
  log_cn_once_object_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNMemojiMetadata)initWithAvatarRecord:(id)record poseName:(id)name pose:(id)pose backgroundColorDescription:(id)description
{
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  v8[0] = *MEMORY[0x1E695EFD0];
  v8[1] = v6;
  v8[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [(CNMemojiMetadata *)self initWithAvatarRecord:record poseName:name pose:pose backgroundColorDescription:description cropTransform:v8];
}

- (CNMemojiMetadata)initWithAvatarRecord:(id)record poseName:(id)name pose:(id)pose backgroundColorDescription:(id)description cropTransform:(CGAffineTransform *)transform
{
  recordCopy = record;
  nameCopy = name;
  poseCopy = pose;
  descriptionCopy = description;
  v29.receiver = self;
  v29.super_class = CNMemojiMetadata;
  v17 = [(CNMemojiMetadata *)&v29 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_avatarRecord, record);
    v19 = [nameCopy copy];
    poseName = v18->_poseName;
    v18->_poseName = v19;

    objc_storeStrong(&v18->_pose, pose);
    if (descriptionCopy)
    {
      v21 = [descriptionCopy copy];
    }

    else
    {
      v21 = +[CNMemojiBackgroundParameters defaultBackgroundColorDescription];
    }

    backgroundColorDescription = v18->_backgroundColorDescription;
    v18->_backgroundColorDescription = v21;

    v23 = [[CNMemojiBackgroundParameters alloc] initWithColorDescription:v18->_backgroundColorDescription];
    backgroundParameters = v18->_backgroundParameters;
    v18->_backgroundParameters = v23;

    v25 = *&transform->a;
    v26 = *&transform->tx;
    *&v18->_cropTransform.c = *&transform->c;
    *&v18->_cropTransform.tx = v26;
    *&v18->_cropTransform.a = v25;
    v27 = v18;
  }

  return v18;
}

- (CNMemojiMetadata)initWithAvatarRecord:(id)record poseConfiguration:(id)configuration backgroundColorDescription:(id)description
{
  descriptionCopy = description;
  configurationCopy = configuration;
  recordCopy = record;
  name = [configurationCopy name];
  physicalizedPose = [configurationCopy physicalizedPose];

  v13 = *(MEMORY[0x1E695EFD0] + 16);
  v16[0] = *MEMORY[0x1E695EFD0];
  v16[1] = v13;
  v16[2] = *(MEMORY[0x1E695EFD0] + 32);
  v14 = [(CNMemojiMetadata *)self initWithAvatarRecord:recordCopy poseName:name pose:physicalizedPose backgroundColorDescription:descriptionCopy cropTransform:v16];

  return v14;
}

- (CNMemojiMetadata)initWithAvatarRecord:(id)record poseConfiguration:(id)configuration backgroundColorDescription:(id)description cropTransform:(CGAffineTransform *)transform
{
  descriptionCopy = description;
  configurationCopy = configuration;
  recordCopy = record;
  name = [configurationCopy name];
  physicalizedPose = [configurationCopy physicalizedPose];

  v15 = *&transform->c;
  v18[0] = *&transform->a;
  v18[1] = v15;
  v18[2] = *&transform->tx;
  v16 = [(CNMemojiMetadata *)self initWithAvatarRecord:recordCopy poseName:name pose:physicalizedPose backgroundColorDescription:descriptionCopy cropTransform:v18];

  return v16;
}

- (CNMemojiMetadata)initWithBackgroundColorDescription:(id)description
{
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [(CNMemojiMetadata *)self initWithAvatarRecord:0 poseName:0 pose:0 backgroundColorDescription:description cropTransform:v5];
}

- (AVTStickerConfiguration)poseConfiguration
{
  avatarRecord = [(CNMemojiMetadata *)self avatarRecord];
  poseName = [(CNMemojiMetadata *)self poseName];
  pose = [(CNMemojiMetadata *)self pose];
  v6 = [CNMemojiMetadataUtilities stickerConfigurationForAvatarRecord:avatarRecord stickerName:poseName pose:pose];

  [v6 loadIfNeeded];

  return v6;
}

- (AVTAvatar)avatar
{
  avatarRecord = [(CNMemojiMetadata *)self avatarRecord];

  if (avatarRecord)
  {
    AVTAvatarRecordRenderingClass = getAVTAvatarRecordRenderingClass();
    avatarRecord2 = [(CNMemojiMetadata *)self avatarRecord];
    v6 = [(objc_class *)AVTAvatarRecordRenderingClass avatarForRecord:avatarRecord2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (AVTAvatarDescriptor)avatarDescriptor
{
  avatarRecord = [(CNMemojiMetadata *)self avatarRecord];

  if (avatarRecord)
  {
    AVTAvatarRecordRenderingClass = getAVTAvatarRecordRenderingClass();
    avatarRecord2 = [(CNMemojiMetadata *)self avatarRecord];
    v6 = [(objc_class *)AVTAvatarRecordRenderingClass avatarDescriptorForRecord:avatarRecord2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)avatarRecordIdentifier
{
  avatarRecord = [(CNMemojiMetadata *)self avatarRecord];
  identifier = [avatarRecord identifier];

  return identifier;
}

- (NSData)avatarRecordData
{
  AVTAvatarRecordSerializerClass = getAVTAvatarRecordSerializerClass();
  avatarRecord = [(CNMemojiMetadata *)self avatarRecord];
  v5 = [(objc_class *)AVTAvatarRecordSerializerClass dataFromAvatarRecord:avatarRecord];

  return v5;
}

- (BOOL)avatarRecordIsEditable
{
  avatarRecord = [(CNMemojiMetadata *)self avatarRecord];
  isEditable = [avatarRecord isEditable];

  return isEditable;
}

- (NSData)poseConfigurationData
{
  poseConfiguration = [(CNMemojiMetadata *)self poseConfiguration];
  v3 = [CNMemojiMetadataUtilities dataForPoseConfiguration:poseConfiguration];

  return v3;
}

- (BOOL)poseHasBody
{
  poseConfiguration = [(CNMemojiMetadata *)self poseConfiguration];
  [poseConfiguration loadIfNeeded];

  poseConfiguration2 = [(CNMemojiMetadata *)self poseConfiguration];
  bodyPose = [poseConfiguration2 bodyPose];
  LOBYTE(poseConfiguration) = bodyPose != 0;

  return poseConfiguration;
}

- (CNMemojiMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntForKey:@"version"];
  if (v5 >= 3)
  {
    v44 = v5;
    v45 = [objc_opt_class() log];
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      [(CNMemojiMetadata *)v44 initWithCoder:v45];
    }

    selfCopy2 = 0;
  }

  else
  {
    selfCopy = self;
    v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColorDescription"];
    v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"avatarRecordData"];
    v50 = [(objc_class *)getAVTAvatarRecordSerializerClass() avatarRecordFromData:v51];
    v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"poseName"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"poseRepresentation"];

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v13 setWithObjects:{v14, v15, v16, v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"posePhysicsStatesRepresentation"];

    v60 = 0;
    v61 = &v60;
    v62 = 0x2050000000;
    v20 = getAVTAvatarPhysicalizedPoseClass_softClass_0;
    v63 = getAVTAvatarPhysicalizedPoseClass_softClass_0;
    if (!getAVTAvatarPhysicalizedPoseClass_softClass_0)
    {
      v54 = MEMORY[0x1E69E9820];
      v55 = 3221225472;
      v56 = __getAVTAvatarPhysicalizedPoseClass_block_invoke_0;
      v57 = &unk_1E7412110;
      v58 = &v60;
      __getAVTAvatarPhysicalizedPoseClass_block_invoke_0(&v54);
      v20 = v61[3];
    }

    v21 = v20;
    _Block_object_dispose(&v60, 8);
    v22 = [[v20 alloc] initWithPoseRepresentation:v12 physicsStatesRepresentation:v19];
    v23 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v24 = [coderCopy decodeArrayOfObjectsOfClasses:v23 forKey:@"cropTransformValues"];

    if (v24)
    {
      v25 = [v24 objectAtIndexedSubscript:0];
      [v25 doubleValue];
      v27 = v26;
      v28 = [v24 objectAtIndexedSubscript:1];
      [v28 doubleValue];
      v30 = v29;
      [v24 objectAtIndexedSubscript:2];
      v31 = v48 = v19;
      [v31 doubleValue];
      v33 = v32;
      [v24 objectAtIndexedSubscript:3];
      v35 = v34 = v12;
      [v35 doubleValue];
      v37 = v36;
      v38 = [v24 objectAtIndexedSubscript:4];
      [v38 doubleValue];
      v40 = v39;
      v41 = [v24 objectAtIndexedSubscript:5];
      [v41 doubleValue];
      v43 = v42;

      v12 = v34;
      v19 = v48;
    }

    else
    {
      v27 = *MEMORY[0x1E695EFD0];
      v30 = *(MEMORY[0x1E695EFD0] + 8);
      v33 = *(MEMORY[0x1E695EFD0] + 16);
      v37 = *(MEMORY[0x1E695EFD0] + 24);
      v40 = *(MEMORY[0x1E695EFD0] + 32);
      v43 = *(MEMORY[0x1E695EFD0] + 40);
    }

    v45 = v52;
    v54 = v27;
    v55 = v30;
    v56 = v33;
    v57 = v37;
    v58 = v40;
    v59 = v43;
    self = [(CNMemojiMetadata *)selfCopy initWithAvatarRecord:v50 poseName:v49 pose:v22 backgroundColorDescription:v52 cropTransform:&v54];

    selfCopy2 = self;
  }

  return selfCopy2;
}

- (void)encodeWithCoder:(id)coder
{
  v16[6] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  [coderCopy encodeInt:2 forKey:@"version"];
  [coderCopy encodeObject:self->_backgroundColorDescription forKey:@"backgroundColorDescription"];
  if (self->_avatarRecord)
  {
    v5 = [(objc_class *)getAVTAvatarRecordSerializerClass() dataFromAvatarRecord:self->_avatarRecord];
    [coderCopy encodeObject:v5 forKey:@"avatarRecordData"];
  }

  [coderCopy encodeObject:self->_poseName forKey:@"poseName"];
  pose = [(AVTAvatarPhysicalizedPose *)self->_pose pose];
  dictionaryRepresentation = [pose dictionaryRepresentation];
  [coderCopy encodeObject:dictionaryRepresentation forKey:@"poseRepresentation"];

  v8 = [CNMemojiMetadataUtilities physicsStatesDictionaryRepresentationForPose:self->_pose];
  [coderCopy encodeObject:v8 forKey:@"posePhysicsStatesRepresentation"];

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_cropTransform.a];
  v16[0] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_cropTransform.b];
  v16[1] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_cropTransform.c];
  v16[2] = v11;
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:self->_cropTransform.d];
  v16[3] = v12;
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:self->_cropTransform.tx];
  v16[4] = v13;
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:self->_cropTransform.ty];
  v16[5] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:6];

  [coderCopy encodeObject:v15 forKey:@"cropTransformValues"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CNMemojiMetadata alloc];
  avatarRecord = [(CNMemojiMetadata *)self avatarRecord];
  poseName = [(CNMemojiMetadata *)self poseName];
  pose = [(CNMemojiMetadata *)self pose];
  backgroundColorDescription = [(CNMemojiMetadata *)self backgroundColorDescription];
  [(CNMemojiMetadata *)self cropTransform];
  v9 = [(CNMemojiMetadata *)v4 initWithAvatarRecord:avatarRecord poseName:poseName pose:pose backgroundColorDescription:backgroundColorDescription cropTransform:&v11];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v22 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ((v5 = -[CNMemojiMetadata backgroundColorDescription](self, "backgroundColorDescription"), v6 = -[CNMemojiMetadata backgroundColorDescription](equalCopy, "backgroundColorDescription"), !(v5 | v6)) || [v5 isEqual:v6]) && ((v7 = -[CNMemojiMetadata avatarRecord](self, "avatarRecord"), v8 = -[CNMemojiMetadata avatarRecord](equalCopy, "avatarRecord"), !(v7 | v8)) || objc_msgSend(v7, "isEqual:", v8)) && ((v9 = -[CNMemojiMetadata poseName](self, "poseName"), v10 = -[CNMemojiMetadata poseName](equalCopy, "poseName"), !(v9 | v10)) || objc_msgSend(v9, "isEqual:", v10)) && (-[CNMemojiMetadata pose](self, "pose"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "pose"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "dictionaryRepresentation"), v13 = objc_claimAutoreleasedReturnValue(), -[CNMemojiMetadata pose](equalCopy, "pose"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "pose"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "dictionaryRepresentation"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v13, "isEqualToDictionary:", v16), v16, v15, v14, v13, v12, v11, v17))
    {
      pose = [(CNMemojiMetadata *)self pose];
      v19 = [CNMemojiMetadataUtilities physicsStatesDictionaryRepresentationForPose:pose];
      pose2 = [(CNMemojiMetadata *)equalCopy pose];
      v21 = [CNMemojiMetadataUtilities physicsStatesDictionaryRepresentationForPose:pose2];
      v22 = [v19 isEqualToDictionary:v21];
    }

    else
    {
      v22 = 0;
    }
  }

  return v22;
}

- (CGAffineTransform)cropTransform
{
  v3 = *&self[1].c;
  *&retstr->a = *&self[1].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].tx;
  return self;
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1954A0000, a2, OS_LOG_TYPE_ERROR, "Memoji metadata has a higher version number than we know how to handle: %ld", &v2, 0xCu);
}

@end