@interface MTLIndirectArgumentDescriptorInternal
+ (id)indirectArgumentDescriptor;
- (BOOL)isEqual:(id)equal;
- (MTLIndirectArgumentDescriptorInternal)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)formattedDescription:(unint64_t)description;
- (unint64_t)hash;
@end

@implementation MTLIndirectArgumentDescriptorInternal

+ (id)indirectArgumentDescriptor
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (MTLIndirectArgumentDescriptorInternal)init
{
  v3.receiver = self;
  v3.super_class = MTLIndirectArgumentDescriptorInternal;
  result = [(MTLIndirectArgumentDescriptorInternal *)&v3 init];
  if (result)
  {
    *&result->_private.dataType = 0u;
    *&result->_private.arrayLength = 0u;
    *&result->_private.textureType = xmmword_185DE1A50;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = *&self->_private.arrayLength;
  v5 = *&self->_private.textureType;
  *(result + 8) = *&self->_private.dataType;
  *(result + 24) = v6;
  *(result + 40) = v5;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  return Class == object_getClass(equal) && memcmp(&self->_private, equal + 8, 0x30uLL) == 0;
}

- (unint64_t)hash
{
  v2 = 0;
  v3 = 1193062;
  do
  {
    v3 = (1540483477 * ((1540483477 * *(&self->_private.dataType + v2)) ^ ((1540483477 * *(&self->_private.dataType + v2)) >> 24))) ^ (1540483477 * v3);
    v2 += 4;
  }

  while (v2 != 48);
  return (1540483477 * (v3 ^ (v3 >> 13))) ^ ((1540483477 * (v3 ^ (v3 >> 13))) >> 15);
}

- (id)formattedDescription:(unint64_t)description
{
  v5 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MTLIndirectArgumentDescriptorInternal;
  v6 = [(MTLIndirectArgumentDescriptorInternal *)&v8 description];
  return [v5 stringWithFormat:@"%@%@", v6, indirectArgumentFormattedDescription(description, &self->_private)];
}

@end