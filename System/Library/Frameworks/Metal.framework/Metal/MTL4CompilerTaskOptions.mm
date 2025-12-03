@interface MTL4CompilerTaskOptions
- (BOOL)isEqual:(id)equal;
- (MTL4CompilerTaskOptions)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation MTL4CompilerTaskOptions

- (MTL4CompilerTaskOptions)init
{
  v3.receiver = self;
  v3.super_class = MTL4CompilerTaskOptions;
  return [(MTL4CompilerTaskOptions *)&v3 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = [(NSArray *)self->_lookupArchives copyWithZone:zone];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  if (Class != object_getClass(equal))
  {
    return 0;
  }

  lookupArchives = self->_lookupArchives;
  v8 = *(equal + 1);

  return MTLCompareArray(lookupArchives, v8, 1, 0);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4CompilerTaskOptions;
  [(MTL4CompilerTaskOptions *)&v3 dealloc];
}

@end