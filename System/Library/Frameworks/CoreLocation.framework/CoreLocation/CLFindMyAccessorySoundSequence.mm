@interface CLFindMyAccessorySoundSequence
+ (id)defaultSequence;
+ (id)rangingSequence;
+ (id)shortSequence;
- (CLFindMyAccessorySoundSequence)initWithCoder:(id)coder;
- (CLFindMyAccessorySoundSequence)initWithType:(unint64_t)type encodedSequence:(id)sequence;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addSoundBlockWithAsset:(unint64_t)asset loopCount:(unsigned __int8)count duration:(unsigned __int16)duration;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLFindMyAccessorySoundSequence

- (CLFindMyAccessorySoundSequence)initWithType:(unint64_t)type encodedSequence:(id)sequence
{
  v10.receiver = self;
  v10.super_class = CLFindMyAccessorySoundSequence;
  v6 = [(CLFindMyAccessorySoundSequence *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = type;
    if (sequence)
    {
      sequenceCopy = sequence;
    }

    else
    {
      sequenceCopy = objc_alloc_init(MEMORY[0x1E695DF88]);
    }

    v7->_encodedSequence = sequenceCopy;
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

- (void)addSoundBlockWithAsset:(unint64_t)asset loopCount:(unsigned __int8)count duration:(unsigned __int16)duration
{
  countCopy = count;
  durationCopy = duration;
  assetCopy = asset;
  [(NSMutableData *)self->_encodedSequence appendBytes:&assetCopy length:1];
  [(NSMutableData *)self->_encodedSequence appendBytes:&countCopy length:1];
  [(NSMutableData *)self->_encodedSequence appendBytes:&durationCopy length:2];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CLFindMyAccessorySoundSequence alloc];
  type = self->_type;
  [(NSMutableData *)self->_encodedSequence mutableCopy];

  return MEMORY[0x1EEE66B58](v4, sel_initWithType_encodedSequence_);
}

- (CLFindMyAccessorySoundSequence)initWithCoder:(id)coder
{
  [coder decodeIntegerForKey:@"Type"];
  [coder decodeObjectOfClass:objc_opt_class() forKey:@"EncodedSequence"];

  return MEMORY[0x1EEE66B58](self, sel_initWithType_encodedSequence_);
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInteger:self->_type forKey:@"Type"];
  encodedSequence = self->_encodedSequence;

  [coder encodeObject:encodedSequence forKey:@"EncodedSequence"];
}

@end