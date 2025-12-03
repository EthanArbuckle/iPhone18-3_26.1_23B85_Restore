@interface NonRetainedObjectContainer
- (NonRetainedObjectContainer)initWithObject:(id)object;
- (id)nonRetainedObject;
@end

@implementation NonRetainedObjectContainer

- (NonRetainedObjectContainer)initWithObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = NonRetainedObjectContainer;
  v5 = [(NonRetainedObjectContainer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(NonRetainedObjectContainer *)v5 setNonRetainedObject:objectCopy];
  }

  return v6;
}

- (id)nonRetainedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_nonRetainedObject);

  return WeakRetained;
}

@end