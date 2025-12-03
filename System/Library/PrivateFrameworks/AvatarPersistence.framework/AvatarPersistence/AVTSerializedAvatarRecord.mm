@interface AVTSerializedAvatarRecord
- (AVTSerializedAvatarRecord)initWithAvatarRecord:(id)record;
- (AVTSerializedAvatarRecord)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVTSerializedAvatarRecord

- (AVTSerializedAvatarRecord)initWithAvatarRecord:(id)record
{
  recordCopy = record;
  v9.receiver = self;
  v9.super_class = AVTSerializedAvatarRecord;
  v6 = [(AVTSerializedAvatarRecord *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_avatarRecord, record);
    if (([recordCopy conformsToProtocol:&unk_2853947B8] & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"AVTTypeMismatchException" format:{@"Unexpected object protocol for %@", recordCopy}];
    }

    -[AVTSerializedAvatarRecord setIsPuppet:](v7, "setIsPuppet:", [recordCopy isPuppet]);
  }

  return v7;
}

- (AVTSerializedAvatarRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"isPuppet"];
  v6 = off_278CF9B38;
  if (!v5)
  {
    v6 = off_278CF9B40;
  }

  v7 = *v6;
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"avatarRecord"];

  v9 = [(AVTSerializedAvatarRecord *)self initWithAvatarRecord:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[AVTSerializedAvatarRecord isPuppet](self forKey:{"isPuppet"), @"isPuppet"}];
  [coderCopy encodeObject:self->_avatarRecord forKey:@"avatarRecord"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AVTSerializedAvatarRecord alloc];
  avatarRecord = [(AVTSerializedAvatarRecord *)self avatarRecord];
  v6 = [(AVTSerializedAvatarRecord *)v4 initWithAvatarRecord:avatarRecord];

  return v6;
}

@end