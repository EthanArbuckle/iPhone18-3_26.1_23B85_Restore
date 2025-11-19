@interface AVTSerializedAvatarRecord
- (AVTSerializedAvatarRecord)initWithAvatarRecord:(id)a3;
- (AVTSerializedAvatarRecord)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVTSerializedAvatarRecord

- (AVTSerializedAvatarRecord)initWithAvatarRecord:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AVTSerializedAvatarRecord;
  v6 = [(AVTSerializedAvatarRecord *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_avatarRecord, a3);
    if (([v5 conformsToProtocol:&unk_2853947B8] & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"AVTTypeMismatchException" format:{@"Unexpected object protocol for %@", v5}];
    }

    -[AVTSerializedAvatarRecord setIsPuppet:](v7, "setIsPuppet:", [v5 isPuppet]);
  }

  return v7;
}

- (AVTSerializedAvatarRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"isPuppet"];
  v6 = off_278CF9B38;
  if (!v5)
  {
    v6 = off_278CF9B40;
  }

  v7 = *v6;
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"avatarRecord"];

  v9 = [(AVTSerializedAvatarRecord *)self initWithAvatarRecord:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[AVTSerializedAvatarRecord isPuppet](self forKey:{"isPuppet"), @"isPuppet"}];
  [v4 encodeObject:self->_avatarRecord forKey:@"avatarRecord"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [AVTSerializedAvatarRecord alloc];
  v5 = [(AVTSerializedAvatarRecord *)self avatarRecord];
  v6 = [(AVTSerializedAvatarRecord *)v4 initWithAvatarRecord:v5];

  return v6;
}

@end