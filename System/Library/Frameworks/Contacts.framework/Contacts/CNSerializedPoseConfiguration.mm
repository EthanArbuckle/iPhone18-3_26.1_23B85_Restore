@interface CNSerializedPoseConfiguration
+ (id)log;
- (BOOL)isEqual:(id)equal;
- (CNSerializedPoseConfiguration)initWithCoder:(id)coder;
- (CNSerializedPoseConfiguration)initWithPoseConfiguration:(id)configuration;
- (CNSerializedPoseConfiguration)initWithPoseName:(id)name pose:(id)pose;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNSerializedPoseConfiguration

+ (id)log
{
  if (log_cn_once_token_0_3 != -1)
  {
    +[CNSerializedPoseConfiguration log];
  }

  v3 = log_cn_once_object_0_3;

  return v3;
}

uint64_t __36__CNSerializedPoseConfiguration_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.ui", "CNSerializedPoseConfiguration");
  v1 = log_cn_once_object_0_3;
  log_cn_once_object_0_3 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNSerializedPoseConfiguration)initWithPoseName:(id)name pose:(id)pose
{
  nameCopy = name;
  poseCopy = pose;
  v13.receiver = self;
  v13.super_class = CNSerializedPoseConfiguration;
  v8 = [(CNSerializedPoseConfiguration *)&v13 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    poseName = v8->_poseName;
    v8->_poseName = v9;

    objc_storeStrong(&v8->_pose, pose);
    v11 = v8;
  }

  return v8;
}

- (CNSerializedPoseConfiguration)initWithPoseConfiguration:(id)configuration
{
  configurationCopy = configuration;
  name = [configurationCopy name];
  physicalizedPose = [configurationCopy physicalizedPose];

  v7 = [(CNSerializedPoseConfiguration *)self initWithPoseName:name pose:physicalizedPose];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ((poseName = self->_poseName, !(poseName | equalCopy->_poseName)) || -[NSString isEqual:](poseName, "isEqual:")) && (-[AVTAvatarPhysicalizedPose pose](self->_pose, "pose"), v6 = objc_claimAutoreleasedReturnValue(), [v6 dictionaryRepresentation], v7 = objc_claimAutoreleasedReturnValue(), -[AVTAvatarPhysicalizedPose pose](equalCopy->_pose, "pose"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "dictionaryRepresentation"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v7, "isEqualToDictionary:", v9), v9, v8, v7, v6, v10))
    {
      v11 = [CNMemojiMetadataUtilities physicsStatesDictionaryRepresentationForPose:self->_pose];
      v12 = [CNMemojiMetadataUtilities physicsStatesDictionaryRepresentationForPose:equalCopy->_pose];
      v13 = [v11 isEqualToDictionary:v12];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E6996730] objectHash:self->_poseName];
  v4 = MEMORY[0x1E6996730];
  pose = [(AVTAvatarPhysicalizedPose *)self->_pose pose];
  dictionaryRepresentation = [pose dictionaryRepresentation];
  v7 = [v4 dictionaryHash:dictionaryRepresentation] - v3 + 32 * v3;

  v8 = MEMORY[0x1E6996730];
  v9 = [CNMemojiMetadataUtilities physicsStatesDictionaryRepresentationForPose:self->_pose];
  v10 = [v8 dictionaryHash:v9] - v7 + 32 * v7;

  return v10 + 506447;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CNSerializedPoseConfiguration alloc];
  poseName = [(CNSerializedPoseConfiguration *)self poseName];
  pose = [(CNSerializedPoseConfiguration *)self pose];
  v7 = [(CNSerializedPoseConfiguration *)v4 initWithPoseName:poseName pose:pose];

  return v7;
}

- (CNSerializedPoseConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"poseName"];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v5 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"poseRepresentation"];

  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = [v12 setWithObjects:{v13, v14, v15, v16, objc_opt_class(), 0}];
  v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"posePhysicsStatesRepresentation"];

  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v19 = getAVTAvatarPhysicalizedPoseClass_softClass;
  v29 = getAVTAvatarPhysicalizedPoseClass_softClass;
  if (!getAVTAvatarPhysicalizedPoseClass_softClass)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __getAVTAvatarPhysicalizedPoseClass_block_invoke;
    v25[3] = &unk_1E7412110;
    v25[4] = &v26;
    __getAVTAvatarPhysicalizedPoseClass_block_invoke(v25);
    v19 = v27[3];
  }

  v20 = v19;
  _Block_object_dispose(&v26, 8);
  v21 = [[v19 alloc] initWithPoseRepresentation:v11 physicsStatesRepresentation:v18];
  v22 = [(CNSerializedPoseConfiguration *)self initWithPoseName:v4 pose:v21];

  return v22;
}

- (void)encodeWithCoder:(id)coder
{
  poseName = self->_poseName;
  coderCopy = coder;
  [coderCopy encodeObject:poseName forKey:@"poseName"];
  pose = [(AVTAvatarPhysicalizedPose *)self->_pose pose];
  dictionaryRepresentation = [pose dictionaryRepresentation];
  [coderCopy encodeObject:dictionaryRepresentation forKey:@"poseRepresentation"];

  v8 = [CNMemojiMetadataUtilities physicsStatesDictionaryRepresentationForPose:self->_pose];
  [coderCopy encodeObject:v8 forKey:@"posePhysicsStatesRepresentation"];
}

@end