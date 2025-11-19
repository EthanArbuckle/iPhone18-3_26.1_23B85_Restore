@interface _MTLObjectWithLabel
- (NSString)label;
- (_MTLObjectWithLabel)init;
- (id)retainedLabel;
- (void)dealloc;
- (void)setLabel:(id)a3;
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
  v2 = [(_MTLObjectWithLabel *)self retainedLabel];

  return v2;
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

- (void)setLabel:(id)a3
{
  if (self->_label != a3)
  {
    v5 = [a3 copy];
    os_unfair_lock_lock(&self->_labelLock);
    label = self->_label;
    self->_label = v5;
    os_unfair_lock_unlock(&self->_labelLock);
  }
}

@end