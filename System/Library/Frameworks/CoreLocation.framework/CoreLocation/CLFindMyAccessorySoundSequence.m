@interface CLFindMyAccessorySoundSequence
+ (id)defaultSequence;
+ (id)rangingSequence;
+ (id)shortSequence;
- (CLFindMyAccessorySoundSequence)initWithCoder:(id)a3;
- (CLFindMyAccessorySoundSequence)initWithType:(unint64_t)a3 encodedSequence:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addSoundBlockWithAsset:(unint64_t)a3 loopCount:(unsigned __int8)a4 duration:(unsigned __int16)a5;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLFindMyAccessorySoundSequence

- (CLFindMyAccessorySoundSequence)initWithType:(unint64_t)a3 encodedSequence:(id)a4
{
  v10.receiver = self;
  v10.super_class = CLFindMyAccessorySoundSequence;
  v6 = [(CLFindMyAccessorySoundSequence *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = a3;
    if (a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF88]);
    }

    v7->_encodedSequence = v8;
  }

  return v7;
}

+ (id)defaultSequence
{
  v2 = [[CLFindMyAccessorySoundSequence alloc] initWithType:1];
  [(CLFindMyAccessorySoundSequence *)v2 addSoundBlockWithAsset:4 loopCount:1 duration:0];
  [(CLFindMyAccessorySoundSequence *)v2 addSoundBlockWithAsset:5 loopCount:2 duration:0];

  return v2;
}

+ (id)shortSequence
{
  v2 = [[CLFindMyAccessorySoundSequence alloc] initWithType:0];

  return v2;
}

+ (id)rangingSequence
{
  v2 = [[CLFindMyAccessorySoundSequence alloc] initWithType:0];
  [(CLFindMyAccessorySoundSequence *)v2 addSoundBlockWithAsset:4 loopCount:1 duration:0];

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLFindMyAccessorySoundSequence;
  [(CLFindMyAccessorySoundSequence *)&v3 dealloc];
}

- (void)addSoundBlockWithAsset:(unint64_t)a3 loopCount:(unsigned __int8)a4 duration:(unsigned __int16)a5
{
  v8 = a4;
  v7 = a5;
  v6 = a3;
  [(NSMutableData *)self->_encodedSequence appendBytes:&v6 length:1];
  [(NSMutableData *)self->_encodedSequence appendBytes:&v8 length:1];
  [(NSMutableData *)self->_encodedSequence appendBytes:&v7 length:2];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CLFindMyAccessorySoundSequence alloc];
  type = self->_type;
  [(NSMutableData *)self->_encodedSequence mutableCopy];

  return MEMORY[0x1EEE66B58](v4, sel_initWithType_encodedSequence_);
}

- (CLFindMyAccessorySoundSequence)initWithCoder:(id)a3
{
  [a3 decodeIntegerForKey:@"Type"];
  [a3 decodeObjectOfClass:objc_opt_class() forKey:@"EncodedSequence"];

  return MEMORY[0x1EEE66B58](self, sel_initWithType_encodedSequence_);
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInteger:self->_type forKey:@"Type"];
  encodedSequence = self->_encodedSequence;

  [a3 encodeObject:encodedSequence forKey:@"EncodedSequence"];
}

@end