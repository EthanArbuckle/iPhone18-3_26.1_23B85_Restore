@interface _MTLObjectWithLabel
- (NSString)label;
- (_MTLObjectWithLabel)init;
- (id)retainedLabel;
- (void)dealloc;
- (void)setLabel:(id)label;
@end

@implementation _MTLObjectWithLabel

- (_MTLObjectWithLabel)init
{
  v3.receiver = self;
  v3.super_class = _MTLObjectWithLabel;
  result = [(_MTLObjectWithLabel *)&v3 init];
  if (result)
  {
    result->_label = 0;
    result->_labelLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (NSString)label
{
  retainedLabel = [(_MTLObjectWithLabel *)self retainedLabel];

  return retainedLabel;
}

- (id)retainedLabel
{
  os_unfair_lock_lock(&self->_labelLock);
  v3 = self->_label;
  os_unfair_lock_unlock(&self->_labelLock);
  return v3;
}

- (void)dealloc
{
  self->_label = 0;
  v3.receiver = self;
  v3.super_class = _MTLObjectWithLabel;
  [(_MTLObjectWithLabel *)&v3 dealloc];
}

- (void)setLabel:(id)label
{
  if (self->_label != label)
  {
    v5 = [label copy];
    os_unfair_lock_lock(&self->_labelLock);
    label = self->_label;
    self->_label = v5;
    os_unfair_lock_unlock(&self->_labelLock);
  }
}

@end