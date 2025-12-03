@interface CNActivityAlert
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid:(id *)valid;
- (CNActivityAlert)initWithCoder:(id)coder;
- (CNActivityAlert)initWithSound:(id)sound vibration:(id)vibration ignoreMute:(BOOL)mute userInfo:(id)info;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNActivityAlert

- (CNActivityAlert)initWithSound:(id)sound vibration:(id)vibration ignoreMute:(BOOL)mute userInfo:(id)info
{
  soundCopy = sound;
  vibrationCopy = vibration;
  infoCopy = info;
  v22.receiver = self;
  v22.super_class = CNActivityAlert;
  v13 = [(CNActivityAlert *)&v22 init];
  if (v13)
  {
    v14 = [soundCopy copy];
    sound = v13->_sound;
    v13->_sound = v14;

    v16 = [vibrationCopy copy];
    vibration = v13->_vibration;
    v13->_vibration = v16;

    v13->_ignoreMute = mute;
    v18 = [infoCopy copy];
    userInfo = v13->_userInfo;
    v13->_userInfo = v18;

    v20 = v13;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CNActivityAlert alloc];
  sound = self->_sound;
  vibration = self->_vibration;
  ignoreMute = self->_ignoreMute;
  userInfo = self->_userInfo;

  return [(CNActivityAlert *)v4 initWithSound:sound vibration:vibration ignoreMute:ignoreMute userInfo:userInfo];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CNMutableActivityAlert);
  sound = [(CNActivityAlert *)self sound];
  [(CNActivityAlert *)v4 setSound:sound];

  vibration = [(CNActivityAlert *)self vibration];
  [(CNActivityAlert *)v4 setVibration:vibration];

  [(CNActivityAlert *)v4 setIgnoreMute:[(CNActivityAlert *)self ignoreMute]];
  userInfo = [(CNActivityAlert *)self userInfo];
  [(CNActivityAlert *)v4 setUserInfo:userInfo];

  return v4;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  sound = self->_sound;
  vibration = self->_vibration;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_ignoreMute];
  v7 = [v3 appendNamesAndObjects:{@"sound", sound, @"vibration", vibration, @"ignoreMute", v6, 0}];

  if (self->_userInfo)
  {
    v8 = [v3 appendName:@"userInfo" object:?];
  }

  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v6 = objc_opt_class();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __27__CNActivityAlert_isEqual___block_invoke;
  v24[3] = &unk_1E7412228;
  v24[4] = self;
  v25 = equalCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __27__CNActivityAlert_isEqual___block_invoke_2;
  aBlock[3] = &unk_1E7412228;
  aBlock[4] = self;
  v7 = v25;
  v23 = v7;
  v8 = _Block_copy(aBlock);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __27__CNActivityAlert_isEqual___block_invoke_3;
  v20[3] = &unk_1E7412228;
  v20[4] = self;
  v9 = v7;
  v21 = v9;
  v10 = _Block_copy(v20);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __27__CNActivityAlert_isEqual___block_invoke_4;
  v17 = &unk_1E7412228;
  selfCopy = self;
  v19 = v9;
  v11 = v9;
  v12 = _Block_copy(&v14);
  LOBYTE(self) = [v5 isObject:v11 kindOfClass:v6 andEqualToObject:self withBlocks:{v24, v8, v10, v12, 0, v14, v15, v16, v17, selfCopy}];

  return self;
}

uint64_t __27__CNActivityAlert_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) vibration];
  v4 = [*(a1 + 40) vibration];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __27__CNActivityAlert_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) sound];
  v4 = [*(a1 + 40) sound];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __27__CNActivityAlert_isEqual___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) ignoreMute];
  v4 = [*(a1 + 40) ignoreMute];

  return [v2 isBool:v3 equalToOther:v4];
}

uint64_t __27__CNActivityAlert_isEqual___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) userInfo];
  v4 = [*(a1 + 40) userInfo];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E6996730];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __23__CNActivityAlert_hash__block_invoke;
  v12[3] = &unk_1E7412250;
  v12[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __23__CNActivityAlert_hash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __23__CNActivityAlert_hash__block_invoke_3;
  v10[3] = &unk_1E7412250;
  v10[4] = self;
  v5 = _Block_copy(v10);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __23__CNActivityAlert_hash__block_invoke_4;
  v9[3] = &unk_1E7412250;
  v9[4] = self;
  v6 = _Block_copy(v9);
  v7 = [v3 hashWithBlocks:{v12, v4, v5, v6, 0}];

  return v7;
}

uint64_t __23__CNActivityAlert_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) sound];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __23__CNActivityAlert_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) vibration];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __23__CNActivityAlert_hash__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) ignoreMute];

  return [v1 BOOLHash:v2];
}

uint64_t __23__CNActivityAlert_hash__block_invoke_4(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v1 objectHash:v2];

  return v3;
}

- (CNActivityAlert)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = CNActivityAlert;
  v5 = [(CNActivityAlert *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_sound"];
    v7 = [v6 copy];
    sound = v5->_sound;
    v5->_sound = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_vibration"];
    v10 = [v9 copy];
    vibration = v5->_vibration;
    v5->_vibration = v10;

    v5->_ignoreMute = [coderCopy decodeBoolForKey:@"_ignoreMute"];
    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"_userInfo"];
    v16 = [v15 copy];
    userInfo = v5->_userInfo;
    v5->_userInfo = v16;

    v18 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sound = self->_sound;
  coderCopy = coder;
  [coderCopy encodeObject:sound forKey:@"_sound"];
  [coderCopy encodeObject:self->_vibration forKey:@"_vibration"];
  [coderCopy encodeBool:self->_ignoreMute forKey:@"_ignoreMute"];
  [coderCopy encodeObject:self->_userInfo forKey:@"_userInfo"];
}

- (BOOL)isValid:(id *)valid
{
  if (isValid__cn_once_token_0 != -1)
  {
    [CNActivityAlert isValid:];
  }

  v5 = isValid__cn_once_object_0;
  if (isValid__cn_once_token_1 != -1)
  {
    [CNActivityAlert isValid:];
  }

  v6 = isValid__cn_once_token_2;
  v7 = isValid__cn_once_object_1;
  if (v6 != -1)
  {
    [CNActivityAlert isValid:];
  }

  v8 = [CN areValidKeyPaths:v5 forObject:self expectedClasses:v7 allowNil:isValid__cn_once_object_2 error:valid];

  return v8;
}

uint64_t __27__CNActivityAlert_isValid___block_invoke()
{
  v0 = [&unk_1F0987540 copy];
  v1 = isValid__cn_once_object_0;
  isValid__cn_once_object_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __27__CNActivityAlert_isValid___block_invoke_2()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];
  v1 = [v0 copy];
  v2 = isValid__cn_once_object_1;
  isValid__cn_once_object_1 = v1;
}

uint64_t __27__CNActivityAlert_isValid___block_invoke_3()
{
  v0 = [&unk_1F0987558 copy];
  v1 = isValid__cn_once_object_2;
  isValid__cn_once_object_2 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end